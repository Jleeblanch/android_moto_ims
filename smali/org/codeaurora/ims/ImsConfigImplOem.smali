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

.field private static sOemInstances:Ljava/util/HashMap;
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

.field private mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;I)V
    .locals 2
    .param p1, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "phoneId"    # I

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mITelephony:Landroid/telephony/TelephonyManager;

    .line 55
    const/4 v1, 0x0

    iput v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    .line 309
    const/4 v1, -0x1

    iput v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mSubId:I

    .line 362
    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 84
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 85
    iput-object p2, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    .line 86
    iput p3, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mPhoneId:I

    .line 87
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mITelephony:Landroid/telephony/TelephonyManager;

    .line 89
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsPhoneListenerController;->getInstance(Landroid/content/Context;)Lorg/codeaurora/ims/ImsPhoneListenerController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsPhoneListenerController;->start()V

    .line 90
    return-void
.end method

.method private addRilOemHookHeader(Ljava/nio/ByteBuffer;II)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "requestId"    # I
    .param p3, "requestSize"    # I

    .line 423
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 426
    const/high16 v0, 0xff0000

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 427
    const v0, 0xff00

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 428
    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 431
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 432
    return-void
.end method

.method private broadcastImsSupportedServices(II)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "prev_value"    # I

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastImsSupportedServices, ImsConfigItem=71, prev_value=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", new_value=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 195
    const-string v1, "item"

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    const-string v1, "value"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v1, "prev_value"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 200
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method private bytesToHexString([B)Ljava/lang/String;
    .locals 5
    .param p1, "bytes"    # [B

    .line 435
    if-nez p1, :cond_0

    .line 436
    const/4 v0, 0x0

    return-object v0

    .line 437
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    array-length v2, p1

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 439
    .local v0, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 441
    aget-byte v2, p1, v1

    shr-int/lit8 v2, v2, 0x4

    const/16 v3, 0xf

    and-int/2addr v2, v3

    .line 442
    .local v2, "b":I
    const-string v4, "0123456789abcdef"

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 443
    aget-byte v4, p1, v1

    and-int v2, v3, v4

    .line 444
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 439
    .end local v2    # "b":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 447
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "bytes"    # [B

    .line 415
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 416
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 417
    return-object v0
.end method

.method private getBooleanCarrierConfig(Ljava/lang/String;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 169
    const/4 v0, -0x1

    .line 170
    .local v0, "subId":I
    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mPhoneId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 171
    .local v1, "subIds":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 172
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 175
    :cond_0
    const/4 v2, 0x0

    .line 176
    .local v2, "b":Landroid/os/PersistableBundle;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    const-string v4, "carrier_config"

    .line 177
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CarrierConfigManager;

    .line 178
    .local v3, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v3, :cond_1

    .line 179
    invoke-virtual {v3, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 181
    :cond_1
    if-nez v2, :cond_2

    .line 182
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 184
    :cond_2
    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 185
    .local v4, "value":Z
    return v4
.end method

.method private declared-synchronized getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    monitor-enter p0

    .line 364
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 365
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 367
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mExecutor:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lorg/codeaurora/ims/ImsConfigImplOem;
    throw v0
.end method

.method private getImsSupportedServices()I
    .locals 9

    .line 272
    const/4 v0, 0x2

    .line 273
    .local v0, "RIL_E_GENERIC_FAILURE":I
    const/16 v1, 0x2e

    .line 275
    .local v1, "RIL_E_INVALID_MODEM_STATE":I
    const/4 v2, 0x3

    .line 276
    .local v2, "val":I
    const v3, 0x50030

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsConfigImplOem;->sendMessage(I)Landroid/os/AsyncResult;

    move-result-object v3

    .line 278
    .local v3, "result":Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 279
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getImsSupportedServices: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsConfigImplOem;->loge(Ljava/lang/String;)V

    .line 280
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_7

    .line 281
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 282
    .local v4, "errorCode":I
    if-gez v4, :cond_0

    mul-int/lit8 v4, v4, -0x1

    .line 283
    :cond_0
    const/4 v6, 0x2

    if-ne v6, v4, :cond_2

    .line 284
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->isImsEnabledByPlatform()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, -0x4

    nop

    :cond_1
    move v2, v5

    goto :goto_0

    .line 285
    :cond_2
    const/16 v5, 0x2e

    if-ne v5, v4, :cond_3

    .line 286
    const/4 v2, -0x4

    .line 288
    .end local v4    # "errorCode":I
    :cond_3
    :goto_0
    goto :goto_1

    .line 289
    :cond_4
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_6

    .line 290
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    .line 291
    .local v4, "buf":[B
    if-eqz v4, :cond_5

    array-length v6, v4

    const/16 v7, 0x10

    if-le v6, v7, :cond_5

    .line 292
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v5, v7}, Ljava/lang/String;-><init>([BII)V

    move-object v5, v6

    .line 293
    .local v5, "str":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getImsSupportedServices, raw str: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 294
    invoke-static {v5, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v2, v6

    .line 295
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

    .line 297
    .end local v4    # "buf":[B
    .end local v5    # "str":Ljava/lang/String;
    :cond_5
    goto :goto_1

    .line 298
    :cond_6
    const-string v4, "getImsSupportedServices gets null response from RIL"

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsConfigImplOem;->loge(Ljava/lang/String;)V

    .line 301
    :cond_7
    :goto_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Lorg/codeaurora/ims/ImsConfigImplCache;->getInstance(I)Lorg/codeaurora/ims/ImsConfigImplCache;

    move-result-object v4

    .line 302
    .local v4, "configCache":Lorg/codeaurora/ims/ImsConfigImplCache;
    if-eqz v4, :cond_8

    .line 303
    const/16 v5, 0x47

    invoke-virtual {v4, v5, v2}, Lorg/codeaurora/ims/ImsConfigImplCache;->setImsConfig(II)V

    .line 306
    :cond_8
    return v2
.end method

.method public static getInstance(I)Lorg/codeaurora/ims/ImsConfigImplOem;
    .locals 3
    .param p0, "phoneId"    # I

    .line 62
    sget-object v0, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    sget-object v1, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsConfigImplOem;

    monitor-exit v0

    return-object v1

    .line 67
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 68
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

    .line 72
    sget-object v0, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    sget-object v1, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsConfigImplOem;

    monitor-exit v0

    return-object v1

    .line 77
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImplOem;

    invoke-direct {v1, p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImplOem;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;I)V

    .line 78
    .local v1, "oemImpl":Lorg/codeaurora/ims/ImsConfigImplOem;
    sget-object v2, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    monitor-exit v0

    return-object v1

    .line 80
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

    .line 518
    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mPhoneId:I

    return v0
.end method

.method private isCarrierConfigLoaded()Z
    .locals 3

    .line 147
    const-string v0, "default_carrierconfig_loaded"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    .line 149
    .local v0, "bLoaded":Z
    if-nez v0, :cond_0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCarrierConfigLoaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->logi(Ljava/lang/String;)V

    .line 152
    :cond_0
    return v0
.end method

.method private isImsEnabledByPlatform()Z
    .locals 4

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "bEnabled":Z
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    iget v2, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 158
    .local v1, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_2

    .line 159
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v2

    if-nez v2, :cond_1

    .line 160
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

    .line 162
    :cond_2
    if-nez v0, :cond_3

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isImsEnabledByPlatform: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->logi(Ljava/lang/String;)V

    .line 165
    :cond_3
    return v0
.end method

.method private isImsStackReady()Z
    .locals 3

    .line 139
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getFeatureState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 140
    .local v0, "bReady":Z
    :goto_0
    if-nez v0, :cond_1

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isImsStackReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 143
    :cond_1
    return v0
.end method

.method private isValidImsSupportedServicesValue(I)Z
    .locals 1
    .param p1, "value"    # I

    .line 204
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

    .line 218
    const/4 v0, 0x0

    move v1, v0

    .line 220
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getImsSupportedServicesInCache()I

    move-result v2

    .line 221
    .local v2, "prev_value":I
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getImsSupportedServices()I

    move-result v3

    .line 222
    .local v3, "value":I
    if-eq v3, v2, :cond_0

    .line 223
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->broadcastImsSupportedServices(II)V

    .line 226
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsConfigImplOem;->isValidImsSupportedServicesValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 227
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->refreshImsConfigCache()V

    .line 228
    nop

    .line 252
    .end local v2    # "prev_value":I
    .end local v3    # "value":I
    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    if-lez v0, :cond_1

    .line 253
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->updateImsServiceConfig()V

    .line 255
    :cond_1
    return-void

    .line 231
    .restart local v2    # "prev_value":I
    .restart local v3    # "value":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 232
    monitor-enter p0

    .line 233
    const/4 v4, 0x5

    if-lt v1, v4, :cond_3

    .line 234
    :try_start_0
    const-string v4, "getImsSupportedServices failed finally, no more retry"

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 235
    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    .line 236
    monitor-exit p0

    return-void

    .line 249
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 239
    :cond_3
    iget v5, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    add-int/lit8 v5, v1, -0x1

    shl-int/2addr v4, v5

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    :try_start_1
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    goto :goto_1

    .line 242
    :catch_0
    move-exception v4

    .line 243
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

    .line 245
    .end local v4    # "ex":Ljava/lang/InterruptedException;
    :goto_1
    iget v4, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    if-nez v4, :cond_4

    .line 246
    const-string v0, "exit updateImsSupportedServicesAndNotify thread for new request"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 247
    monitor-exit p0

    return-void

    .line 249
    :cond_4
    monitor-exit p0

    .line 250
    .end local v2    # "prev_value":I
    .end local v3    # "value":I
    goto :goto_0

    .line 249
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

    .line 522
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

    .line 523
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 530
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

    .line 531
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 526
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

    .line 527
    return-void
.end method

.method private refreshImsConfigCache()V
    .locals 8

    .line 311
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->isImsEnabledByPlatform()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result v0

    .line 316
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 317
    return-void

    .line 319
    :cond_1
    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 320
    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mSubId:I

    .line 321
    return-void

    .line 323
    :cond_2
    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mSubId:I

    if-ne v1, v0, :cond_3

    .line 324
    return-void

    .line 327
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshImsConfigCache, subId changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object v1

    .line 329
    .local v1, "config":Lorg/codeaurora/ims/ImsConfigImpl;
    if-nez v1, :cond_4

    .line 330
    return-void

    .line 332
    :cond_4
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImplCache;->getInstance(I)Lorg/codeaurora/ims/ImsConfigImplCache;

    move-result-object v2

    .line 333
    .local v2, "configCache":Lorg/codeaurora/ims/ImsConfigImplCache;
    if-nez v2, :cond_5

    .line 334
    return-void

    .line 336
    :cond_5
    const/4 v3, 0x0

    .line 337
    .local v3, "item":I
    :goto_0
    const/16 v4, 0x47

    if-gt v3, v4, :cond_a

    .line 338
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsConfigImplCache;->isImsConfigExist(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 339
    goto :goto_1

    .line 341
    :cond_6
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/codeaurora/ims/ImsCallUtils;->isConfigRequestValid(II)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 342
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsConfigImplCache;->getImsConfigInt(I)I

    move-result v4

    .line 343
    .local v4, "val_prev":I
    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v5

    .line 344
    .local v5, "value":I
    if-eq v5, v4, :cond_7

    .line 345
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyProvisionedValueChanged, item "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is changed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v1, v3, v5}, Lorg/codeaurora/ims/ImsConfigImpl;->notifyProvisionedValueChanged(II)V

    .line 349
    .end local v4    # "val_prev":I
    .end local v5    # "value":I
    :cond_7
    goto :goto_1

    .line 350
    :cond_8
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsConfigImplCache;->getImsConfig(I)Ljava/lang/String;

    move-result-object v4

    .line 351
    .local v4, "val_prev":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigString(I)Ljava/lang/String;

    move-result-object v5

    .line 352
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 353
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyProvisionedValueChanged, item "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is changed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v1, v3, v5}, Lorg/codeaurora/ims/ImsConfigImpl;->notifyProvisionedValueChanged(ILjava/lang/String;)V

    .line 337
    .end local v4    # "val_prev":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_9
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 359
    .end local v3    # "item":I
    :cond_a
    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mSubId:I

    .line 360
    return-void
.end method

.method private sendBroadcastForEpdgIndicator(Z)V
    .locals 3
    .param p1, "isConnected"    # Z

    .line 509
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.internal.intent.action.EPDG_CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 511
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 512
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcastForEpdgIndicator, isConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->logi(Ljava/lang/String;)V

    .line 514
    return-void
.end method

.method private sendMessage(I)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I

    .line 489
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 490
    .local v0, "request":[B
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 492
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->addRilOemHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 494
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method private sendMessage(IS)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # S

    .line 498
    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 499
    .local v0, "request":[B
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 501
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x2

    invoke-direct {p0, v1, p1, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->addRilOemHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 502
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 504
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method private sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;
    .locals 7
    .param p1, "requestId"    # I
    .param p2, "request"    # [B

    .line 452
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mITelephony:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Landroid/os/RemoteException;

    const-string v2, "Cannot get Telephony Service"

    invoke-direct {v0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 455
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 456
    .local v1, "ar":Landroid/os/AsyncResult;
    return-object v1

    .line 459
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :cond_0
    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 460
    .local v0, "response":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendQcRilOemHookMsg: Outgoing Data is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImplOem;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 460
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 463
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/ims/ImsManager;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result v2

    .line 464
    .local v2, "subId":I
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mITelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2, p2, v0}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRaw(I[B[B)I

    move-result v3

    .line 465
    .local v3, "retVal":I
    if-ltz v3, :cond_2

    .line 466
    const/4 v4, 0x0

    .line 468
    .local v4, "validResponseBytes":[B
    if-lez v3, :cond_1

    .line 469
    new-array v4, v3, [B

    .line 470
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 472
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Response Data is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsConfigImplOem;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 472
    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 475
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Response retVal = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 477
    :goto_0
    new-instance v5, Landroid/os/AsyncResult;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6, v4, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .end local v4    # "validResponseBytes":[B
    move-object v1, v5

    .line 478
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    goto :goto_1

    .line 479
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

    .line 480
    new-instance v1, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ITelephony.sendOemRilRequestRaw returns "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 482
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v4, Landroid/os/AsyncResult;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, p2, v5, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .end local v1    # "ex":Ljava/lang/Exception;
    move-object v1, v4

    .line 485
    .local v1, "ar":Landroid/os/AsyncResult;
    :goto_1
    return-object v1
.end method

.method private updateImsServiceConfig()V
    .locals 4

    .line 124
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->isImsStackReady()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->isCarrierConfigLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 128
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_2

    .line 129
    const/4 v1, 0x0

    .line 130
    .local v1, "bForce":Z
    monitor-enter p0

    .line 131
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

    .line 132
    iput v3, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    .line 133
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Z)V

    .end local v1    # "bForce":Z
    goto :goto_1

    .line 133
    .restart local v1    # "bForce":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 136
    .end local v1    # "bForce":Z
    :cond_2
    :goto_1
    return-void

    .line 125
    .end local v0    # "imsManager":Lcom/android/ims/ImsManager;
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public getDomainName()Ljava/lang/String;
    .locals 3

    .line 373
    const-string v0, ""

    .line 374
    .local v0, "domain":Ljava/lang/String;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mITelephony:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result v1

    .line 376
    .local v1, "subId":I
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mITelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getIsimDomain(I)Ljava/lang/String;

    move-result-object v0

    .line 378
    .end local v1    # "subId":I
    :cond_0
    return-object v0
.end method

.method public getImsSupportedServicesInCache()I
    .locals 5

    .line 259
    const/4 v0, -0x1

    .line 260
    .local v0, "value":I
    const/16 v1, 0x47

    .line 262
    .local v1, "item":I
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImplCache;->getInstance(I)Lorg/codeaurora/ims/ImsConfigImplCache;

    move-result-object v2

    .line 263
    .local v2, "configCache":Lorg/codeaurora/ims/ImsConfigImplCache;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsConfigImplCache;->isImsConfigExist(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsConfigImplCache;->getImsConfigInt(I)I

    move-result v0

    .line 265
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

    .line 268
    :cond_0
    return v0
.end method

.method public getTVolteHysTimer()I
    .locals 6

    .line 383
    const/4 v0, -0x1

    .line 385
    .local v0, "val":S
    const v1, 0x5003c

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->sendMessage(I)Landroid/os/AsyncResult;

    move-result-object v1

    .line 387
    .local v1, "result":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 388
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

    .line 389
    :cond_0
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 390
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 391
    .local v2, "buf":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 392
    .local v3, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 393
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 394
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTVolteHysTimer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 395
    .end local v2    # "buf":[B
    .end local v3    # "byteBuf":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 396
    :cond_1
    const-string v2, "getTVolteHysTimer gets null response from RIL"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->loge(Ljava/lang/String;)V

    .line 398
    :goto_0
    return v0
.end method

.method public handleOemHookRawEvent([B)V
    .locals 4
    .param p1, "data"    # [B

    .line 94
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

    .line 95
    if-eqz p1, :cond_6

    array-length v0, p1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    goto/16 :goto_2

    .line 100
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->isImsStackReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    return-void

    .line 104
    :cond_1
    const/4 v0, 0x4

    .line 105
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

    .line 106
    .local v1, "msgId":I
    const v2, 0x40017

    if-ne v2, v1, :cond_2

    .line 107
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

    .line 108
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->updateImsServiceConfig()V

    .line 109
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->updateImsSupportedServicesAndNotify()V

    goto :goto_1

    .line 110
    :cond_2
    const v2, 0x40016

    if-ne v2, v1, :cond_3

    .line 111
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

    .line 112
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->updateImsServiceConfig()V

    goto :goto_1

    .line 115
    :cond_3
    const v2, 0x40018

    if-ne v2, v1, :cond_5

    .line 116
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

    .line 117
    const/16 v2, 0xc

    aget-byte v2, p1, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    move v2, v3

    .line 118
    .local v2, "isConnected":Z
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->sendBroadcastForEpdgIndicator(Z)V

    .line 121
    .end local v2    # "isConnected":Z
    :cond_5
    :goto_1
    return-void

    .line 96
    .end local v0    # "idx":I
    .end local v1    # "msgId":I
    :cond_6
    :goto_2
    const-string v0, "skip for invalid data"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public setTVolteHysTimer(I)I
    .locals 4
    .param p1, "value"    # I

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTVolteHysTimer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 403
    const/4 v0, -0x1

    .line 404
    .local v0, "retval":I
    int-to-short v1, p1

    const v2, 0x5003d

    invoke-direct {p0, v2, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->sendMessage(IS)Landroid/os/AsyncResult;

    move-result-object v1

    .line 407
    .local v1, "result":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 408
    const/4 v0, 0x0

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTVolteHysTimer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->loge(Ljava/lang/String;)V

    .line 411
    :cond_0
    return v0
.end method

.method public updateImsSupportedServicesAndNotify()V
    .locals 2

    .line 208
    monitor-enter p0

    .line 209
    :try_start_0
    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    if-lez v0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter updateImsSupportedServicesAndNotify, mImsSupportedServicesRetries: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    .line 214
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 215
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/ims/-$$Lambda$ImsConfigImplOem$oehbF2Ay4egetEcoBFMiDAC3fhk;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/-$$Lambda$ImsConfigImplOem$oehbF2Ay4egetEcoBFMiDAC3fhk;-><init>(Lorg/codeaurora/ims/ImsConfigImplOem;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 256
    return-void

    .line 215
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
