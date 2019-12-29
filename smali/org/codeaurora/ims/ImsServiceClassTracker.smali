.class public Lorg/codeaurora/ims/ImsServiceClassTracker;
.super Ljava/lang/Object;
.source "ImsServiceClassTracker.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;
    }
.end annotation


# static fields
.field private static final ACTION_IMS_INCOMING_CALL:Ljava/lang/String; = "com.android.ims.volte.incoming_call"

.field public static final CONF_URI_DC_NUMBER:Ljava/lang/String; = "Conference Call"

.field private static final EVENT_CONFERENCE:I = 0x1

.field public static final EXTRA_SERVICE_ID:Ljava/lang/String; = "android:imsServiceId"

.field public static final EXTRA_USSD:Ljava/lang/String; = "android:ussd"


# instance fields
.field private mCallList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/codeaurora/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallListListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ICallListListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mConfHostListener:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

.field private mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsVideoSupported:Z

.field private mIsVoiceSupported:Z

.field private mNeedIgnoreCalls:Z

.field private mPendingSessionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

.field private mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 1
    .param p1, "ci"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    .line 60
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVoiceSupported:Z

    .line 67
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    .line 68
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    .line 98
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 99
    iput-object p2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    .line 103
    iput-object p3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 104
    return-void
.end method

.method private addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V
    .locals 3
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p3, "notify"    # Z

    .line 983
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 984
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 986
    if-eqz p3, :cond_0

    .line 987
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 989
    :cond_0
    return-void

    .line 985
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private cleanupConferenceAttempt()V
    .locals 1

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConfHostListener:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 163
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    .line 164
    return-void
.end method

.method private createIncomingCallBundle(Ljava/lang/String;ZZ)Landroid/os/Bundle;
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isUssd"    # Z
    .param p3, "isUnknown"    # Z

    .line 124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "android:imsCallID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v1, "android:ussd"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    const-string v1, "android:isUnknown"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 128
    return-object v0
.end method

.method private extractErrorCode(Ljava/lang/String;)I
    .locals 5
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 1060
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    const/4 v0, 0x0

    return v0

    .line 1064
    :cond_0
    const/4 v0, 0x0

    .line 1065
    .local v0, "errCode":I
    const-string v1, "[0-9]+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1066
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1067
    .local v2, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1068
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 1069
    .local v3, "errString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1070
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1071
    goto :goto_1

    .line 1073
    .end local v3    # "errString":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 1075
    :cond_2
    :goto_1
    return v0
.end method

.method private getCallSessionWithMptyBitSet(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 9
    .param p1, "state"    # I

    .line 759
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 763
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iget-boolean v1, v1, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->shouldHaveTransientSession:Z

    if-eqz v1, :cond_0

    .line 764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallSessionWithMptyBitSet session = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 766
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    monitor-exit v0

    return-object v1

    .line 769
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 770
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    .line 771
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 772
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 773
    .local v5, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getDriverCallState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v6

    .line 774
    .local v6, "dcState":Lorg/codeaurora/ims/DriverCallIms$State;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCallSessionWithMptyBitSet:: ImsCallSession state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", isMultiparty = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 774
    invoke-static {p0, v7}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 777
    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v7

    if-ne v7, v4, :cond_5

    .line 778
    const-string v7, "ImsCallSession found with Multiparty bit set"

    invoke-static {p0, v7}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 779
    sget-object v7, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v6, v7, :cond_1

    sget-object v7, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v6, v7, :cond_1

    sget-object v7, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v6, v7, :cond_2

    :cond_1
    if-ne p1, v4, :cond_2

    .line 783
    const-string v3, "Foreground Conference callSession found"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 784
    monitor-exit v0

    return-object v5

    .line 785
    :cond_2
    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v6, v4, :cond_3

    if-ne p1, v3, :cond_3

    .line 787
    const-string v3, "Background Conference callSession found"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 788
    monitor-exit v0

    return-object v5

    .line 789
    :cond_3
    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v6, v3, :cond_4

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v6, v3, :cond_5

    :cond_4
    if-nez p1, :cond_5

    .line 792
    const-string v3, "Ringing Conference callSession found"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 793
    monitor-exit v0

    return-object v5

    .line 796
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v5    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v6    # "dcState":Lorg/codeaurora/ims/DriverCallIms$State;
    :cond_5
    goto :goto_0

    .line 799
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_6
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 800
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 801
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 802
    .restart local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 803
    .restart local v5    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isConfInProgress()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 804
    if-ne p1, v4, :cond_8

    .line 805
    const-string v3, "Foreground ImsCallSession found during Conference setup"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 806
    monitor-exit v0

    return-object v5

    .line 809
    :cond_7
    if-ne p1, v3, :cond_8

    .line 810
    const-string v6, "Background ImsCallSession found"

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 813
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v5    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_8
    goto :goto_1

    .line 814
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_9
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 815
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleSrvccStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 1006
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1018
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->CANCELED:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    goto :goto_0

    .line 1015
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->FAILED:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    .line 1016
    goto :goto_0

    .line 1011
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    .line 1012
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    .line 1013
    goto :goto_0

    .line 1008
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    .line 1009
    nop

    .line 1021
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSrvccStateChanged mSrvccStateFromIms = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNeedIgnoreCalls = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1023
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private maybeDisableVideo(Lorg/codeaurora/ims/DriverCallIms;Z)Lorg/codeaurora/ims/DriverCallIms;
    .locals 8
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;
    .param p2, "disableVideo"    # Z

    .line 502
    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    if-nez v0, :cond_0

    goto :goto_1

    .line 507
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 509
    .local v0, "isVideoDisabled":Z
    if-ne v0, p2, :cond_1

    .line 510
    return-object p1

    .line 513
    :cond_1
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    .line 514
    .local v6, "srv":Lorg/codeaurora/ims/ServiceStatus;
    iget v7, v6, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-ne v7, v1, :cond_2

    .line 515
    iput v4, v6, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 513
    .end local v6    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 518
    :cond_3
    return-object p1

    .line 504
    .end local v0    # "isVideoDisabled":Z
    :cond_4
    :goto_1
    return-object p1
.end method

.method private notifyCallAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 977
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ICallListListener;

    .line 978
    .local v1, "listener":Lorg/codeaurora/ims/ICallListListener;
    invoke-interface {v1, p1}, Lorg/codeaurora/ims/ICallListListener;->onCallSessionAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 979
    .end local v1    # "listener":Lorg/codeaurora/ims/ICallListListener;
    goto :goto_0

    .line 980
    :cond_0
    return-void
.end method

.method private notifyCallRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 992
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ICallListListener;

    .line 993
    .local v1, "listener":Lorg/codeaurora/ims/ICallListListener;
    invoke-interface {v1, p1}, Lorg/codeaurora/ims/ICallListListener;->onCallSessionRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 994
    .end local v1    # "listener":Lorg/codeaurora/ims/ICallListListener;
    goto :goto_0

    .line 995
    :cond_0
    return-void
.end method

.method private parsePhoneNumbers([Ljava/lang/String;)V
    .locals 5
    .param p1, "history"    # [Ljava/lang/String;

    .line 638
    if-nez p1, :cond_0

    .line 639
    const-string v0, "parsePhoneNumbers: History is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 640
    return-void

    .line 643
    :cond_0
    const-string v0, "(.*?)(\\+?\\d+)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 644
    .local v0, "p":Ljava/util/regex/Pattern;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 645
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 646
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 647
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v1

    goto :goto_1

    .line 649
    :cond_1
    const-string v3, ""

    aput-object v3, p1, v1

    .line 650
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parsePhoneNumbers: string format incorrect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 644
    .end local v2    # "m":Ljava/util/regex/Matcher;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 653
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private sendBroadcastForDisconnected(Landroid/telephony/ims/ImsReasonInfo;II)V
    .locals 3
    .param p1, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "regState"    # I
    .param p3, "imsRat"    # I

    .line 1080
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.imsconnection.DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1081
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1082
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1083
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1084
    const-string v1, "stateChanged"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1085
    const-string v1, "imsRat"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1086
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcastForDisconnected: imsRat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1088
    return-void
.end method

.method private shallDisableVideo(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/DriverCallIms;",
            ">;)Z"
        }
    .end annotation

    .line 485
    .local p1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getPhoneId()I

    move-result v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->canHoldVideoCall(ILandroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 486
    return v1

    .line 488
    :cond_0
    const/4 v0, 0x0

    .line 489
    .local v0, "hasActiveVoiceCall":Z
    const/4 v2, 0x0

    .line 491
    .local v2, "hasHeldVoiceCall":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/DriverCallIms;

    .line 492
    .local v4, "dc":Lorg/codeaurora/ims/DriverCallIms;
    iget-object v6, v4, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v7, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v6, v7, :cond_1

    iget-object v6, v4, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v6, v6, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 493
    invoke-static {v6}, Lorg/codeaurora/ims/ImsCallUtils;->isVoiceCall(I)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    or-int/2addr v0, v6

    .line 494
    iget-object v6, v4, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v7, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v6, v7, :cond_2

    iget-object v6, v4, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v6, v6, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 495
    invoke-static {v6}, Lorg/codeaurora/ims/ImsCallUtils;->isVoiceCall(I)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    or-int/2addr v2, v5

    .line 496
    .end local v4    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    goto :goto_0

    .line 498
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    move v1, v5

    nop

    :cond_4
    return v1
.end method


# virtual methods
.method addListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .line 943
    if-eqz p1, :cond_1

    .line 949
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 950
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 952
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addListener error: Duplicate listener, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 954
    :goto_0
    return-void

    .line 944
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addListener error: listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public calculateOverallSrvccState([I)V
    .locals 3
    .param p1, "ret"    # [I

    .line 301
    const/4 v0, -0x1

    .line 302
    .local v0, "state":I
    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    .line 303
    const/4 v1, 0x0

    aget v0, p1, v1

    .line 305
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateOverallSrvccState imsSrvccState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " CS SRVCC state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 310
    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    goto :goto_0

    .line 311
    :cond_1
    if-ne v0, v1, :cond_2

    .line 312
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    .line 314
    :cond_2
    :goto_0
    return-void
.end method

.method public createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .locals 8
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 606
    new-instance v7, Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 607
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v6

    move-object v0, v7

    move-object v1, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lorg/codeaurora/ims/ImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;ZI)V

    .line 608
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;)V

    .line 609
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVoiceSupported:Z

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateFeatureCapabilities(ZZ)V

    .line 610
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->onNewCall()V

    .line 611
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 612
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 614
    monitor-exit v1

    .line 615
    return-object v0

    .line 614
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 5
    .param p1, "mediaId"    # I

    .line 852
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 853
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 854
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 855
    .local v3, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMediaId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 856
    monitor-exit v0

    return-object v3

    .line 858
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v3    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_0
    goto :goto_0

    .line 859
    :cond_1
    monitor-exit v0

    .line 860
    const/4 v0, 0x0

    return-object v0

    .line 859
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCallCount()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getCallSession(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 624
    const/4 v0, 0x0

    .line 625
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 626
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-object v0, v2

    .line 627
    monitor-exit v1

    .line 628
    return-object v0

    .line 627
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;
    .locals 6
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

    .line 824
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 825
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    if-nez p1, :cond_0

    return-object v0

    .line 827
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 828
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 829
    .local v3, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 830
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 832
    .end local v3    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_1
    goto :goto_0

    .line 833
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 835
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v2

    .line 836
    :try_start_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 837
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 838
    .local v4, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v5

    if-ne v5, p1, :cond_3

    .line 839
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v4    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_3
    goto :goto_1

    .line 842
    :cond_4
    monitor-exit v2

    .line 843
    return-object v0

    .line 842
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 833
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public getCallsListToClear()Ljava/lang/Object;
    .locals 9

    .line 321
    const/4 v0, 0x0

    .line 324
    .local v0, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 325
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .end local v0    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .local v1, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v2

    .line 328
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 329
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 330
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 331
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 332
    .local v4, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    new-instance v5, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v5}, Lorg/codeaurora/ims/DriverCallIms;-><init>()V

    .line 333
    .local v5, "dc":Lorg/codeaurora/ims/DriverCallIms;
    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    iput-object v6, v5, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 334
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lorg/codeaurora/ims/DriverCallIms;->index:I

    .line 335
    new-instance v6, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v6}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    iput-object v6, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 336
    iget-object v6, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v7

    iput v7, v6, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 337
    iget-object v6, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallDomain()I

    move-result v7

    iput v7, v6, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 338
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v7, 0x83

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    iput-object v6, v5, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 340
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v4    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    goto :goto_0

    .line 342
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    .end local v5    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 346
    move-object v0, v1

    goto :goto_1

    .line 342
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 346
    .end local v1    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .local v0, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :cond_1
    :goto_1
    return-object v0
.end method

.method public getIgnoreCalls()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1055
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    return v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 1045
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v0

    return v0
.end method

.method public getSrvccState()Lcom/android/internal/telephony/Call$SrvccState;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1050
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mSrvccStateFromIms:Lcom/android/internal/telephony/Call$SrvccState;

    return-object v0
.end method

.method public handleCalls(Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/DriverCallIms;",
            ">;)V"
        }
    .end annotation

    .local p1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    move-object/from16 v8, p0

    .line 354
    move-object/from16 v9, p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v10, v0

    .line 356
    .local v10, "dcMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/codeaurora/ims/DriverCallIms;>;"
    invoke-direct/range {p0 .. p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->shallDisableVideo(Ljava/util/ArrayList;)Z

    move-result v11

    .line 357
    .local v11, "disableVideo":Z
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    move v12, v1

    .end local v1    # "i":I
    .local v12, "i":I
    if-eqz v9, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_f

    .line 358
    const/4 v1, 0x0

    .line 359
    .local v1, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v8, v2, v11}, Lorg/codeaurora/ims/ImsServiceClassTracker;->maybeDisableVideo(Lorg/codeaurora/ims/DriverCallIms;Z)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v13

    .line 360
    .local v13, "dc":Lorg/codeaurora/ims/DriverCallIms;
    iget-object v2, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 361
    iget-object v2, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 362
    :try_start_0
    iget-object v3, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 363
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 364
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 366
    .local v4, "s":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v5, v13, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v5, v6, :cond_0

    iget-object v5, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    iget v6, v13, Lorg/codeaurora/ims/DriverCallIms;->index:I

    .line 367
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 370
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found match call session in temp list, s = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Index in call list is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v13, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    iget v5, v13, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v8, v5, v4, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V

    .line 374
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 376
    .end local v4    # "s":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_0
    goto :goto_1

    .line 377
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_1
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 379
    :cond_2
    :goto_2
    iget-object v2, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v2

    .line 380
    :try_start_1
    iget-object v3, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    iget v4, v13, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object v14, v3

    .line 381
    .end local v1    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .local v14, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 384
    iget-object v1, v13, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v1, v2, :cond_3

    iget-object v1, v13, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v1, v2, :cond_3

    iget-object v1, v13, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v2, :cond_4

    :cond_3
    iget-boolean v1, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    if-eqz v1, :cond_4

    .line 387
    iput-boolean v0, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    .line 389
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SRVCC mNeedIgnoreCalls = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    if-eqz v14, :cond_5

    .line 394
    invoke-virtual {v14, v13}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateCall(Lorg/codeaurora/ims/DriverCallIms;)V

    goto/16 :goto_8

    .line 395
    :cond_5
    iget-boolean v1, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    if-nez v1, :cond_d

    .line 396
    const/4 v15, 0x0

    .line 397
    .local v15, "isUnknown":Z
    iget-object v1, v13, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v2, :cond_6

    .line 400
    goto/16 :goto_9

    .line 402
    :cond_6
    new-instance v16, Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v3, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v4, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    iget-boolean v6, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    iget-object v1, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 403
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v7

    move-object/from16 v1, v16

    move-object v2, v13

    move-object v5, v8

    invoke-direct/range {v1 .. v7}, Lorg/codeaurora/ims/ImsCallSessionImpl;-><init>(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;ZI)V

    move-object/from16 v14, v16

    .line 404
    invoke-virtual {v14, v8}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;)V

    .line 405
    iget-boolean v1, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    iget-boolean v2, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVoiceSupported:Z

    invoke-virtual {v14, v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateFeatureCapabilities(ZZ)V

    .line 406
    iget-object v1, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->onNewCall()V

    .line 409
    iget-boolean v1, v13, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    .line 410
    const-string v1, "MT Call creating a new call session"

    invoke-static {v8, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    iget v1, v13, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v8, v14, v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->reportIncomingCall(Lorg/codeaurora/ims/ImsCallSessionImpl;IZ)V

    goto/16 :goto_7

    .line 412
    :cond_7
    iget-boolean v1, v13, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eqz v1, :cond_b

    iget-object v1, v13, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v3, :cond_b

    .line 413
    const-string v1, "Conference Call creating a new call session"

    invoke-static {v8, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    const/4 v1, 0x1

    .line 416
    .end local v15    # "isUnknown":Z
    .local v1, "isUnknown":Z
    iget-object v3, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v3

    .line 417
    :try_start_3
    iget-object v4, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 418
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 419
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 420
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 421
    .local v6, "oldSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-boolean v7, v6, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    if-eqz v7, :cond_8

    .line 422
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Set New Session as Id "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getConfInfo()Lorg/codeaurora/ims/parser/ConfInfo;

    move-result-object v7

    invoke-virtual {v14, v7}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setConfInfo(Lorg/codeaurora/ims/parser/ConfInfo;)V

    .line 424
    invoke-virtual {v6, v14}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setNewSession(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 425
    invoke-virtual {v6, v14}, Lorg/codeaurora/ims/ImsCallSessionImpl;->reportNewConferenceCallSession(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 427
    const/4 v1, 0x0

    .line 428
    goto :goto_4

    .line 430
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v6    # "oldSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_8
    goto :goto_3

    .line 431
    .end local v1    # "isUnknown":Z
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    .restart local v15    # "isUnknown":Z
    :cond_9
    :goto_4
    move v15, v1

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 432
    if-eqz v15, :cond_a

    .line 433
    const-string v1, "Phantom conference call Scenario"

    invoke-static {v8, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 435
    :cond_a
    iget v1, v13, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v8, v1, v14, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V

    .line 437
    :goto_5
    invoke-virtual {v14, v13}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateConfSession(Lorg/codeaurora/ims/DriverCallIms;)V

    goto :goto_7

    .line 431
    :catchall_1
    move-exception v0

    move v1, v15

    goto :goto_6

    .end local v15    # "isUnknown":Z
    .restart local v1    # "isUnknown":Z
    :catchall_2
    move-exception v0

    :goto_6
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 438
    .end local v1    # "isUnknown":Z
    .restart local v15    # "isUnknown":Z
    :cond_b
    iget-object v1, v13, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v1, v3, :cond_c

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MO phantom Call Scenario. State = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    const/4 v15, 0x1

    .line 442
    :cond_c
    :goto_7
    if-eqz v15, :cond_d

    .line 443
    iget v1, v13, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v8, v14, v1, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->reportIncomingCall(Lorg/codeaurora/ims/ImsCallSessionImpl;IZ)V

    .line 447
    .end local v15    # "isUnknown":Z
    :cond_d
    :goto_8
    iget-object v1, v13, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v1, v2, :cond_e

    iget-boolean v1, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mNeedIgnoreCalls:Z

    if-nez v1, :cond_e

    .line 448
    iget v1, v13, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    .end local v13    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    .end local v14    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_e
    :goto_9
    add-int/lit8 v1, v12, 0x1

    .end local v12    # "i":I
    .local v1, "i":I
    goto/16 :goto_0

    .line 381
    .end local v1    # "i":I
    .restart local v12    # "i":I
    .restart local v13    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    .restart local v14    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :catchall_3
    move-exception v0

    move-object v1, v14

    goto :goto_a

    .end local v14    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .local v1, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :catchall_4
    move-exception v0

    :goto_a
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    .line 456
    .end local v1    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v12    # "i":I
    .end local v13    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    :cond_f
    iget-object v1, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 457
    :try_start_7
    iget-object v0, v8, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 458
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 459
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 460
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_10

    .line 465
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 466
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-direct {v8, v3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 470
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getState()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_10

    .line 471
    new-instance v3, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v3}, Lorg/codeaurora/ims/DriverCallIms;-><init>()V

    .line 472
    .local v3, "dc":Lorg/codeaurora/ims/DriverCallIms;
    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    iput-object v4, v3, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 473
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v4, v3, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 474
    iget-object v4, v3, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    const/16 v5, 0x6f

    iput v5, v4, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 475
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v4, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateCall(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 480
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v3    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    :cond_10
    goto :goto_b

    .line 481
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_11
    monitor-exit v1

    .line 482
    return-void

    .line 481
    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public handleConferenceResult(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 167
    if-eqz p1, :cond_2

    .line 168
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 171
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 172
    .local v0, "reason":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConfHostListener:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 173
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->cleanupConferenceAttempt()V

    .line 174
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 175
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 177
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 178
    .local v3, "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->unMuteStateReporting()V

    .line 179
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateMergeStatus(I)V

    .line 180
    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    .line 181
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v3    # "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    goto :goto_0

    .line 182
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_0
    return-void

    .line 184
    .end local v0    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->processConferenceResult()V

    .line 187
    :cond_2
    return-void
.end method

.method public handleHandover(Lorg/codeaurora/ims/HoInfo;)V
    .locals 19
    .param p1, "handover"    # Lorg/codeaurora/ims/HoInfo;

    move-object/from16 v1, p0

    .line 864
    const-string v0, "in handleHandover"

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 867
    invoke-virtual/range {p1 .. p1}, Lorg/codeaurora/ims/HoInfo;->getSrcTech()I

    move-result v0

    const/16 v2, 0x12

    const/16 v3, 0x13

    if-ne v0, v3, :cond_0

    .line 868
    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/codeaurora/ims/HoInfo;->getSrcTech()I

    move-result v0

    :goto_0
    move v12, v0

    .line 869
    .local v12, "srcTech":I
    invoke-virtual/range {p1 .. p1}, Lorg/codeaurora/ims/HoInfo;->getTargetTech()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 870
    move v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/codeaurora/ims/HoInfo;->getTargetTech()I

    move-result v0

    :goto_1
    move v13, v0

    .line 873
    .local v13, "targetTech":I
    invoke-virtual/range {p1 .. p1}, Lorg/codeaurora/ims/HoInfo;->getSrcTech()I

    move-result v0

    const/16 v4, 0x14

    if-ne v0, v4, :cond_2

    .line 874
    invoke-virtual/range {p1 .. p1}, Lorg/codeaurora/ims/HoInfo;->getTargetTech()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 875
    invoke-virtual/range {p1 .. p1}, Lorg/codeaurora/ims/HoInfo;->getType()I

    move-result v0

    invoke-direct {v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleSrvccStateChanged(I)V

    .line 876
    return-void

    .line 879
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hoState: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lorg/codeaurora/ims/HoInfo;->getType()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " srcTech: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " tarTech: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " extraType: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    invoke-virtual/range {p1 .. p1}, Lorg/codeaurora/ims/HoInfo;->getExtraType()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " extraInfo: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    invoke-virtual/range {p1 .. p1}, Lorg/codeaurora/ims/HoInfo;->getExtraInfo()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ErrorCode: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    invoke-virtual/range {p1 .. p1}, Lorg/codeaurora/ims/HoInfo;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " errorMessage: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    invoke-virtual/range {p1 .. p1}, Lorg/codeaurora/ims/HoInfo;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 879
    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 887
    const/4 v4, 0x0

    .line 888
    .local v4, "showHandoverToast":Z
    iget-object v14, v1, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v14

    .line 889
    :try_start_0
    iget-object v0, v1, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 890
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v15, v4

    .end local v4    # "showHandoverToast":Z
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    .local v15, "showHandoverToast":Z
    :goto_2
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 891
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v11, v4

    .line 892
    .local v11, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-object v10, v4

    .line 893
    .local v10, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-eqz v10, :cond_3

    .line 894
    invoke-virtual/range {p1 .. p1}, Lorg/codeaurora/ims/HoInfo;->getType()I

    move-result v5

    .line 895
    invoke-virtual/range {p1 .. p1}, Lorg/codeaurora/ims/HoInfo;->getExtraType()I

    move-result v8

    .line 896
    invoke-virtual/range {p1 .. p1}, Lorg/codeaurora/ims/HoInfo;->getExtraInfo()[B

    move-result-object v9

    .line 897
    invoke-virtual/range {p1 .. p1}, Lorg/codeaurora/ims/HoInfo;->getErrorCode()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lorg/codeaurora/ims/HoInfo;->getErrorMessage()Ljava/lang/String;

    move-result-object v17

    .line 894
    move-object v4, v10

    move v6, v12

    move v7, v13

    move-object v3, v10

    move-object/from16 v10, v16

    .end local v10    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .local v3, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    move-object/from16 v16, v11

    move-object/from16 v11, v17

    .end local v11    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .local v16, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-virtual/range {v4 .. v11}, Lorg/codeaurora/ims/ImsCallSessionImpl;->handleHandover(IIII[BLjava/lang/String;Ljava/lang/String;)V

    .line 898
    if-nez v15, :cond_4

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isInCall()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 899
    const/4 v4, 0x1

    .line 904
    .end local v15    # "showHandoverToast":Z
    .restart local v4    # "showHandoverToast":Z
    move v15, v4

    goto :goto_3

    .line 902
    .end local v3    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v4    # "showHandoverToast":Z
    .end local v16    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .restart local v10    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .restart local v11    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .restart local v15    # "showHandoverToast":Z
    :cond_3
    move-object v3, v10

    move-object/from16 v16, v11

    .end local v10    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v11    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .restart local v3    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .restart local v16    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    const-string v4, "No more call sessions found"

    invoke-static {v1, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 904
    .end local v3    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v16    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_4
    :goto_3
    nop

    .line 890
    const/16 v3, 0x13

    goto :goto_2

    .line 905
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_5
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 908
    const/4 v0, 0x1

    if-nez v15, :cond_6

    .line 909
    invoke-virtual/range {p1 .. p1}, Lorg/codeaurora/ims/HoInfo;->getExtraType()I

    move-result v3

    if-ne v3, v0, :cond_6

    .line 910
    invoke-virtual/range {p1 .. p1}, Lorg/codeaurora/ims/HoInfo;->getExtraInfo()[B

    move-result-object v3

    if-eqz v3, :cond_6

    .line 911
    const/4 v3, 0x0

    .line 912
    .local v3, "errorCode":I
    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lorg/codeaurora/ims/HoInfo;->getExtraInfo()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 913
    .local v4, "errorMessage":Ljava/lang/String;
    const/4 v5, 0x2

    .line 914
    .local v5, "regState":I
    const/16 v6, 0x12

    .line 916
    .local v6, "imsRat":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HO from LTE to IWLAN Fail"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 917
    nop

    .line 918
    invoke-direct {v1, v4}, Lorg/codeaurora/ims/ImsServiceClassTracker;->extractErrorCode(Ljava/lang/String;)I

    move-result v3

    .line 919
    new-instance v7, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v8, 0x3e8

    invoke-direct {v7, v8, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 922
    .local v7, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    invoke-direct {v1, v7, v5, v6}, Lorg/codeaurora/ims/ImsServiceClassTracker;->sendBroadcastForDisconnected(Landroid/telephony/ims/ImsReasonInfo;II)V

    .line 928
    .end local v3    # "errorCode":I
    .end local v4    # "errorMessage":Ljava/lang/String;
    .end local v5    # "regState":I
    .end local v6    # "imsRat":I
    .end local v7    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_6
    if-eqz v15, :cond_8

    .line 929
    invoke-virtual/range {p1 .. p1}, Lorg/codeaurora/ims/HoInfo;->getType()I

    move-result v3

    if-ne v3, v0, :cond_8

    .line 930
    invoke-virtual/range {p1 .. p1}, Lorg/codeaurora/ims/HoInfo;->getSrcTech()I

    move-result v0

    if-eq v0, v2, :cond_7

    .line 931
    invoke-virtual/range {p1 .. p1}, Lorg/codeaurora/ims/HoInfo;->getSrcTech()I

    move-result v0

    const/16 v2, 0x13

    if-ne v0, v2, :cond_8

    .line 932
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/codeaurora/ims/HoInfo;->getTargetTech()I

    move-result v0

    const/16 v2, 0xe

    if-ne v0, v2, :cond_8

    .line 933
    const-string v0, "Switching to LTE network for better quality"

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 935
    :cond_8
    return-void

    .line 905
    :catchall_0
    move-exception v0

    move v4, v15

    goto :goto_4

    .end local v15    # "showHandoverToast":Z
    .local v4, "showHandoverToast":Z
    :catchall_1
    move-exception v0

    :goto_4
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V
    .locals 4
    .param p1, "cm"    # Lorg/codeaurora/ims/CallModify;

    .line 584
    if-eqz p1, :cond_1

    .line 585
    const/4 v0, 0x0

    .line 586
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 587
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    iget v3, p1, Lorg/codeaurora/ims/CallModify;->call_index:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-object v0, v2

    .line 588
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->onReceivedModifyCall(Lorg/codeaurora/ims/CallModify;)V

    goto :goto_0

    .line 592
    :cond_0
    const-string v1, "handleModifyCallRequest Error: callSession is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :goto_0
    goto :goto_1

    .line 588
    .restart local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 595
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_1
    const-string v0, "handleModifyCallRequest Error: Null Call Modify request "

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    :goto_1
    return-void
.end method

.method public handleRefreshConfInfo(Lorg/codeaurora/ims/ConfInfo;)V
    .locals 6
    .param p1, "confRefreshInfo"    # Lorg/codeaurora/ims/ConfInfo;

    .line 697
    const/4 v0, 0x0

    .line 698
    .local v0, "confInfoBytes":[B
    const/4 v1, -0x1

    .line 699
    .local v1, "state":I
    const/4 v2, 0x0

    .line 700
    .local v2, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-eqz p1, :cond_1

    .line 701
    invoke-virtual {p1}, Lorg/codeaurora/ims/ConfInfo;->getConfInfoUri()[B

    move-result-object v0

    .line 702
    if-eqz v0, :cond_1

    array-length v3, v0

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    .line 704
    invoke-virtual {p1}, Lorg/codeaurora/ims/ConfInfo;->getConfCallState()I

    move-result v3

    .line 709
    .local v3, "confCallState":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 710
    move v4, v3

    nop

    :cond_0
    move v1, v4

    .line 711
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSessionWithMptyBitSet(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v2

    .line 715
    .end local v3    # "confCallState":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRefreshConfInfo: confCallState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", callSession = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 724
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 725
    const-string v3, "Update UI for Conference"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 726
    invoke-virtual {v2, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyConfInfo([B)V

    goto :goto_0

    .line 728
    :cond_2
    const-string v3, "No CallSession with Multiparty bit set is found. Some Error!!!"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 730
    :goto_0
    return-void
.end method

.method public handleSuppSvcUnsol(Lorg/codeaurora/ims/SuppNotifyInfo;)V
    .locals 13
    .param p1, "info"    # Lorg/codeaurora/ims/SuppNotifyInfo;

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSuppSvcUnsol connId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getConnId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 666
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 667
    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getConnId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-object v2, v1

    .line 668
    .local v1, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-eqz v1, :cond_2

    .line 669
    const/4 v2, 0x0

    .line 670
    .local v2, "startOnHoldLocalTone":Z
    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getHistoryInfo()Ljava/lang/String;

    move-result-object v3

    .line 671
    .local v3, "forwardedCallHistory":Ljava/lang/String;
    const/4 v4, 0x0

    .line 672
    .local v4, "callHistory":[Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 673
    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 674
    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsServiceClassTracker;->parsePhoneNumbers([Ljava/lang/String;)V

    .line 676
    :cond_0
    move-object v11, v4

    .end local v4    # "callHistory":[Ljava/lang/String;
    .local v11, "callHistory":[Ljava/lang/String;
    new-instance v12, Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 677
    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getNotificationType()I

    move-result v5

    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getCode()I

    move-result v6

    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getIndex()I

    move-result v7

    .line 678
    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getNotificationType()I

    move-result v8

    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getNumber()Ljava/lang/String;

    move-result-object v9

    move-object v4, v12

    move-object v10, v11

    invoke-direct/range {v4 .. v10}, Landroid/telephony/ims/ImsSuppServiceNotification;-><init>(IIIILjava/lang/String;[Ljava/lang/String;)V

    move-object v4, v12

    .line 680
    .local v4, "suppServiceInfo":Landroid/telephony/ims/ImsSuppServiceNotification;
    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->hasHoldTone()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 681
    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getHoldTone()Z

    move-result v5

    move v2, v5

    .line 683
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSuppSvcUnsol suppNotification= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " startOnHoldLocalTone = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    invoke-virtual {v1, v4, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateSuppServiceInfo(Landroid/telephony/ims/ImsSuppServiceNotification;Z)V

    .line 686
    .end local v2    # "startOnHoldLocalTone":Z
    .end local v3    # "forwardedCallHistory":Ljava/lang/String;
    .end local v4    # "suppServiceInfo":Landroid/telephony/ims/ImsSuppServiceNotification;
    .end local v11    # "callHistory":[Ljava/lang/String;
    goto :goto_0

    .line 687
    :cond_2
    const-string v2, "No call session found for number: "

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    .end local v1    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :goto_0
    monitor-exit v0

    .line 690
    return-void

    .line 689
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleTtyModeChangeUnsol(I)V
    .locals 6
    .param p1, "mode"    # I

    .line 738
    const/4 v0, 0x0

    .line 741
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 742
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 743
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 744
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 745
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 746
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-object v0, v4

    .line 747
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyTtyModeChange(I)V

    .line 748
    goto :goto_1

    .line 750
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_0
    goto :goto_0

    .line 751
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    if-nez v0, :cond_2

    .line 754
    const-string v1, "No Active call session found for TTY mode change"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 756
    :cond_2
    return-void

    .line 751
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onActive(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 576
    return-void
.end method

.method public onCallModifyInitiated(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/CallModify;)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 567
    return-void
.end method

.method public onCallTypeChanging(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "newCallType"    # I

    .line 571
    return-void
.end method

.method public onClosed(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 5
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClosed for session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 530
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 531
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 532
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 533
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 534
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "List is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " session is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 537
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing session on close "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 539
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 541
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_0
    goto :goto_0

    .line 542
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 545
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 546
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 547
    :try_start_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 548
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 549
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 550
    .local v2, "s":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-ne v2, p1, :cond_3

    .line 552
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing session on close "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 554
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 556
    .end local v2    # "s":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_3
    goto :goto_2

    .line 557
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_4
    monitor-exit v0

    goto :goto_3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 559
    :cond_5
    :goto_3
    return-void
.end method

.method public onDisconnected(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 523
    return-void
.end method

.method public onHold(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 580
    return-void
.end method

.method public onUnsolCallModify(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/CallModify;)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 563
    return-void
.end method

.method public processConferenceResult()V
    .locals 7

    .line 190
    const-string v0, "Conference response received. Processing final result."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "foundActiveCall":Z
    const/4 v1, 0x0

    .line 198
    .local v1, "foundHeldCall":Z
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 199
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 200
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 201
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 203
    .local v4, "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getDcState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v5

    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v5, v6, :cond_0

    .line 206
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iput-object v4, v5, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 208
    const/4 v0, 0x1

    goto :goto_1

    .line 209
    :cond_0
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getDcState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v5

    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v5, v6, :cond_1

    .line 210
    const/4 v1, 0x1

    .line 212
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v4    # "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_1
    :goto_1
    goto :goto_0

    .line 214
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_2
    nop

    .line 222
    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 223
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iput-object v2, v3, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->heldCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 229
    :cond_3
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iget-boolean v3, v3, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->shouldHaveTransientSession:Z

    if-eqz v3, :cond_4

    .line 230
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConfHostListener:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iget-object v3, v3, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionMergeComplete(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    goto :goto_2

    .line 232
    :cond_4
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConfHostListener:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionMergeComplete(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 236
    :goto_2
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 237
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 238
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 240
    .restart local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 241
    .restart local v4    # "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->unMuteStateReporting()V

    .line 242
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateMergeStatus(I)V

    .line 243
    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    .line 245
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v4    # "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    goto :goto_3

    .line 248
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_5
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->cleanupConferenceAttempt()V

    .line 249
    return-void
.end method

.method removeListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .line 962
    if-eqz p1, :cond_1

    .line 968
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 971
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeListener error: Listener not found, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 973
    :goto_0
    return-void

    .line 963
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "removeListener error: listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reportIncomingCall(Lorg/codeaurora/ims/ImsCallSessionImpl;IZ)V
    .locals 3
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "index"    # I
    .param p3, "isUnknown"    # Z

    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportIncomingCall :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isUnknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1000
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V

    .line 1001
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 1002
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createIncomingCallBundle(Ljava/lang/String;ZZ)Landroid/os/Bundle;

    move-result-object v1

    .line 1001
    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsServiceSub;->notifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V

    .line 1003
    return-void
.end method

.method public sendConferenceRequest(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 6
    .param p1, "hostSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Conference request being requested by session = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    new-instance v0, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;-><init>(Lorg/codeaurora/ims/ImsServiceClassTracker;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    .line 261
    iget-object v1, p1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConfHostListener:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 267
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 268
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 270
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 271
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 273
    .local v3, "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->muteStateReporting()V

    .line 275
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getDcState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v4

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v4, v5, :cond_0

    .line 276
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iput-object v3, v4, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    goto :goto_1

    .line 277
    :cond_0
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getDcState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v4

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v4, v5, :cond_1

    .line 278
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    iput-object v3, v4, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->heldCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 281
    :cond_1
    :goto_1
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultipartyCall()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 282
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mConferenceResult:Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/codeaurora/ims/ImsServiceClassTracker$ConferenceResult;->shouldHaveTransientSession:Z

    .line 284
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v3    # "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_2
    goto :goto_0

    .line 287
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_3
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v1, p0}, Lorg/codeaurora/ims/ImsServiceSub;->sendConferenceRequest(Lorg/codeaurora/ims/ImsServiceClassTracker;)V

    .line 288
    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateMergeStatus(I)V

    .line 289
    return-void
.end method

.method public updateFeatureCapabilities(ZZ)V
    .locals 4
    .param p1, "isVideoSupported"    # Z
    .param p2, "isVoiceSupported"    # Z

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateFeatureCapabilities video "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " voice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    .line 134
    iput-boolean p2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVoiceSupported:Z

    .line 135
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 137
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 138
    .local v3, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v3, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateFeatureCapabilities(ZZ)V

    .line 139
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v3    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    goto :goto_0

    .line 140
    :cond_0
    monitor-exit v0

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateLowBatteryStatus()V
    .locals 4

    .line 144
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 145
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 146
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 147
    .local v3, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateLowBatteryStatus()V

    .line 148
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v3    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    goto :goto_0

    .line 149
    :cond_0
    monitor-exit v0

    .line 150
    return-void

    .line 149
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateVoWiFiCallQuality(I)V
    .locals 5
    .param p1, "quality"    # I

    .line 1031
    const/4 v0, 0x0

    .line 1034
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 1035
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 1036
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1037
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1038
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-object v0, v4

    .line 1039
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateVoWiFiCallQuality(I)V

    .line 1040
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    goto :goto_0

    .line 1041
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_0
    monitor-exit v1

    .line 1042
    return-void

    .line 1041
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
