.class public Lorg/codeaurora/ims/QtiImsExt;
.super Lorg/codeaurora/ims/QtiImsExtBase;
.source "QtiImsExt.java"


# instance fields
.field private final MODIFY_PHONE_STATE:Ljava/lang/String;

.field private final READ_PHONE_STATE:Ljava/lang/String;

.field private final READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceSub"    # [Lorg/codeaurora/ims/ImsServiceSub;

    .line 28
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtBase;-><init>()V

    .line 21
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->MODIFY_PHONE_STATE:Ljava/lang/String;

    .line 22
    const-string v0, "android.permission.READ_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->READ_PHONE_STATE:Ljava/lang/String;

    .line 23
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    .line 31
    return-void
.end method


# virtual methods
.method protected onGetCallForwardUncondTimer(IIILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "reason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 45
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "getCallForwardUncondTimer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lorg/codeaurora/ims/ImsServiceSub;->getCallForwardUncondTimer(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 48
    return-void
.end method

.method protected onGetHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 119
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "getHandoverConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->getHandoverConfig(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 121
    return-void
.end method

.method protected onGetMultiIdentityInterface(I)Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;
    .locals 3
    .param p1, "phoneId"    # I

    .line 183
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "onGetMultiIdentityInterface"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getMultiIdentityImpl()Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    move-result-object v0

    .line 185
    .local v0, "v":Lorg/codeaurora/ims/ImsMultiIdentityControllerBase;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsMultiIdentityControllerBase;->getBinder()Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method protected onGetPacketCount(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 52
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "getPacketCount"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->getPacketCount(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 54
    return-void
.end method

.method protected onGetPacketErrorCount(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 58
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "getPacketErrorCount"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->getPacketErrorCount(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 60
    return-void
.end method

.method protected onGetRcsAppConfig(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 157
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "getRcsAppConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object v0

    const/16 v1, 0x48

    .line 160
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    return v0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "re":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetRcsAppConfig :: Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    .end local v0    # "re":Ljava/lang/Exception;
    const/4 v0, -0x1

    return v0
.end method

.method protected onGetVvmAppConfig(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 131
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "getVvmAppConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object v0

    const/16 v1, 0x49

    .line 134
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    return v0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "re":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetVvmAppConfig :: Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .end local v0    # "re":Ljava/lang/Exception;
    const/4 v0, -0x1

    return v0
.end method

.method protected onQuerySsacStatus(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 93
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "querySsacStatus"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->querySsacStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 95
    return-void
.end method

.method protected onQueryVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 113
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "queryVoltePreference"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->queryVoltePreference(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 115
    return-void
.end method

.method protected onQueryVopsStatus(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 84
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "queryVopsStatus"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v3, "queryVopsStatus"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->queryVopsStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 89
    return-void
.end method

.method protected onRegisterForParticipantStatusInfo(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 99
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "registerForParticipantStatusInfo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->registerForParticipantStatusInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 102
    return-void
.end method

.method protected onResumePendingCall(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "videoState"    # I

    .line 64
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "resumePendingCall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->resumePendingCall(I)V

    .line 66
    return-void
.end method

.method protected onSendCallTransferRequest(IILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "type"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 71
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "sendCallTransferRequest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lorg/codeaurora/ims/ImsServiceSub;->sendCallTransferRequest(ILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 73
    return-void
.end method

.method protected onSendCancelModifyCall(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 77
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "sendCancelModifyCall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->sendCancelModifyCall(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 79
    return-void
.end method

.method protected onSetCallForwardUncondTimer(IIIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 13
    .param p1, "phoneId"    # I
    .param p2, "startHour"    # I
    .param p3, "startMinute"    # I
    .param p4, "endHour"    # I
    .param p5, "endMinute"    # I
    .param p6, "action"    # I
    .param p7, "condition"    # I
    .param p8, "serviceClass"    # I
    .param p9, "number"    # Ljava/lang/String;
    .param p10, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-object v0, p0

    .line 37
    iget-object v1, v0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const-string v3, "setCallForwardUncondTimer"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v1, v0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v3, v1, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-virtual/range {v3 .. v12}, Lorg/codeaurora/ims/ImsServiceSub;->setCallForwardUncondTimer(IIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 40
    return-void
.end method

.method protected onSetHandoverConfig(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "hoConfig"    # I
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 125
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setHandoverConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->setHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 127
    return-void
.end method

.method protected onSetRcsAppConfig(II)I
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "defaultSmsApp"    # I

    .line 170
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setRcsAppConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object v0

    const/16 v1, 0x48

    invoke-virtual {v0, v1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "re":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetRcsAppConfig :: Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    .end local v0    # "re":Ljava/lang/Exception;
    const/4 v0, -0x1

    return v0
.end method

.method protected onSetVvmAppConfig(II)I
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "defaultVvmApp"    # I

    .line 144
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setVvmAppConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object v0

    const/16 v1, 0x49

    invoke-virtual {v0, v1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "re":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetVvmAppConfig :: Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .end local v0    # "re":Ljava/lang/Exception;
    const/4 v0, -0x1

    return v0
.end method

.method protected onUpdateVoltePreference(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "preference"    # I
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 107
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateVoltePreference"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->updateVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 109
    return-void
.end method
