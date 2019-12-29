.class public Lorg/codeaurora/ims/ImsServiceSub;
.super Landroid/telephony/ims/feature/MmTelFeature;
.source "ImsServiceSub.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;,
        Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;,
        Lorg/codeaurora/ims/ImsServiceSub$SetCapabilityListener;
    }
.end annotation


# static fields
.field static final CF_REASON_UNCONDITIONAL:I = 0x0

.field private static final EVENT_GET_PACKET_COUNT:I = 0x12

.field private static final EVENT_GET_PACKET_ERROR_COUNT:I = 0x13

.field private static final IKEv2_AUTH_FAILURE:I = 0x5

.field private static final INVALID_FEATURE_VALUE:I = -0x2

.field private static final INVALID_RAT_VALUE:I = -0x2

.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceSub"

.field private static final SERVICE_TYPE_MAX:I = 0x6

.field private static sTaskExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final EVENT_CALL_AUTO_REJECT:I

.field private final EVENT_CALL_MODIFY:I

.field private final EVENT_CALL_STATE_CHANGE:I

.field private final EVENT_CALL_TRANSFER:I

.field private final EVENT_CANCEL_MODIFY_CALL:I

.field private final EVENT_CONFERENCE:I

.field private final EVENT_GEOLOCATION_INFO_REQUEST:I

.field private final EVENT_GEOLOCATION_RESPONSE:I

.field private final EVENT_GET_CALL_FORWARD_TIMER:I

.field private final EVENT_GET_CURRENT_CALLS:I

.field private final EVENT_GET_HANDOVER_CONFIG:I

.field private final EVENT_GET_SRV_STATUS:I

.field private final EVENT_GET_VOLTE_PREF:I

.field private final EVENT_HANDOVER_STATE_CHANGED:I

.field private final EVENT_IMS_STATE_CHANGED:I

.field private final EVENT_IMS_STATE_DONE:I

.field private final EVENT_MWI:I

.field private final EVENT_PARTICIPANT_STATUS_INFO:I

.field private final EVENT_REFRESH_CONF_INFO:I

.field private final EVENT_REGISTRATION_BLOCK_STATUS:I

.field private final EVENT_SET_CALL_FORWARD_TIMER:I

.field private final EVENT_SET_HANDOVER_CONFIG:I

.field private final EVENT_SET_IMS_STATE:I

.field private final EVENT_SET_SRV_STATUS:I

.field private final EVENT_SET_VOLTE_PREF:I

.field private final EVENT_SRVCC_STATE_CHANGED:I

.field private final EVENT_SRV_STATUS_UPDATE:I

.field private final EVENT_SSAC_CHANGED:I

.field private final EVENT_SSAC_RESPONSE:I

.field private final EVENT_SUPP_SRV_UPDATE:I

.field private final EVENT_TTY_STATE_CHANGED:I

.field private final EVENT_VOPS_CHANGED:I

.field private final EVENT_VOPS_RESPONSE:I

.field private final EVENT_VOWIFI_CALL_QUALITY_UPDATE:I

.field private final MAX_FEATURES_SUPPORTED:I

.field private final SSAC_VOICE_BARRING_ZERO:I

.field private mCapabilitiesChangedRegistrants:Landroid/os/RegistrantList;

.field private mCapabilityCallback:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

.field protected mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mConferenceRequestedbyTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

.field private mContext:Landroid/content/Context;

.field mDisabledFeatures:[I

.field mEnabledFeatures:[I

.field private mFeatureCallbackHandler:Landroid/os/Handler;

.field private mFeatureHandlerThread:Landroid/os/HandlerThread;

.field private mFeatureIsOpen:Z

.field private mHandler:Landroid/os/Handler;

.field private mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

.field private mImsEcbmImpl:Lorg/codeaurora/ims/ImsEcbmImpl;

.field private mImsMultiEndpointImpl:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

.field private mImsReg:Lorg/codeaurora/ims/ImsRegistrationImpl;

.field private mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

.field private mImsSms:Lorg/codeaurora/ims/ImsSmsImpl;

.field private mImsUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

.field private mIsSsacVoiceBarred:Z

.field private mIsVopsEnabled:Z

.field private mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

.field private mMultiIdentityImpl:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

.field private mMultiIdentityLock:Ljava/lang/Object;

.field private mMwiResponse:Lorg/codeaurora/ims/Mwi;

.field protected mPhoneId:I

.field private mQtiImsInterfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/codeaurora/ims/internal/IQtiImsExtListener;",
            ">;"
        }
    .end annotation
.end field

.field private mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/codeaurora/ims/internal/IQtiImsExtListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRilCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private mSelfIndentityUris:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

.field private mSubController:Lorg/codeaurora/ims/ImsSubController;

.field private mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 139
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/ims/ImsServiceSub;->sTaskExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/ImsSubController;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p4, "subController"    # Lorg/codeaurora/ims/ImsSubController;
    .param p5, "csCommandsInterface"    # Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 227
    invoke-direct/range {p0 .. p0}, Landroid/telephony/ims/feature/MmTelFeature;-><init>()V

    .line 100
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 112
    iput-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    .line 113
    iput-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mRilCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 114
    iput-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsMultiEndpointImpl:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    .line 115
    iput-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    .line 117
    iput-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mSelfIndentityUris:Ljava/util/HashSet;

    .line 120
    const/4 v3, 0x0

    iput-boolean v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureIsOpen:Z

    .line 122
    iput-boolean v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    .line 123
    iput-boolean v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    .line 124
    iput v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->SSAC_VOICE_BARRING_ZERO:I

    .line 142
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsInterfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 146
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 149
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mMultiIdentityLock:Ljava/lang/Object;

    .line 152
    const/4 v4, 0x3

    iput v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->MAX_FEATURES_SUPPORTED:I

    .line 154
    const/4 v5, 0x1

    iput v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CALL_STATE_CHANGE:I

    .line 155
    const/4 v6, 0x2

    iput v6, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_IMS_STATE_CHANGED:I

    .line 156
    iput v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_IMS_STATE_DONE:I

    .line 157
    const/4 v4, 0x4

    iput v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SRV_STATUS_UPDATE:I

    .line 158
    const/4 v7, 0x5

    iput v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_SRV_STATUS:I

    .line 159
    const/4 v8, 0x6

    iput v8, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_SRV_STATUS:I

    .line 160
    const/4 v9, 0x7

    iput v9, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_CURRENT_CALLS:I

    .line 161
    const/16 v9, 0x8

    iput v9, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SUPP_SRV_UPDATE:I

    .line 162
    const/16 v10, 0x9

    iput v10, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_IMS_STATE:I

    .line 163
    const/16 v10, 0xa

    iput v10, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_TTY_STATE_CHANGED:I

    .line 164
    const/16 v11, 0xb

    iput v11, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_REFRESH_CONF_INFO:I

    .line 166
    const/16 v12, 0xc

    iput v12, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_HANDOVER_STATE_CHANGED:I

    .line 167
    const/16 v13, 0xd

    iput v13, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CALL_MODIFY:I

    .line 168
    const/16 v14, 0xe

    iput v14, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_MWI:I

    .line 169
    const/16 v15, 0xf

    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CONFERENCE:I

    .line 170
    const/16 v15, 0x10

    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_CALL_FORWARD_TIMER:I

    .line 171
    const/16 v15, 0x11

    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_CALL_FORWARD_TIMER:I

    .line 174
    const/16 v15, 0x14

    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SRVCC_STATE_CHANGED:I

    .line 175
    const/16 v7, 0x15

    iput v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GEOLOCATION_INFO_REQUEST:I

    .line 176
    const/16 v7, 0x16

    iput v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GEOLOCATION_RESPONSE:I

    .line 177
    const/16 v7, 0x17

    iput v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_VOWIFI_CALL_QUALITY_UPDATE:I

    .line 178
    const/16 v7, 0x18

    iput v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CALL_TRANSFER:I

    .line 179
    const/16 v7, 0x19

    iput v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_VOPS_CHANGED:I

    .line 180
    const/16 v7, 0x1a

    iput v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SSAC_CHANGED:I

    .line 181
    const/16 v7, 0x1b

    iput v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_VOPS_RESPONSE:I

    .line 182
    const/16 v7, 0x1c

    iput v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SSAC_RESPONSE:I

    .line 183
    const/16 v7, 0x1d

    iput v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_PARTICIPANT_STATUS_INFO:I

    .line 184
    const/16 v7, 0x1e

    iput v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_VOLTE_PREF:I

    .line 185
    const/16 v7, 0x1f

    iput v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_VOLTE_PREF:I

    .line 186
    const/16 v7, 0x20

    iput v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_HANDOVER_CONFIG:I

    .line 187
    const/16 v7, 0x21

    iput v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_HANDOVER_CONFIG:I

    .line 188
    const/16 v7, 0x22

    iput v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_REGISTRATION_BLOCK_STATUS:I

    .line 189
    const/16 v7, 0x23

    iput v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CANCEL_MODIFY_CALL:I

    .line 190
    const/16 v7, 0x24

    iput v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CALL_AUTO_REJECT:I

    .line 202
    const/4 v7, -0x1

    iput v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    .line 203
    new-array v7, v8, [I

    fill-array-data v7, :array_0

    iput-object v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    .line 211
    new-array v7, v8, [I

    fill-array-data v7, :array_1

    iput-object v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->mDisabledFeatures:[I

    .line 219
    new-instance v7, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v7}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 223
    new-instance v7, Landroid/os/RegistrantList;

    invoke-direct {v7}, Landroid/os/RegistrantList;-><init>()V

    iput-object v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilitiesChangedRegistrants:Landroid/os/RegistrantList;

    .line 228
    invoke-virtual {v0, v5}, Lorg/codeaurora/ims/ImsServiceSub;->setFeatureState(I)V

    .line 229
    iput v1, v0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    .line 230
    move-object/from16 v7, p1

    iput-object v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    .line 231
    move-object/from16 v8, p3

    iput-object v8, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 232
    move-object/from16 v3, p4

    iput-object v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    .line 233
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[phoneId="

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] Constructor :: Registering with Sub Controller."

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 235
    new-instance v10, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    invoke-direct {v10, v0}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;-><init>(Lorg/codeaurora/ims/ImsServiceSub;)V

    iput-object v10, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 237
    new-instance v10, Lorg/codeaurora/ims/ImsRegistrationImpl;

    invoke-direct {v10}, Lorg/codeaurora/ims/ImsRegistrationImpl;-><init>()V

    iput-object v10, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsReg:Lorg/codeaurora/ims/ImsRegistrationImpl;

    .line 238
    new-instance v10, Landroid/os/HandlerThread;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, "FeatureHandlerThread"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v13}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v10, v0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureHandlerThread:Landroid/os/HandlerThread;

    .line 239
    iget-object v10, v0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->start()V

    .line 240
    new-instance v10, Landroid/os/Handler;

    iget-object v13, v0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v13}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-direct {v10, v13}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v10, v0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureCallbackHandler:Landroid/os/Handler;

    .line 241
    iget-object v10, v0, Lorg/codeaurora/ims/ImsServiceSub;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    invoke-virtual {v10, v0, v1}, Lorg/codeaurora/ims/ImsSubController;->registerListener(Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;I)V

    .line 242
    iget-object v10, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v13, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v13, v6, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 246
    iget-object v6, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v10, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10, v4, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForSrvStatusUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 247
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v6, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v5, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 248
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v11, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRefreshConfInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 249
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v12, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForHandoverStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 250
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x15

    invoke-virtual {v4, v5, v6, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForGeolocationRequest(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 251
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x19

    invoke-virtual {v4, v5, v6, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForVopsStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 252
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x1a

    invoke-virtual {v4, v5, v6, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForSsacStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 253
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x1d

    invoke-virtual {v4, v5, v6, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForParticipantStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 254
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x22

    invoke-virtual {v4, v5, v6, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRegistrationBlockStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 255
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x24

    invoke-virtual {v4, v5, v6, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForCallAutoRejection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 257
    move-object/from16 v4, p5

    iput-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mRilCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 258
    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mRilCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-interface {v5, v6, v15, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 261
    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v6, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x17

    invoke-virtual {v5, v6, v10, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForVoWiFiCallQualityUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 264
    new-instance v5, Lorg/codeaurora/ims/ImsEcbmImpl;

    iget-object v6, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v5, v0, v6}, Lorg/codeaurora/ims/ImsEcbmImpl;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsEcbmImpl:Lorg/codeaurora/ims/ImsEcbmImpl;

    .line 267
    new-instance v5, Lorg/codeaurora/ims/ImsUtImpl;

    iget-object v6, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v10, v0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v5, v0, v6, v10}, Lorg/codeaurora/ims/ImsUtImpl;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    .line 270
    new-instance v5, Lorg/codeaurora/ims/ImsConfigImpl;

    iget-object v6, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v10, v0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v5, v0, v6, v10}, Lorg/codeaurora/ims/ImsConfigImpl;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 273
    new-instance v5, Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    iget-object v6, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v10, v0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v10, v0}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;)V

    iput-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsMultiEndpointImpl:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    .line 276
    new-instance v5, Lorg/codeaurora/ims/ImsSmsImpl;

    iget-object v6, v0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget v10, v0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    iget-object v11, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v5, v6, v10, v11}, Lorg/codeaurora/ims/ImsSmsImpl;-><init>(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsSms:Lorg/codeaurora/ims/ImsSmsImpl;

    .line 279
    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v6, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v9, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 282
    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v6, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v9, 0xe

    invoke-virtual {v5, v6, v9, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForMwi(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 283
    new-instance v5, Lorg/codeaurora/ims/Mwi;

    invoke-direct {v5}, Lorg/codeaurora/ims/Mwi;-><init>()V

    iput-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    .line 286
    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v6, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v9, 0xa

    invoke-virtual {v5, v6, v9, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForTtyStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 288
    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v6, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v9, 0xd

    invoke-virtual {v5, v6, v9, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForModifyCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 289
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->initServiceStatus()V

    .line 292
    new-instance v2, Lorg/codeaurora/ims/ImsServiceStateReceiver;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget v6, v0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-direct {v2, v0, v5, v6}, Lorg/codeaurora/ims/ImsServiceStateReceiver;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;I)V

    iput-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    .line 293
    iget-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v6, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 297
    iget-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->updateHDIcon(ZZ)V

    .line 298
    iget-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->queryServiceStatus(Landroid/os/Message;)V

    .line 300
    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 97
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    return-object v0
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Ljava/lang/String;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 97
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/codeaurora/ims/ImsServiceSub;Landroid/telephony/ims/ImsReasonInfo;II)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->sendBroadcastForDisconnected(Landroid/telephony/ims/ImsReasonInfo;II)V

    return-void
.end method

.method static synthetic access$1200(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 97
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSelfIndentityUris:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1202(Lorg/codeaurora/ims/ImsServiceSub;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Ljava/util/HashSet;

    .line 97
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSelfIndentityUris:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/codeaurora/ims/ImsServiceSub;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSrvStatusUpdate(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 97
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->initServiceStatus()V

    return-void
.end method

.method static synthetic access$1500(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleCalls(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1600(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 97
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getCallsListToClear()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSuppSvc(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1900(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleTtyModeChange(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2000(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleHandover(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2100(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleConferenceResponse(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2200(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSrvccResponse(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2300(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/CallModify;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/ims/CallModify;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V

    return-void
.end method

.method static synthetic access$2400(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/Message;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleMwiNotification(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2500(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsInterfaceListener(Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .line 97
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onSetCallForwardTimerDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2700(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .line 97
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onGetCallForwardTimerDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2800(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .line 97
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onGetPacketCountDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2900(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .line 97
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onGetPacketErrorCountDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$300(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 97
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityCallback:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleCancelModifyCallResponse(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$3100(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleGeolocationRequest(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$3200(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleGeolocationResponse(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$3300(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleVoWiFiCallQuality(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$3400(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleCallTransferResponse(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$3500(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleVops(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$3600(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSsac(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$3700(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .line 97
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->handleVopsResponse(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$3800(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .line 97
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->handleSsacResponse(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$3900(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleUpdateVoltePrefResponse(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Ljava/lang/String;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleQueryVoltePrefResponse(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$4100(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .line 97
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onGetHandoverConfigDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$4200(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .line 97
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onSetHandoverConfigDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$4300(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleCallAutoReject(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$4400(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 97
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;)I
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;

    .line 97
    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getSetCapabilityFailError(Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lorg/codeaurora/ims/ImsServiceSub;)Lorg/codeaurora/ims/ImsRegistrationImpl;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 97
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsReg:Lorg/codeaurora/ims/ImsRegistrationImpl;

    return-object v0
.end method

.method static synthetic access$700(Lorg/codeaurora/ims/ImsServiceSub;I)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # I

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->updateImsPhonePreferences(I)V

    return-void
.end method

.method static synthetic access$800(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 97
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureCallbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Ljava/lang/String;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    return-void
.end method

.method private broadcastVopsSsacIntent()V
    .locals 3

    .line 2162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.VOIP_VOPS_SSAC_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2163
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "Vops"

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2164
    const-string v1, "Ssac"

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2165
    const-string v1, "phoneId"

    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastVopsSsacIntent Vops = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , Ssac = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , PhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2168
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2169
    return-void
.end method

.method private canTransfer(Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 2
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 1203
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private convertQtiImsTransferTypeToImsQmiType(I)I
    .locals 1
    .param p1, "type"    # I

    .line 1068
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1076
    return p1

    .line 1072
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1070
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 1074
    :cond_0
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCallsListToClear()Ljava/lang/Object;
    .locals 2

    .line 411
    const/4 v0, 0x0

    .line 412
    .local v0, "mmTelCallsList":Ljava/lang/Object;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallsListToClear()Ljava/lang/Object;

    move-result-object v0

    .line 416
    :cond_0
    return-object v0
.end method

.method private static getFeature(II)I
    .locals 2
    .param p0, "capability"    # I
    .param p1, "radioTech"    # I

    .line 722
    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    const/4 v1, -0x2

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_0

    .line 742
    return v1

    .line 728
    :pswitch_0
    if-nez p1, :cond_0

    .line 729
    const/4 v0, 0x1

    goto :goto_0

    .line 730
    :cond_0
    const/4 v0, 0x3

    .line 728
    :goto_0
    return v0

    .line 724
    :pswitch_1
    if-nez p1, :cond_1

    .line 725
    const/4 v0, 0x0

    goto :goto_1

    .line 726
    :cond_1
    const/4 v0, 0x2

    .line 724
    :goto_1
    return v0

    .line 740
    :cond_2
    return v1

    .line 732
    :cond_3
    if-nez p1, :cond_4

    .line 733
    goto :goto_2

    .line 734
    :cond_4
    const/4 v0, 0x5

    .line 732
    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getImsInterfaceListener(Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2057
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, v0, Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    if-eqz v0, :cond_0

    .line 2058
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    return-object v0

    .line 2060
    :cond_0
    const-string v0, "getImsConfigListener returns null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2061
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getNetworkTypeFromRadioTech(I)I
    .locals 1
    .param p0, "radioTech"    # I

    .line 758
    const/4 v0, -0x2

    .line 759
    .local v0, "network":I
    packed-switch p0, :pswitch_data_0

    .line 767
    const/4 v0, -0x2

    goto :goto_0

    .line 764
    :pswitch_0
    const/16 v0, 0x12

    .line 765
    goto :goto_0

    .line 761
    :pswitch_1
    const/16 v0, 0xd

    .line 762
    nop

    .line 769
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getOperationStatus(Z)I
    .locals 1
    .param p1, "status"    # Z

    .line 1833
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1834
    :cond_0
    const/4 v0, 0x1

    .line 1833
    :goto_0
    return v0
.end method

.method private getQtiImsExtOperationStatus(Landroid/os/AsyncResult;)I
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2305
    const/4 v0, 0x0

    .line 2306
    .local v0, "status":I
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 2308
    const/4 v0, 0x1

    .line 2310
    :cond_0
    return v0
.end method

.method private static getSetCapabilityFailError(Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;)I
    .locals 3
    .param p0, "reason"    # Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;

    .line 797
    const/4 v0, -0x1

    .line 798
    .local v0, "error":I
    sget-object v1, Lorg/codeaurora/ims/ImsServiceSub$3;->$SwitchMap$org$codeaurora$ims$ImsConfigImpl$SetCapabilityFailCause:[I

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 803
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 800
    :pswitch_1
    const/4 v0, -0x1

    .line 801
    nop

    .line 805
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleCallAutoReject(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2404
    if-eqz p1, :cond_3

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2409
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/DriverCallIms;

    .line 2410
    .local v0, "rejectedCall":Lorg/codeaurora/ims/DriverCallIms;
    iget-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-nez v1, :cond_1

    .line 2411
    const-string v1, "handleCallAutoReject :: No call details in DriverCallIms"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2412
    return-void

    .line 2414
    :cond_1
    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x1

    iget-object v3, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    .line 2416
    .local v1, "rejCallProfile":Landroid/telephony/ims/ImsCallProfile;
    iget-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2417
    const-string v2, "oi"

    iget-object v3, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2420
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCallAutoReject :: rejCallProfile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ImsReasonInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2422
    iget-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->notifyRejectedCall(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2423
    return-void

    .line 2405
    .end local v0    # "rejectedCall":Lorg/codeaurora/ims/DriverCallIms;
    .end local v1    # "rejCallProfile":Landroid/telephony/ims/ImsCallProfile;
    :cond_3
    :goto_0
    const-string v0, "handleCallAutoReject :: Error parsing DriverCallIms"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2406
    return-void
.end method

.method private handleCallTransferResponse(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2034
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsInterfaceListener(Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v0

    .line 2037
    .local v0, "listener":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    const/4 v1, 0x0

    .line 2038
    .local v1, "nStatus":I
    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 2040
    const/4 v1, 0x1

    .line 2042
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCallTransferResponse: Result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2045
    if-eqz v0, :cond_1

    .line 2047
    :try_start_0
    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {v0, v2, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->receiveCallTransferResponse(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2048
    :catch_0
    move-exception v2

    .line 2049
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "handleCallTransferResponse exception!"

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2050
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 2052
    :cond_1
    const-string v2, "handleCallTransferResponse: no listener is available"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2054
    :goto_1
    return-void
.end method

.method private handleCalls(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1263
    const-string v0, ">handleCalls"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1266
    .local v0, "dcList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/codeaurora/ims/DriverCallIms;>;"
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 1267
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .local v1, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :goto_0
    goto :goto_1

    .line 1268
    .end local v1    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1271
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 1275
    .restart local v1    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :goto_1
    nop

    .line 1278
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1280
    .local v2, "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    if-eqz v1, :cond_1

    .line 1281
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/DriverCallIms;

    .line 1282
    .local v4, "dc":Lorg/codeaurora/ims/DriverCallIms;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleCalls: dc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1283
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1284
    .end local v4    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    goto :goto_2

    .line 1287
    :cond_1
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez v3, :cond_2

    .line 1288
    const-string v3, "handleCalls :: Null mTracker!"

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 1291
    :cond_2
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->updateCallTransferInfo(Ljava/util/ArrayList;)V

    .line 1293
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleCalls(Ljava/util/ArrayList;)V

    .line 1295
    :goto_3
    return-void

    .line 1275
    .end local v1    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .end local v2    # "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :cond_3
    return-void
.end method

.method private handleCancelModifyCallResponse(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1937
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsInterfaceListener(Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v0

    .line 1940
    .local v0, "listener":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    const/4 v1, 0x0

    .line 1941
    .local v1, "nStatus":I
    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1943
    const/4 v1, 0x1

    .line 1944
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    const-string v3, "Cancel upgrade failed"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1946
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCancelModifyCallResponse: Result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1949
    if-eqz v0, :cond_1

    .line 1951
    :try_start_0
    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {v0, v2, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->receiveCancelModifyCallResponse(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1952
    :catch_0
    move-exception v2

    .line 1953
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "handleCancelModifyCallResponse exception!"

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1954
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 1956
    :cond_1
    const-string v2, "handleCancelModifyCallResponse: no listener is available"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1958
    :goto_1
    return-void
.end method

.method private handleConferenceResponse(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 395
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mConferenceRequestedbyTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleConferenceResult(Landroid/os/AsyncResult;)V

    .line 396
    return-void
.end method

.method private handleGeolocationRequest(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1970
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/GeoLocationInfo;

    .line 1971
    .local v0, "geoInfo":Lorg/codeaurora/ims/GeoLocationInfo;
    if-nez v0, :cond_0

    .line 1972
    const-string v1, "handleGeolocationRequest :: Null AsyncResult!"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1973
    return-void

    .line 1976
    :cond_0
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/ImsServiceSub;->sTaskExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;

    .line 1977
    invoke-virtual {v0}, Lorg/codeaurora/ims/GeoLocationInfo;->getLat()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/codeaurora/ims/GeoLocationInfo;->getLon()D

    move-result-wide v6

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;-><init>(Lorg/codeaurora/ims/ImsServiceSub;DD)V

    .line 1976
    invoke-interface {v1, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1983
    goto :goto_0

    .line 1978
    :catch_0
    move-exception v1

    .line 1979
    .local v1, "rex":Ljava/util/concurrent/RejectedExecutionException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGeolocationRequest :: Failure to start GeocoderTask thread for [lat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1980
    invoke-virtual {v0}, Lorg/codeaurora/ims/GeoLocationInfo;->getLat()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " | long="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1981
    invoke-virtual {v0}, Lorg/codeaurora/ims/GeoLocationInfo;->getLon()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "]!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1979
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1982
    invoke-virtual {v1}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    .line 1984
    .end local v1    # "rex":Ljava/util/concurrent/RejectedExecutionException;
    :goto_0
    return-void
.end method

.method private handleGeolocationResponse(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1961
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 1962
    const-string v0, "handleGeolocationResponse :: Error response!"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1967
    :cond_0
    return-void
.end method

.method private handleHandover(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1302
    const-string v0, "handleHandover"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1303
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 1304
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/HoInfo;

    .line 1305
    .local v0, "handover":Lorg/codeaurora/ims/HoInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v1, :cond_0

    .line 1306
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleHandover(Lorg/codeaurora/ims/HoInfo;)V

    .line 1308
    .end local v0    # "handover":Lorg/codeaurora/ims/HoInfo;
    :cond_0
    goto :goto_0

    .line 1310
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncResult exception in handleHandover- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1312
    :goto_0
    return-void
.end method

.method private handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V
    .locals 2
    .param p1, "cm"    # Lorg/codeaurora/ims/CallModify;

    .line 1424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCallModifyRequest("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1425
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V

    .line 1428
    :cond_0
    return-void
.end method

.method private handleMwiNotification(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 2072
    if-eqz p1, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 2073
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2074
    .local v0, "arMwiUpdate":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 2075
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 2076
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/ims/Mwi;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    .line 2077
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->updateVoiceMail()V

    goto :goto_0

    .line 2079
    :cond_0
    const-string v1, "handleMwiNotification arMwiUpdate.result null"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2082
    :cond_1
    const-string v1, "handleMwiNotification arMwiUpdate exception"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2084
    .end local v0    # "arMwiUpdate":Landroid/os/AsyncResult;
    :goto_0
    goto :goto_1

    .line 2085
    :cond_2
    const-string v0, "handleMwiNotification msg null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2087
    :goto_1
    return-void
.end method

.method private handleQueryVoltePrefResponse(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2331
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsInterfaceListener(Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v0

    .line 2332
    .local v0, "listener":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getQtiImsExtOperationStatus(Landroid/os/AsyncResult;)I

    move-result v1

    .line 2333
    .local v1, "result":I
    const/4 v2, 0x2

    .line 2334
    .local v2, "preference":I
    if-nez v1, :cond_0

    .line 2336
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 2337
    .local v3, "pref":[I
    const/4 v4, 0x0

    aget v2, v3, v4

    .line 2339
    .end local v3    # "pref":[I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleQueryVoltePrefResponse: result-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mode-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2342
    if-eqz v0, :cond_1

    .line 2344
    :try_start_0
    iget v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {v0, v3, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onVoltePreferenceQueried(III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2345
    :catch_0
    move-exception v3

    .line 2346
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "handleQueryVoltePrefResponse exception!"

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2347
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 2349
    :cond_1
    const-string v3, "handleQueryVoltePrefResponse: no listener is available"

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2351
    :goto_1
    return-void
.end method

.method private handleSrvStatusUpdate(Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/ServiceStatus;",
            ">;)V"
        }
    .end annotation

    .local p1, "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    move-object/from16 v0, p0

    .line 833
    const/4 v1, 0x0

    .line 834
    .local v1, "isVideoEnabled":Z
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->resetFeatures()V

    .line 835
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ServiceStatus;

    .line 836
    .local v3, "update":Lorg/codeaurora/ims/ServiceStatus;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lorg/codeaurora/ims/ServiceStatus;->status:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " isValid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v3, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 838
    if-eqz v3, :cond_1a

    iget-boolean v4, v3, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    if-eqz v4, :cond_1a

    iget v4, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-direct {v0, v4}, Lorg/codeaurora/ims/ImsServiceSub;->isSrvTypeValid(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 839
    const/4 v4, 0x0

    .line 840
    .local v4, "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    iget v5, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    const/16 v6, 0x19

    const/4 v7, 0x5

    if-ne v5, v6, :cond_0

    .line 841
    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v4, v5, v7

    goto :goto_1

    .line 843
    :cond_0
    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    iget v8, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    aget-object v4, v5, v8

    .line 845
    :goto_1
    iget-boolean v5, v3, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    iput-boolean v5, v4, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    .line 846
    iget v5, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    iput v5, v4, Lorg/codeaurora/ims/ServiceStatus;->type:I

    .line 847
    iget-object v5, v3, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    if-eqz v5, :cond_1

    .line 848
    iget-object v5, v3, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    array-length v5, v5

    new-array v5, v5, [B

    iput-object v5, v4, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 849
    iget-object v5, v3, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    iget-object v8, v3, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    array-length v8, v8

    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v4, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 851
    :cond_1
    iget-object v5, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v5, :cond_1a

    iget-object v5, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v5, v5

    if-lez v5, :cond_1a

    .line 852
    iget-object v5, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v5, v5

    new-array v5, v5, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v5, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 854
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Call Type "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "has num updates = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v8, v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 856
    iget-object v5, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 858
    .local v5, "actSt":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    move v9, v1

    const/4 v1, 0x0

    .local v1, "i":I
    .local v9, "isVideoEnabled":Z
    :goto_2
    iget-object v10, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v10, v10

    if-ge v1, v10, :cond_19

    .line 859
    iget-object v10, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v10, v10, v1

    .line 861
    .local v10, "actUpdate":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "StatusForAccessTech networkMode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " registered = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " status = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " restrictCause = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 866
    new-instance v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v11}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v11, v5, v1

    .line 867
    aget-object v11, v5, v1

    iget v12, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    iput v12, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 868
    aget-object v11, v5, v1

    iget v12, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    iput v12, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 869
    iget v11, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ne v11, v12, :cond_2

    iget v11, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    if-eqz v11, :cond_2

    .line 871
    aget-object v11, v5, v1

    iput v13, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    goto :goto_3

    .line 873
    :cond_2
    aget-object v11, v5, v1

    iget v14, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    iput v14, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 875
    :goto_3
    aget-object v11, v5, v1

    iget v11, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    iput v11, v4, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 876
    aget-object v11, v5, v1

    iget v14, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    iput v14, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 878
    aget-object v11, v5, v1

    iget v11, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v14, 0x12

    if-eq v11, v14, :cond_4

    aget-object v11, v5, v1

    iget v11, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v14, 0x13

    if-ne v11, v14, :cond_3

    goto :goto_4

    :cond_3
    const/4 v11, 0x0

    goto :goto_5

    :cond_4
    :goto_4
    move v11, v13

    .line 880
    .local v11, "modeWifi":Z
    :goto_5
    aget-object v14, v5, v1

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_6

    aget-object v14, v5, v1

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v8, 0xe

    if-ne v14, v8, :cond_5

    goto :goto_6

    :cond_5
    const/4 v8, 0x0

    goto :goto_7

    :cond_6
    :goto_6
    move v8, v13

    .line 882
    .local v8, "modeLte":Z
    :goto_7
    if-nez v11, :cond_7

    if-eqz v8, :cond_13

    .line 883
    :cond_7
    iget v14, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    const/4 v15, 0x3

    if-nez v14, :cond_9

    .line 884
    if-eqz v8, :cond_8

    .line 885
    nop

    .line 886
    const/4 v14, 0x0

    goto :goto_8

    :cond_8
    move v14, v12

    .local v14, "feature":I
    :goto_8
    goto :goto_c

    .line 887
    .end local v14    # "feature":I
    :cond_9
    iget v14, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-ne v14, v6, :cond_b

    .line 888
    if-eqz v8, :cond_a

    .line 889
    const/4 v14, 0x4

    goto :goto_9

    .line 890
    :cond_a
    move v14, v7

    :goto_9
    goto :goto_8

    .line 891
    :cond_b
    iget v14, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-eq v14, v13, :cond_d

    iget v14, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-eq v14, v12, :cond_d

    iget v14, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-ne v14, v15, :cond_c

    goto :goto_a

    .line 898
    :cond_c
    const/4 v14, -0x1

    goto :goto_c

    .line 894
    :cond_d
    :goto_a
    if-eqz v8, :cond_e

    .line 895
    nop

    .line 896
    move v14, v13

    goto :goto_b

    :cond_e
    move v14, v15

    :goto_b
    goto :goto_8

    .line 898
    .restart local v14    # "feature":I
    :goto_c
    nop

    .line 900
    aget-object v6, v5, v1

    iget v6, v6, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/16 v7, 0x8

    if-eq v6, v12, :cond_14

    aget-object v6, v5, v1

    iget v6, v6, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    if-ne v6, v13, :cond_f

    goto :goto_d

    .line 919
    :cond_f
    aget-object v6, v5, v1

    iget v6, v6, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    if-eqz v6, :cond_10

    aget-object v6, v5, v1

    iget v6, v6, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    if-ne v6, v15, :cond_13

    .line 921
    :cond_10
    iget v6, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    const/4 v12, 0x5

    if-ne v6, v12, :cond_11

    .line 922
    iget-object v6, v0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v6, v7}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 926
    :cond_11
    if-ne v9, v13, :cond_12

    if-eq v14, v13, :cond_13

    if-eq v14, v15, :cond_13

    :cond_12
    const/4 v6, -0x1

    if-eq v14, v6, :cond_13

    .line 932
    iget-object v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->mDisabledFeatures:[I

    aput v14, v7, v14

    .line 933
    iget-object v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    aput v6, v7, v14

    .line 935
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disabledFeature = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 858
    .end local v8    # "modeLte":Z
    .end local v10    # "actUpdate":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .end local v11    # "modeWifi":Z
    .end local v14    # "feature":I
    :cond_13
    const/4 v12, 0x5

    goto :goto_e

    .line 902
    .restart local v8    # "modeLte":Z
    .restart local v10    # "actUpdate":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .restart local v11    # "modeWifi":Z
    .restart local v14    # "feature":I
    :cond_14
    :goto_d
    iget v6, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    const/4 v12, 0x5

    if-ne v6, v12, :cond_15

    iget-object v6, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 903
    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsSenderRxr;->isSmsSupported()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 904
    iget-object v6, v0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v6, v7}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 907
    :cond_15
    const/4 v6, -0x1

    if-eq v14, v6, :cond_16

    .line 908
    iget-object v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    aput v14, v7, v14

    .line 909
    iget-object v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->mDisabledFeatures:[I

    aput v6, v7, v14

    .line 912
    :cond_16
    if-eq v14, v13, :cond_17

    if-ne v14, v15, :cond_18

    .line 916
    :cond_17
    const/4 v9, 0x1

    .line 918
    :cond_18
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enabledFeature = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 858
    .end local v8    # "modeLte":Z
    .end local v10    # "actUpdate":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .end local v11    # "modeWifi":Z
    .end local v14    # "feature":I
    :goto_e
    add-int/lit8 v1, v1, 0x1

    move v7, v12

    const/16 v6, 0x19

    goto/16 :goto_2

    .line 942
    .end local v1    # "i":I
    .end local v3    # "update":Lorg/codeaurora/ims/ServiceStatus;
    .end local v4    # "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    .end local v5    # "actSt":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    :cond_19
    move v1, v9

    .end local v9    # "isVideoEnabled":Z
    .local v1, "isVideoEnabled":Z
    :cond_1a
    goto/16 :goto_0

    .line 945
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->updateMmTelCapabilities()V

    .line 946
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->notifyFeatureCapabilityChange()V

    .line 948
    iget-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v2, :cond_1c

    .line 949
    iget-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVideoSupported()Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVoiceSupported()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateFeatureCapabilities(ZZ)V

    goto :goto_f

    .line 951
    :cond_1c
    const-string v2, "handleSrvStatusUpdate :: tracker null; not updating global VT capability"

    invoke-direct {v0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 960
    :goto_f
    iget-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilitiesChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v2, :cond_1d

    .line 961
    new-instance v2, Landroid/util/Pair;

    .line 962
    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVideoSupported()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVoiceSupported()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 963
    .local v2, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    iget-object v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilitiesChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v2, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 964
    .end local v2    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    goto :goto_10

    .line 965
    :cond_1d
    const-string v2, "handleSrvStatusUpdate :: mCapabilitiesChangedRegistrants null"

    invoke-direct {v0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 967
    :goto_10
    return-void
.end method

.method private handleSrvccResponse(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 399
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 400
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->calculateOverallSrvccState([I)V

    goto :goto_0

    .line 402
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error EVENT_SRVCC_STATE_CHANGED tracker is null or srvcc exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 405
    :goto_0
    return-void
.end method

.method private handleSsac(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2150
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2151
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/SsacInfo;

    .line 2153
    .local v0, "ssacInd":Lorg/codeaurora/ims/SsacInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSsac voice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/codeaurora/ims/SsacInfo;->getBarringFactorVoice()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2154
    invoke-virtual {v0}, Lorg/codeaurora/ims/SsacInfo;->getBarringFactorVoice()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    .line 2155
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->broadcastVopsSsacIntent()V

    .line 2156
    .end local v0    # "ssacInd":Lorg/codeaurora/ims/SsacInfo;
    goto :goto_1

    .line 2157
    :cond_1
    const-string v0, "handleSsac exception"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2159
    :goto_1
    return-void
.end method

.method private handleSsacResponse(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 2201
    if-eqz p2, :cond_2

    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 2202
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/SsacInfo;

    .line 2204
    .local v0, "ssacInd":Lorg/codeaurora/ims/SsacInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSsacResponse voice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/codeaurora/ims/SsacInfo;->getBarringFactorVoice()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2205
    invoke-virtual {v0}, Lorg/codeaurora/ims/SsacInfo;->getBarringFactorVoice()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    .line 2207
    if-eqz p1, :cond_1

    .line 2209
    :try_start_0
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    invoke-interface {p1, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->notifySsacStatus(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2212
    goto :goto_1

    .line 2210
    :catch_0
    move-exception v1

    .line 2211
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2214
    .end local v0    # "ssacInd":Lorg/codeaurora/ims/SsacInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    goto :goto_2

    .line 2215
    :cond_2
    const-string v0, "handleSsacResponse exception"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2217
    :goto_2
    return-void
.end method

.method private handleSuppSvc(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1320
    const-string v0, "handleSuppSvc"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1321
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 1322
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/SuppNotifyInfo;

    .line 1323
    .local v0, "supp_svc_unsol":Lorg/codeaurora/ims/SuppNotifyInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v1, :cond_0

    .line 1324
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleSuppSvcUnsol(Lorg/codeaurora/ims/SuppNotifyInfo;)V

    .line 1326
    .end local v0    # "supp_svc_unsol":Lorg/codeaurora/ims/SuppNotifyInfo;
    :cond_0
    goto :goto_0

    .line 1328
    :cond_1
    const-string v0, "AsyncResult exception in handleSuppSvc."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1330
    :goto_0
    return-void
.end method

.method private handleTtyModeChange(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1337
    const-string v0, "handleTtyModeChange"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1338
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 1339
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 1340
    .local v0, "mode":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received EVENT_TTY_STATE_CHANGED mode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1341
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v1, :cond_0

    .line 1342
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleTtyModeChangeUnsol(I)V

    .line 1344
    .end local v0    # "mode":[I
    :cond_0
    goto :goto_0

    .line 1345
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error EVENT_TTY_STATE_CHANGED AsyncResult ar= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1347
    :goto_0
    return-void
.end method

.method private handleUpdateVoltePrefResponse(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2314
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsInterfaceListener(Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v0

    .line 2315
    .local v0, "listener":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getQtiImsExtOperationStatus(Landroid/os/AsyncResult;)I

    move-result v1

    .line 2316
    .local v1, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateVoltePrefResponse: result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2319
    if-eqz v0, :cond_0

    .line 2321
    :try_start_0
    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {v0, v2, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onVoltePreferenceUpdated(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2322
    :catch_0
    move-exception v2

    .line 2323
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "handleUpdateVoltePrefResponse exception!"

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2324
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 2326
    :cond_0
    const-string v2, "handleUpdateVoltePrefResponse: no listener is available"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2328
    :goto_1
    return-void
.end method

.method private handleVoWiFiCallQuality(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2110
    if-eqz p1, :cond_2

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 2111
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 2112
    .local v0, "voWifiCallQuality":[I
    const/4 v1, 0x0

    aget v2, v0, v1

    if-eqz v2, :cond_1

    .line 2113
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v2, :cond_0

    .line 2114
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    aget v1, v0, v1

    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateVoWiFiCallQuality(I)V

    goto :goto_0

    .line 2116
    :cond_0
    const-string v1, "Wifi Quality Error -- tracker is null"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2119
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleVoWiFiCallQuality received VoWiFIQuality : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v0, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2122
    .end local v0    # "voWifiCallQuality":[I
    :goto_0
    goto :goto_1

    .line 2123
    :cond_2
    const-string v0, "handleVoWiFiCallQuality response is not valid"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2125
    :goto_1
    return-void
.end method

.method private handleVops(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2136
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2137
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/VopsInfo;

    .line 2139
    .local v0, "vops":Lorg/codeaurora/ims/VopsInfo;
    invoke-virtual {v0}, Lorg/codeaurora/ims/VopsInfo;->isVopsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    .line 2143
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->broadcastVopsSsacIntent()V

    .line 2144
    .end local v0    # "vops":Lorg/codeaurora/ims/VopsInfo;
    goto :goto_0

    .line 2145
    :cond_0
    const-string v0, "handleVops exception"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2147
    :goto_0
    return-void
.end method

.method private handleVopsResponse(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 2182
    if-eqz p2, :cond_1

    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2183
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/VopsInfo;

    .line 2185
    .local v0, "vops":Lorg/codeaurora/ims/VopsInfo;
    invoke-virtual {v0}, Lorg/codeaurora/ims/VopsInfo;->isVopsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    .line 2186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vops Response = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2188
    if-eqz p1, :cond_0

    .line 2190
    :try_start_0
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    invoke-interface {p1, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->notifyVopsStatus(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2193
    goto :goto_0

    .line 2191
    :catch_0
    move-exception v1

    .line 2192
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2195
    .end local v0    # "vops":Lorg/codeaurora/ims/VopsInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    goto :goto_1

    .line 2196
    :cond_1
    const-string v0, "handleVopsResponse exception"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2198
    :goto_1
    return-void
.end method

.method private initServiceStatus()V
    .locals 6

    .line 371
    const/4 v0, 0x6

    new-array v1, v0, [Lorg/codeaurora/ims/ServiceStatus;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    .line 372
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 373
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    new-instance v4, Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {v4}, Lorg/codeaurora/ims/ServiceStatus;-><init>()V

    aput-object v4, v3, v2

    .line 378
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v3, v3, v2

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v4, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 379
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    new-instance v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v4}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v4, v3, v1

    .line 380
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v1

    const/16 v4, 0xe

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 381
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v1

    const/4 v4, 0x3

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 382
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v1

    const/4 v5, 0x2

    iput v5, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 383
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v3, v3, v2

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 372
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 385
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private static isIKEv2Error(Lorg/codeaurora/ims/BlockStatusInfo;)Z
    .locals 4
    .param p0, "blockStatus"    # Lorg/codeaurora/ims/BlockStatusInfo;

    .line 2385
    invoke-virtual {p0}, Lorg/codeaurora/ims/BlockStatusInfo;->getReasonDetails()Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2386
    nop

    .line 2387
    invoke-virtual {p0}, Lorg/codeaurora/ims/BlockStatusInfo;->getReasonDetails()Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    move-result-object v0

    .line 2390
    .local v0, "blockReasonDetails":Lorg/codeaurora/ims/BlockReasonDetailsInfo;
    invoke-virtual {v0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->getRegFailureReasonType()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 2392
    invoke-virtual {v0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->getRegFailureReason()I

    move-result v2

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_0

    .line 2396
    invoke-virtual {v0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->getRegFailureReasonType()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    .line 2398
    invoke-virtual {v0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->getRegFailureReason()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    .line 2390
    :cond_0
    return v1

    .line 2400
    .end local v0    # "blockReasonDetails":Lorg/codeaurora/ims/BlockReasonDetailsInfo;
    :cond_1
    return v1
.end method

.method private isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 1186
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/lang/RuntimeException;

    .line 1188
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 1189
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->errorIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1188
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1186
    :goto_0
    return v0
.end method

.method private isSrvTypeValid(I)Z
    .locals 2
    .param p1, "type"    # I

    .line 815
    const/4 v0, 0x1

    const/16 v1, 0x19

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    goto :goto_2

    .line 818
    :cond_0
    if-ltz p1, :cond_2

    const/4 v1, 0x3

    if-le p1, v1, :cond_1

    goto :goto_0

    .line 820
    :cond_1
    goto :goto_1

    .line 819
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 818
    :goto_1
    return v0

    .line 816
    :cond_3
    :goto_2
    return v0
.end method

.method public static synthetic lambda$6PJ3zCJfYyTvpY9yUB11mwQCLR0(Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)I
    .locals 0

    invoke-virtual {p0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result p0

    return p0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 2460
    const-string v0, "ImsServiceSub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2461
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 2464
    const-string v0, "ImsServiceSub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2465
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 2452
    const-string v0, "ImsServiceSub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2453
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 2456
    const-string v0, "ImsServiceSub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2457
    return-void
.end method

.method private notifyFeatureCapabilityChange()V
    .locals 2

    .line 624
    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub$1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsServiceSub$1;-><init>(Lorg/codeaurora/ims/ImsServiceSub;)V

    .line 632
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureCallbackHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 633
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 635
    :cond_0
    return-void
.end method

.method private onGetCallForwardTimerDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 22
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    move-object/from16 v1, p0

    move-object/from16 v12, p1

    .line 1874
    move-object/from16 v13, p2

    const/4 v2, 0x0

    .line 1875
    .local v2, "startHour":I
    const/4 v3, 0x0

    .line 1876
    .local v3, "endHour":I
    const/4 v4, 0x0

    .line 1877
    .local v4, "startMinute":I
    const/4 v5, 0x0

    .line 1878
    .local v5, "endMinute":I
    const/4 v6, 0x0

    .line 1879
    .local v6, "reason":I
    const/4 v7, 0x0

    .line 1880
    .local v7, "status":I
    const/4 v8, 0x0

    .line 1881
    .local v8, "number":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1883
    .local v9, "serviceClass":I
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    .line 1884
    const-string v0, "get CF Timer error!"

    invoke-direct {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1886
    :try_start_0
    iget v0, v1, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {v12, v0, v11, v10}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1889
    goto :goto_0

    .line 1887
    :catch_0
    move-exception v0

    .line 1888
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onUTReqFailed exception!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1890
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 1892
    :cond_0
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 1893
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, v0, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    if-eqz v0, :cond_2

    .line 1894
    const-string v0, "onGetCallForwardTimerDone ImsCallForwardTimerInfo instance! "

    invoke-direct {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1895
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 1896
    .local v0, "cfTimerInfo":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    nop

    .local v11, "i":I
    :goto_1
    array-length v14, v0

    if-ge v11, v14, :cond_1

    .line 1897
    aget-object v14, v0, v11

    iget v2, v14, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startHour:I

    .line 1898
    aget-object v14, v0, v11

    iget v3, v14, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endHour:I

    .line 1899
    aget-object v14, v0, v11

    iget v4, v14, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startMinute:I

    .line 1900
    aget-object v14, v0, v11

    iget v5, v14, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endMinute:I

    .line 1901
    aget-object v14, v0, v11

    iget v6, v14, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    .line 1902
    aget-object v14, v0, v11

    iget v7, v14, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    .line 1903
    aget-object v14, v0, v11

    iget-object v8, v14, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->number:Ljava/lang/String;

    .line 1904
    aget-object v14, v0, v11

    iget v9, v14, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->serviceClass:I

    .line 1896
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1906
    .end local v0    # "cfTimerInfo":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    .end local v11    # "i":I
    :cond_1
    goto :goto_3

    :cond_2
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, v0, [Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v0, :cond_3

    .line 1907
    const-string v0, "onGetCallForwardTimerDone CallForwardInfo instance! "

    invoke-direct {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1908
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1909
    .local v0, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    nop

    .restart local v11    # "i":I
    :goto_2
    array-length v14, v0

    if-ge v11, v14, :cond_3

    .line 1910
    aget-object v14, v0, v11

    iget v6, v14, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1911
    aget-object v14, v0, v11

    iget v7, v14, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1912
    aget-object v14, v0, v11

    iget-object v8, v14, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1913
    aget-object v14, v0, v11

    iget v9, v14, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1909
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1918
    .end local v0    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v2    # "startHour":I
    .end local v3    # "endHour":I
    .end local v4    # "startMinute":I
    .end local v5    # "endMinute":I
    .end local v6    # "reason":I
    .end local v7    # "status":I
    .end local v8    # "number":Ljava/lang/String;
    .end local v9    # "serviceClass":I
    .end local v11    # "i":I
    .local v14, "reason":I
    .local v15, "startHour":I
    .local v16, "endHour":I
    .local v17, "startMinute":I
    .local v18, "endMinute":I
    .local v19, "status":I
    .local v20, "number":Ljava/lang/String;
    .local v21, "serviceClass":I
    :cond_3
    :goto_3
    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move v14, v6

    move/from16 v19, v7

    move-object/from16 v20, v8

    move/from16 v21, v9

    if-eqz v12, :cond_5

    .line 1919
    if-nez v14, :cond_4

    .line 1921
    :try_start_1
    iget v3, v1, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    move-object v2, v12

    move v4, v15

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move v8, v14

    move/from16 v9, v19

    move-object/from16 v10, v20

    move/from16 v11, v21

    invoke-interface/range {v2 .. v11}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onGetCallForwardUncondTimer(IIIIIIILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 1923
    :catch_1
    move-exception v0

    .line 1924
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "onGetCallForwardTimerDone exception!"

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1925
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_4
    goto :goto_5

    .line 1928
    :cond_4
    :try_start_2
    iget v0, v1, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    const/16 v2, 0x324

    invoke-interface {v12, v0, v2, v10}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1931
    goto :goto_5

    .line 1929
    :catch_2
    move-exception v0

    .line 1930
    .restart local v0    # "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUTReqFailed exception!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1934
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_5
    :goto_5
    return-void
.end method

.method private onGetHandoverConfigDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 2354
    if-eqz p1, :cond_2

    .line 2356
    :try_start_0
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->getOperationStatus(Z)I

    move-result v0

    .line 2357
    .local v0, "status":I
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 2358
    goto :goto_1

    .line 2359
    :cond_1
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2360
    .local v1, "result":I
    :goto_1
    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {p1, v2, v0, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onGetHandoverConfig(III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "status":I
    .end local v1    # "result":I
    goto :goto_2

    .line 2361
    :catch_0
    move-exception v0

    .line 2362
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetHandoverConfigDone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2363
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    goto :goto_3

    .line 2365
    :cond_2
    const-string v0, "onGetHandoverConfigDone listener is not valid !!!"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2367
    :goto_3
    return-void
.end method

.method private onGetPacketCountDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 1805
    if-eqz p1, :cond_2

    .line 1807
    :try_start_0
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->getOperationStatus(Z)I

    move-result v0

    .line 1808
    .local v0, "status":I
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1809
    .local v1, "result":J
    :goto_1
    iget v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {p1, v3, v0, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onGetPacketCount(IIJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "status":I
    .end local v1    # "result":J
    goto :goto_2

    .line 1810
    :catch_0
    move-exception v0

    .line 1811
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetPacketCountDone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1812
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    goto :goto_3

    .line 1814
    :cond_2
    const-string v0, "onGetPacketCountDone listener is not valid !!!"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1816
    :goto_3
    return-void
.end method

.method private onGetPacketErrorCountDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 1819
    if-eqz p1, :cond_2

    .line 1821
    :try_start_0
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->getOperationStatus(Z)I

    move-result v0

    .line 1822
    .local v0, "status":I
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1823
    .local v1, "result":J
    :goto_1
    iget v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {p1, v3, v0, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onGetPacketErrorCount(IIJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "status":I
    .end local v1    # "result":J
    goto :goto_2

    .line 1824
    :catch_0
    move-exception v0

    .line 1825
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetPacketErrorCountDone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1826
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    goto :goto_3

    .line 1828
    :cond_2
    const-string v0, "onGetPacketErrorCountDone listener is not valid !!!"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1830
    :goto_3
    return-void
.end method

.method private onSetCallForwardTimerDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 1838
    const/4 v0, 0x0

    .line 1839
    .local v0, "status":I
    if-eqz p1, :cond_2

    .line 1840
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1841
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 1842
    .local v1, "response":Lorg/codeaurora/ims/SuppSvcResponse;
    invoke-virtual {v1}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v2

    .line 1843
    .local v2, "failCause":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1844
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetCallForwardTimerDone Failure cause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1847
    :try_start_0
    iget v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    const/16 v4, 0x324

    .line 1848
    invoke-virtual {v1}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v5

    .line 1847
    invoke-interface {p1, v3, v4, v5}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1851
    goto :goto_0

    .line 1849
    :catch_0
    move-exception v3

    .line 1850
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUTReqFailed exception!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1852
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 1855
    .end local v1    # "response":Lorg/codeaurora/ims/SuppSvcResponse;
    .end local v2    # "failCause":Ljava/lang/String;
    :cond_0
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1856
    const-string v1, "set CF Timer error!"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1858
    :try_start_1
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1, v1, v2, v3}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1859
    :catch_1
    move-exception v1

    .line 1860
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUTReqFailed exception!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1861
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_2

    .line 1863
    :cond_1
    const-string v1, "set CF Timer success!"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1865
    :try_start_2
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {p1, v1, v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onSetCallForwardUncondTimer(II)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1868
    goto :goto_2

    .line 1866
    :catch_2
    move-exception v1

    .line 1867
    .restart local v1    # "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetCallForwardTimerDone exception!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1871
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_2
    return-void
.end method

.method private onSetHandoverConfigDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 2370
    if-eqz p1, :cond_1

    .line 2372
    :try_start_0
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->getOperationStatus(Z)I

    move-result v0

    .line 2373
    .local v0, "status":I
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {p1, v1, v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onSetHandoverConfig(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "status":I
    goto :goto_1

    .line 2374
    :catch_0
    move-exception v0

    .line 2375
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetHandoverConfigDone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2376
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_2

    .line 2378
    :cond_1
    const-string v0, "onSetHandoverConfigDone listener is not valid !!!"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2380
    :goto_2
    return-void
.end method

.method private resetFeatures()V
    .locals 3

    .line 825
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 826
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 827
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDisabledFeatures:[I

    aput v2, v1, v0

    .line 825
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 829
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 830
    return-void
.end method

.method private sendBroadcastForDisconnected(Landroid/telephony/ims/ImsReasonInfo;II)V
    .locals 3
    .param p1, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "regState"    # I
    .param p3, "imsRat"    # I

    .line 1432
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.imsconnection.DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1433
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1434
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1435
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1436
    const-string v1, "stateChanged"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1437
    const-string v1, "imsRat"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1438
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcastForDisconnected: imsRat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1440
    return-void
.end method

.method private sendChangeCapabilityRequest(Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;Z)V
    .locals 6
    .param p1, "cp"    # Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    .param p2, "enable"    # Z

    .line 692
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v1

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->getFeature(II)I

    move-result v0

    .line 693
    .local v0, "feature":I
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->getNetworkTypeFromRadioTech(I)I

    move-result v1

    .line 694
    .local v1, "rat":I
    const/4 v2, -0x2

    if-eq v0, v2, :cond_2

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 699
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    if-eqz p2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    .line 700
    :cond_1
    const/4 v3, 0x0

    :goto_0
    new-instance v4, Lorg/codeaurora/ims/ImsServiceSub$SetCapabilityListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lorg/codeaurora/ims/ImsServiceSub$SetCapabilityListener;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsServiceSub$1;)V

    .line 699
    invoke-virtual {v2, v0, v1, v3, v4}, Lorg/codeaurora/ims/ImsConfigImpl;->setCapabilityValue(IIILorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;)V

    .line 701
    return-void

    .line 695
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeEnabledCapabilities :: Invalid CapabilityPair feature="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 697
    return-void
.end method

.method private updateCallTransferInfo(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/DriverCallIms;",
            ">;)V"
        }
    .end annotation

    .line 1210
    .local p1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCallTransferEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1211
    return-void

    .line 1214
    :cond_0
    const/4 v0, 0x0

    .line 1216
    .local v0, "nTransferableCalls":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/DriverCallIms;

    .line 1217
    .local v2, "dc":Lorg/codeaurora/ims/DriverCallIms;
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->canTransfer(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1218
    add-int/lit8 v0, v0, 0x1

    .line 1220
    .end local v2    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    :cond_1
    goto :goto_0

    .line 1221
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transfer is possible for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " calls"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1229
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 1241
    :pswitch_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/DriverCallIms;

    .line 1242
    .restart local v2    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->canTransfer(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1243
    const/4 v3, 0x7

    iput v3, v2, Lorg/codeaurora/ims/DriverCallIms;->mEctMask:I

    .line 1247
    .end local v2    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    :cond_3
    goto :goto_1

    .line 1248
    :cond_4
    goto :goto_3

    .line 1232
    :pswitch_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/DriverCallIms;

    .line 1233
    .restart local v2    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->canTransfer(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1234
    const/4 v3, 0x3

    iput v3, v2, Lorg/codeaurora/ims/DriverCallIms;->mEctMask:I

    .line 1237
    .end local v2    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    :cond_5
    goto :goto_2

    .line 1238
    :cond_6
    nop

    .line 1254
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateImsPhonePreferences(I)V
    .locals 4
    .param p1, "registrationState"    # I

    .line 2469
    invoke-static {}, Lorg/codeaurora/ims/ImsServicePreferences;->getInstance()Lorg/codeaurora/ims/ImsServicePreferences;

    move-result-object v0

    .line 2470
    .local v0, "preferences":Lorg/codeaurora/ims/ImsServicePreferences;
    if-nez v0, :cond_0

    .line 2471
    return-void

    .line 2473
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getFeatureState()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 2474
    return-void

    .line 2476
    :cond_1
    const/4 v1, 0x1

    if-ne v1, p1, :cond_2

    .line 2477
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v1

    .line 2478
    .local v1, "phoneId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateImsPhonePreferences, phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2479
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServicePreferences;->setImsRegPhoneId(I)V

    .line 2481
    .end local v1    # "phoneId":I
    :cond_2
    return-void
.end method

.method private updateMmTelCapabilities()V
    .locals 8

    .line 585
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-ge v3, v1, :cond_0

    aget v7, v0, v3

    .line 586
    .local v7, "enabledFeature":I
    packed-switch v7, :pswitch_data_0

    .end local v7    # "enabledFeature":I
    goto :goto_1

    .line 597
    .restart local v7    # "enabledFeature":I
    :pswitch_0
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v4, v5}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .end local v7    # "enabledFeature":I
    goto :goto_1

    .line 593
    .restart local v7    # "enabledFeature":I
    :pswitch_1
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v5, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 594
    goto :goto_1

    .line 589
    :pswitch_2
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v4, v6}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 590
    nop

    .line 585
    .end local v7    # "enabledFeature":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 600
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDisabledFeatures:[I

    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 601
    .local v3, "disabledFeature":I
    packed-switch v3, :pswitch_data_1

    .end local v3    # "disabledFeature":I
    goto :goto_3

    .line 612
    .restart local v3    # "disabledFeature":I
    :pswitch_3
    iget-object v7, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v7, v5}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .end local v3    # "disabledFeature":I
    goto :goto_3

    .line 608
    .restart local v3    # "disabledFeature":I
    :pswitch_4
    iget-object v7, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v7, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 609
    goto :goto_3

    .line 604
    :pswitch_5
    iget-object v7, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v7, v6}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 605
    nop

    .line 600
    .end local v3    # "disabledFeature":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 615
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMmTelCapabilities :: mMmtelCapabilities updated to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 617
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private updateVoiceMail()V
    .locals 4

    .line 2090
    const/4 v0, 0x0

    .line 2091
    .local v0, "count":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v1, v1, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    .line 2092
    .local v2, "msgSummary":Lorg/codeaurora/ims/Mwi$MwiMessageSummary;
    iget v3, v2, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mMessageType:I

    if-nez v3, :cond_0

    .line 2093
    iget v1, v2, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewMessage:I

    add-int/2addr v1, v0

    iget v3, v2, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewUrgent:I

    add-int v0, v1, v3

    .line 2095
    goto :goto_1

    .line 2097
    .end local v2    # "msgSummary":Lorg/codeaurora/ims/Mwi$MwiMessageSummary;
    :cond_0
    goto :goto_0

    .line 2100
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVoiceMail count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2102
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->notifyVoiceMessageCountUpdate(I)V

    .line 2103
    return-void
.end method


# virtual methods
.method public addListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .line 1381
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v0, :cond_0

    .line 1382
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addListener(Lorg/codeaurora/ims/ICallListListener;)V

    goto :goto_0

    .line 1384
    :cond_0
    const-string v0, "ImsServiceClassTracker not found."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1386
    :goto_0
    return-void
.end method

.method public changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
    .locals 5
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "c"    # Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    .line 662
    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    .line 667
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object v0

    .line 668
    .local v0, "capsToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;>;"
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToDisable()Ljava/util/List;

    move-result-object v1

    .line 669
    .local v1, "capsToDisable":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 670
    const-string v2, "changeEnabledCapabilities :: No CapabilityPair objects to process!"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 671
    return-void

    .line 677
    :cond_1
    sget-object v2, Lorg/codeaurora/ims/-$$Lambda$ImsServiceSub$6PJ3zCJfYyTvpY9yUB11mwQCLR0;->INSTANCE:Lorg/codeaurora/ims/-$$Lambda$ImsServiceSub$6PJ3zCJfYyTvpY9yUB11mwQCLR0;

    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 678
    sget-object v2, Lorg/codeaurora/ims/-$$Lambda$ImsServiceSub$6PJ3zCJfYyTvpY9yUB11mwQCLR0;->INSTANCE:Lorg/codeaurora/ims/-$$Lambda$ImsServiceSub$6PJ3zCJfYyTvpY9yUB11mwQCLR0;

    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 681
    iput-object p2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityCallback:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    .line 683
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 684
    .local v3, "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lorg/codeaurora/ims/ImsServiceSub;->sendChangeCapabilityRequest(Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;Z)V

    .line 685
    .end local v3    # "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    goto :goto_0

    .line 686
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 687
    .restart local v3    # "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lorg/codeaurora/ims/ImsServiceSub;->sendChangeCapabilityRequest(Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;Z)V

    .line 688
    .end local v3    # "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    goto :goto_1

    .line 689
    :cond_3
    return-void

    .line 663
    .end local v0    # "capsToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;>;"
    .end local v1    # "capsToDisable":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;>;"
    :cond_4
    :goto_2
    const-string v0, "changeEnabledCapabilities :: Invalid argument(s)."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 664
    return-void
.end method

.method public createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .locals 1
    .param p1, "callSessionType"    # I
    .param p2, "callType"    # I

    .line 466
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez v0, :cond_0

    .line 467
    const-string v0, "createCallProfile :: Null ImsServiceClassTracker!"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 468
    const/4 v0, 0x0

    return-object v0

    .line 472
    :cond_0
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0, p1, p2}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    .line 473
    .local v0, "profile":Landroid/telephony/ims/ImsCallProfile;
    return-object v0
.end method

.method public createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 483
    const/4 v0, 0x0

    .line 484
    .local v0, "session":Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez v1, :cond_0

    .line 485
    const-string v1, "createCallSession :: Null ImsServiceClassTracker!"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 487
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    move-result-object v0

    .line 489
    :goto_0
    return-object v0
.end method

.method public dispose()V
    .locals 3

    .line 320
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->setFeatureState(I)V

    .line 321
    const-string v0, "dispose"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 324
    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureHandlerThread:Landroid/os/HandlerThread;

    .line 325
    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureCallbackHandler:Landroid/os/Handler;

    .line 327
    :cond_0
    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsMultiEndpointImpl:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    .line 328
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 329
    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    .line 330
    return-void
.end method

.method public findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 1
    .param p1, "mediaId"    # I

    .line 1364
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCallForwardUncondTimer(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "reason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCallForwardUncondTimer reason is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1012
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 1013
    const/16 v2, 0x11

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1012
    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 1014
    return-void
.end method

.method public getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;
    .locals 1
    .param p1, "state"    # Lorg/codeaurora/ims/DriverCallIms$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codeaurora/ims/DriverCallIms$State;",
            ")",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation

    .line 1355
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;
    .locals 1

    .line 538
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    return-object v0
.end method

.method public getEcbm()Landroid/telephony/ims/stub/ImsEcbmImplBase;
    .locals 1

    .line 547
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsEcbmImpl:Lorg/codeaurora/ims/ImsEcbmImpl;

    return-object v0
.end method

.method public getFeatureIsOpen()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1454
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureIsOpen:Z

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1444
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getHandoverConfig(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 1171
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x20

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->getHandoverConfig(Landroid/os/Message;)V

    .line 1173
    return-void
.end method

.method public getImsRegistrationInterface()Lorg/codeaurora/ims/ImsRegistrationImpl;
    .locals 1

    .line 497
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsReg:Lorg/codeaurora/ims/ImsRegistrationImpl;

    return-object v0
.end method

.method public getImsServiceClassTracker()Lorg/codeaurora/ims/ImsServiceClassTracker;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1449
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    return-object v0
.end method

.method public getMultiEndpoint()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    .locals 1

    .line 2431
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsMultiEndpointImpl:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    return-object v0
.end method

.method public getMultiIdentityImpl()Lorg/codeaurora/ims/ImsMultiIdentityImpl;
    .locals 6

    .line 2435
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMultiIdentityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2436
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMultiIdentityImpl:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    if-nez v1, :cond_0

    .line 2437
    new-instance v1, Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 2438
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;-><init>(ILorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMultiIdentityImpl:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    .line 2440
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2441
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMultiIdentityImpl:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    return-object v0

    .line 2440
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getPacketCount(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 1017
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->getPacketCount(Landroid/os/Message;)V

    .line 1019
    return-void
.end method

.method public getPacketErrorCount(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 1022
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->getPacketErrorCount(Landroid/os/Message;)V

    .line 1024
    return-void
.end method

.method public getPhoneId()I
    .locals 1

    .line 1371
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    return v0
.end method

.method public getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;
    .locals 1

    .line 520
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsSms:Lorg/codeaurora/ims/ImsSmsImpl;

    return-object v0
.end method

.method public bridge synthetic getUt()Landroid/telephony/ims/stub/ImsUtImplBase;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getUt()Lorg/codeaurora/ims/ImsUtImpl;

    move-result-object v0

    return-object v0
.end method

.method public getUt()Lorg/codeaurora/ims/ImsUtImpl;
    .locals 1

    .line 529
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    return-object v0
.end method

.method public handleParticipantStatusInfo(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2225
    if-eqz p1, :cond_4

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_4

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 2226
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ParticipantStatusDetails;

    .line 2228
    .local v0, "participantInfo":Lorg/codeaurora/ims/ParticipantStatusDetails;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 2229
    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getCallId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSession(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 2234
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleParticipantStatusInfo operation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getOperation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2235
    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getSipStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " participant = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2236
    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getParticipantUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getIsEct()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2234
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2237
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 2239
    .local v3, "listener":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :try_start_0
    iget v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    .line 2240
    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getOperation()I

    move-result v5

    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getSipStatus()I

    move-result v6

    .line 2241
    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getParticipantUri()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getIsEct()Z

    move-result v8

    .line 2239
    invoke-interface/range {v3 .. v8}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->notifyParticipantStatusInfo(IIILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2244
    goto :goto_1

    .line 2242
    :catch_0
    move-exception v2

    .line 2243
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2245
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "listener":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :goto_1
    goto :goto_0

    .line 2246
    .end local v0    # "participantInfo":Lorg/codeaurora/ims/ParticipantStatusDetails;
    :cond_1
    goto :goto_4

    .line 2230
    .restart local v0    # "participantInfo":Lorg/codeaurora/ims/ParticipantStatusDetails;
    :cond_2
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "participant listeners size= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isTrackerPresent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2232
    return-void

    .line 2247
    .end local v0    # "participantInfo":Lorg/codeaurora/ims/ParticipantStatusDetails;
    :cond_4
    const-string v0, "ParticipantStatusInfo exception"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2249
    :goto_4
    return-void
.end method

.method public handleRefreshConfInfo(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1407
    const-string v0, "handleRefreshConfInfo"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1408
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1409
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ConfInfo;

    .line 1410
    .local v0, "confInfo":Lorg/codeaurora/ims/ConfInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v1, :cond_0

    .line 1411
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleRefreshConfInfo(Lorg/codeaurora/ims/ConfInfo;)V

    .line 1413
    .end local v0    # "confInfo":Lorg/codeaurora/ims/ConfInfo;
    :cond_0
    goto :goto_0

    .line 1414
    :cond_1
    if-eqz p1, :cond_2

    .line 1415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed @handleRefreshConfInfo --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "with result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1418
    :cond_2
    const-string v0, "Failed @handleRefreshConfInfo --> AsyncResult is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1421
    :goto_0
    return-void
.end method

.method public handleRegistrationBlockStatus(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2257
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2258
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;

    .line 2262
    .local v0, "regBlockStatus":Lorg/codeaurora/ims/RegistrationBlockStatusInfo;
    invoke-virtual {v0}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->getStatusOnWlan()Lorg/codeaurora/ims/BlockStatusInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2263
    nop

    .line 2264
    invoke-virtual {v0}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->getStatusOnWlan()Lorg/codeaurora/ims/BlockStatusInfo;

    move-result-object v1

    .line 2267
    .local v1, "blockStatus":Lorg/codeaurora/ims/BlockStatusInfo;
    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->isIKEv2Error(Lorg/codeaurora/ims/BlockStatusInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2268
    new-instance v2, Lorg/codeaurora/ims/ImsServiceSub$2;

    invoke-direct {v2, p0}, Lorg/codeaurora/ims/ImsServiceSub$2;-><init>(Lorg/codeaurora/ims/ImsServiceSub;)V

    .line 2285
    .local v2, "r":Ljava/lang/Runnable;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureCallbackHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 2286
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2290
    .end local v0    # "regBlockStatus":Lorg/codeaurora/ims/RegistrationBlockStatusInfo;
    .end local v1    # "blockStatus":Lorg/codeaurora/ims/BlockStatusInfo;
    .end local v2    # "r":Ljava/lang/Runnable;
    :cond_0
    goto :goto_0

    .line 2291
    :cond_1
    const-string v0, "Async result is null or exception is not null."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2293
    :goto_0
    return-void
.end method

.method public isVideoSupported()Z
    .locals 3

    .line 970
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    const/4 v2, 0x3

    aget v0, v0, v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public isVideoSupportedOverWifi()Z
    .locals 2

    .line 984
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVoiceSupported()Z
    .locals 3

    .line 977
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    const/4 v2, 0x2

    aget v0, v0, v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public isVoiceSupportedOverWifi()Z
    .locals 2

    .line 989
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onFeatureReady()V
    .locals 3

    .line 426
    const-string v0, "onFeatureReady"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logv(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez v0, :cond_0

    .line 428
    const-string v0, "onFeatureReady :: creating ImsServiceClassTracker"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logv(Ljava/lang/String;)V

    .line 429
    new-instance v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 430
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVideoSupported()Z

    move-result v1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVoiceSupported()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateFeatureCapabilities(ZZ)V

    .line 433
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->notifyFeatureCapabilityChange()V

    .line 434
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->getImsRegistrationState(Landroid/os/Message;)V

    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureIsOpen:Z

    .line 438
    return-void
.end method

.method public onFeatureRemoved()V
    .locals 1

    .line 442
    const-string v0, "onFeatureRemoved"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureIsOpen:Z

    .line 444
    return-void
.end method

.method onIccLoaded()V
    .locals 1

    .line 809
    const-string v0, "onIccLoaded..."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 810
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->notifyFeatureCapabilityChange()V

    .line 811
    return-void
.end method

.method public onNewCall()V
    .locals 1

    .line 2448
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->setServiceSubWithActiveCall(Lorg/codeaurora/ims/ImsServiceSub;)V

    .line 2449
    return-void
.end method

.method public onStackConfigChanged([ZI)V
    .locals 6
    .param p1, "activeStacks"    # [Z
    .param p2, "phoneId"    # I

    .line 338
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSubController;->isDsdv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    const-string v0, "onStackConfigChanged safely ignore the indication"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logv(Ljava/lang/String;)V

    .line 340
    return-void

    .line 344
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStackConfigChanged :: activeStacks["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    aget-boolean v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 346
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    aget-boolean v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v1, :cond_1

    .line 347
    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 348
    .local v0, "featureState":I
    :goto_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getFeatureState()I

    move-result v1

    .line 349
    .local v1, "oldFeatureState":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oldFeatureState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 350
    if-ne v1, v3, :cond_2

    if-nez v0, :cond_2

    .line 352
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->resetFeatures()V

    .line 354
    new-instance v4, Lorg/codeaurora/ims/ImsRegistrationInfo;

    invoke-direct {v4}, Lorg/codeaurora/ims/ImsRegistrationInfo;-><init>()V

    .line 355
    .local v4, "imsRegInfo":Lorg/codeaurora/ims/ImsRegistrationInfo;
    invoke-virtual {v4, v3}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setState(I)V

    .line 356
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 357
    .local v3, "msg":Landroid/os/Message;
    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 358
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 359
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    invoke-virtual {v5, v2, v2}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->updateHDIcon(ZZ)V

    .line 360
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->initServiceStatus()V

    .line 363
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "imsRegInfo":Lorg/codeaurora/ims/ImsRegistrationInfo;
    :cond_2
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->setFeatureState(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .end local v0    # "featureState":I
    .end local v1    # "oldFeatureState":I
    goto :goto_1

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "onStackConfigChanged :: Invalid activeStacks length!"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 367
    .end local v0    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_1
    return-void
.end method

.method public queryCapabilityConfiguration(II)Z
    .locals 6
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCapabilityConfiguration :: capability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " radioTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 567
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 568
    return v0

    .line 570
    :cond_0
    invoke-static {p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->getFeature(II)I

    move-result v1

    .line 571
    .local v1, "feature":I
    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 572
    return v0

    .line 574
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_3

    aget v5, v2, v4

    .line 575
    .local v5, "enabledFeature":I
    if-ne v1, v5, :cond_2

    .line 576
    const/4 v0, 0x1

    return v0

    .line 574
    .end local v5    # "enabledFeature":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 581
    :cond_3
    return v0
.end method

.method public querySsacStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 2177
    const-string v0, "querySsacStatus"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2178
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1c

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->querySsacStatus(Landroid/os/Message;)V

    .line 2179
    return-void
.end method

.method public queryVoltePreference(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 2300
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryVoltePref(Landroid/os/Message;)V

    .line 2301
    return-void
.end method

.method public queryVopsStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 2172
    const-string v0, "queryVopsStatus"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2173
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryVopsStatus(Landroid/os/Message;)V

    .line 2174
    return-void
.end method

.method public registerForCapabilitiesChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2128
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilitiesChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2129
    return-void
.end method

.method public registerForParticipantStatusInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 2106
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 2107
    return-void
.end method

.method public removeListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .line 1395
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->removeListener(Lorg/codeaurora/ims/ICallListListener;)V

    goto :goto_0

    .line 1398
    :cond_0
    const-string v0, "ImsServiceClassTracker not found."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1400
    :goto_0
    return-void
.end method

.method public resumePendingCall(I)V
    .locals 2
    .param p1, "videoState"    # I

    .line 1057
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 1058
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 1060
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1061
    const-string v1, "resumePendingCall: no call is available"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 1062
    return-void

    .line 1064
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->resumePendingCall(I)V

    .line 1065
    return-void
.end method

.method public sendCallTransferRequest(ILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 11
    .param p1, "type"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 1081
    const/4 v0, 0x1

    .line 1083
    .local v0, "returnError":Z
    const/4 v1, 0x4

    const/16 v2, 0x18

    const/4 v3, 0x0

    if-eq p1, v1, :cond_4

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 1087
    :pswitch_0
    if-nez p2, :cond_0

    .line 1089
    const-string v1, "sendCallTransferRequest: no target number"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1092
    :cond_0
    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v1

    .line 1094
    .local v1, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1096
    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v1

    .line 1099
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1101
    const-string v2, "sendCallTransferRequest: no call available"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1102
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->canTransferToNumber()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1104
    const/4 v0, 0x0

    .line 1105
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 1106
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1107
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->convertQtiImsTransferTypeToImsQmiType(I)I

    move-result v6

    const/4 v8, 0x0

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 1108
    invoke-virtual {v3, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 1105
    move-object v7, p2

    invoke-virtual/range {v4 .. v9}, Lorg/codeaurora/ims/ImsSenderRxr;->explicitCallTransfer(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 1111
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCallTransferRequest: transfer not allowed "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1111
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1115
    .end local v1    # "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :goto_0
    goto/16 :goto_3

    .line 1119
    :cond_4
    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 1120
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v1

    .line 1121
    .restart local v1    # "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1123
    const-string v2, "sendCallTransferRequest: no active call available"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1124
    :cond_5
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->canTransferToId()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1126
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1127
    .local v4, "nCallId":I
    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v1

    .line 1128
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1130
    const-string v2, "sendCallTransferRequest: no held call available"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 1131
    :cond_6
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsCallSessionImpl;->canTransferToId()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1133
    const/4 v0, 0x0

    .line 1134
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 1135
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1136
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->convertQtiImsTransferTypeToImsQmiType(I)I

    move-result v7

    const/4 v8, 0x0

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 1137
    invoke-virtual {v3, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 1134
    move v9, v4

    invoke-virtual/range {v5 .. v10}, Lorg/codeaurora/ims/ImsSenderRxr;->explicitCallTransfer(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_1

    .line 1139
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendCallTransferRequest: held call transfer isnot allowed "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1139
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1142
    .end local v4    # "nCallId":I
    :goto_1
    goto :goto_2

    .line 1144
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCallTransferRequest: active call transfer isnot allowed "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1144
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1148
    .end local v1    # "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :goto_2
    nop

    .line 1154
    :goto_3
    if-eqz v0, :cond_a

    .line 1156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCallTransferRequest: Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1157
    if-eqz p3, :cond_9

    .line 1159
    :try_start_0
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    const/4 v2, 0x1

    invoke-interface {p3, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->receiveCallTransferResponse(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1161
    :catch_0
    move-exception v1

    .line 1162
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "sendCallTransferRequest: exception!"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1163
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_4
    goto :goto_5

    .line 1165
    :cond_9
    const-string v1, "sendCallTransferRequest: no listener is available"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1168
    :cond_a
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public sendCancelModifyCall(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 5
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 1028
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 1029
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 1031
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1033
    const-string v1, "sendCancelModifyCall: no call is available to cancel modify call"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1034
    if-eqz p1, :cond_0

    .line 1036
    :try_start_0
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->receiveCancelModifyCallResponse(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1038
    :catch_0
    move-exception v1

    .line 1039
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "sendCancelModifyCall exception!"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1040
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 1042
    :cond_0
    const-string v1, "sendCancelModifyCall: no listener is available"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1046
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1047
    .local v1, "nCallId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCancelModifyCall: call ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1050
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x23

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->cancelModifyCall(Landroid/os/Message;I)V

    .line 1053
    .end local v1    # "nCallId":I
    :goto_1
    return-void
.end method

.method public sendConferenceRequest(Lorg/codeaurora/ims/ImsServiceClassTracker;)V
    .locals 3
    .param p1, "sct"    # Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 388
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mConferenceRequestedbyTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 391
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->conference(Landroid/os/Message;)V

    .line 392
    return-void
.end method

.method public setCallForwardUncondTimer(IIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 13
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "condition"    # I
    .param p7, "serviceClass"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-object v0, p0

    .line 1002
    const-string v1, "setCallForwardUncondTimer"

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1003
    iget-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 1005
    const/16 v3, 0x10

    move-object/from16 v12, p9

    invoke-virtual {v1, v3, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 1003
    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v11}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallForwardUncondTimer(IIIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 1006
    return-void
.end method

.method public setHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "hoConfig"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 1176
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 1177
    const/16 v2, 0x21

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1176
    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->setHandoverConfig(ILandroid/os/Message;)V

    .line 1178
    return-void
.end method

.method public setUiTtyMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "onCompleteMessage"    # Landroid/os/Message;

    .line 511
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->setUiTTYMode(ILandroid/os/Message;)V

    .line 512
    return-void
.end method

.method public testingEmergencyCall()V
    .locals 1

    .line 2067
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->testingEmergencyCall()V

    .line 2068
    return-void
.end method

.method public turnOffIms()V
    .locals 3

    .line 315
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 316
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 315
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendImsRegistrationState(ILandroid/os/Message;)V

    .line 317
    return-void
.end method

.method public turnOnIms()V
    .locals 3

    .line 306
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 307
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 306
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendImsRegistrationState(ILandroid/os/Message;)V

    .line 308
    return-void
.end method

.method public unregisterForCapabilitiesChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2132
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilitiesChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2133
    return-void
.end method

.method public updateLowBatteryStatus()V
    .locals 1

    .line 994
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateLowBatteryStatus()V

    .line 997
    :cond_0
    return-void
.end method

.method public updateVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "preference"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 2296
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->updateVoltePref(ILandroid/os/Message;)V

    .line 2297
    return-void
.end method
