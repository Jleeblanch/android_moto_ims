.class public Lorg/codeaurora/ims/ImsSubController;
.super Ljava/lang/Object;
.source "ImsSubController.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;,
        Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;,
        Lorg/codeaurora/ims/ImsSubController$ImsStateListener;
    }
.end annotation


# static fields
.field private static final ACTION_DDS_SWITCH_DONE:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_DDS_SWITCH_DONE"

.field private static final ACTION_GET_RADIO_ACCESS_FAMILY_CHANGED:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_RADIO_CAPABILITY_UPDATED"

.field private static final DEFAULT_PHONE_ID:I = 0x0

.field private static final EVENT_GET_SUB_CONFIG:I = 0x2

.field private static final EVENT_IMS_SERVICE_DOWN:I = 0x4

.field private static final EVENT_IMS_SERVICE_UP:I = 0x3

.field private static final EVENT_RADIO_AVAILABLE:I = 0x5

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0x6

.field private static final EVENT_SUB_CONFIG_CHANGED:I = 0x1

.field private static final INVALID_PHONE_ID:I = -0x1

.field private static mImsPhoneId:I

.field private static mSimultStackCount:I

.field private static mStackStatus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final MAX_VALID_STACK_STATUS_COUNT:I

.field private mActiveStacks:[Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsDsdv:Z

.field private mIsReceiverRegistered:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsSubController$ImsStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNumMultiModeStacks:I

.field private mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

.field private mStackConfigListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSubChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubMgr:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const/4 v0, -0x1

    sput v0, Lorg/codeaurora/ims/ImsSubController;->mImsPhoneId:I

    .line 69
    const/4 v0, 0x0

    sput v0, Lorg/codeaurora/ims/ImsSubController;->mSimultStackCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "senderRxrs"    # [Lorg/codeaurora/ims/ImsSenderRxr;

    .line 136
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsSubController;-><init>(Landroid/content/Context;[Lorg/codeaurora/ims/ImsSenderRxr;Landroid/os/Looper;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lorg/codeaurora/ims/ImsSenderRxr;Landroid/os/Looper;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "senderRxrs"    # [Lorg/codeaurora/ims/ImsSenderRxr;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    .line 63
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    .line 73
    const/4 v1, 0x6

    iput v1, p0, Lorg/codeaurora/ims/ImsSubController;->MAX_VALID_STACK_STATUS_COUNT:I

    .line 74
    new-array v2, v1, [Z

    iput-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    .line 82
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    .line 576
    new-instance v2, Lorg/codeaurora/ims/ImsSubController$1;

    invoke-direct {v2, p0}, Lorg/codeaurora/ims/ImsSubController$1;-><init>(Lorg/codeaurora/ims/ImsSubController;)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 593
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    .line 594
    new-instance v2, Lorg/codeaurora/ims/ImsSubController$2;

    invoke-direct {v2, p0}, Lorg/codeaurora/ims/ImsSubController$2;-><init>(Lorg/codeaurora/ims/ImsSubController;)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mSubChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 140
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    .line 141
    iput-object p2, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

    .line 142
    new-instance v2, Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;

    invoke-direct {v2, p0, p3}, Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;-><init>(Lorg/codeaurora/ims/ImsSubController;Landroid/os/Looper;)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    .line 143
    nop

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 144
    aget-object v2, p2, v0

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 145
    aget-object v2, p2, v0

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 146
    aget-object v2, p2, v0

    invoke-virtual {v2, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerListener(Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/codeaurora/ims/ImsSubController;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSubController;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 47
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->handleSubConfigChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/ImsSubController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSubController;

    .line 47
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lorg/codeaurora/ims/ImsSubController;)[Lorg/codeaurora/ims/ImsSenderRxr;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSubController;

    .line 47
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

    return-object v0
.end method

.method static synthetic access$300(Lorg/codeaurora/ims/ImsSubController;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSubController;

    .line 47
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->initSubscriptionStatus()V

    return-void
.end method

.method static synthetic access$400(Lorg/codeaurora/ims/ImsSubController;IZ)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSubController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 47
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSubController;->updateStackConfig(IZ)V

    return-void
.end method

.method static synthetic access$500(Lorg/codeaurora/ims/ImsSubController;I)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSubController;
    .param p1, "x1"    # I

    .line 47
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForSubId(I)V

    return-void
.end method

.method static synthetic access$600(Lorg/codeaurora/ims/ImsSubController;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSubController;

    .line 47
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->handleRafInfoChange()V

    return-void
.end method

.method static synthetic access$700(Lorg/codeaurora/ims/ImsSubController;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSubController;

    .line 47
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$800()I
    .locals 1

    .line 47
    sget v0, Lorg/codeaurora/ims/ImsSubController;->mImsPhoneId:I

    return v0
.end method

.method public static getDefaultPhoneId()I
    .locals 1

    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method private static getImsPhoneId()I
    .locals 2

    .line 217
    const-class v0, Lorg/codeaurora/ims/ImsSubController;

    monitor-enter v0

    .line 218
    :try_start_0
    sget v1, Lorg/codeaurora/ims/ImsSubController;->mImsPhoneId:I

    monitor-exit v0

    return v1

    .line 219
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleRafInfoChange()V
    .locals 9

    .line 508
    iget v0, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    if-lez v0, :cond_0

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRafInfoChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Multimode stacks. Handled by DDS switch. EXIT!!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    return-void

    .line 515
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 516
    .local v0, "numPhones":I
    const/4 v1, 0x0

    .line 517
    .local v1, "tempPhoneId":I
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "tempPhoneId":I
    :goto_0
    const/4 v4, 0x1

    if-ge v1, v0, :cond_2

    .line 518
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 519
    .local v5, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 520
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v6

    .line 521
    .local v6, "nRafInfo":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleRafInfoChange: Phone:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " Info:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 522
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v7

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/ImsSubController;->isMultiModeSupported(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 523
    iget v7, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    add-int/2addr v7, v4

    iput v7, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    .line 524
    move v3, v1

    .line 517
    .end local v5    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v6    # "nRafInfo":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 528
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleRafInfoChange: NumPhones: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "Multiple Multimode stacks: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    iget v1, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    if-le v1, v4, :cond_5

    .line 538
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    if-eqz v1, :cond_3

    .line 539
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 540
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    .line 543
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    if-eqz v1, :cond_3

    .line 544
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mSubChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 545
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    .line 554
    :cond_3
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForSubId(I)V

    .line 558
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    if-nez v1, :cond_4

    .line 559
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    .line 560
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mSubChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 561
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServicePreferences;->createInstance(Landroid/content/Context;)V

    .line 564
    :cond_4
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "org.codeaurora.intent.action.ACTION_DDS_SWITCH_DONE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 566
    iput-boolean v4, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    .line 567
    const-string v1, "handleRafInfoChange: registered for DDS switch..."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 570
    :cond_5
    iput v2, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    .line 571
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForPhoneId(I)V

    .line 573
    :goto_1
    return-void
.end method

.method private handleSubConfigChanged(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 255
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsSubController;->handleSubConfigException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 257
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 258
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ImsSubConfigDetails;

    .line 259
    .local v0, "config":Lorg/codeaurora/ims/ImsSubConfigDetails;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSubConfigChanged config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSubConfigDetails;->getSimultStackCount()I

    move-result v1

    sput v1, Lorg/codeaurora/ims/ImsSubController;->mSimultStackCount:I

    .line 261
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSubConfigDetails;->getImsStackEnabledList()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    .line 262
    const/4 v1, 0x6

    new-array v1, v1, [Z

    .line 264
    .local v1, "activeStacks":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 265
    sget-object v3, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 264
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-nez v2, :cond_2

    .line 269
    const-string v2, "handleSubConfigChanged ar.userObj is null"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    return-void

    .line 273
    :cond_2
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSubController;->notifyStackConfigChanged([ZI)V

    .line 274
    .end local v0    # "config":Lorg/codeaurora/ims/ImsSubConfigDetails;
    .end local v1    # "activeStacks":[Z
    goto :goto_1

    .line 275
    :cond_3
    const-string v0, "ar.result and ar.exception are null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    :goto_1
    return-void
.end method

.method private handleSubConfigException(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 240
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 241
    move-object v1, p1

    check-cast v1, Lorg/codeaurora/ims/ImsRilException;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsRilException;->getErrorCode()I

    move-result v1

    .line 242
    .local v1, "errorCode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSubConfigException error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 244
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    .line 248
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->initSubscriptionStatus()V

    goto :goto_1

    .line 250
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled error code : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    :goto_1
    return-void
.end method

.method private initSubscriptionStatus()V
    .locals 4

    .line 408
    const/4 v0, 0x0

    sput v0, Lorg/codeaurora/ims/ImsSubController;->mSimultStackCount:I

    .line 409
    const/4 v1, 0x0

    sput-object v1, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    .line 411
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    const-string v0, "initSubscriptionStatus: [Multi-sim] Using RAF and DDS to decide IMS Sub"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->handleRafInfoChange()V

    .line 416
    iget v0, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    if-nez v0, :cond_1

    .line 417
    const-string v0, "initSubscriptionStatus: registered for RAF info"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "org.codeaurora.intent.action.ACTION_RADIO_CAPABILITY_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    goto :goto_0

    .line 426
    :cond_0
    const-string v1, "initSubscriptionStatus: Not multi-sim."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForPhoneId(I)V

    .line 429
    :cond_1
    :goto_0
    return-void
.end method

.method private isCarrierConfigLoaded(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .line 682
    const/4 v0, 0x0

    .line 684
    .local v0, "isCarrierConfigLoaded":Z
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isCarrierConfigLoaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 686
    return v0

    .line 689
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 690
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v1, :cond_1

    .line 691
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isCarrierConfigLoaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 692
    return v0

    .line 694
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "carrier_config"

    .line 695
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 696
    .local v2, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    .line 698
    .local v3, "subId":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 699
    const/4 v0, 0x0

    goto :goto_0

    .line 701
    :cond_2
    invoke-virtual {v2, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v4

    .line 702
    .local v4, "carrierConfig":Landroid/os/PersistableBundle;
    const-string v5, "default_carrierconfig_loaded"

    .line 703
    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 705
    .end local v4    # "carrierConfig":Landroid/os/PersistableBundle;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " isCarrierConfigLoaded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 707
    return v0
.end method

.method private isMultiModeSupported(I)Z
    .locals 2
    .param p1, "nRatMask"    # I

    .line 501
    const/16 v0, 0x4000

    .line 502
    .local v0, "nMmMask":I
    and-int/lit16 v1, p1, 0x4000

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private notifyStackConfigChanged([ZI)V
    .locals 2
    .param p1, "activeStacks"    # [Z
    .param p2, "phoneId"    # I

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyStackConfigChanged: activeStacks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;

    .line 235
    .local v1, "listener":Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;
    invoke-interface {v1, p1, p2}, Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;->onStackConfigChanged([ZI)V

    .line 236
    .end local v1    # "listener":Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;
    goto :goto_0

    .line 237
    :cond_0
    return-void
.end method

.method private static setImsPhoneId(I)V
    .locals 2
    .param p0, "phoneId"    # I

    .line 211
    const-class v0, Lorg/codeaurora/ims/ImsSubController;

    monitor-enter v0

    .line 212
    :try_start_0
    sput p0, Lorg/codeaurora/ims/ImsSubController;->mImsPhoneId:I

    .line 213
    monitor-exit v0

    .line 214
    return-void

    .line 213
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateActiveImsStackForSubId(I)V
    .locals 3
    .param p1, "ddsSubId"    # I

    .line 475
    const/4 v0, 0x0

    .line 481
    .local v0, "phoneId":I
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    goto :goto_0

    .line 485
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p1

    .line 487
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 492
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateActiveImsStackForSubId: new DDS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForPhoneId(I)V

    .line 494
    return-void
.end method

.method private updateStackConfig(IZ)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "isEnabled"    # Z

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateStackConfig phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsDsdv : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 359
    sget-object v0, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    if-nez v0, :cond_0

    .line 360
    const-string v0, "updateStackConfig Stacks are not yet initialized"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    return-void

    .line 364
    :cond_0
    sget-object v0, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p2, :cond_1

    .line 365
    const-string v0, "updateStackConfig nothing to update"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    return-void

    .line 369
    :cond_1
    const/4 v0, 0x6

    new-array v0, v0, [Z

    .line 370
    .local v0, "activeStacks":[Z
    sget-object v2, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 371
    nop

    .local v1, "i":I
    :goto_0
    sget-object v2, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    array-length v2, v0

    if-ge v1, v2, :cond_6

    .line 372
    sget-object v2, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    .end local v0    # "activeStacks":[Z
    .end local v1    # "i":I
    :cond_2
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_3

    .line 378
    const-string v0, "updateStackConfig: unregistering BroadcastReceiver"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 380
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    .line 383
    :cond_3
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    aget-boolean v0, v0, p1

    if-ne v0, p2, :cond_4

    .line 384
    const-string v0, "updateStackConfig nothing to update"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    return-void

    .line 388
    :cond_4
    if-nez p2, :cond_5

    .line 397
    iput v1, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    .line 400
    :cond_5
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    aput-boolean p2, v0, p1

    .line 401
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    .line 403
    .restart local v0    # "activeStacks":[Z
    :cond_6
    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/ImsSubController;->notifyStackConfigChanged([ZI)V

    .line 404
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 157
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public isDsdv()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    return v0
.end method

.method public onServiceDown(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDown :: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 174
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 175
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 176
    return-void
.end method

.method public onServiceUp(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceUp :: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 165
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 166
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 168
    return-void
.end method

.method public registerListener(Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;I)V
    .locals 2
    .param p1, "stackConfigListener"    # Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;
    .param p2, "phoneId"    # I

    .line 108
    if-eqz p1, :cond_1

    .line 111
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_0
    const-string v0, "registerListener :: duplicate stackConfigListener!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    invoke-direct {p0, v1, p2}, Lorg/codeaurora/ims/ImsSubController;->notifyStackConfigChanged([ZI)V

    .line 118
    monitor-exit v0

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 109
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "stackConfigListener is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerListener(Lorg/codeaurora/ims/ImsSubController$ImsStateListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsSubController$ImsStateListener;

    .line 185
    if-eqz p1, :cond_1

    .line 188
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate listener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    :goto_0
    return-void

    .line 186
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIsDsdv(Z)V
    .locals 0
    .param p1, "isDsdv"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 152
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    .line 153
    return-void
.end method

.method public unregisterListener(Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;)Z
    .locals 2
    .param p1, "stackConfigListener"    # Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;

    .line 129
    if-eqz p1, :cond_0

    .line 132
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "stackConfigListener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterListener(Lorg/codeaurora/ims/ImsSubController$ImsStateListener;)Z
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsSubController$ImsStateListener;

    .line 203
    if-eqz p1, :cond_0

    .line 206
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateActiveImsStackForPhoneId(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 434
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchImsPhone: Invalid phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    return-void

    .line 439
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateActiveImsStackForPhoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    monitor-enter v0

    .line 441
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 442
    if-ne v2, p1, :cond_1

    .line 443
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    aput-boolean v4, v3, v2

    goto :goto_1

    .line 445
    :cond_1
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    aput-boolean v1, v3, v2

    .line 441
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 449
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    invoke-direct {p0, v2, p1}, Lorg/codeaurora/ims/ImsSubController;->notifyStackConfigChanged([ZI)V

    .line 450
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 454
    invoke-static {}, Lorg/codeaurora/ims/ImsSubController;->getImsPhoneId()I

    move-result v0

    .line 455
    .local v0, "imsPhoneId":I
    if-ne v0, p1, :cond_3

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchImsPhone: ImsPhoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Unchanged"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 458
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchImsPhone: ImsPhoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSubController;->setImsPhoneId(I)V

    .line 461
    :goto_2
    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    move v2, v4

    goto :goto_3

    :cond_4
    move v2, v1

    .line 464
    .local v2, "firsttime":Z
    :goto_3
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->isCarrierConfigLoaded(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 465
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    if-nez v2, :cond_5

    move v1, v4

    nop

    :cond_5
    invoke-static {v3, p1, v1}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Landroid/content/Context;IZ)V

    .line 470
    .end local v0    # "imsPhoneId":I
    .end local v2    # "firsttime":Z
    :cond_6
    return-void

    .line 450
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
