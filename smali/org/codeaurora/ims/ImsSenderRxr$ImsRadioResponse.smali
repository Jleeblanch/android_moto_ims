.class Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;
.super Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;
.source "ImsSenderRxr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsSenderRxr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsRadioResponse"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsSenderRxr;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 781
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {p0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;-><init>()V

    return-void
.end method

.method private sendSipErrorInfo(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    .line 865
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 866
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 867
    return-void

    .line 870
    :cond_0
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .line 871
    .local v1, "sipErrorInfo":Landroid/telephony/ims/ImsReasonInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v3}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " response - sip error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sip error string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 873
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 874
    return-void
.end method


# virtual methods
.method public addParticipantResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add Participant response received. errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1186
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1187
    return-void
.end method

.method public answerResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 902
    const-string v0, "Got answer response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 903
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 904
    return-void
.end method

.method public cancelModifyCallResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1133
    const-string v0, "Got cancel modify call response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1134
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1135
    return-void
.end method

.method public conferenceResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    .line 957
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->sendSipErrorInfo(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 958
    return-void
.end method

.method public deflectCallResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1191
    const-string v0, "Got deflect call response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1192
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1193
    return-void
.end method

.method public dialResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 795
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 796
    return-void
.end method

.method public exitEmergencyCallbackModeResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got exitEmergencyCallbackModeResponse from ImsRadio error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1098
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1099
    return-void
.end method

.method public explicitCallTransferResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1145
    const-string v0, "Got explicit call transfer response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1146
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1147
    return-void
.end method

.method public getCallWaitingResponse(IIIILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "inServiceStatus"    # I
    .param p4, "serviceClass"    # I
    .param p5, "errorDetails"    # Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    .line 1029
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 1030
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 1031
    return-void

    .line 1033
    :cond_0
    const/4 v1, 0x0

    .line 1035
    .local v1, "response":[I
    const/4 v2, 0x2

    if-eq p3, v2, :cond_2

    .line 1036
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->serviceClassStatusFromHal(I)I

    move-result v3

    .line 1037
    .local v3, "outServiceStatus":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    .line 1038
    new-array v1, v5, [I

    .line 1039
    aput v4, v1, v4

    goto :goto_0

    .line 1041
    :cond_1
    new-array v1, v2, [I

    .line 1042
    aput v5, v1, v4

    .line 1043
    aput p4, v1, v5

    .line 1047
    .end local v3    # "outServiceStatus":I
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 1048
    return-void
.end method

.method public getClipResponse(IILvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "clipProvisionStatus"    # Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;

    .line 963
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 964
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 965
    return-void

    .line 968
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/SuppService;

    invoke-direct {v1}, Lorg/codeaurora/ims/SuppService;-><init>()V

    .line 970
    .local v1, "clipProvStatus":Lorg/codeaurora/ims/SuppService;
    iget v2, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->clipStatus:I

    .line 971
    .local v2, "clipStatus":I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 972
    iget v3, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->clipStatus:I

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->clipStatusFromHal(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/SuppService;->setStatus(I)V

    .line 974
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getClipResponse from ImsRadio. Clipstatus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 977
    :cond_1
    iget-boolean v3, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->hasErrorDetails:Z

    if-eqz v3, :cond_2

    .line 978
    iget-object v3, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/SuppService;->setErrorDetails(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 980
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getClipResponse from ImsRadio. Errorcode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v4, v4, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "String "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v4, v4, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 985
    :cond_2
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v3, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 986
    return-void
.end method

.method public getClirResponse(IILvendor/qti/hardware/radio/ims/V1_0/ClirInfo;Z)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "clirInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    .param p4, "hasClirInfo"    # Z

    .line 991
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 992
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 993
    return-void

    .line 996
    :cond_0
    const/4 v1, 0x0

    .line 998
    .local v1, "response":[I
    if-eqz p4, :cond_3

    .line 999
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 1000
    iget v2, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->paramN:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_1

    .line 1001
    const/4 v2, 0x0

    iget v4, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->paramN:I

    aput v4, v1, v2

    .line 1003
    :cond_1
    iget v2, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->paramM:I

    if-eq v2, v3, :cond_2

    .line 1004
    const/4 v2, 0x1

    iget v3, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->paramM:I

    aput v3, v1, v2

    .line 1006
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClirResponse from ImsRadio. param_m - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->paramM:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "param_n - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->paramN:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1010
    :cond_3
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 1011
    return-void
.end method

.method public getColrResponse(IILvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "colrInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;

    .line 1090
    nop

    .line 1091
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtilsV13;->migrateColrInfoFromV10(Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;

    move-result-object v0

    .line 1092
    .local v0, "ci":Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;
    invoke-virtual {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->getColrResponse_1_3(IILvendor/qti/hardware/radio/ims/V1_3/ColrInfo;)V

    .line 1093
    return-void
.end method

.method public getColrResponse_1_3(IILvendor/qti/hardware/radio/ims/V1_3/ColrInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "colrInfo"    # Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;

    .line 1059
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 1060
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 1061
    return-void

    .line 1064
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/SuppService;

    invoke-direct {v1}, Lorg/codeaurora/ims/SuppService;-><init>()V

    .line 1066
    .local v1, "colrValue":Lorg/codeaurora/ims/SuppService;
    iget v2, p3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->status:I

    .line 1067
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->serviceClassStatusFromHal(I)I

    move-result v2

    .line 1066
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/SuppService;->setServiceClassStatus(I)V

    .line 1069
    iget v2, p3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->provisionStatus:I

    .line 1070
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->serviceClassProvisionStatusFromHal(I)I

    move-result v2

    .line 1069
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/SuppService;->setProvisionStatus(I)V

    .line 1072
    iget v2, p3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->presentation:I

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->ipPresentationFromHal(I)I

    move-result v2

    .line 1073
    .local v2, "presentation":I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 1074
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/SuppService;->setStatus(I)V

    .line 1075
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getColrResponse from ImsRadio. presentation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1078
    :cond_1
    iget-boolean v3, p3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->hasErrorDetails:Z

    if-eqz v3, :cond_2

    .line 1079
    iget-object v3, p3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/SuppService;->setErrorDetails(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1080
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getColrResponse from ImsRadio. errorcode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v4, v4, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v4, v4, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1085
    :cond_2
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v3, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 1086
    return-void
.end method

.method public getConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "config"    # Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    .line 832
    const-string v0, "Get config response received."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 833
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 834
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 835
    return-void

    .line 838
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->access$500(Lorg/codeaurora/ims/ImsSenderRxr;Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)Ljava/lang/Object;

    move-result-object v1

    .line 839
    .local v1, "ret":Ljava/lang/Object;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 840
    return-void
.end method

.method public getImsSubConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "subConfigInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;

    .line 1204
    const-string v0, "Received Subconfig response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1205
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 1206
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 1207
    return-void

    .line 1209
    :cond_0
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->imsSubconfigFromHal(Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)Lorg/codeaurora/ims/ImsSubConfigDetails;

    move-result-object v1

    .line 1210
    .local v1, "ret":Ljava/lang/Object;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 1211
    return-void
.end method

.method public getRegistrationResponse(IILvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "registration"    # Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    .line 915
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 916
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 917
    return-void

    .line 920
    :cond_0
    const/4 v1, 0x0

    .line 921
    .local v1, "regMessage":Lorg/codeaurora/ims/ImsRegistrationInfo;
    if-eqz p3, :cond_1

    .line 922
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->registrationFromHal(Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)Lorg/codeaurora/ims/ImsRegistrationInfo;

    move-result-object v1

    .line 924
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 925
    return-void
.end method

.method public getRtpErrorStatisticsResponse(IIJ)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "packetErrorCount"    # J

    .line 1171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got getRtpErrorStatisticsResponse from ImsRadio packetErrorCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1173
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 1174
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 1175
    return-void

    .line 1177
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 1178
    return-void
.end method

.method public getRtpStatisticsResponse(IIJ)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "packetCount"    # J

    .line 1159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got getRtpStatisticsResponse from ImsRadio packetCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1161
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 1162
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 1163
    return-void

    .line 1165
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 1166
    return-void
.end method

.method public hangupResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 888
    const-string v0, "Got hangup response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 889
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 891
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const-string v1, "End testing emergency call, notify ECM Registrants"

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 894
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 898
    :cond_0
    return-void
.end method

.method public holdResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    .line 883
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->sendSipErrorInfo(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 884
    return-void
.end method

.method public modifyCallConfirmResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1139
    const-string v0, "Got modify call confirm response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1140
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1141
    return-void
.end method

.method public modifyCallInitiateResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1127
    const-string v0, "Got modify call initiate response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1128
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1129
    return-void
.end method

.method public queryCallForwardStatusResponse(IILjava/util/ArrayList;Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p4, "errorDetails"    # Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;",
            ">;",
            "Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;",
            ")V"
        }
    .end annotation

    .line 1017
    .local p3, "callForwardInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;>;"
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 1018
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 1019
    return-void

    .line 1022
    :cond_0
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCFStatusResponseFromHal(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v1

    .line 1023
    .local v1, "ret":Ljava/lang/Object;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 1024
    return-void
.end method

.method public queryServiceStatusResponse(IILjava/util/ArrayList;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;",
            ">;)V"
        }
    .end annotation

    .line 845
    .local p3, "serviceStatusInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    const-string v0, "queryServiceStatus response received."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 846
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 847
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 848
    return-void

    .line 851
    :cond_0
    const/4 v1, 0x0

    .line 852
    .local v1, "ret":Ljava/lang/Object;
    if-eqz p3, :cond_1

    .line 853
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->handleSrvStatus(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v1

    .line 855
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 856
    return-void
.end method

.method public querySsacStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/SsacInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "ssacInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;

    .line 1268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received query Ssac status response from ImsRadio."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1269
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 1270
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 1271
    return-void

    .line 1274
    :cond_0
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->ssacInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;)Ljava/lang/Object;

    move-result-object v1

    .line 1276
    .local v1, "ret":Ljava/lang/Object;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 1278
    return-void
.end method

.method public queryVirtualLineInfoResponse(ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "msisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1226
    .local p3, "virtualLineInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 1227
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 1228
    return-void

    .line 1230
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/VirtualLineInfo;

    invoke-direct {v1, p2, p3}, Lorg/codeaurora/ims/VirtualLineInfo;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1231
    .local v1, "virtualInfo":Lorg/codeaurora/ims/VirtualLineInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryVirtualLineInfoResponse :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1232
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 1233
    return-void
.end method

.method public queryVoltePrefResponse(III)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "voltePref"    # I

    .line 1243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received query VoltePref response from ImsRadio."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1244
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 1245
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 1246
    return-void

    .line 1248
    :cond_0
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->voltePrefFromHal(I)Ljava/lang/Object;

    move-result-object v1

    .line 1249
    .local v1, "ret":Ljava/lang/Object;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 1250
    return-void
.end method

.method public queryVopsStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/VopsInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "vopsInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;

    .line 1256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received query Vops status response from ImsRadio."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1257
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 1258
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 1259
    return-void

    .line 1261
    :cond_0
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->vopsInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;)Ljava/lang/Object;

    move-result-object v1

    .line 1263
    .local v1, "ret":Ljava/lang/Object;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 1264
    return-void
.end method

.method public registerMultiIdentityLinesResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerMultiIdentityLines Response received. errorCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1221
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1222
    return-void
.end method

.method public requestRegistrationChangeResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 908
    const-string v0, "Got registration change response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 910
    return-void
.end method

.method public resumeResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    .line 878
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->sendSipErrorInfo(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 879
    return-void
.end method

.method public sendDtmfResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got sendDtmfResponse from ImsRadio error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1104
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1105
    return-void
.end method

.method public sendGeolocationInfoResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1197
    const-string v0, "Received GeoLocationInfo response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1198
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1199
    return-void
.end method

.method public sendImsSmsResponse(IIII)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "smsStatusResult"    # I
    .param p4, "reason"    # I

    .line 807
    const-string v0, "Ims sms response received"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 809
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 810
    return-void

    .line 813
    :cond_0
    invoke-static {p2, p3, p4}, Lorg/codeaurora/ims/ImsRadioUtils;->imsSmsResponsefromHidl(III)Lorg/codeaurora/ims/sms/SmsResponse;

    move-result-object v1

    .line 815
    .local v1, "response":Lorg/codeaurora/ims/sms/SmsResponse;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 816
    return-void
.end method

.method public sendRttMessageResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send Rtt Message response received. errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1216
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1217
    return-void
.end method

.method public setClirResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got setClirResponse from ImsRadio. error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1053
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1054
    return-void
.end method

.method public setConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "config"    # Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    .line 820
    const-string v0, "Set config response received."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 821
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 822
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 823
    return-void

    .line 826
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->access$500(Lorg/codeaurora/ims/ImsSenderRxr;Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)Ljava/lang/Object;

    move-result-object v1

    .line 827
    .local v1, "ret":Ljava/lang/Object;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 828
    return-void
.end method

.method public setServiceStatusResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 860
    const-string v0, "SetServiceStatus response received."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 861
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 862
    return-void
.end method

.method public setSuppServiceNotificationResponse(III)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "serviceStatusClass"    # I

    .line 1152
    const-string v0, "Got set supp service notification response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1153
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1154
    return-void
.end method

.method public setUiTTYModeResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got setUiTTYModeResponse from ImsRadio error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1122
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1123
    return-void
.end method

.method public startDtmfResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got startDtmfResponse from ImsRadio error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1110
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1111
    return-void
.end method

.method public stopDtmfResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got stopDtmfResponse from ImsRadio error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1116
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1117
    return-void
.end method

.method public suppServiceStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "suppServiceStatus"    # Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;

    .line 950
    nop

    .line 951
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtilsV13;->migrateSuppServiceStatusFromV10(Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;)Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;

    move-result-object v0

    .line 952
    .local v0, "status":Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;
    invoke-virtual {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->suppServiceStatusResponse_1_3(IILvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;)V

    .line 953
    return-void
.end method

.method public suppServiceStatusResponse_1_3(IILvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "suppServiceStatus"    # Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;

    .line 930
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 931
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 932
    return-void

    .line 935
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v2}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " provisionStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->provisionStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " facilityType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->facilityType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " failureCause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->failureCause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 942
    nop

    .line 943
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->suppSvcStatusResponseFromHal(Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;)Lorg/codeaurora/ims/SuppSvcResponse;

    move-result-object v1

    .line 944
    .local v1, "suppSvcResponse":Lorg/codeaurora/ims/SuppSvcResponse;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 945
    return-void
.end method

.method public updateVoltePrefResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1237
    const-string v0, "Received update VoltePref response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1238
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1239
    return-void
.end method
