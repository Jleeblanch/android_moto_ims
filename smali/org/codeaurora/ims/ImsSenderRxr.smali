.class public Lorg/codeaurora/ims/ImsSenderRxr;
.super Lorg/codeaurora/ims/ImsPhoneBaseCommands;
.source "ImsSenderRxr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;,
        Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;,
        Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;,
        Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceNotification;,
        Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioDeathRecipient;,
        Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:I = 0xea60

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x1

.field static final IIMS_RADIO_SERVICE_NAME:[Ljava/lang/String;

.field static final LOG_TAG:Ljava/lang/String; = "ImsSenderRxr"

.field private static final MSG_TAG_LENGTH:I = 0x1

.field private static final PDU_LENGTH_OFFSET:I = 0x4

.field private static final STATUS_INTERROGATE:I = 0x2

.field static final ZERO_SECONDS:I


# instance fields
.field private mAutoRejectRegistrants:Landroid/os/RegistrantList;

.field final mDeathRecipient:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioDeathRecipient;

.field private mGeolocationRegistrants:Landroid/os/RegistrantList;

.field private final mHalSync:Ljava/lang/Object;

.field private mHandoverStatusRegistrants:Landroid/os/RegistrantList;

.field private volatile mImsRadio:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

.field final mImsRadioHandler:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

.field private mImsRadioIndication:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;

.field private mImsRadioResponse:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;

.field private volatile mImsRadioV12:Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

.field private volatile mImsRadioV13:Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;

.field private volatile mImsRadioV14:Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

.field private mImsSubConfigChangeRegistrants:Landroid/os/RegistrantList;

.field private mIncomingSmsRegistrant:Landroid/os/Registrant;

.field private mIsUnsolCallListPresent:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mModifyCallRegistrants:Landroid/os/RegistrantList;

.field private mMultiIdentityInfoPendingRegistrants:Landroid/os/RegistrantList;

.field private mMultiIdentityStatusChangeRegistrants:Landroid/os/RegistrantList;

.field protected mMwiRegistrants:Landroid/os/RegistrantList;

.field private mParticipantStatusRegistrants:Landroid/os/RegistrantList;

.field private mPhoneId:Ljava/lang/Integer;

.field private mRadioStateRegistrations:Landroid/os/RegistrantList;

.field private mRefreshConfInfoRegistrations:Landroid/os/RegistrantList;

.field private mRegistrationBlockStatusRegistrants:Landroid/os/RegistrantList;

.field mRequestMessagesWaiting:I

.field mRequestsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/IFRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mRttMessageRegistrants:Landroid/os/RegistrantList;

.field private mRttModifyRegistrants:Landroid/os/RegistrantList;

.field private mSendSmsStatusReportRegistrant:Landroid/os/Registrant;

.field private final mServiceNotification:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceNotification;

.field private mSrvStatusRegistrations:Landroid/os/RegistrantList;

.field protected mSsIndicationRegistrant:Landroid/os/Registrant;

.field private mSsaccRegistrants:Landroid/os/RegistrantList;

.field protected mSsnRegistrant:Landroid/os/Registrant;

.field mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTtyStatusRegistrants:Landroid/os/RegistrantList;

.field private mVoWiFiCallQualityRegistrants:Landroid/os/RegistrantList;

.field private mVoiceInfoStatusRegistrants:Landroid/os/RegistrantList;

.field private mVopsRegistrants:Landroid/os/RegistrantList;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 265
    const-string v0, "imsradio0"

    const-string v1, "imsradio1"

    const-string v2, "imsradio2"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/ims/ImsSenderRxr;->IIMS_RADIO_SERVICE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 1886
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsPhoneBaseCommands;-><init>(Landroid/content/Context;)V

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    .line 249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    .line 252
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 258
    new-instance v1, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceNotification;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceNotification;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mServiceNotification:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceNotification;

    .line 292
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    .line 295
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHalSync:Ljava/lang/Object;

    .line 1888
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    .line 1889
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->initNotifyRegistrants()V

    .line 1891
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1892
    .local v1, "pm":Landroid/os/PowerManager;
    const-string v2, "ImsSenderRxr"

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1893
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1894
    const-string v2, "ro.ril.wake_lock_timeout"

    const v3, 0xea60

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLockTimeout:I

    .line 1896
    new-instance v2, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

    invoke-direct {v2, p0}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHandler:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

    .line 1897
    iput v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 1899
    new-instance v0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioDeathRecipient;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioDeathRecipient;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mDeathRecipient:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioDeathRecipient;

    .line 1901
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForImsRadioServiceNotification()V

    .line 1902
    return-void
.end method

.method static synthetic access$000(Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 215
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->resetServiceAndRequestList()V

    return-void
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 215
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->initImsRadio()V

    return-void
.end method

.method static synthetic access$1000(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/Registrant;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 215
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingSmsRegistrant:Landroid/os/Registrant;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 215
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 215
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 215
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 215
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 215
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 215
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mAutoRejectRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 215
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsSubConfigChangeRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 215
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 215
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRegistrationBlockStatusRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 215
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(II)V

    return-void
.end method

.method static synthetic access$2000(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 215
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttMessageRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 215
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoiceInfoStatusRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 215
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 215
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 215
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 215
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityStatusChangeRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 215
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityInfoPendingRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p1, "x1"    # I

    .line 215
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->findAndRemoveRequestFromList(I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p1, "x1"    # Lorg/codeaurora/ims/IFRequest;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .line 215
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lorg/codeaurora/ims/ImsSenderRxr;Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p1, "x1"    # Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    .line 215
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->processConfigResponse(Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$602(Lorg/codeaurora/ims/ImsSenderRxr;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p1, "x1"    # Z

    .line 215
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    return p1
.end method

.method static synthetic access$700(Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 215
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->notifyDm()V

    return-void
.end method

.method static synthetic access$800(Lorg/codeaurora/ims/ImsSenderRxr;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 215
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$900(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/Registrant;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 215
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSendSmsStatusReportRegistrant:Landroid/os/Registrant;

    return-object v0
.end method

.method private acquireWakeLock()V
    .locals 5

    .line 1935
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 1936
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1938
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHandler:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->removeMessages(I)V

    .line 1939
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHandler:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1940
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHandler:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

    iget v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLockTimeout:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1941
    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 1942
    return-void

    .line 1941
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearRequestsList(IZ)V
    .locals 8
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    .line 1976
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1977
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1978
    .local v1, "count":I
    if-eqz p2, :cond_0

    .line 1979
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearRequestsList: mRequestList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1982
    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_2

    .line 1983
    iget-object v5, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/IFRequest;

    .line 1984
    .local v5, "rr":Lorg/codeaurora/ims/IFRequest;
    if-eqz p2, :cond_1

    .line 1985
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    .line 1986
    invoke-static {v7}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1985
    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1988
    :cond_1
    invoke-virtual {v5, p1, v4}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 1989
    invoke-virtual {v5}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 1982
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1991
    .end local v3    # "i":I
    .end local v5    # "rr":Lorg/codeaurora/ims/IFRequest;
    :cond_2
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1992
    iput v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 1993
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 1994
    .end local v1    # "count":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1997
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    if-eqz v0, :cond_3

    .line 1998
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    .line 1999
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCallStateRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    new-instance v2, Ljava/lang/RuntimeException;

    .line 2001
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->errorIdToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4, v4, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2000
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2003
    :cond_3
    return-void

    .line 1994
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private disableSrvStatus()V
    .locals 4

    .line 2981
    const-string v0, "disableSrvStatus"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2982
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 2983
    new-instance v0, Lorg/codeaurora/ims/ImsRilException;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsRilException;-><init>(ILjava/lang/String;)V

    .line 2984
    .local v0, "ex":Lorg/codeaurora/ims/ImsRilException;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v2, v2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2985
    invoke-virtual {v1, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2987
    .end local v0    # "ex":Lorg/codeaurora/ims/ImsRilException;
    :cond_0
    return-void
.end method

.method static errorIdToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .line 2090
    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    .line 2120
    const-string v0, "E_UNKNOWN"

    return-object v0

    .line 2118
    :pswitch_0
    const-string v0, "E_SS_MODIFIED_TO_DIAL_VIDEO"

    return-object v0

    .line 2116
    :pswitch_1
    const-string v0, "E_SS_MODIFIED_TO_SS"

    return-object v0

    .line 2114
    :pswitch_2
    const-string v0, "E_SS_MODIFIED_TO_USSD"

    return-object v0

    .line 2112
    :pswitch_3
    const-string v0, "E_SS_MODIFIED_TO_DIAL"

    return-object v0

    .line 2110
    :pswitch_4
    const-string v0, "E_FDN_CHECK_FAILURE"

    return-object v0

    .line 2106
    :pswitch_5
    const-string v0, "E_REJECTED_BY_REMOTE"

    return-object v0

    .line 2104
    :pswitch_6
    const-string v0, "E_INVALID_PARAMETER"

    return-object v0

    .line 2100
    :pswitch_7
    const-string v0, "E_CANCELLED"

    return-object v0

    .line 2098
    :pswitch_8
    const-string v0, "E_REQUEST_NOT_SUPPORTED"

    return-object v0

    .line 2096
    :pswitch_9
    const-string v0, "E_GENERIC_FAILURE"

    return-object v0

    .line 2094
    :pswitch_a
    const-string v0, "E_RADIO_NOT_AVAILABLE"

    return-object v0

    .line 2092
    :pswitch_b
    const-string v0, "SUCCESS"

    return-object v0

    .line 2108
    :cond_0
    const-string v0, "E_NETWORK_NOT_SUPPORTED"

    return-object v0

    .line 2102
    :cond_1
    const-string v0, "E_UNUSED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1b
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x22
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static facilityStringToInt(Ljava/lang/String;)I
    .locals 2
    .param p0, "sc"    # Ljava/lang/String;

    .line 3365
    if-eqz p0, :cond_2

    .line 3369
    const-string v0, "CLIP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3370
    const/4 v0, 0x1

    return v0

    .line 3372
    :cond_0
    const-string v0, "COLP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3373
    const/4 v0, 0x2

    return v0

    .line 3375
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 3366
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid supplementary service"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findAndRemoveRequestFromList(I)Lorg/codeaurora/ims/IFRequest;
    .locals 5
    .param p1, "serial"    # I

    .line 2006
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2007
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 2008
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/IFRequest;

    .line 2010
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    iget v4, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    if-ne v4, p1, :cond_1

    .line 2011
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2012
    iget v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    if-lez v4, :cond_0

    .line 2013
    iget v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 2014
    :cond_0
    monitor-exit v0

    return-object v3

    .line 2007
    .end local v3    # "rr":Lorg/codeaurora/ims/IFRequest;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2017
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_2
    monitor-exit v0

    .line 2019
    const/4 v0, 0x0

    return-object v0

    .line 2017
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;
    .locals 3

    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHalSync:Ljava/lang/Object;

    monitor-enter v1

    .line 453
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadio:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-object v0, v2

    .line 454
    monitor-exit v1

    .line 455
    return-object v0

    .line 454
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private imsRadioV12()Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;
    .locals 3

    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHalSync:Ljava/lang/Object;

    monitor-enter v1

    .line 461
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioV12:Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    move-object v0, v2

    .line 462
    monitor-exit v1

    .line 463
    return-object v0

    .line 462
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private imsRadioV13()Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;
    .locals 3

    .line 467
    const/4 v0, 0x0

    .line 468
    .local v0, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHalSync:Ljava/lang/Object;

    monitor-enter v1

    .line 469
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioV13:Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;

    move-object v0, v2

    .line 470
    monitor-exit v1

    .line 471
    return-object v0

    .line 470
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private imsRadioV14()Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;
    .locals 3

    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHalSync:Ljava/lang/Object;

    monitor-enter v1

    .line 477
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioV14:Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    move-object v0, v2

    .line 478
    monitor-exit v1

    .line 479
    return-object v0

    .line 478
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private initImsRadio()V
    .locals 11

    .line 496
    :try_start_0
    sget-object v0, Lorg/codeaurora/ims/ImsSenderRxr;->IIMS_RADIO_SERVICE_NAME:[Ljava/lang/String;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    .line 497
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getService(Ljava/lang/String;)Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    .line 498
    .local v0, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;
    if-nez v0, :cond_0

    .line 499
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->resetHalInterfaces()V

    .line 500
    const-string v1, "initImsRadio: imsRadio is null."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    return-void

    .line 503
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initImsRadio: imsRadioV10 availability: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-static {v4}, Lorg/codeaurora/ims/ImsSenderRxr;->toAvailability(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    nop

    .line 507
    invoke-static {v0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/ims/V1_1/IImsRadio;

    move-result-object v1

    .line 508
    .local v1, "imsRadioV11":Lvendor/qti/hardware/radio/ims/V1_1/IImsRadio;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initImsRadio: imsRadioV11 availability: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    invoke-static {v5}, Lorg/codeaurora/ims/ImsSenderRxr;->toAvailability(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    nop

    .line 512
    invoke-static {v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    move-result-object v4

    .line 513
    .local v4, "imsRadioV12":Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initImsRadio: imsRadioV12 availability: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_3

    move v6, v3

    goto :goto_2

    :cond_3
    move v6, v2

    :goto_2
    invoke-static {v6}, Lorg/codeaurora/ims/ImsSenderRxr;->toAvailability(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    nop

    .line 517
    invoke-static {v0}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;

    move-result-object v5

    .line 518
    .local v5, "imsRadioV13":Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initImsRadio: imsRadioV13 availability: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_4

    move v7, v3

    goto :goto_3

    :cond_4
    move v7, v2

    :goto_3
    invoke-static {v7}, Lorg/codeaurora/ims/ImsSenderRxr;->toAvailability(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    nop

    .line 522
    invoke-static {v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    move-result-object v6

    .line 523
    .local v6, "imsRadioV14":Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initImsRadio: imsRadioV14 availability: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_5

    move v2, v3

    nop

    :cond_5
    invoke-static {v2}, Lorg/codeaurora/ims/ImsSenderRxr;->toAvailability(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 526
    new-instance v2, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;

    invoke-direct {v2, p0}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;)V

    .line 527
    .local v2, "imsRadioResponse":Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;
    new-instance v3, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;

    invoke-direct {v3, p0}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;)V

    .line 529
    .local v3, "imsRadioIndication":Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;
    iget-object v7, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHalSync:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :try_start_1
    iput-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioResponse:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;

    .line 531
    iput-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioIndication:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;

    .line 532
    iget-object v8, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioResponse:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;

    iget-object v9, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioIndication:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;

    invoke-interface {v0, v8, v9}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setCallback(Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;)V

    .line 533
    iget-object v8, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mDeathRecipient:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioDeathRecipient;

    const-wide/16 v9, 0x0

    invoke-interface {v0, v8, v9, v10}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 535
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadio:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    .line 536
    iput-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioV12:Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    .line 537
    iput-object v5, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioV13:Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;

    .line 538
    iput-object v6, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioV14:Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    .line 539
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    :try_start_2
    sget-object v7, Lorg/codeaurora/ims/ImsSenderRxr;->IIMS_RADIO_SERVICE_NAME:[Ljava/lang/String;

    iget-object v8, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->notifyServiceUp(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 546
    .end local v0    # "imsRadio":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;
    .end local v1    # "imsRadioV11":Lvendor/qti/hardware/radio/ims/V1_1/IImsRadio;
    .end local v2    # "imsRadioResponse":Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;
    .end local v3    # "imsRadioIndication":Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;
    .end local v4    # "imsRadioV12":Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;
    .end local v5    # "imsRadioV13":Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;
    .end local v6    # "imsRadioV14":Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;
    goto :goto_4

    .line 539
    .restart local v0    # "imsRadio":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;
    .restart local v1    # "imsRadioV11":Lvendor/qti/hardware/radio/ims/V1_1/IImsRadio;
    .restart local v2    # "imsRadioResponse":Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;
    .restart local v3    # "imsRadioIndication":Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;
    .restart local v4    # "imsRadioV12":Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;
    .restart local v5    # "imsRadioV13":Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;
    .restart local v6    # "imsRadioV14":Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 543
    .end local v0    # "imsRadio":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;
    .end local v1    # "imsRadioV11":Lvendor/qti/hardware/radio/ims/V1_1/IImsRadio;
    .end local v2    # "imsRadioResponse":Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;
    .end local v3    # "imsRadioIndication":Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;
    .end local v4    # "imsRadioV12":Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;
    .end local v5    # "imsRadioV13":Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;
    .end local v6    # "imsRadioV14":Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;
    :catch_0
    move-exception v0

    .line 544
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initImsRadio: Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->resetServiceAndRequestList()V

    .line 547
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method private initNotifyRegistrants()V
    .locals 2

    .line 1905
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    .line 1906
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Landroid/os/RegistrantList;

    .line 1907
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    .line 1908
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Landroid/os/RegistrantList;

    .line 1909
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRadioStateRegistrations:Landroid/os/RegistrantList;

    .line 1910
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Landroid/os/RegistrantList;

    .line 1911
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Landroid/os/RegistrantList;

    .line 1912
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Landroid/os/RegistrantList;

    .line 1913
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Landroid/os/RegistrantList;

    .line 1914
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Landroid/os/RegistrantList;

    .line 1915
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsSubConfigChangeRegistrants:Landroid/os/RegistrantList;

    .line 1916
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRegistrationBlockStatusRegistrants:Landroid/os/RegistrantList;

    .line 1917
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    .line 1918
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Landroid/os/RegistrantList;

    .line 1919
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttMessageRegistrants:Landroid/os/RegistrantList;

    .line 1920
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttModifyRegistrants:Landroid/os/RegistrantList;

    .line 1921
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mAutoRejectRegistrants:Landroid/os/RegistrantList;

    .line 1922
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoiceInfoStatusRegistrants:Landroid/os/RegistrantList;

    .line 1923
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityStatusChangeRegistrants:Landroid/os/RegistrantList;

    .line 1924
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityInfoPendingRegistrants:Landroid/os/RegistrantList;

    .line 1925
    return-void
.end method

.method static msgIdToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .line 2126
    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    .line 2304
    const-string v0, "<unknown message>"

    return-object v0

    .line 2302
    :pswitch_0
    const-string v0, "UNSOL_MULTI_IDENTITY_INFO_PENDING"

    return-object v0

    .line 2300
    :pswitch_1
    const-string v0, "UNSOL_MULTI_IDENTITY_REGISTRATION_STATUS_CHANGE"

    return-object v0

    .line 2298
    :pswitch_2
    const-string v0, "UNSOL_VOICE_INFO"

    return-object v0

    .line 2296
    :pswitch_3
    const-string v0, "UNSOL_AUTO_CALL_REJECTION_IND"

    return-object v0

    .line 2294
    :pswitch_4
    const-string v0, "UNSOL_INCOMING_IMS_SMS"

    return-object v0

    .line 2292
    :pswitch_5
    const-string v0, "UNSOL_IMS_SMS_STATUS_REPORT"

    return-object v0

    .line 2290
    :pswitch_6
    const-string v0, "UNSOL_ON_SS"

    return-object v0

    .line 2288
    :pswitch_7
    const-string v0, "UNSOL_RESPONSE_RTT_MSG_RECEIVED"

    return-object v0

    .line 2286
    :pswitch_8
    const-string v0, "UNSOL_RESPONSE_REGISTRATION_BLOCK_STATUS"

    return-object v0

    .line 2284
    :pswitch_9
    const-string v0, "UNSOL_IMS_SUB_CONFIG_CHANGED"

    return-object v0

    .line 2282
    :pswitch_a
    const-string v0, "UNSOL_PARTICIPANT_STATUS_INFO"

    return-object v0

    .line 2280
    :pswitch_b
    const-string v0, "UNSOL_SSAC_CHANGED"

    return-object v0

    .line 2278
    :pswitch_c
    const-string v0, "UNSOL_VOPS_CHANGED"

    return-object v0

    .line 2276
    :pswitch_d
    const-string v0, "UNSOL_VOWIFI_CALL_QUALITY"

    return-object v0

    .line 2272
    :pswitch_e
    const-string v0, "UNSOL_REQUEST_GEOLOCATION"

    return-object v0

    .line 2274
    :pswitch_f
    const-string v0, "UNSOL_REFRESH_VICE_INFO"

    return-object v0

    .line 2270
    :pswitch_10
    const-string v0, "UNSOL_MWI"

    return-object v0

    .line 2268
    :pswitch_11
    const-string v0, "UNSOL_RADIO_STATE_CHANGED"

    return-object v0

    .line 2266
    :pswitch_12
    const-string v0, "UNSOL_TTY_NOTIFICATION"

    return-object v0

    .line 2264
    :pswitch_13
    const-string v0, "UNSOL_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 2262
    :pswitch_14
    const-string v0, "UNSOL_SRV_STATUS_UPDATE"

    return-object v0

    .line 2260
    :pswitch_15
    const-string v0, "UNSOL_REFRESH_CONF_INFO"

    return-object v0

    .line 2258
    :pswitch_16
    const-string v0, "UNSOL_RESPONSE_HANDOVER"

    return-object v0

    .line 2156
    :pswitch_17
    const-string v0, "UNSOL_MODIFY_CALL"

    return-object v0

    .line 2254
    :pswitch_18
    const-string v0, "UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 2250
    :pswitch_19
    const-string v0, "UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 2244
    :pswitch_1a
    const-string v0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    return-object v0

    .line 2252
    :pswitch_1b
    const-string v0, "UNSOL_RINGBACK_TONE"

    return-object v0

    .line 2248
    :pswitch_1c
    const-string v0, "UNSOL_CALL_RING"

    return-object v0

    .line 2246
    :pswitch_1d
    const-string v0, "UNSOL_RESPONSE_CALL_STATE_CHANGED"

    return-object v0

    .line 2242
    :pswitch_1e
    const-string v0, "REQUEST_QUERY_VIRTUAL_LINE_INFO"

    return-object v0

    .line 2240
    :pswitch_1f
    const-string v0, "REQUEST_REGISTER_MULTI_IDENTITY_LINES"

    return-object v0

    .line 2238
    :pswitch_20
    const-string v0, "REQUEST_ACK_IMS_SMS_STATUS_REPORT"

    return-object v0

    .line 2236
    :pswitch_21
    const-string v0, "REQUEST_ACK_IMS_SMS"

    return-object v0

    .line 2234
    :pswitch_22
    const-string v0, "REQUEST_SEND_IMS_SMS"

    return-object v0

    .line 2232
    :pswitch_23
    const-string v0, "REQUEST_CANCEL_MODIFY_CALL"

    return-object v0

    .line 2230
    :pswitch_24
    const-string v0, "REQUEST_SEND_RTT_MSG"

    return-object v0

    .line 2228
    :pswitch_25
    const-string v0, "REQUEST_GET_IMS_SUB_CONFIG"

    return-object v0

    .line 2226
    :pswitch_26
    const-string v0, "REQUEST_SET_HANDOVER_CONFIG"

    return-object v0

    .line 2224
    :pswitch_27
    const-string v0, "REQUEST_GET_HANDOVER_CONFIG"

    return-object v0

    .line 2222
    :pswitch_28
    const-string v0, "REQUEST_GET_VOLTE_PREF"

    return-object v0

    .line 2220
    :pswitch_29
    const-string v0, "REQUEST_SET_VOLTE_PREF"

    return-object v0

    .line 2218
    :pswitch_2a
    const-string v0, "REQUEST_GET_SSAC_INFO"

    return-object v0

    .line 2216
    :pswitch_2b
    const-string v0, "REQUEST_GET_VOPS_INFO"

    return-object v0

    .line 2214
    :pswitch_2c
    const-string v0, "REQUEST_SEND_GEOLOCATION_INFO"

    return-object v0

    .line 2212
    :pswitch_2d
    const-string v0, "REQUEST_GET_IMS_CONFIG"

    return-object v0

    .line 2210
    :pswitch_2e
    const-string v0, "REQUEST_SET_IMS_CONFIG"

    return-object v0

    .line 2200
    :pswitch_2f
    const-string v0, "REQUEST_SET_WIFI_CALLING_STATUS"

    return-object v0

    .line 2198
    :pswitch_30
    const-string v0, "REQUEST_GET_WIFI_CALLING_STATUS"

    return-object v0

    .line 2196
    :pswitch_31
    const-string v0, "REQUEST_GET_RTP_ERROR_STATISTICS"

    return-object v0

    .line 2194
    :pswitch_32
    const-string v0, "REQUEST_GET_RTP_STATISTICS"

    return-object v0

    .line 2150
    :pswitch_33
    const-string v0, "REQUEST_SEND_UI_TTY_MODE"

    return-object v0

    .line 2208
    :pswitch_34
    const-string v0, "REQUEST_RESUME"

    return-object v0

    .line 2206
    :pswitch_35
    const-string v0, "REQUEST_HOLD"

    return-object v0

    .line 2204
    :pswitch_36
    const-string v0, "REQUEST_SET_COLR"

    return-object v0

    .line 2202
    :pswitch_37
    const-string v0, "REQUEST_GET_COLR"

    return-object v0

    .line 2134
    :pswitch_38
    const-string v0, "REQUEST_DEFLECT_CALL"

    return-object v0

    .line 2192
    :pswitch_39
    const-string v0, "REQUEST_SUPP_SVC_STATUS"

    return-object v0

    .line 2176
    :pswitch_3a
    const-string v0, "REQUEST_SET_SERVICE_STATUS"

    return-object v0

    .line 2174
    :pswitch_3b
    const-string v0, "REQUEST_QUERY_SERVICE_STATUS"

    return-object v0

    .line 2136
    :pswitch_3c
    const-string v0, "REQUEST_ADD_PARTICIPANT"

    return-object v0

    .line 2190
    :pswitch_3d
    const-string v0, "REQUEST_SET_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 2256
    :pswitch_3e
    const-string v0, "REQUEST_IMS_REG_STATE_CHANGE"

    return-object v0

    .line 2188
    :pswitch_3f
    const-string v0, "REQUEST_SET_CALL_WAITING"

    return-object v0

    .line 2186
    :pswitch_40
    const-string v0, "REQUEST_QUERY_CALL_WAITING"

    return-object v0

    .line 2184
    :pswitch_41
    const-string v0, "REQUEST_SET_CALL_FORWARD_STATUS"

    return-object v0

    .line 2182
    :pswitch_42
    const-string v0, "REQUEST_QUERY_CALL_FORWARD_STATUS"

    return-object v0

    .line 2180
    :pswitch_43
    const-string v0, "REQUEST_SET_CLIR"

    return-object v0

    .line 2178
    :pswitch_44
    const-string v0, "REQUEST_GET_CLIR"

    return-object v0

    .line 2172
    :pswitch_45
    const-string v0, "REQUEST_QUERY_CLIP"

    return-object v0

    .line 2154
    :pswitch_46
    const-string v0, "MODIFY_CALL_CONFIRM"

    return-object v0

    .line 2152
    :pswitch_47
    const-string v0, "MODIFY_CALL_INITIATE"

    return-object v0

    .line 2148
    :pswitch_48
    const-string v0, "UDUB"

    return-object v0

    .line 2164
    :pswitch_49
    const-string v0, "DTMF_STOP"

    return-object v0

    .line 2162
    :pswitch_4a
    const-string v0, "DTMF_START"

    return-object v0

    .line 2160
    :pswitch_4b
    const-string v0, "DTMF"

    return-object v0

    .line 2166
    :pswitch_4c
    const-string v0, "MessageId.REQUEST_EXPLICIT_CALL_TRANSFER"

    return-object v0

    .line 2168
    :pswitch_4d
    const-string v0, "MessageId.REQUEST_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 2146
    :pswitch_4e
    const-string v0, "CONFERENCE"

    return-object v0

    .line 2144
    :pswitch_4f
    const-string v0, "MessageId.REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    return-object v0

    .line 2142
    :pswitch_50
    const-string v0, "HANGUP_FOREGROUND_RESUME_BACKGROUND"

    return-object v0

    .line 2140
    :pswitch_51
    const-string v0, "HANGUP_WAITING_OR_BACKGROUND"

    return-object v0

    .line 2128
    :pswitch_52
    const-string v0, "GET_CURRENT_CALLS"

    return-object v0

    .line 2158
    :pswitch_53
    const-string v0, "LAST_CALL_FAIL_CAUSE"

    return-object v0

    .line 2138
    :pswitch_54
    const-string v0, "HANGUP"

    return-object v0

    .line 2132
    :pswitch_55
    const-string v0, "REQUEST_ANSWER"

    return-object v0

    .line 2130
    :pswitch_56
    const-string v0, "DIAL"

    return-object v0

    .line 2170
    :pswitch_57
    const-string v0, "REQUEST_IMS_REGISTRATION_STATE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x25
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xc9
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyDm()V
    .locals 5

    .line 2991
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2993
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2994
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2995
    .local v1, "serviceIntent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.motorola.android.sdm.plugins.connmo"

    const-string v4, "com.motorola.android.sdm.plugins.dcmo.DcmoVolteDisableService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2998
    .local v2, "component":Landroid/content/ComponentName;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3000
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3001
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3003
    :cond_0
    return-void
.end method

.method private notifyServiceDown(Ljava/lang/String;)V
    .locals 4
    .param p1, "instanceName"    # Ljava/lang/String;

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDown : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 375
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;

    .line 376
    .local v2, "l":Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;->onServiceDown(I)V

    .line 377
    .end local v2    # "l":Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;
    goto :goto_0

    .line 378
    :cond_0
    monitor-exit v0

    .line 379
    return-void

    .line 378
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyServiceUp(Ljava/lang/String;)V
    .locals 4
    .param p1, "instanceName"    # Ljava/lang/String;

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceUp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 366
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;

    .line 367
    .local v2, "l":Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;->onServiceUp(I)V

    .line 368
    .end local v2    # "l":Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;
    goto :goto_0

    .line 369
    :cond_0
    monitor-exit v0

    .line 370
    return-void

    .line 369
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private processConfigResponse(Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)Ljava/lang/Object;
    .locals 2
    .param p1, "configInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    .line 2968
    iget-boolean v0, p1, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->hasBoolValue:Z

    if-eqz v0, :cond_0

    .line 2969
    iget-boolean v0, p1, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->boolValue:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2970
    :cond_0
    iget v0, p1, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->intValue:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    .line 2971
    iget v0, p1, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->intValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 2972
    :cond_1
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->stringValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2973
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->stringValue:Ljava/lang/String;

    return-object v0

    .line 2974
    :cond_2
    iget v0, p1, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->errorCause:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    .line 2975
    iget v0, p1, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->errorCause:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->configFailureCauseFromHal(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 2977
    :cond_3
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->configInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)Lorg/codeaurora/ims/ImsConfigItem;

    move-result-object v0

    return-object v0
.end method

.method private queueRequest(Lorg/codeaurora/ims/IFRequest;)V
    .locals 2
    .param p1, "rr"    # Lorg/codeaurora/ims/IFRequest;

    .line 1960
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->acquireWakeLock()V

    .line 1962
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1963
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1964
    iget v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 1965
    monitor-exit v0

    .line 1966
    return-void

    .line 1965
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private registerForImsRadioServiceNotification()V
    .locals 4

    .line 439
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    sget-object v2, Lorg/codeaurora/ims/ImsSenderRxr;->IIMS_RADIO_SERVICE_NAME:[Ljava/lang/String;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    .line 441
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mServiceNotification:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceNotification;

    .line 440
    invoke-interface {v0, v1, v2, v3}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v0

    .line 442
    .local v0, "ret":Z
    if-nez v0, :cond_0

    .line 443
    const-string v1, "Failed to register for service start notifications"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .end local v0    # "ret":Z
    :cond_0
    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register for service start notifications. Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private releaseWakeLockIfDone()V
    .locals 2

    .line 1945
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 1946
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    if-nez v1, :cond_0

    .line 1948
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1950
    :cond_0
    monitor-exit v0

    .line 1951
    return-void

    .line 1950
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeFromQueueAndSendResponse(I)V
    .locals 1
    .param p1, "token"    # I

    .line 1833
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(II)V

    .line 1834
    return-void
.end method

.method private removeFromQueueAndSendResponse(II)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1845
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->findAndRemoveRequestFromList(I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 1847
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 1848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected solicited response or Invalid token id! token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1850
    return-void

    .line 1852
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 1853
    return-void
.end method

.method private resetHalInterfaces()V
    .locals 2

    .line 403
    const-string v0, "resetHalInterfaces: Resetting HAL interfaces."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHalSync:Ljava/lang/Object;

    monitor-enter v0

    .line 405
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadio:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    .line 406
    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioV12:Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    .line 407
    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioV13:Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;

    .line 408
    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioResponse:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;

    .line 409
    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioIndication:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;

    .line 410
    monitor-exit v0

    .line 411
    return-void

    .line 410
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized resetServiceAndRequestList()V
    .locals 2

    monitor-enter p0

    .line 397
    :try_start_0
    sget-object v0, Lorg/codeaurora/ims/ImsSenderRxr;->IIMS_RADIO_SERVICE_NAME:[Ljava/lang/String;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->notifyServiceDown(Ljava/lang/String;)V

    .line 398
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->clearRequestsList(IZ)V

    .line 399
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->resetHalInterfaces()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    monitor-exit p0

    return-void

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lorg/codeaurora/ims/ImsSenderRxr;
    throw v0
.end method

.method private retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p1, "req"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 2024
    if-nez p2, :cond_0

    .line 2025
    const-string v0, ""

    return-object v0

    .line 2030
    :cond_0
    instance-of v0, p2, [I

    if-eqz v0, :cond_2

    .line 2031
    move-object v0, p2

    check-cast v0, [I

    .line 2032
    .local v0, "intArray":[I
    array-length v1, v0

    .line 2033
    .local v1, "length":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2034
    .local v2, "sb":Ljava/lang/StringBuilder;
    if-lez v1, :cond_1

    .line 2035
    const/4 v3, 0x0

    .line 2036
    .local v3, "i":I
    add-int/lit8 v4, v3, 0x1

    .local v4, "i":I
    aget v3, v0, v3

    .end local v3    # "i":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2037
    :goto_0
    if-ge v4, v1, :cond_1

    .line 2038
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "i":I
    aget v4, v0, v4

    .end local v4    # "i":I
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2037
    move v4, v3

    goto :goto_0

    .line 2041
    .end local v3    # "i":I
    :cond_1
    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2042
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2043
    .local v0, "s":Ljava/lang/String;
    goto/16 :goto_4

    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "length":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    instance-of v0, p2, [Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2044
    move-object v0, p2

    check-cast v0, [Ljava/lang/String;

    .line 2045
    .local v0, "strings":[Ljava/lang/String;
    array-length v1, v0

    .line 2046
    .restart local v1    # "length":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2047
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    if-lez v1, :cond_3

    .line 2048
    const/4 v3, 0x0

    .line 2049
    .restart local v3    # "i":I
    add-int/lit8 v4, v3, 0x1

    .restart local v4    # "i":I
    aget-object v3, v0, v3

    .end local v3    # "i":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2050
    :goto_1
    if-ge v4, v1, :cond_3

    .line 2051
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "i":I
    aget-object v4, v0, v4

    .end local v4    # "i":I
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2050
    move v4, v3

    goto :goto_1

    .line 2054
    .end local v3    # "i":I
    :cond_3
    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2055
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2056
    .local v0, "s":Ljava/lang/String;
    goto :goto_4

    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "length":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    const/16 v0, 0xc9

    if-eq p1, v0, :cond_6

    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    goto :goto_2

    .line 2065
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 2058
    :cond_6
    :goto_2
    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    .line 2059
    .local v0, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2060
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/DriverCallIms;

    .line 2061
    .local v3, "dc":Lorg/codeaurora/ims/DriverCallIms;
    const-string v4, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2062
    .end local v3    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    goto :goto_3

    .line 2063
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2064
    .local v0, "s":Ljava/lang/String;
    nop

    .line 2065
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :goto_4
    nop

    .line 2067
    return-object v0
.end method

.method private sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z
    .locals 2
    .param p1, "rr"    # Lorg/codeaurora/ims/IFRequest;
    .param p2, "msgIdString"    # Ljava/lang/String;

    .line 2402
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsRadio HAL is not available. Can\'t send "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to QCRIL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2404
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 2405
    invoke-virtual {p1}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 2406
    return v1

    .line 2408
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V
    .locals 2
    .param p1, "rr"    # Lorg/codeaurora/ims/IFRequest;
    .param p2, "error"    # I
    .param p3, "ret"    # Ljava/lang/Object;

    .line 1865
    if-eqz p2, :cond_0

    .line 1866
    invoke-virtual {p1, p2, p3}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 1867
    invoke-virtual {p1}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 1868
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 1869
    return-void

    .line 1872
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/codeaurora/ims/IFRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    .line 1873
    invoke-direct {p0, v1, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1872
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1875
    iget-object v0, p1, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_1

    .line 1876
    iget-object v0, p1, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1877
    iget-object v0, p1, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1880
    :cond_1
    invoke-virtual {p1}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 1881
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 1882
    return-void
.end method

.method private setCallForwardInternal(IIIIIIILjava/lang/String;ILandroid/os/Message;)V
    .locals 17
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "cfReason"    # I
    .param p7, "serviceClass"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "timeSeconds"    # I
    .param p10, "response"    # Landroid/os/Message;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 3144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setCallForwardInternal cfReason= "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " serviceClass = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "number = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "startHour = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "startMinute = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "endHour = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "endMin = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3148
    const/16 v9, 0x17

    .line 3149
    .local v9, "msgId":I
    const/16 v0, 0x17

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v10

    .line 3150
    .local v10, "msgIdString":Ljava/lang/String;
    move-object/from16 v11, p10

    invoke-static {v0, v11}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v12

    .line 3152
    .local v12, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {v1, v12, v10}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3153
    return-void

    .line 3156
    :cond_0
    invoke-direct {v1, v12}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3157
    nop

    .line 3158
    move/from16 v13, p5

    move/from16 v14, p9

    invoke-static {v6, v7, v8, v13, v14}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCallForwardInfo(IILjava/lang/String;II)Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    move-result-object v15

    .line 3160
    .local v15, "cfInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    const v0, 0x7fffffff

    if-eq v2, v0, :cond_1

    if-eq v3, v0, :cond_1

    .line 3161
    const/4 v0, 0x1

    iput-boolean v0, v15, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->hasCallFwdTimerStart:Z

    .line 3162
    iget-object v0, v15, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->callFwdTimerStart:Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;

    invoke-static {v0, v2, v3}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCallFwdTimerInfo(Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;II)V

    .line 3165
    :cond_1
    const v0, 0x7fffffff

    if-eq v4, v0, :cond_2

    if-eq v5, v0, :cond_2

    .line 3166
    const/4 v0, 0x1

    iput-boolean v0, v15, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->hasCallFwdTimerEnd:Z

    .line 3167
    iget-object v0, v15, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->callFwdTimerEnd:Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;

    invoke-static {v0, v4, v5}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCallFwdTimerInfo(Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;II)V

    .line 3170
    :cond_2
    :try_start_0
    invoke-virtual {v1, v12}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3171
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    iget v2, v12, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v2, v15}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setCallForwardStatus(ILvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3175
    goto :goto_0

    .line 3172
    :catch_0
    move-exception v0

    .line 3173
    .local v0, "ex":Ljava/lang/Exception;
    iget v2, v12, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 3174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "to IImsRadio: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3176
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private suppSvcStatusInternal(II[Ljava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "operationType"    # I
    .param p2, "facility"    # I
    .param p3, "inCbNumList"    # [Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 3302
    const/16 v0, 0x1f

    .line 3303
    .local v0, "msgId":I
    const/16 v1, 0x1f

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 3304
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p5}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 3306
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3307
    return-void

    .line 3310
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3311
    invoke-static {p3, p4}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCbNumListInfo([Ljava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    move-result-object v3

    .line 3313
    .local v3, "cbNumListInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3314
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v4

    iget v5, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    .line 3315
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->facilityTypeToHal(I)I

    move-result v6

    .line 3314
    invoke-interface {v4, v5, p1, v6, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->suppServiceStatus(IIILvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3319
    goto :goto_0

    .line 3316
    :catch_0
    move-exception v4

    .line 3317
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 3318
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "to IImsRadio: Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3320
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static toAvailability(Z)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # Z

    .line 483
    if-eqz p0, :cond_0

    const-string v0, "available"

    goto :goto_0

    :cond_0
    const-string v0, "unavailable"

    :goto_0
    return-object v0
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;I)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callType"    # I

    .line 2452
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->acceptCall(Landroid/os/Message;II)V

    .line 2453
    return-void
.end method

.method public acceptCall(Landroid/os/Message;II)V
    .locals 7
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callType"    # I
    .param p3, "mode"    # I

    .line 2457
    const/4 v0, 0x3

    .line 2458
    .local v0, "msgId":I
    const/4 v1, 0x3

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2460
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2462
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2463
    return-void

    .line 2466
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2468
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2469
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v3

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->callTypeToHal(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-interface {v3, v4, v5, v6, p3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->answer(IIII)V

    .line 2471
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rtt mode to HAL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2475
    goto :goto_0

    .line 2472
    :catch_0
    move-exception v3

    .line 2473
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2474
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2476
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public acknowledgeSms(IILandroid/os/Message;)V
    .locals 7
    .param p1, "messageRef"    # I
    .param p2, "result"    # I
    .param p3, "target"    # Landroid/os/Message;

    .line 2527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acknowledgeSms: messageRef: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2529
    const/16 v0, 0x3a

    .line 2530
    .local v0, "msgId":I
    const/16 v1, 0x3a

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2533
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p3}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2534
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2535
    return-void

    .line 2538
    :cond_0
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->imsSmsDeliverStatusToHidl(I)I

    move-result v4

    .line 2540
    .local v4, "deliverStatus":I
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2541
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV12()Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    move-result-object v5

    iget v6, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v5, v6, p1, v4}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;->acknowledgeSms(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2544
    goto :goto_0

    .line 2542
    :catch_0
    move-exception v5

    .line 2543
    .local v5, "ex":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "to ImsRadioV12: Exception: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2545
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v3}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 2546
    return-void
.end method

.method public acknowledgeSmsReport(IILandroid/os/Message;)V
    .locals 7
    .param p1, "messageRef"    # I
    .param p2, "result"    # I
    .param p3, "target"    # Landroid/os/Message;

    .line 2549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acknowledgeSmsReport: messageRef: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2551
    const/16 v0, 0x3b

    .line 2552
    .local v0, "msgId":I
    const/16 v1, 0x3b

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2555
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p3}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2557
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2558
    return-void

    .line 2561
    :cond_0
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->imsSmsStatusReportStatusToHidl(I)I

    move-result v4

    .line 2563
    .local v4, "statusReportStatus":I
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2564
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV12()Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    move-result-object v5

    iget v6, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v5, v6, p1, v4}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;->acknowledgeSmsReport(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2567
    goto :goto_0

    .line 2565
    :catch_0
    move-exception v5

    .line 2566
    .local v5, "ex":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "to ImsRadioV12: Exception: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2568
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v3}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 2569
    return-void
.end method

.method public addParticipant(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Landroid/os/Message;)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p4, "result"    # Landroid/os/Message;

    .line 2358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addParticipant address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " clirMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callDetails = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2360
    const/16 v0, 0x1c

    .line 2361
    .local v0, "msgId":I
    const/16 v1, 0x1c

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2362
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p4}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2364
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2365
    return-void

    .line 2368
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2369
    const/4 v3, 0x0

    .line 2370
    invoke-static {p1, p2, p3, v3}, Lorg/codeaurora/ims/ImsRadioUtils;->buildDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Z)Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;

    move-result-object v3

    .line 2373
    .local v3, "dialRequest":Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2374
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV14()Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    move-result-object v4

    .line 2375
    .local v4, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;
    if-eqz v4, :cond_1

    .line 2376
    iget v5, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, v3}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;->addParticipant_1_4(ILvendor/qti/hardware/radio/ims/V1_4/DialRequest;)V

    goto :goto_0

    .line 2378
    :cond_1
    const-string v5, "mImsRadio V1.4 is null. invoking mImsRadio.dial()"

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2379
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v5

    iget v6, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateFromDialRequestV14(Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;)Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->addParticipant(ILvendor/qti/hardware/radio/ims/V1_0/DialRequest;)V

    .line 2382
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " request to IImsRadio - token = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " address = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " callType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v6, v6, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " callDomain = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v6, v6, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " isConferenceUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v3, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isConferenceUri:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "isCallPull ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v3, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isCallPull:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isEncrypted = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v3, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isEncrypted:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2391
    .end local v4    # "imsRadio":Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;
    goto :goto_1

    .line 2388
    :catch_0
    move-exception v4

    .line 2389
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2390
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to IImsRadio: Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2392
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public cancelModifyCall(Landroid/os/Message;I)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callId"    # I

    .line 2751
    const-string v0, "cancelModifyCall"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2752
    const/16 v0, 0x38

    .line 2753
    .local v0, "msgId":I
    const/16 v1, 0x38

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2754
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2756
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2757
    return-void

    .line 2760
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2762
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2763
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " request to ImsRadio - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " callId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2765
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v3

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->cancelModifyCall(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2769
    goto :goto_0

    .line 2766
    :catch_0
    move-exception v3

    .line 2767
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2768
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2770
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 2836
    const/16 v0, 0xa

    .line 2837
    .local v0, "msgId":I
    const/16 v1, 0xa

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2838
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2840
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2841
    return-void

    .line 2844
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2846
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2847
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v3

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->conference(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2851
    goto :goto_0

    .line 2848
    :catch_0
    move-exception v3

    .line 2849
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2850
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2852
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public deflectCall(ILjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 2479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deflect call to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "connid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2480
    const/16 v0, 0x20

    .line 2481
    .local v0, "msgId":I
    const/16 v1, 0x20

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2482
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p3}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2484
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2485
    return-void

    .line 2488
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2489
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;-><init>()V

    .line 2490
    .local v3, "deflectRequestInfo":Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;
    iput p1, v3, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;->connIndex:I

    .line 2491
    iput-object p2, v3, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;->number:Ljava/lang/String;

    .line 2493
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2494
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v4

    iget v5, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->deflectCall(ILvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2498
    goto :goto_0

    .line 2495
    :catch_0
    move-exception v4

    .line 2496
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2497
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "request to IImsRadio: Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2499
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public deregisterForImsSubConfigChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 558
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsSubConfigChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 559
    return-void
.end method

.method public deregisterForRttMessage(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 3581
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttMessageRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3582
    return-void
.end method

.method public deregisterForVoiceInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 3589
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoiceInfoStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3590
    return-void
.end method

.method public dial(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLandroid/os/Message;)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p4, "isEncrypted"    # Z
    .param p5, "result"    # Landroid/os/Message;

    .line 2414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dial Request - address= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "clirMode= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callDetails= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isEncrypted= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2416
    const/4 v0, 0x2

    .line 2417
    .local v0, "msgId":I
    const/4 v1, 0x2

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2418
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p5}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2420
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2421
    return-void

    .line 2424
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2425
    nop

    .line 2426
    invoke-static {p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRadioUtils;->buildDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Z)Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;

    move-result-object v3

    .line 2428
    .local v3, "dialRequest":Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2429
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV14()Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    move-result-object v4

    .line 2430
    .local v4, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;
    if-eqz v4, :cond_1

    .line 2431
    iget v5, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, v3}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;->dial_1_4(ILvendor/qti/hardware/radio/ims/V1_4/DialRequest;)V

    goto :goto_0

    .line 2433
    :cond_1
    const-string v5, "mImsRadio V1.4 is null. invoking mImsRadio.dial()"

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2434
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v5

    iget v6, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateFromDialRequestV14(Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;)Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->dial(ILvendor/qti/hardware/radio/ims/V1_0/DialRequest;)V

    .line 2437
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " request to IImsRadio - token = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "address = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "callType ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v6, v6, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "callDomain ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v6, v6, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "isConferenceUri ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v3, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isConferenceUri:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "isCallPull ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v3, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isCallPull:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "isEncrypted ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v3, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isEncrypted:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "rttMode ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v6, v6, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2447
    .end local v4    # "imsRadio":Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;
    goto :goto_1

    .line 2444
    :catch_0
    move-exception v4

    .line 2445
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2446
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "to IImsRadio: Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2448
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 3246
    const-string v0, "exitEmergencyCallbackMode"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3247
    const/16 v0, 0xb

    .line 3248
    .local v0, "msgId":I
    const/16 v1, 0xb

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 3249
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 3251
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3252
    return-void

    .line 3255
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3257
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3258
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v3

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->exitEmergencyCallbackMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3262
    goto :goto_0

    .line 3259
    :catch_0
    move-exception v3

    .line 3260
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 3261
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3263
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public explicitCallTransfer(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "srcCallId"    # I
    .param p2, "type"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "destCallId"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 2856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "explicitCallTransfer srcCallId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " number= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "destCallId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2858
    const/16 v0, 0xc

    .line 2859
    .local v0, "msgId":I
    const/16 v1, 0xc

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2860
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p5}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2862
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2863
    return-void

    .line 2866
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2867
    invoke-static {p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRadioUtils;->buildExplicitCallTransferInfo(IILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;

    move-result-object v3

    .line 2870
    .local v3, "ectInfo":Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2871
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v4

    iget v5, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->explicitCallTransfer(ILvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2875
    goto :goto_0

    .line 2872
    :catch_0
    move-exception v4

    .line 2873
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2874
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "request to IImsRadio: Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2876
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 3569
    const-string v0, "explicitCallTransfer : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3570
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 3029
    const-string v0, "getCLIR"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3030
    const/16 v0, 0x14

    .line 3031
    .local v0, "msgId":I
    const/16 v1, 0x14

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 3032
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 3034
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3035
    return-void

    .line 3038
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3040
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3041
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v3

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getClir(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3045
    goto :goto_0

    .line 3042
    :catch_0
    move-exception v3

    .line 3043
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 3044
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetClir request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3046
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getCOLR(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 3323
    const-string v0, "getCOLR"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3324
    const/16 v0, 0x21

    .line 3325
    .local v0, "msgId":I
    const/16 v1, 0x21

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 3326
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 3328
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3329
    return-void

    .line 3332
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3334
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3335
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v3

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getColr(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3339
    goto :goto_0

    .line 3336
    :catch_0
    move-exception v3

    .line 3337
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 3338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetColr request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3340
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 3561
    const-string v0, "getCurrentCalls : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3562
    return-void
.end method

.method public getHandoverConfig(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .line 3448
    const-string v0, "ImsSenderRxr"

    const-string v1, "getHandoverConfig : Not supported"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3449
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 2689
    const/4 v0, 0x1

    .line 2690
    .local v0, "msgId":I
    const/4 v1, 0x1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2691
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2693
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2694
    return-void

    .line 2697
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2699
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2700
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v3

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getImsRegistrationState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2704
    goto :goto_0

    .line 2701
    :catch_0
    move-exception v3

    .line 2702
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2703
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2705
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getImsSubConfig(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 3419
    const-string v0, "getImsSubConfig"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3420
    const/16 v0, 0x36

    .line 3421
    .local v0, "msgId":I
    const/16 v1, 0x36

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 3422
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 3424
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3425
    return-void

    .line 3428
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3430
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3431
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v3

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getImsSubConfig(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3435
    goto :goto_0

    .line 3432
    :catch_0
    move-exception v3

    .line 3433
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 3434
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3436
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getIncomingSmsRegistrant()Landroid/os/Registrant;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 720
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingSmsRegistrant:Landroid/os/Registrant;

    return-object v0
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 3553
    const-string v0, "getLastCallFailCause : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3554
    return-void
.end method

.method public getPacketCount(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 3379
    const-string v0, "getPacketCount"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3380
    const/16 v0, 0x28

    .line 3381
    .local v0, "msgId":I
    const/16 v1, 0x28

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 3382
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 3384
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3385
    return-void

    .line 3388
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3390
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3391
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v3

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getRtpStatistics(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3395
    goto :goto_0

    .line 3392
    :catch_0
    move-exception v3

    .line 3393
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 3394
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3396
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getPacketErrorCount(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 3399
    const-string v0, "getPacketErrorCount"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3400
    const/16 v0, 0x29

    .line 3401
    .local v0, "msgId":I
    const/16 v1, 0x29

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 3402
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 3404
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3405
    return-void

    .line 3408
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3410
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3411
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v3

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getRtpErrorStatistics(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3415
    goto :goto_0

    .line 3412
    :catch_0
    move-exception v3

    .line 3413
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 3414
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3416
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getPhoneId()I
    .locals 1

    .line 550
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSendSmsStatusReportRegistrant()Landroid/os/Registrant;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 725
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSendSmsStatusReportRegistrant:Landroid/os/Registrant;

    return-object v0
.end method

.method public getSmsFormat()Ljava/lang/String;
    .locals 3

    .line 2573
    :try_start_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV12()Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    move-result-object v0

    invoke-interface {v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;->getSmsFormat()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2574
    :catch_0
    move-exception v0

    .line 2575
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to getSmsFormat. Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2577
    .end local v0    # "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuppSvc(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 3279
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 3280
    return-void
.end method

.method public getWifiCallingPreference(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .line 3439
    const-string v0, "getWifiCallingPreference : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3440
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2610
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7fffffff

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    .line 2611
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 3573
    const-string v0, "hangupForegroundResumeBackground : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3574
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 3557
    const-string v0, "hangupWaitingOrBackground : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3558
    return-void
.end method

.method public hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "connectionId"    # I
    .param p2, "userUri"    # Ljava/lang/String;
    .param p3, "confUri"    # Ljava/lang/String;
    .param p4, "mpty"    # Z
    .param p5, "failCause"    # I
    .param p6, "errorInfo"    # Ljava/lang/String;
    .param p7, "result"    # Landroid/os/Message;

    .line 2616
    const/4 v0, 0x4

    .line 2617
    .local v0, "msgId":I
    const/4 v1, 0x4

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2618
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p7}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2620
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2621
    return-void

    .line 2624
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2625
    nop

    .line 2626
    invoke-static/range {p1 .. p6}, Lorg/codeaurora/ims/ImsRadioUtils;->buildHangupRequest(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;

    move-result-object v3

    .line 2629
    .local v3, "hangup":Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2630
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV13()Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;

    move-result-object v4

    .line 2631
    .local v4, "imsRadioV13":Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;
    if-eqz v4, :cond_1

    .line 2632
    iget v5, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, v3}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;->hangup_1_3(ILvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;)V

    goto :goto_0

    .line 2634
    :cond_1
    const-string v5, "ImsRadioV13 is null. Invoking ImsRadioV10.hangup()"

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2635
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v5

    iget v6, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    .line 2636
    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateHangupRequestInfoFromV13(Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;)Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;

    move-result-object v7

    .line 2635
    invoke-interface {v5, v6, v7}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->hangup(ILvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2641
    .end local v4    # "imsRadioV13":Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;
    :goto_0
    goto :goto_1

    .line 2638
    :catch_0
    move-exception v4

    .line 2639
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2640
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "request to IImsRadio: Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2642
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public hold(Landroid/os/Message;I)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callId"    # I

    .line 2794
    const/16 v0, 0x25

    .line 2795
    .local v0, "msgId":I
    const/16 v1, 0x25

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2796
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2798
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2799
    return-void

    .line 2802
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2804
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2805
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " request to ImsRadio - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " callId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2807
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v3

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->hold(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2811
    goto :goto_0

    .line 2808
    :catch_0
    move-exception v3

    .line 2809
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2810
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2812
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public isSmsSupported()Z
    .locals 1

    .line 487
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioV12:Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 2309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2310
    return-void
.end method

.method public logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V
    .locals 2
    .param p1, "rr"    # Lorg/codeaurora/ims/IFRequest;

    .line 2347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/codeaurora/ims/IFRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2348
    return-void
.end method

.method public logUnimplemented()V
    .locals 2

    .line 2322
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 2323
    .local v0, "e":Ljava/lang/Exception;
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2324
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 2325
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "Unimplemented method. Stack trace: "

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2326
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2328
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public logv(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 2313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2314
    return-void
.end method

.method public modifyCallConfirm(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 2773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCallConfirm callModify= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2774
    const/16 v0, 0x12

    .line 2775
    .local v0, "msgId":I
    const/16 v1, 0x12

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2776
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2778
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2779
    return-void

    .line 2782
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2784
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2785
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v3

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    .line 2786
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCallModifyInfo(Lorg/codeaurora/ims/CallModify;)Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    move-result-object v5

    .line 2785
    invoke-interface {v3, v4, v5}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->modifyCallConfirm(ILvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2790
    goto :goto_0

    .line 2787
    :catch_0
    move-exception v3

    .line 2788
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2789
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2791
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public modifyCallInitiate(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 2730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCallInitiate callModify= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2731
    const/16 v0, 0x11

    .line 2732
    .local v0, "msgId":I
    const/16 v1, 0x11

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2733
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2735
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2736
    return-void

    .line 2739
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2741
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2742
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v3

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    .line 2743
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCallModifyInfo(Lorg/codeaurora/ims/CallModify;)Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    move-result-object v5

    .line 2742
    invoke-interface {v3, v4, v5}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->modifyCallInitiate(ILvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2747
    goto :goto_0

    .line 2744
    :catch_0
    move-exception v3

    .line 2745
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2746
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2748
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 3204
    const-string v0, "queryClip"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3205
    const/16 v0, 0x13

    .line 3206
    .local v0, "msgId":I
    const/16 v1, 0x13

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 3207
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 3209
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3210
    return-void

    .line 3213
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3215
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3216
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v3

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getClip(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3220
    goto :goto_0

    .line 3217
    :catch_0
    move-exception v3

    .line 3218
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 3219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetClip request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3221
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 3180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCallForwardStatus cfReason= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3182
    const/16 v0, 0x16

    .line 3183
    .local v0, "msgId":I
    const/16 v1, 0x16

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 3184
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p4}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 3186
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3187
    return-void

    .line 3190
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3191
    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 3192
    invoke-static {p1, p2, p3, v3, v4}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCallForwardInfo(IILjava/lang/String;II)Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    move-result-object v3

    .line 3195
    .local v3, "cfInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3196
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v4

    iget v5, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->queryCallForwardStatus(ILvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3200
    goto :goto_0

    .line 3197
    :catch_0
    move-exception v4

    .line 3198
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 3199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "to IImsRadio: Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3201
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 6
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 3071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCallWaiting serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3072
    const/16 v0, 0x18

    .line 3073
    .local v0, "msgId":I
    const/16 v1, 0x18

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 3075
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 3077
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3078
    return-void

    .line 3081
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3083
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3084
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v3

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getCallWaiting(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3088
    goto :goto_0

    .line 3085
    :catch_0
    move-exception v3

    .line 3086
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 3087
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3089
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 3268
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0, p4}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 3269
    return-void
.end method

.method public queryIncomingCallBarring(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 3116
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v2

    const/4 v1, 0x3

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V

    .line 3118
    return-void
.end method

.method public queryServiceStatus(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 2645
    const/16 v0, 0x1d

    .line 2646
    .local v0, "msgId":I
    const/16 v1, 0x1d

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2647
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2649
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2650
    return-void

    .line 2653
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2655
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2656
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v3

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->queryServiceStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2660
    goto :goto_0

    .line 2657
    :catch_0
    move-exception v3

    .line 2658
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2659
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Serivce status query request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2661
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public querySsacStatus(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 3479
    const-string v0, "querySsacStatus"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3480
    const/16 v0, 0x31

    .line 3481
    .local v0, "msgId":I
    const/16 v1, 0x31

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 3482
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 3484
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3485
    return-void

    .line 3488
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3490
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3491
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadio:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->querySsacStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3495
    goto :goto_0

    .line 3492
    :catch_0
    move-exception v3

    .line 3493
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 3494
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3497
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public queryVirtualLineInfo(Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "msisdn"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 3613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryVirtualLineInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3614
    const/16 v0, 0x3d

    .line 3615
    .local v0, "msgId":I
    const/16 v1, 0x3d

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 3616
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 3618
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3619
    return-void

    .line 3621
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3623
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3624
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV14()Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    move-result-object v4

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;->queryVirtualLineInfo(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3628
    goto :goto_0

    .line 3625
    :catch_0
    move-exception v4

    .line 3626
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 3627
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "to IImsRadio V1.4: Exception: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3629
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public queryVoltePref(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 3526
    const-string v0, "queryVoltePref"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3527
    const/16 v0, 0x33

    .line 3528
    .local v0, "msgId":I
    const/16 v1, 0x33

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 3529
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 3531
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3532
    return-void

    .line 3535
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3537
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3538
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadio:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->queryVoltePref(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3542
    goto :goto_0

    .line 3539
    :catch_0
    move-exception v3

    .line 3540
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 3541
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3544
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public queryVopsStatus(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 3457
    const-string v0, "queryVopsStatus"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3458
    const/16 v0, 0x30

    .line 3459
    .local v0, "msgId":I
    const/16 v1, 0x30

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 3460
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 3462
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3463
    return-void

    .line 3466
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3468
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3469
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadio:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->queryVopsStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3473
    goto :goto_0

    .line 3470
    :catch_0
    move-exception v3

    .line 3471
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 3472
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3475
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public registerForCallAutoRejection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 690
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 691
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mAutoRejectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 692
    return-void
.end method

.method public registerForGeolocationRequest(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 616
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 617
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 618
    return-void
.end method

.method public registerForHandoverStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 580
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 581
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 582
    return-void
.end method

.method public registerForImsSubConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 554
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsSubConfigChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 555
    return-void
.end method

.method public registerForModifyCall(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2071
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 2072
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2073
    return-void
.end method

.method public registerForMultiIdentityInfoPendingIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 706
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 707
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityInfoPendingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 708
    return-void
.end method

.method public registerForMultiIdentityRegistrationStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 700
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 701
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityStatusChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 702
    return-void
.end method

.method public registerForMwi(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2080
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 2081
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2082
    return-void
.end method

.method public registerForParticipantStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 634
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 635
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 636
    return-void
.end method

.method public registerForRefreshConfInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 589
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 590
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 591
    return-void
.end method

.method public registerForRegistrationBlockStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 643
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 644
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRegistrationBlockStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 645
    return-void
.end method

.method public registerForRttMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 3577
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttMessageRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3578
    return-void
.end method

.method public registerForSrvStatusUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 598
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 599
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 600
    return-void
.end method

.method public registerForSsacStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 562
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 563
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 564
    return-void
.end method

.method public registerForSuppServiceIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 660
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsIndicationRegistrant:Landroid/os/Registrant;

    .line 661
    return-void
.end method

.method public registerForTtyStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 607
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 608
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 609
    return-void
.end method

.method public registerForVoWiFiCallQualityUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 625
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 626
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 627
    return-void
.end method

.method public registerForVoiceInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 3585
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoiceInfoStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3586
    return-void
.end method

.method public registerForVopsStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 571
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 572
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 573
    return-void
.end method

.method public registerListener(Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;

    .line 326
    if-eqz p1, :cond_2

    .line 329
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 330
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 331
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;->onServiceUp(I)V

    goto :goto_0

    .line 336
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;->onServiceDown(I)V

    goto :goto_0

    .line 339
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    :goto_0
    monitor-exit v0

    .line 342
    return-void

    .line 341
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 327
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 3548
    const-string v0, "rejectCall : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3549
    return-void
.end method

.method public requestMultiIdentityLinesRegistration(Ljava/util/Collection;Landroid/os/Message;)V
    .locals 8
    .param p2, "response"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/codeaurora/ims/MultiIdentityLineInfo;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 3633
    .local p1, "linesInfo":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerMultiIdentityLines = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3634
    const/16 v0, 0x3c

    .line 3635
    .local v0, "msgId":I
    const/16 v1, 0x3c

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 3636
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 3638
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3639
    return-void

    .line 3642
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3643
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3644
    .local v4, "halLinesInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/codeaurora/ims/MultiIdentityLineInfo;

    .line 3645
    .local v6, "line":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    nop

    .line 3646
    invoke-static {v6}, Lorg/codeaurora/ims/ImsRadioUtilsV14;->toMultiIdentityLineInfoHal(Lorg/codeaurora/ims/MultiIdentityLineInfo;)Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    move-result-object v7

    .line 3647
    .local v7, "lineInfo":Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3648
    .end local v6    # "line":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    .end local v7    # "lineInfo":Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;
    goto :goto_0

    .line 3650
    :cond_1
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3651
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV14()Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    move-result-object v5

    iget v6, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v5, v6, v4}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;->registerMultiIdentityLines(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3655
    goto :goto_1

    .line 3652
    :catch_0
    move-exception v5

    .line 3653
    .local v5, "ex":Ljava/lang/Exception;
    iget v6, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 3654
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "to IImsRadio: Exception: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3656
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public resume(Landroid/os/Message;I)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callId"    # I

    .line 2815
    const/16 v0, 0x26

    .line 2816
    .local v0, "msgId":I
    const/16 v1, 0x26

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2817
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2819
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2820
    return-void

    .line 2823
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2825
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2826
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " request to ImsRadio - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " callId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2828
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v3

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->resume(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2832
    goto :goto_0

    .line 2829
    :catch_0
    move-exception v3

    .line 2830
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2831
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2833
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public sendConfigRequest(IIZILjava/lang/String;ILandroid/os/Message;)V
    .locals 5
    .param p1, "requestType"    # I
    .param p2, "item"    # I
    .param p3, "boolValue"    # Z
    .param p4, "intValue"    # I
    .param p5, "strValue"    # Ljava/lang/String;
    .param p6, "errorCause"    # I
    .param p7, "result"    # Landroid/os/Message;

    .line 2880
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v0

    .line 2881
    .local v0, "msgIdString":Ljava/lang/String;
    invoke-static {p1, p7}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2883
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2884
    return-void

    .line 2887
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2889
    :try_start_0
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/ImsRadioUtils;->buildConfigInfo(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    move-result-object v2

    .line 2891
    .local v2, "configInfo":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2892
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " request to ImsRadio: token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " item:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->item:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " boolValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " intValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " strValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " errorCause:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2895
    const/16 v3, 0x2d

    if-ne p1, v3, :cond_1

    .line 2896
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v3

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getConfig(ILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    goto :goto_0

    .line 2898
    :cond_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v3

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setConfig(ILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2903
    .end local v2    # "configInfo":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :goto_0
    goto :goto_1

    .line 2900
    :catch_0
    move-exception v2

    .line 2901
    .local v2, "ex":Ljava/lang/Exception;
    iget v3, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2902
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " request to IImsRadio: Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2904
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 7
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 2907
    const/16 v0, 0xd

    .line 2908
    .local v0, "msgId":I
    const/16 v1, 0xd

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2909
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2911
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2912
    return-void

    .line 2915
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2916
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;-><init>()V

    .line 2917
    .local v3, "dtmfValue":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;->dtmf:Ljava/lang/String;

    .line 2919
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2920
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v4

    iget v5, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->sendDtmf(ILvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2924
    goto :goto_0

    .line 2921
    :catch_0
    move-exception v4

    .line 2922
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2923
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "to IImsRadio: Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2925
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public declared-synchronized sendGeolocationInfo(DDLandroid/location/Address;Landroid/os/Message;)V
    .locals 18
    .param p1, "lat"    # D
    .param p3, "lon"    # D
    .param p5, "address"    # Landroid/location/Address;
    .param p6, "result"    # Landroid/os/Message;

    move-object/from16 v1, p0

    monitor-enter p0

    .line 2582
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendGeolocationInfo: lat: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, p1

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " lon: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, p3

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " address: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2583
    const/16 v14, 0x2e

    .line 2584
    .local v14, "msgId":I
    const/16 v0, 0x2e

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    .line 2585
    .local v15, "msgIdString":Ljava/lang/String;
    move-object/from16 v9, p6

    invoke-static {v0, v9}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    move-object v7, v0

    .line 2586
    .local v7, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {v1, v7, v15}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2587
    monitor-exit p0

    return-void

    .line 2589
    :cond_0
    :try_start_1
    invoke-direct {v1, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2591
    nop

    .line 2592
    invoke-static/range {p1 .. p5}, Lorg/codeaurora/ims/ImsRadioUtils;->getHidlAddressInfo(DDLandroid/location/Address;)Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v0

    .line 2594
    .local v8, "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    :try_start_2
    invoke-virtual {v1, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2595
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV12()Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2596
    .local v0, "imsRadioV12":Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;
    if-eqz v0, :cond_1

    .line 2597
    :try_start_3
    iget v4, v7, Lorg/codeaurora/ims/IFRequest;->mSerial:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v0

    move-wide v5, v10

    move-object v2, v7

    move-object/from16 v16, v8

    move-wide v7, v12

    .end local v7    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local v8    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    .local v2, "rr":Lorg/codeaurora/ims/IFRequest;
    .local v16, "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    move-object/from16 v9, v16

    :try_start_4
    invoke-interface/range {v3 .. v9}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;->sendGeolocationInfo_1_2(IDDLvendor/qti/hardware/radio/ims/V1_2/AddressInfo;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2605
    move-object/from16 v17, v16

    goto :goto_0

    .line 2602
    .end local v0    # "imsRadioV12":Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;
    :catch_0
    move-exception v0

    move-object/from16 v17, v16

    goto :goto_1

    .end local v2    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local v16    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    .restart local v7    # "rr":Lorg/codeaurora/ims/IFRequest;
    .restart local v8    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    :catch_1
    move-exception v0

    move-object v2, v7

    move-object/from16 v17, v8

    .end local v7    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local v8    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    .restart local v2    # "rr":Lorg/codeaurora/ims/IFRequest;
    .restart local v16    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    goto :goto_1

    .line 2599
    .end local v2    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local v16    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    .restart local v0    # "imsRadioV12":Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;
    .restart local v7    # "rr":Lorg/codeaurora/ims/IFRequest;
    .restart local v8    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    :cond_1
    move-object v2, v7

    move-object/from16 v16, v8

    .end local v7    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local v8    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    .restart local v2    # "rr":Lorg/codeaurora/ims/IFRequest;
    .restart local v16    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v3

    iget v4, v2, Lorg/codeaurora/ims/IFRequest;->mSerial:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2600
    move-object/from16 v9, v16

    :try_start_6
    invoke-static {v9}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateAddressToV10(Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;)Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;

    move-result-object v16
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2599
    .end local v16    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    .local v9, "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    move-wide v5, v10

    move-wide v7, v12

    move-object/from16 v17, v9

    move-object/from16 v9, v16

    .end local v9    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    .local v17, "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    :try_start_7
    invoke-interface/range {v3 .. v9}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->sendGeolocationInfo(IDDLvendor/qti/hardware/radio/ims/V1_0/AddressInfo;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2605
    .end local v0    # "imsRadioV12":Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;
    :goto_0
    goto :goto_2

    .line 2602
    :catch_2
    move-exception v0

    goto :goto_1

    .end local v17    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    .restart local v9    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    :catch_3
    move-exception v0

    move-object/from16 v17, v9

    .end local v9    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    .restart local v17    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    goto :goto_1

    .end local v17    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    .restart local v16    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    :catch_4
    move-exception v0

    move-object/from16 v17, v16

    .end local v16    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    .restart local v17    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    goto :goto_1

    .end local v2    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local v17    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    .restart local v7    # "rr":Lorg/codeaurora/ims/IFRequest;
    .restart local v8    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    :catch_5
    move-exception v0

    move-object v2, v7

    move-object/from16 v17, v8

    .line 2603
    .end local v7    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local v8    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v2    # "rr":Lorg/codeaurora/ims/IFRequest;
    .restart local v17    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    :goto_1
    :try_start_8
    iget v3, v2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {v1, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2604
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "to IImsRadio: Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2606
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    monitor-exit p0

    return-void

    .line 2581
    .end local v2    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local v14    # "msgId":I
    .end local v15    # "msgIdString":Ljava/lang/String;
    .end local v17    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    .end local p1    # "lat":D
    .end local p3    # "lon":D
    .end local p5    # "address":Landroid/location/Address;
    .end local p6    # "result":Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lorg/codeaurora/ims/ImsSenderRxr;
    throw v0
.end method

.method public sendImsRegistrationState(ILandroid/os/Message;)V
    .locals 6
    .param p1, "imsRegState"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2708
    const/16 v0, 0x1a

    .line 2709
    .local v0, "msgId":I
    const/16 v1, 0x1a

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2710
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2712
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2713
    return-void

    .line 2716
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2718
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2719
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " request to ImsRadio - token:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " RegState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2721
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v3

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    .line 2722
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->regStateToHal(I)I

    move-result v5

    .line 2721
    invoke-interface {v3, v4, v5}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->requestRegistrationChange(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2726
    goto :goto_0

    .line 2723
    :catch_0
    move-exception v3

    .line 2724
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2725
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2727
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 3593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RTT: sendRttMessage msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3594
    const/16 v0, 0x37

    .line 3595
    .local v0, "msgId":I
    const/16 v1, 0x37

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 3596
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 3598
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3599
    return-void

    .line 3602
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3604
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3605
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v4

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->sendRttMessage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3609
    goto :goto_0

    .line 3606
    :catch_0
    move-exception v4

    .line 3607
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 3608
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "to IImsRadio: Exception: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3610
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public sendSms(ILjava/lang/String;Ljava/lang/String;Z[BLandroid/os/Message;)V
    .locals 7
    .param p1, "messageRef"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "smsc"    # Ljava/lang/String;
    .param p4, "isRetry"    # Z
    .param p5, "pdu"    # [B
    .param p6, "result"    # Landroid/os/Message;

    .line 2503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSms over IImsRadio with format:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2505
    const/16 v0, 0x39

    .line 2506
    .local v0, "msgId":I
    const/16 v1, 0x39

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2507
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p6}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2509
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2510
    return-void

    .line 2513
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2515
    invoke-static {p1, p2, p3, p4, p5}, Lorg/codeaurora/ims/ImsRadioUtils;->buildImsSms(ILjava/lang/String;Ljava/lang/String;Z[B)Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;

    move-result-object v4

    .line 2518
    .local v4, "imsSms":Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2519
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV12()Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    move-result-object v5

    iget v6, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v5, v6, v4}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;->sendImsSms(ILvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2523
    goto :goto_0

    .line 2520
    :catch_0
    move-exception v5

    .line 2521
    .local v5, "ex":Ljava/lang/Exception;
    iget v6, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2522
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "to ImsRadioV12: Exception: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2524
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 7
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCLIR clirmode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3050
    const/16 v0, 0x15

    .line 3051
    .local v0, "msgId":I
    const/16 v1, 0x15

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 3052
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 3054
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3055
    return-void

    .line 3058
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3059
    new-instance v4, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;

    invoke-direct {v4}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;-><init>()V

    .line 3060
    .local v4, "clirValue":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    iput p1, v4, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->paramN:I

    .line 3062
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3063
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v5

    iget v6, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v5, v6, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setClir(ILvendor/qti/hardware/radio/ims/V1_0/ClirInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3067
    goto :goto_0

    .line 3064
    :catch_0
    move-exception v5

    .line 3065
    .local v5, "ex":Ljava/lang/Exception;
    iget v6, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 3066
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "to IImsRadio: Exception: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3068
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setCOLR(ILandroid/os/Message;)V
    .locals 7
    .param p1, "presentationValue"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCOLR presentationValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3344
    const/16 v0, 0x22

    .line 3345
    .local v0, "msgId":I
    const/16 v1, 0x22

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 3346
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 3348
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3349
    return-void

    .line 3352
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3353
    new-instance v4, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;

    invoke-direct {v4}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;-><init>()V

    .line 3354
    .local v4, "colrValue":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->ipPresentationToHal(I)I

    move-result v5

    iput v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;->presentation:I

    .line 3356
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3357
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v5

    iget v6, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v5, v6, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setColr(ILvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3361
    goto :goto_0

    .line 3358
    :catch_0
    move-exception v5

    .line 3359
    .local v5, "ex":Ljava/lang/Exception;
    iget v6, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 3360
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "to IImsRadio: Exception: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3362
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 16
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;

    .line 3127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallForward cfReason= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " serviceClass = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p3

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "number = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p4

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "timeSeconds = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p5

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v12, p0

    invoke-virtual {v12, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3130
    const v3, 0x7fffffff

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    const v6, 0x7fffffff

    move-object v2, v12

    move/from16 v7, p1

    move v8, v1

    move v9, v13

    move-object v10, v14

    move v11, v15

    move-object/from16 v12, p6

    invoke-direct/range {v2 .. v12}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallForwardInternal(IIIIIIILjava/lang/String;ILandroid/os/Message;)V

    .line 3132
    return-void
.end method

.method public setCallForwardUncondTimer(IIIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "cfReason"    # I
    .param p7, "serviceClass"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "response"    # Landroid/os/Message;

    .line 3137
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallForwardInternal(IIIIIIILjava/lang/String;ILandroid/os/Message;)V

    .line 3139
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 3093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallWaiting enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3095
    const/16 v0, 0x19

    .line 3096
    .local v0, "msgId":I
    const/16 v1, 0x19

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 3098
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p3}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 3100
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3101
    return-void

    .line 3104
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3106
    move v3, p1

    .line 3107
    .local v3, "serviceStatus":I
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3108
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v4

    iget v5, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, v3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setCallWaiting(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3112
    .end local v3    # "serviceStatus":I
    goto :goto_0

    .line 3109
    :catch_0
    move-exception v3

    .line 3110
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 3111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3113
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 3274
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 3275
    .local v0, "operation":I
    :goto_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1, p5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 3276
    return-void
.end method

.method public setHandoverConfig(ILandroid/os/Message;)V
    .locals 2
    .param p1, "hoConfig"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 3452
    const-string v0, "ImsSenderRxr"

    const-string v1, "setHandoverConfig : Not supported"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3453
    return-void
.end method

.method public setIncomingCallBarring(ILjava/lang/String;[Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "operation"    # I
    .param p2, "facility"    # Ljava/lang/String;
    .param p3, "icbNum"    # [Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 3122
    invoke-static {p2}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v2

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V

    .line 3123
    return-void
.end method

.method public setOnImsSmsStatusReport(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 679
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSendSmsStatusReportRegistrant:Landroid/os/Registrant;

    .line 680
    return-void
.end method

.method public setOnIncomingImsSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 668
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingSmsRegistrant:Landroid/os/Registrant;

    .line 669
    return-void
.end method

.method public setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 652
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Landroid/os/Registrant;

    .line 653
    return-void
.end method

.method public setPhoneType(I)V
    .locals 2
    .param p1, "phoneType"    # I

    .line 2352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPhoneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " old value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2353
    iput p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneType:I

    .line 2354
    return-void
.end method

.method public setServiceStatus(Landroid/os/Message;IIII)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "srvType"    # I
    .param p3, "network"    # I
    .param p4, "enabled"    # I
    .param p5, "restrictCause"    # I

    .line 2665
    const/16 v0, 0x1e

    .line 2666
    .local v0, "msgId":I
    const/16 v1, 0x1e

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2667
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2669
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2670
    return-void

    .line 2673
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2675
    :try_start_0
    invoke-static {p2, p3, p4, p5}, Lorg/codeaurora/ims/ImsRadioUtils;->buildServiceStatusInfo(IIII)Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    move-result-object v3

    .line 2677
    .local v3, "serviceStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2678
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to ImsRadio: token -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " SrvType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Network:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " enabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " RestrictCause:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2681
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v4

    iget v5, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setServiceStatus(ILvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2685
    .end local v3    # "serviceStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    goto :goto_0

    .line 2682
    :catch_0
    move-exception v3

    .line 2683
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2684
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetServiceStatus request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2686
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 3007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSuppServiceNotifications enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3008
    const/16 v0, 0x1b

    .line 3009
    .local v0, "msgId":I
    const/16 v1, 0x1b

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 3011
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 3013
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3014
    return-void

    .line 3017
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3019
    move v3, p1

    .line 3020
    .local v3, "status":I
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3021
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v4

    iget v5, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setSuppServiceNotification(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3025
    .end local v3    # "status":I
    goto :goto_0

    .line 3022
    :catch_0
    move-exception v3

    .line 3023
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 3024
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3026
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setSuppSvc(Ljava/lang/String;ZLandroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "response"    # Landroid/os/Message;

    .line 3283
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 3284
    .local v0, "operation":I
    :goto_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 3285
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 7
    .param p1, "uiTtyMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 3224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUiTTYMode uittyMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3225
    const/16 v0, 0x27

    .line 3226
    .local v0, "msgId":I
    const/16 v1, 0x27

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 3227
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 3229
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3230
    return-void

    .line 3233
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3234
    new-instance v4, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;

    invoke-direct {v4}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;-><init>()V

    .line 3235
    .local v4, "info":Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->ttyModeToHal(I)I

    move-result v5

    iput v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;->mode:I

    .line 3237
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3238
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v5

    iget v6, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v5, v6, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setUiTtyMode(ILvendor/qti/hardware/radio/ims/V1_0/TtyInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3242
    goto :goto_0

    .line 3239
    :catch_0
    move-exception v5

    .line 3240
    .local v5, "ex":Ljava/lang/Exception;
    iget v6, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 3241
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "to IImsRadio: Exception: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3243
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setWifiCallingPreference(IILandroid/os/Message;)V
    .locals 1
    .param p1, "wifiCallingStatus"    # I
    .param p2, "wifiCallingPreference"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 3444
    const-string v0, "setWifiCallingPreference : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3445
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 7
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 2928
    const/16 v0, 0xe

    .line 2929
    .local v0, "msgId":I
    const/16 v1, 0xe

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2930
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2932
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2933
    return-void

    .line 2936
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2937
    new-instance v4, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;

    invoke-direct {v4}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;-><init>()V

    .line 2938
    .local v4, "dtmfValue":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;->dtmf:Ljava/lang/String;

    .line 2940
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2941
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v5

    iget v6, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v5, v6, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->startDtmf(ILvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2945
    goto :goto_0

    .line 2942
    :catch_0
    move-exception v5

    .line 2943
    .local v5, "ex":Ljava/lang/Exception;
    iget v6, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2944
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "to IImsRadio: Exception: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2946
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 2949
    const/16 v0, 0xf

    .line 2950
    .local v0, "msgId":I
    const/16 v1, 0xf

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2951
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2953
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2954
    return-void

    .line 2957
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2959
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2960
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v4

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->stopDtmf(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2964
    goto :goto_0

    .line 2961
    :catch_0
    move-exception v4

    .line 2962
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2963
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "to IImsRadio: Exception: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2965
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public suppSvcStatus(IILandroid/os/Message;)V
    .locals 7
    .param p1, "operationType"    # I
    .param p2, "facility"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 3295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "suppSvcStatus operationType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " facility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3297
    const/4 v4, 0x0

    const v5, 0x7fffffff

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatusInternal(II[Ljava/lang/String;ILandroid/os/Message;)V

    .line 3298
    return-void
.end method

.method public suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .param p1, "operationType"    # I
    .param p2, "facility"    # I
    .param p3, "icbNum"    # [Ljava/lang/String;
    .param p4, "serviceClassValue"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 3289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "suppSvcStatus operationType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " facility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "serviceClassValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3291
    invoke-direct/range {p0 .. p5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatusInternal(II[Ljava/lang/String;ILandroid/os/Message;)V

    .line 3292
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 3565
    const-string v0, "switchWaitingOrHoldingAndActive : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3566
    return-void
.end method

.method public testingEmergencyCall()V
    .locals 2

    .line 3663
    const-string v0, "ImsSenderRxr"

    const-string v1, "testingEmergencyCall"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3664
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3665
    return-void
.end method

.method public unSetImsSmsStatusReport(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 683
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSendSmsStatusReportRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSendSmsStatusReportRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 685
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSendSmsStatusReportRegistrant:Landroid/os/Registrant;

    .line 687
    :cond_0
    return-void
.end method

.method public unSetIncomingImsSms(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 672
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingSmsRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingSmsRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 674
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingSmsRegistrant:Landroid/os/Registrant;

    .line 676
    :cond_0
    return-void
.end method

.method public unSetOnSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 656
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 657
    return-void
.end method

.method public unregisterForCallAutoRejection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 695
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mAutoRejectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 696
    return-void
.end method

.method public unregisterForGeolocationRequest(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 621
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 622
    return-void
.end method

.method public unregisterForHandoverStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 585
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 586
    return-void
.end method

.method public unregisterForModifyCall(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2076
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2077
    return-void
.end method

.method public unregisterForMultiIdentityPendingInfoRequest(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 715
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityInfoPendingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 716
    return-void
.end method

.method public unregisterForMultiIdentityRegistrationStatusChange(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 711
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityStatusChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 712
    return-void
.end method

.method public unregisterForMwi(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2085
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2086
    return-void
.end method

.method public unregisterForParticipantStatusInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 639
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 640
    return-void
.end method

.method public unregisterForRefreshConfInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 594
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 595
    return-void
.end method

.method public unregisterForRegistrationBlockStatus(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 648
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRegistrationBlockStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 649
    return-void
.end method

.method public unregisterForSrvStatusUpdate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 603
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 604
    return-void
.end method

.method public unregisterForSsacStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 567
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 568
    return-void
.end method

.method public unregisterForSuppServiceIndication(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 664
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsIndicationRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 665
    return-void
.end method

.method public unregisterForTtyStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 612
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 613
    return-void
.end method

.method public unregisterForVoWiFiCallQualityUpdate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 630
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 631
    return-void
.end method

.method public unregisterForVopsStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 576
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 577
    return-void
.end method

.method public unregisterListener(Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;

    .line 351
    if-eqz p1, :cond_1

    .line 354
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 355
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 358
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener not found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    :goto_0
    monitor-exit v0

    .line 361
    return-void

    .line 360
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 352
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unsljLog(I)V
    .locals 2
    .param p1, "response"    # I

    .line 2331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2332
    return-void
.end method

.method public unsljLogMore(ILjava/lang/String;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "more"    # Ljava/lang/String;

    .line 2335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2336
    return-void
.end method

.method public unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 2339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2340
    return-void
.end method

.method public unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 2343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2344
    return-void
.end method

.method public updateVoltePref(ILandroid/os/Message;)V
    .locals 6
    .param p1, "preference"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 3501
    const-string v0, "updateVoltePref"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 3502
    const/16 v0, 0x32

    .line 3503
    .local v0, "msgId":I
    const/16 v1, 0x32

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 3504
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 3506
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3507
    return-void

    .line 3511
    :cond_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "volte_preferred_on"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3513
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3515
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 3516
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadio:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->updateVoltePref(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3520
    goto :goto_0

    .line 3517
    :catch_0
    move-exception v3

    .line 3518
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 3519
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3522
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
