.class public Lorg/codeaurora/ims/ImsSmsImpl;
.super Landroid/telephony/ims/stub/ImsSmsImplBase;
.source "ImsSmsImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsSmsImpl$ImsSmsHandler;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "ImsSmsImpl"

.field public static final MT_IMS_STATUS_VALIDATION_FAIL:I = 0x2

.field public static final MT_IMS_STATUS_VALIDATION_NONE:I = 0x0

.field public static final MT_IMS_STATUS_VALIDATION_PASS:I = 0x1


# instance fields
.field private final EVENT_SEND_SMS_RESPONSE:I

.field private final EVENT_UNSOL_INCOMING_SMS:I

.field private final EVENT_UNSOL_STATUS_REPORT:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIncomingToken:I

.field private final mLock:Ljava/lang/Object;

.field private mPhoneId:I

.field private mSmsCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mSmsFwkReady:Z

.field private mSmsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "ci"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 55
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsSmsImplBase;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mLock:Ljava/lang/Object;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mPhoneId:I

    .line 41
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsMap:Ljava/util/HashMap;

    .line 44
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsFwkReady:Z

    .line 45
    iput v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mIncomingToken:I

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->EVENT_SEND_SMS_RESPONSE:I

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->EVENT_UNSOL_INCOMING_SMS:I

    .line 49
    const/4 v1, 0x3

    iput v1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->EVENT_UNSOL_STATUS_REPORT:I

    .line 56
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mContext:Landroid/content/Context;

    .line 57
    iput-object p3, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 58
    iput p2, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mPhoneId:I

    .line 59
    new-instance v2, Landroid/os/HandlerThread;

    const-class v3, Lorg/codeaurora/ims/ImsSmsImpl;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 60
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 61
    new-instance v2, Lorg/codeaurora/ims/ImsSmsImpl$ImsSmsHandler;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/codeaurora/ims/ImsSmsImpl$ImsSmsHandler;-><init>(Lorg/codeaurora/ims/ImsSmsImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    .line 62
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->setOnIncomingImsSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->setOnImsSmsStatusReport(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lorg/codeaurora/ims/ImsSmsImpl;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSmsImpl;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 31
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSmsImpl;->sendResponseToFramework(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/ImsSmsImpl;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSmsImpl;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 31
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSmsImpl;->sendSmsToFramework(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lorg/codeaurora/ims/ImsSmsImpl;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSmsImpl;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 31
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSmsImpl;->sendStatusReportToFramework(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private getSubId()I
    .locals 2

    .line 75
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    return v0
.end method

.method private isRetryAlwaysOverIMS()Z
    .locals 5

    .line 79
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 81
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    .line 82
    .local v1, "b":Landroid/os/PersistableBundle;
    const/4 v2, 0x0

    .line 83
    .local v2, "retryAlwaysOverIMS":Z
    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSmsImpl;->getSubId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 86
    :cond_0
    if-eqz v1, :cond_1

    .line 87
    const-string v3, "config_retry_sms_over_ims"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 89
    :cond_1
    return v2
.end method

.method private isSmsDeliverCompleted(Lorg/codeaurora/ims/sms/StatusReport;)Z
    .locals 6
    .param p1, "report"    # Lorg/codeaurora/ims/sms/StatusReport;

    .line 147
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 148
    return v0

    .line 152
    :cond_0
    const-string v1, "3gpp2"

    invoke-virtual {p1}, Lorg/codeaurora/ims/sms/StatusReport;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 153
    return v2

    .line 156
    :cond_1
    invoke-virtual {p1}, Lorg/codeaurora/ims/sms/StatusReport;->getPdu()[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/codeaurora/ims/sms/StatusReport;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 157
    .local v1, "msg":Landroid/telephony/SmsMessage;
    if-eqz v1, :cond_4

    .line 158
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getStatus()I

    move-result v3

    .line 159
    .local v3, "status":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSmsDeliverCompleted : status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    const/16 v4, 0x40

    if-ge v3, v4, :cond_3

    const/16 v4, 0x20

    if-ge v3, v4, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    move v0, v2

    :goto_1
    return v0

    .line 163
    .end local v3    # "status":I
    :cond_4
    return v0
.end method

.method private sendDeliveryErrorToRIL()V
    .locals 4

    .line 71
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->acknowledgeSms(IILandroid/os/Message;)V

    .line 72
    return-void
.end method

.method private sendResponseToFramework(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 93
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/sms/SmsResponse;

    .line 94
    .local v0, "smsResponse":Lorg/codeaurora/ims/sms/SmsResponse;
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 95
    .local v1, "token":I
    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsFwkReady:Z

    if-nez v2, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/sms/SmsResponse;->getMsgRef()I

    move-result v2

    .line 101
    .local v2, "ref":I
    invoke-virtual {v0}, Lorg/codeaurora/ims/sms/SmsResponse;->getResult()I

    move-result v3

    .line 102
    .local v3, "result":I
    invoke-virtual {v0}, Lorg/codeaurora/ims/sms/SmsResponse;->getReason()I

    move-result v4

    .line 103
    .local v4, "reason":I
    const/4 v5, 0x4

    if-ne v3, v5, :cond_1

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSmsImpl;->isRetryAlwaysOverIMS()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 104
    const/4 v3, 0x3

    .line 106
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSendSmsResult:: token:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " smsResponse:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v5, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :try_start_1
    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/codeaurora/ims/ImsSmsImpl;->onSendSmsResult(IIII)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    goto :goto_0

    .line 112
    :catch_0
    move-exception v5

    .line 113
    .local v5, "ex":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSendSmsResult: Ex:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .end local v5    # "ex":Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 109
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 96
    .end local v2    # "ref":I
    .end local v3    # "result":I
    .end local v4    # "reason":I
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smsResponse ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " isFrameworkRead="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsFwkReady:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method private sendSmsToFramework(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 118
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/sms/IncomingSms;

    .line 119
    .local v0, "incomingSms":Lorg/codeaurora/ims/sms/IncomingSms;
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsFwkReady:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 125
    :cond_0
    iget v1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mIncomingToken:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mIncomingToken:I

    .line 135
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSmsReceived:: token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mIncomingToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " incomingSms:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    :try_start_0
    iget v1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mIncomingToken:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mIncomingToken:I

    invoke-virtual {v0}, Lorg/codeaurora/ims/sms/IncomingSms;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/codeaurora/ims/sms/IncomingSms;->getPdu()[B

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSmsImpl;->onSmsReceived(ILjava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto :goto_0

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "ex":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSmsReceived: Ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSmsImpl;->sendDeliveryErrorToRIL()V

    .line 144
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 120
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incomingSms ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isFrameworkRead="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsFwkReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSmsImpl;->sendDeliveryErrorToRIL()V

    .line 123
    return-void
.end method

.method private sendStatusReportErrorToRIL(I)V
    .locals 3
    .param p1, "msgRef"    # I

    .line 67
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->acknowledgeSmsReport(IILandroid/os/Message;)V

    .line 68
    return-void
.end method

.method private sendStatusReportToFramework(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 167
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/sms/StatusReport;

    .line 168
    .local v0, "statusReport":Lorg/codeaurora/ims/sms/StatusReport;
    const/4 v1, 0x0

    .line 169
    .local v1, "token":I
    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsFwkReady:Z

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 175
    :cond_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/sms/StatusReport;->getMsgRef()I

    move-result v2

    .line 176
    .local v2, "ref":I
    invoke-virtual {v0}, Lorg/codeaurora/ims/sms/StatusReport;->getFormat()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "format":Ljava/lang/String;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 178
    :try_start_0
    iget-object v5, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 179
    .local v5, "tokenObj":Ljava/lang/Integer;
    if-nez v5, :cond_1

    const/4 v6, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_0
    move v1, v6

    .line 180
    .end local v5    # "tokenObj":Ljava/lang/Integer;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSmsStatusReportReceived:: token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " statusReport:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    :try_start_1
    invoke-virtual {v0}, Lorg/codeaurora/ims/sms/StatusReport;->getPdu()[B

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/codeaurora/ims/ImsSmsImpl;->onSmsStatusReportReceived(IILjava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 190
    goto :goto_1

    .line 187
    :catch_0
    move-exception v4

    .line 188
    .local v4, "ex":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSmsStatusReportReceived: Ex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsSmsImpl;->sendStatusReportErrorToRIL(I)V

    .line 193
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    :goto_1
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsSmsImpl;->isSmsDeliverCompleted(Lorg/codeaurora/ims/sms/StatusReport;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 194
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 195
    :try_start_2
    iget-object v5, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    monitor-exit v4

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 198
    :cond_2
    :goto_2
    return-void

    .line 180
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 170
    .end local v2    # "ref":I
    .end local v3    # "format":Ljava/lang/String;
    :cond_3
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "statusReport ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " isFrameworkRead="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsFwkReady:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsSmsImpl;->sendStatusReportErrorToRIL(I)V

    .line 173
    return-void
.end method


# virtual methods
.method public acknowledgeSms(III)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 241
    const-string v0, "ImsSmsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acknowledgeSms:: token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " msgRef:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->acknowledgeSms(IILandroid/os/Message;)V

    .line 245
    return-void
.end method

.method public acknowledgeSmsReport(III)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 249
    const-string v0, "ImsSmsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acknowledgeSmsReport:: token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " msgRef:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->acknowledgeSmsReport(IILandroid/os/Message;)V

    .line 253
    return-void
.end method

.method public getSmsFormat()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->getSmsFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReady()V
    .locals 1

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsFwkReady:Z

    .line 263
    return-void
.end method

.method public sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 9
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "isRetry"    # Z
    .param p6, "pdu"    # [B

    .line 232
    const-string v0, "ImsSmsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSms:: token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " msgRef:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isRetry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    .line 236
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 235
    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v2 .. v8}, Lorg/codeaurora/ims/ImsSenderRxr;->sendSms(ILjava/lang/String;Ljava/lang/String;Z[BLandroid/os/Message;)V

    .line 237
    return-void
.end method
