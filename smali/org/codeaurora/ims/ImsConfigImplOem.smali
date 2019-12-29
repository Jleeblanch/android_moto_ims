.class public Lorg/codeaurora/ims/ImsConfigImplOem;
.super Ljava/lang/Object;
.source "ImsConfigImplOem.java"


# static fields
.field private static final HEADER_SIZE:I = 0x8

.field private static final IMS_SERVICES_DEFAULT_ALL:I = 0x3

.field private static final OEM_RIL_REQUEST_GET_IMS_SUPPORTED_SERVICES:I = 0x50030

.field private static final OEM_RIL_REQUEST_GET_SSAC_HYSTERESIS_TIMER:I = 0x5003c

.field private static final OEM_RIL_REQUEST_SET_SSAC_HYSTERESIS_TIMER:I = 0x5003d

.field private static final OEM_RIL_UNSOL_IMS_SUPPORTED_SERVICES_CHANGED:I = 0x40017

.field private static final OEM_RIL_UNSOL_MCFG_MBN_CHANGED:I = 0x40016

.field private static final OEM_RIL_UNSOL_REV_IP_TRANS_CHANGE:I = 0x40018

.field private static final RESPONSE_BUFFER_SIZE:I = 0x800

.field private static sCacheInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/codeaurora/ims/ImsConfigImplOem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mITelephony:Landroid/telephony/TelephonyManager;

.field private mImsSupportedServicesRetries:I

.field private mPhoneId:I

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/ImsConfigImplOem;->sCacheInstances:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;I)V
    .locals 2
    .param p1, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "phoneId"    # I

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mITelephony:Landroid/telephony/TelephonyManager;

    .line 54
    const/4 v1, 0x0

    iput v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    .line 311
    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 83
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 84
    iput-object p2, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    .line 85
    iput p3, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mPhoneId:I

    .line 86
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mITelephony:Landroid/telephony/TelephonyManager;

    .line 88
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsPhoneListenerController;->getInstance(Landroid/content/Context;)Lorg/codeaurora/ims/ImsPhoneListenerController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsPhoneListenerController;->start()V

    .line 89
    return-void
.end method

.method private addRilOemHookHeader(Ljava/nio/ByteBuffer;II)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "requestId"    # I
    .param p3, "requestSize"    # I

    .line 372
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 375
    const/high16 v0, 0xff0000

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 376
    const v0, 0xff00

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 377
    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 380
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 381
    return-void
.end method

.method private broadcastImsSupportedServices(II)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "prev_value"    # I

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastImsSupportedServices, ImsConfigItem=71, prev_value=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", new_value=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 196
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 198
    const-string v1, "item"

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    const-string v1, "value"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string v1, "prev_value"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 203
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method private bytesToHexString([B)Ljava/lang/String;
    .locals 5
    .param p1, "bytes"    # [B

    .line 384
    if-nez p1, :cond_0

    .line 385
    const/4 v0, 0x0

    return-object v0

    .line 386
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    array-length v2, p1

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 388
    .local v0, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 390
    aget-byte v2, p1, v1

    shr-int/lit8 v2, v2, 0x4

    const/16 v3, 0xf

    and-int/2addr v2, v3

    .line 391
    .local v2, "b":I
    const-string v4, "0123456789abcdef"

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    aget-byte v4, p1, v1

    and-int v2, v3, v4

    .line 393
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 388
    .end local v2    # "b":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 396
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "bytes"    # [B

    .line 364
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 365
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 366
    return-object v0
.end method

.method private getBooleanCarrierConfig(Ljava/lang/String;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 172
    const/4 v0, -0x1

    .line 173
    .local v0, "subId":I
    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mPhoneId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 174
    .local v1, "subIds":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 175
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 178
    :cond_0
    const/4 v2, 0x0

    .line 179
    .local v2, "b":Landroid/os/PersistableBundle;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    const-string v4, "carrier_config"

    .line 180
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CarrierConfigManager;

    .line 181
    .local v3, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v3, :cond_1

    .line 182
    invoke-virtual {v3, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 184
    :cond_1
    if-nez v2, :cond_2

    .line 185
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 187
    :cond_2
    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 188
    .local v4, "value":Z
    return v4
.end method

.method private declared-synchronized getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    monitor-enter p0

    .line 313
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 314
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 316
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mExecutor:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lorg/codeaurora/ims/ImsConfigImplOem;
    throw v0
.end method

.method private getImsSupportedServices()I
    .locals 9

    .line 274
    const/4 v0, 0x2

    .line 275
    .local v0, "RIL_E_GENERIC_FAILURE":I
    const/16 v1, 0x2e

    .line 277
    .local v1, "RIL_E_INVALID_MODEM_STATE":I
    const/4 v2, 0x3

    .line 278
    .local v2, "val":I
    const v3, 0x50030

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsConfigImplOem;->sendMessage(I)Landroid/os/AsyncResult;

    move-result-object v3

    .line 280
    .local v3, "result":Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getImsSupportedServices: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsConfigImplOem;->loge(Ljava/lang/String;)V

    .line 282
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_7

    .line 283
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 284
    .local v4, "errorCode":I
    if-gez v4, :cond_0

    mul-int/lit8 v4, v4, -0x1

    .line 285
    :cond_0
    const/4 v6, 0x2

    if-ne v6, v4, :cond_2

    .line 286
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->isImsEnabledByPlatform()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, -0x4

    nop

    :cond_1
    move v2, v5

    goto :goto_0

    .line 287
    :cond_2
    const/16 v5, 0x2e

    if-ne v5, v4, :cond_3

    .line 288
    const/4 v2, -0x4

    .line 290
    .end local v4    # "errorCode":I
    :cond_3
    :goto_0
    goto :goto_1

    .line 291
    :cond_4
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_6

    .line 292
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    .line 293
    .local v4, "buf":[B
    if-eqz v4, :cond_5

    array-length v6, v4

    const/16 v7, 0x10

    if-le v6, v7, :cond_5

    .line 294
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v5, v7}, Ljava/lang/String;-><init>([BII)V

    move-object v5, v6

    .line 295
    .local v5, "str":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getImsSupportedServices, raw str: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 296
    invoke-static {v5, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v2, v6

    .line 297
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getImsSupportedServices: 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 299
    .end local v4    # "buf":[B
    .end local v5    # "str":Ljava/lang/String;
    :cond_5
    goto :goto_1

    .line 300
    :cond_6
    const-string v4, "getImsSupportedServices gets null response from RIL"

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsConfigImplOem;->loge(Ljava/lang/String;)V

    .line 303
    :cond_7
    :goto_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Lorg/codeaurora/ims/ImsConfigImplCache;->getInstance(I)Lorg/codeaurora/ims/ImsConfigImplCache;

    move-result-object v4

    .line 304
    .local v4, "configCache":Lorg/codeaurora/ims/ImsConfigImplCache;
    if-eqz v4, :cond_8

    .line 305
    const/16 v5, 0x47

    invoke-virtual {v4, v5, v2}, Lorg/codeaurora/ims/ImsConfigImplCache;->setImsConfig(II)V

    .line 308
    :cond_8
    return v2
.end method

.method public static getInstance(I)Lorg/codeaurora/ims/ImsConfigImplOem;
    .locals 3
    .param p0, "phoneId"    # I

    .line 61
    sget-object v0, Lorg/codeaurora/ims/ImsConfigImplOem;->sCacheInstances:Ljava/util/HashMap;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/ImsConfigImplOem;->sCacheInstances:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    sget-object v1, Lorg/codeaurora/ims/ImsConfigImplOem;->sCacheInstances:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsConfigImplOem;

    monitor-exit v0

    return-object v1

    .line 66
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 67
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;I)Lorg/codeaurora/ims/ImsConfigImplOem;
    .locals 4
    .param p0, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 71
    sget-object v0, Lorg/codeaurora/ims/ImsConfigImplOem;->sCacheInstances:Ljava/util/HashMap;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/ImsConfigImplOem;->sCacheInstances:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    sget-object v1, Lorg/codeaurora/ims/ImsConfigImplOem;->sCacheInstances:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsConfigImplOem;

    monitor-exit v0

    return-object v1

    .line 76
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImplOem;

    invoke-direct {v1, p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImplOem;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;I)V

    .line 77
    .local v1, "oemImpl":Lorg/codeaurora/ims/ImsConfigImplOem;
    sget-object v2, Lorg/codeaurora/ims/ImsConfigImplOem;->sCacheInstances:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    monitor-exit v0

    return-object v1

    .line 79
    .end local v1    # "oemImpl":Lorg/codeaurora/ims/ImsConfigImplOem;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPhoneId()I
    .locals 1

    .line 467
    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mPhoneId:I

    return v0
.end method

.method private isCarrierConfigLoaded()Z
    .locals 3

    .line 150
    const-string v0, "default_carrierconfig_loaded"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    .line 152
    .local v0, "bLoaded":Z
    if-nez v0, :cond_0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCarrierConfigLoaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->logi(Ljava/lang/String;)V

    .line 155
    :cond_0
    return v0
.end method

.method private isImsEnabledByPlatform()Z
    .locals 4

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "bEnabled":Z
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    iget v2, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 161
    .local v1, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_2

    .line 162
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v2

    if-nez v2, :cond_1

    .line 163
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    move v0, v2

    .line 165
    :cond_2
    if-nez v0, :cond_3

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isImsEnabledByPlatform: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->logi(Ljava/lang/String;)V

    .line 168
    :cond_3
    return v0
.end method

.method private isImsStackReady()Z
    .locals 3

    .line 142
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getFeatureState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 143
    .local v0, "bReady":Z
    :goto_0
    if-nez v0, :cond_1

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isImsStackReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 146
    :cond_1
    return v0
.end method

.method private isValidImsSupportedServicesValue(I)Z
    .locals 1
    .param p1, "value"    # I

    .line 207
    const/4 v0, -0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$updateImsSupportedServicesAndNotify$0(Lorg/codeaurora/ims/ImsConfigImplOem;)V
    .locals 7

    .line 221
    const/4 v0, 0x0

    move v1, v0

    .line 223
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getImsSupportedServicesInCache()I

    move-result v2

    .line 224
    .local v2, "prev_value":I
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getImsSupportedServices()I

    move-result v3

    .line 225
    .local v3, "value":I
    if-eq v3, v2, :cond_0

    .line 226
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->broadcastImsSupportedServices(II)V

    .line 229
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsConfigImplOem;->isValidImsSupportedServicesValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 230
    nop

    .line 254
    .end local v2    # "prev_value":I
    .end local v3    # "value":I
    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    if-lez v0, :cond_1

    .line 255
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->updateImsServiceConfig()V

    .line 257
    :cond_1
    return-void

    .line 233
    .restart local v2    # "prev_value":I
    .restart local v3    # "value":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 234
    monitor-enter p0

    .line 235
    const/4 v4, 0x5

    if-lt v1, v4, :cond_3

    .line 236
    :try_start_0
    const-string v4, "getImsSupportedServices failed finally, no more retry"

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 237
    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    .line 238
    monitor-exit p0

    return-void

    .line 251
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 241
    :cond_3
    iget v5, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    add-int/lit8 v5, v1, -0x1

    shl-int/2addr v4, v5

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    :try_start_1
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    goto :goto_1

    .line 244
    :catch_0
    move-exception v4

    .line 245
    .local v4, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateImsSupportedServices, InterruptedException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 247
    .end local v4    # "ex":Ljava/lang/InterruptedException;
    :goto_1
    iget v4, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    if-nez v4, :cond_4

    .line 248
    const-string v0, "exit updateImsSupportedServicesAndNotify thread for new request"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 249
    monitor-exit p0

    return-void

    .line 251
    :cond_4
    monitor-exit p0

    .line 252
    .end local v2    # "prev_value":I
    .end local v3    # "value":I
    goto :goto_0

    .line 251
    .restart local v2    # "prev_value":I
    .restart local v3    # "value":I
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method private sendBroadcastForEpdgIndicator(Z)V
    .locals 3
    .param p1, "isConnected"    # Z

    .line 458
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.internal.intent.action.EPDG_CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 461
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcastForEpdgIndicator, isConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->logi(Ljava/lang/String;)V

    .line 463
    return-void
.end method

.method private sendMessage(I)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I

    .line 438
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 439
    .local v0, "request":[B
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 441
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->addRilOemHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 443
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method private sendMessage(IS)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # S

    .line 447
    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 448
    .local v0, "request":[B
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 450
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x2

    invoke-direct {p0, v1, p1, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->addRilOemHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 451
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 453
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method private sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;
    .locals 7
    .param p1, "requestId"    # I
    .param p2, "request"    # [B

    .line 401
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mITelephony:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 402
    new-instance v0, Landroid/os/RemoteException;

    const-string v2, "Cannot get Telephony Service"

    invoke-direct {v0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 404
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 405
    .local v1, "ar":Landroid/os/AsyncResult;
    return-object v1

    .line 408
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :cond_0
    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 409
    .local v0, "response":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendQcRilOemHookMsg: Outgoing Data is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImplOem;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 409
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 412
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/ims/ImsManager;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result v2

    .line 413
    .local v2, "subId":I
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mITelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2, p2, v0}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRaw(I[B[B)I

    move-result v3

    .line 414
    .local v3, "retVal":I
    if-ltz v3, :cond_2

    .line 415
    const/4 v4, 0x0

    .line 417
    .local v4, "validResponseBytes":[B
    if-lez v3, :cond_1

    .line 418
    new-array v4, v3, [B

    .line 419
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 421
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Response Data is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsConfigImplOem;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 421
    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 424
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Response retVal = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 426
    :goto_0
    new-instance v5, Landroid/os/AsyncResult;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6, v4, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .end local v4    # "validResponseBytes":[B
    move-object v1, v5

    .line 427
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    goto :goto_1

    .line 428
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ITelephony.sendOemRilRequestRaw returns "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 429
    new-instance v1, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ITelephony.sendOemRilRequestRaw returns "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 431
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v4, Landroid/os/AsyncResult;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, p2, v5, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .end local v1    # "ex":Ljava/lang/Exception;
    move-object v1, v4

    .line 434
    .local v1, "ar":Landroid/os/AsyncResult;
    :goto_1
    return-object v1
.end method

.method private updateImsServiceConfig()V
    .locals 4

    .line 127
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->isImsStackReady()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->isCarrierConfigLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 131
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_2

    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, "bForce":Z
    monitor-enter p0

    .line 134
    :try_start_0
    iget v2, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    move v1, v2

    .line 135
    iput v3, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    .line 136
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Z)V

    .end local v1    # "bForce":Z
    goto :goto_1

    .line 136
    .restart local v1    # "bForce":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 139
    .end local v1    # "bForce":Z
    :cond_2
    :goto_1
    return-void

    .line 128
    .end local v0    # "imsManager":Lcom/android/ims/ImsManager;
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public getDomainName()Ljava/lang/String;
    .locals 3

    .line 322
    const-string v0, ""

    .line 323
    .local v0, "domain":Ljava/lang/String;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mITelephony:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result v1

    .line 325
    .local v1, "subId":I
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mITelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getIsimDomain(I)Ljava/lang/String;

    move-result-object v0

    .line 327
    .end local v1    # "subId":I
    :cond_0
    return-object v0
.end method

.method public getImsSupportedServicesInCache()I
    .locals 5

    .line 261
    const/4 v0, -0x1

    .line 262
    .local v0, "value":I
    const/16 v1, 0x47

    .line 264
    .local v1, "item":I
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImplCache;->getInstance(I)Lorg/codeaurora/ims/ImsConfigImplCache;

    move-result-object v2

    .line 265
    .local v2, "configCache":Lorg/codeaurora/ims/ImsConfigImplCache;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsConfigImplCache;->isImsConfigExist(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 266
    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsConfigImplCache;->getImsConfigInt(I)I

    move-result v0

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImsSupportedServicesInCache: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 270
    :cond_0
    return v0
.end method

.method public getTVolteHysTimer()I
    .locals 6

    .line 332
    const/4 v0, -0x1

    .line 334
    .local v0, "val":S
    const v1, 0x5003c

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->sendMessage(I)Landroid/os/AsyncResult;

    move-result-object v1

    .line 336
    .local v1, "result":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTVolteHysTimer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_0
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 339
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 340
    .local v2, "buf":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 341
    .local v3, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 342
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 343
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTVolteHysTimer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 344
    .end local v2    # "buf":[B
    .end local v3    # "byteBuf":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 345
    :cond_1
    const-string v2, "getTVolteHysTimer gets null response from RIL"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->loge(Ljava/lang/String;)V

    .line 347
    :goto_0
    return v0
.end method

.method public handleOemHookRawEvent([B)V
    .locals 4
    .param p1, "data"    # [B

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOemHookRawEvent, data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImplOem;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 94
    if-eqz p1, :cond_7

    array-length v0, p1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    goto/16 :goto_2

    .line 99
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->isImsStackReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    return-void

    .line 103
    :cond_1
    const/4 v0, 0x4

    .line 104
    .local v0, "idx":I
    aget-byte v2, p1, v0

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    shl-int/lit8 v1, v3, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    .line 105
    .local v1, "msgId":I
    const v2, 0x40017

    if-ne v2, v1, :cond_2

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OEM_RIL_UNSOL_IMS_SUPPORTED_SERVICES_CHANGED = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->updateImsServiceConfig()V

    .line 108
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->updateImsSupportedServicesAndNotify()V

    goto :goto_1

    .line 109
    :cond_2
    const v2, 0x40016

    if-ne v2, v1, :cond_4

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OEM_RIL_UNSOL_MCFG_MBN_CHANGED = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImplCache;->getInstance(I)Lorg/codeaurora/ims/ImsConfigImplCache;

    move-result-object v2

    .line 112
    .local v2, "configCache":Lorg/codeaurora/ims/ImsConfigImplCache;
    if-eqz v2, :cond_3

    .line 113
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsConfigImplCache;->clear()V

    .line 115
    :cond_3
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->updateImsServiceConfig()V

    .line 116
    .end local v2    # "configCache":Lorg/codeaurora/ims/ImsConfigImplCache;
    goto :goto_1

    .line 118
    :cond_4
    const v2, 0x40018

    if-ne v2, v1, :cond_6

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OEM_RIL_UNSOL_REV_IP_TRANS_CHANGE = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 120
    const/16 v2, 0xc

    aget-byte v2, p1, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    move v2, v3

    .line 121
    .local v2, "isConnected":Z
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->sendBroadcastForEpdgIndicator(Z)V

    .line 124
    .end local v2    # "isConnected":Z
    :cond_6
    :goto_1
    return-void

    .line 95
    .end local v0    # "idx":I
    .end local v1    # "msgId":I
    :cond_7
    :goto_2
    const-string v0, "skip for invalid data"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public setTVolteHysTimer(I)I
    .locals 4
    .param p1, "value"    # I

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTVolteHysTimer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 352
    const/4 v0, -0x1

    .line 353
    .local v0, "retval":I
    int-to-short v1, p1

    const v2, 0x5003d

    invoke-direct {p0, v2, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->sendMessage(IS)Landroid/os/AsyncResult;

    move-result-object v1

    .line 356
    .local v1, "result":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 357
    const/4 v0, 0x0

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTVolteHysTimer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->loge(Ljava/lang/String;)V

    .line 360
    :cond_0
    return v0
.end method

.method public updateImsSupportedServicesAndNotify()V
    .locals 2

    .line 211
    monitor-enter p0

    .line 212
    :try_start_0
    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    if-lez v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter updateImsSupportedServicesAndNotify, mImsSupportedServicesRetries: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    .line 217
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 218
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/ims/-$$Lambda$ImsConfigImplOem$oehbF2Ay4egetEcoBFMiDAC3fhk;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/-$$Lambda$ImsConfigImplOem$oehbF2Ay4egetEcoBFMiDAC3fhk;-><init>(Lorg/codeaurora/ims/ImsConfigImplOem;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 258
    return-void

    .line 218
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
