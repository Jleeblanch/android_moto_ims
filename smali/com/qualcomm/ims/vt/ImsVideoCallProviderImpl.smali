.class public Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
.super Landroid/telephony/ims/ImsVideoCallProvider;
.source "ImsVideoCallProviderImpl.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;


# static fields
.field private static final DBG:Z = true

.field private static final DELAY_BEFORE_SENDING_SEC:I = 0xea60

.field public static final EVENT_POLL_DATAUSAGE:I = 0x2

.field private static final EVENT_SEND_SESSION_MODIFY_CALL_CONFIRM_DONE:I = 0x1

.field private static final EVENT_SEND_SESSION_MODIFY_REQUEST_DONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VideoCall_ImsVideoCallProviderImpl"

.field private static mStartDatausagePolling:Z


# instance fields
.field private mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

.field private mCamera:Lcom/qualcomm/ims/vt/CameraController;

.field private mHandler:Landroid/os/Handler;

.field private mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

.field private mIsOpen:Z

.field private mLteVtRx:J

.field private mLteVtTx:J

.field private mMedia:Lcom/qualcomm/ims/vt/MediaController;

.field mRequestProfile:Landroid/telecom/VideoProfile;

.field mResponseProfile:Landroid/telecom/VideoProfile;

.field private mWifiVtRx:J

.field private mWifiVtTx:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mStartDatausagePolling:Z

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/ImsCallModification;)V
    .locals 2
    .param p1, "callSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "imsCallMod"    # Lorg/codeaurora/ims/ImsCallModification;

    .line 60
    invoke-direct {p0}, Landroid/telephony/ims/ImsVideoCallProvider;-><init>()V

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mLteVtRx:J

    .line 45
    iput-wide v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mLteVtTx:J

    .line 46
    iput-wide v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mWifiVtRx:J

    .line 47
    iput-wide v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mWifiVtTx:J

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsVideocallProviderImpl instance created callSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " imsCallMod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 64
    invoke-static {}, Lcom/qualcomm/ims/vt/CameraController;->getInstance()Lcom/qualcomm/ims/vt/CameraController;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    .line 65
    invoke-static {}, Lcom/qualcomm/ims/vt/MediaController;->getInstance()Lcom/qualcomm/ims/vt/MediaController;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    .line 66
    iput-object p2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    .line 68
    new-instance v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$1;-><init>(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .param p1, "x1"    # Landroid/os/Message;

    .line 33
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->handleSessionModifyDone(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .param p1, "x1"    # Landroid/os/Message;

    .line 33
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->handleSessionModifyConfirmDone(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .param p1, "x1"    # Landroid/os/Message;

    .line 33
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->handleDataUsagePoll(Landroid/os/Message;)V

    return-void
.end method

.method private handleDataUsagePoll(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDataUsagePoll msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 249
    sget-boolean v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mStartDatausagePolling:Z

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 251
    .local v0, "tMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 252
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->onRequestCallDataUsage()V

    .line 254
    .end local v0    # "tMsg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private handleSessionModifyConfirmDone(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSessionModifyConfirmDone msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 196
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 197
    .local v0, "ar":Landroid/os/AsyncResult;
    const/4 v1, 0x2

    .line 198
    .local v1, "status":I
    const/4 v2, 0x0

    .line 200
    .local v2, "responseProfile":Landroid/telecom/VideoProfile;
    if-eqz v0, :cond_1

    .line 201
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, Landroid/telecom/VideoProfile;

    .line 202
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 203
    const-string v3, "Session modify confirm success"

    invoke-direct {p0, v3}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 204
    const/4 v1, 0x1

    .line 205
    iput-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    goto :goto_0

    .line 207
    :cond_0
    const-string v3, "Session modify confirm error"

    invoke-direct {p0, v3}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    .line 208
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallUtils;->getUiErrorCode(Ljava/lang/Throwable;)I

    move-result v1

    .line 209
    iget-object v3, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    iget-object v3, v3, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 210
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v3

    const/4 v4, 0x4

    .line 209
    invoke-static {v3, v4}, Lorg/codeaurora/ims/ImsCallUtils;->convertToVideoProfile(II)Landroid/telecom/VideoProfile;

    move-result-object v2

    goto :goto_0

    .line 214
    :cond_1
    const-string v3, "handleSessionModifyConfirmDone: null message object"

    invoke-direct {p0, v3}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    .line 216
    :goto_0
    iget-object v3, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, v1, v3, v2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 217
    return-void
.end method

.method private handleSessionModifyDone(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSessionModifyDone msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 224
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 225
    .local v0, "ar":Landroid/os/AsyncResult;
    const/4 v1, 0x2

    .line 226
    .local v1, "status":I
    if-eqz v0, :cond_1

    .line 227
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 229
    const-string v2, "Session modify success"

    invoke-direct {p0, v2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 230
    const/4 v1, 0x1

    .line 231
    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iput-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    goto :goto_0

    .line 233
    :cond_0
    const-string v2, "Session modify error"

    invoke-direct {p0, v2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    .line 234
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->getUiErrorCode(Ljava/lang/Throwable;)I

    move-result v1

    .line 235
    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 236
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v2

    const/4 v3, 0x4

    .line 235
    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsCallUtils;->convertToVideoProfile(II)Landroid/telecom/VideoProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    goto :goto_0

    .line 240
    :cond_1
    const-string v2, "handleSessionModifyDone:null message object"

    invoke-direct {p0, v2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    .line 242
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iget-object v3, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, v1, v2, v3}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 243
    return-void
.end method

.method private isSessionValid()Z
    .locals 3

    .line 475
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    .line 476
    .local v0, "isValid":Z
    iget-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    if-nez v1, :cond_0

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session is closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    .line 479
    :cond_0
    return v0
.end method

.method private isVideoPauseRequested(Landroid/telecom/VideoProfile;)Z
    .locals 2
    .param p1, "requestProfile"    # Landroid/telecom/VideoProfile;

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVideoPauseRequested requestProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 483
    const-string v0, "VideoCall_ImsVideoCallProviderImpl"

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->logString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-void
.end method

.method private logString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 487
    const-string v0, "VideoCall_ImsVideoCallProviderImpl"

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->logString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return-void
.end method


# virtual methods
.method getCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getLteVtRx()J
    .locals 2

    .line 315
    iget-wide v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mLteVtRx:J

    return-wide v0
.end method

.method public getLteVtTx()J
    .locals 2

    .line 311
    iget-wide v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mLteVtTx:J

    return-wide v0
.end method

.method public getOngoingCallModify()Landroid/os/Bundle;
    .locals 6

    .line 426
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallModification;->getOngoingCallModify()Lorg/codeaurora/ims/CallModify;

    move-result-object v0

    .line 427
    .local v0, "modify":Lorg/codeaurora/ims/CallModify;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOngoingCallModify modify ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 428
    const/4 v1, 0x0

    .line 429
    .local v1, "ret":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v2, :cond_0

    .line 430
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v1, v2

    .line 431
    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v2

    .line 432
    .local v2, "from":I
    iget-object v3, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 433
    .local v3, "to":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOngoingCallModify call type from="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", to="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 434
    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->convertCallTypeToVideoState(I)I

    move-result v2

    .line 435
    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallUtils;->convertCallTypeToVideoState(I)I

    move-result v3

    .line 436
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOngoingCallModify video state from="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", to="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 437
    const-string v4, "from"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 438
    const-string v4, "to"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 440
    .end local v2    # "from":I
    .end local v3    # "to":I
    :cond_0
    return-object v1
.end method

.method public getWifiVtRx()J
    .locals 2

    .line 323
    iget-wide v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mWifiVtRx:J

    return-wide v0
.end method

.method public getWifiVtTx()J
    .locals 2

    .line 319
    iget-wide v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mWifiVtTx:J

    return-wide v0
.end method

.method isOpen()Z
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isOpen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 102
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    return v0
.end method

.method public onActive(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 5
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActive session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)I

    move-result v0

    .line 449
    .local v0, "videoState":I
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    const/4 v1, 0x1

    sput-boolean v1, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mStartDatausagePolling:Z

    .line 451
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 452
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 453
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 454
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mStartDatausagePolling:Z

    .line 456
    :goto_0
    return-void
.end method

.method public onCallDataUsageChanged(J)V
    .locals 2
    .param p1, "dataUsage"    # J

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallDataUsageChanged: dataUsage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 297
    long-to-int v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->changeCallDataUsage(J)V

    .line 298
    return-void
.end method

.method public onCallDataUsageChanged(JJJJ)V
    .locals 2
    .param p1, "lteUplink"    # J
    .param p3, "lteDownlink"    # J
    .param p5, "wifiUplink"    # J
    .param p7, "wifiDownlink"    # J

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallDataUsageChanged: lteUplink = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " lteDownlink = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "wifiUplink = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " wifiDownlink = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 304
    iput-wide p3, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mLteVtRx:J

    .line 305
    iput-wide p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mLteVtTx:J

    .line 306
    iput-wide p7, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mWifiVtRx:J

    .line 307
    iput-wide p5, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mWifiVtTx:J

    .line 308
    return-void
.end method

.method public onCallModifyInitiated(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/CallModify;)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 418
    return-void
.end method

.method public onCallTypeChanging(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "newCallType"    # I

    .line 422
    return-void
.end method

.method public onClosed(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    .line 390
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    .line 391
    iput-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 392
    iput-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    .line 393
    sput-boolean v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mStartDatausagePolling:Z

    .line 394
    return-void
.end method

.method public onDisconnected(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisconnected session"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    .line 385
    return-void
.end method

.method public onHold(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHold session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 461
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mStartDatausagePolling:Z

    .line 462
    return-void
.end method

.method public onRequestCallDataUsage()V
    .locals 3

    .line 360
    const-string v0, "onRequestCallDataUsage"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 361
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMediaId()I

    move-result v0

    .line 364
    .local v0, "mediaId":I
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->hasMediaIdValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {v1, v0}, Lcom/qualcomm/ims/vt/MediaController;->requestCallDataUsage(I)V

    goto :goto_0

    .line 367
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestCallDataUsage: Invalid MediaId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    .line 369
    :goto_0
    return-void
.end method

.method public onRequestCameraCapabilities()V
    .locals 2

    .line 283
    const-string v0, "onRequestCameraCapabilities"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 284
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/CameraController;->getCameraCapabilities()Landroid/telecom/VideoProfile$CameraCapabilities;

    move-result-object v0

    .line 287
    .local v0, "cc":Landroid/telecom/VideoProfile$CameraCapabilities;
    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    goto :goto_0

    .line 290
    :cond_1
    const-string v1, "Error onRequestCameraCapabilities camera capabilities is null"

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    .line 292
    :goto_0
    return-void
.end method

.method public onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 4
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSendSessionModifyRequest, videoState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " quality= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 173
    iput-object p2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    .line 174
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isVideoPauseRequested(Landroid/telecom/VideoProfile;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, v1}, Lorg/codeaurora/ims/ImsCallModification;->changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V

    goto :goto_1

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallModification;->isLocallyPaused()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    .line 180
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallModification;->isGoingToPause()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 186
    .local v0, "newMsg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->convertVideoStateToCallType(I)I

    move-result v2

    .line 187
    .local v2, "callType":I
    iget-object v3, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-virtual {v3, v0, v2, v1}, Lorg/codeaurora/ims/ImsCallModification;->changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V

    .end local v0    # "newMsg":Landroid/os/Message;
    .end local v2    # "callType":I
    goto :goto_1

    .line 182
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, v1}, Lorg/codeaurora/ims/ImsCallModification;->changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V

    .line 189
    :goto_1
    return-void
.end method

.method public onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 4
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSendSessionModifyResponse, responseProfile state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " quality= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 269
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 271
    :cond_0
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->convertVideoStateToCallType(I)I

    move-result v0

    .line 272
    .local v0, "callType":I
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 275
    .local v1, "newMsg":Landroid/os/Message;
    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lorg/codeaurora/ims/ImsCallModification;->acceptConnectionTypeChange(ILjava/util/Map;Landroid/os/Message;)V

    .line 276
    return-void
.end method

.method public onSetCamera(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetCamera, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    if-eqz p1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->getCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/qualcomm/ims/vt/CameraController;->open(Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->getCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/CameraController;->close(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 120
    :goto_0
    return-void
.end method

.method public onSetDeviceOrientation(I)V
    .locals 2
    .param p1, "rotation"    # I

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetDeviceOrientation, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/MediaController;->setDeviceOrientation(I)V

    .line 153
    return-void
.end method

.method public onSetDisplaySurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetDisplaySurface, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 139
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/MediaController;->setDisplaySurface(Landroid/view/Surface;)V

    .line 142
    return-void
.end method

.method public onSetPauseImage(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetPauseImage, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 377
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/MediaController;->setPauseImage(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method public onSetPreviewSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetPreviewSurface, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->getCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/qualcomm/ims/vt/CameraController;->setPreviewSurface(Landroid/view/Surface;Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 131
    return-void
.end method

.method public onSetZoom(F)V
    .locals 2
    .param p1, "value"    # F

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetZoom, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/CameraController;->setZoom(F)V

    .line 164
    return-void
.end method

.method public onUnsolCallModify(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/CallModify;)V
    .locals 4
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnsolCallModify session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " callModify= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 403
    iget-object v0, p2, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 404
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->convertCallTypeToVideoState(I)I

    move-result v0

    .line 405
    .local v0, "newVideoState":I
    new-instance v1, Landroid/telecom/VideoProfile;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 406
    .local v1, "vcp":Landroid/telecom/VideoProfile;
    iput-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    .line 407
    invoke-virtual {p2}, Lorg/codeaurora/ims/CallModify;->error()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    iget v2, p2, Lorg/codeaurora/ims/CallModify;->error:I

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->convertImsErrorToUiError(I)I

    move-result v2

    .line 410
    .local v2, "uiError":I
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 411
    .end local v2    # "uiError":I
    goto :goto_0

    .line 412
    :cond_0
    invoke-virtual {p0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 414
    :goto_0
    return-void
.end method

.method public onUpdateOrientationMode(I)V
    .locals 2
    .param p1, "orientationMode"    # I

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateOrientationMode orientation mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 351
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateOrientationMode(I)V

    .line 353
    return-void
.end method

.method public onUpdatePeerDimensions(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdatePeerDimensions width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 329
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 331
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->changePeerDimensions(II)V

    .line 332
    return-void
.end method

.method public onUpdateVideoQuality(I)V
    .locals 2
    .param p1, "videoQuality"    # I

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateVideoQuality video quality is="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 344
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 346
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->changeVideoQuality(I)V

    .line 347
    return-void
.end method

.method public sendCameraStatus(Z)V
    .locals 1
    .param p1, "hasFailed"    # Z

    .line 335
    const-string v0, "sendCameraFailure"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 336
    if-eqz p1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 337
    :cond_0
    const/4 v0, 0x6

    .line 339
    .local v0, "status":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->handleCallSessionEvent(I)V

    .line 340
    return-void
.end method

.method public updateMergeStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMergeStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/MediaController;->updateMergeStatus(I)V

    .line 98
    return-void
.end method
