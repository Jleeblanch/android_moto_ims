.class Lorg/codeaurora/ims/ImsConfigImpl$3;
.super Ljava/lang/Object;
.source "ImsConfigImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsConfigImpl;->checkinVolteProvision(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;

.field final synthetic val$event_code:I

.field final synthetic val$event_info:Ljava/lang/String;

.field final synthetic val$imsManager:Lcom/android/ims/ImsManager;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;Lcom/android/ims/ImsManager;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 755
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    iput-object p2, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->val$imsManager:Lcom/android/ims/ImsManager;

    iput p3, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->val$event_code:I

    iput-object p4, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->val$event_info:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 764
    const/4 v0, 0x0

    .line 765
    .local v0, "user_setting":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->val$imsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 766
    or-int/lit8 v0, v0, 0x1

    .line 768
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->val$imsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 769
    or-int/lit8 v0, v0, 0x4

    .line 771
    :cond_1
    if-eqz v0, :cond_2

    .line 772
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->val$imsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isVtEnabledByUser()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 773
    or-int/lit8 v0, v0, 0x2

    .line 786
    :cond_2
    const/4 v1, 0x0

    .line 787
    .local v1, "dm_provision":I
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const-string v3, "carrier_volte_provisioning_required_bool"

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->access$500(Lorg/codeaurora/ims/ImsConfigImpl;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 789
    or-int/lit8 v1, v1, 0x1

    .line 791
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_3

    .line 793
    or-int/lit8 v1, v1, 0x2

    .line 795
    :cond_3
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v2

    if-ne v3, v2, :cond_4

    .line 797
    or-int/lit8 v1, v1, 0x4

    .line 799
    :cond_4
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v4, 0x19

    invoke-virtual {v2, v4}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v2

    if-ne v3, v2, :cond_5

    .line 801
    or-int/lit8 v1, v1, 0x8

    .line 803
    :cond_5
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v4, 0x1c

    invoke-virtual {v2, v4}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v2

    if-ne v3, v2, :cond_6

    .line 805
    or-int/lit8 v1, v1, 0x10

    .line 807
    :cond_6
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v4, 0x41

    invoke-virtual {v2, v4}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v2

    if-ne v3, v2, :cond_7

    .line 809
    or-int/lit8 v1, v1, 0x20

    .line 813
    :cond_7
    const-string v2, "CALL_PERF_STATS"

    .line 814
    .local v2, "CHECKIN_GROUP_TAG":Ljava/lang/String;
    const-string v3, "VolteProvisioning"

    .line 815
    .local v3, "CHECKIN_EVENT_NAME":Ljava/lang/String;
    new-instance v10, Lorg/codeaurora/ims/CheckinEvent;

    const-string v5, "CALL_PERF_STATS"

    const-string v6, "VolteProvisioning"

    const-string v7, "1.0"

    .line 818
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lorg/codeaurora/ims/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object v4, v10

    .line 820
    .local v4, "ce":Lorg/codeaurora/ims/CheckinEvent;
    :try_start_0
    const-string v5, "usr"

    invoke-virtual {v4, v5, v0}, Lorg/codeaurora/ims/CheckinEvent;->setValue(Ljava/lang/String;I)V

    .line 821
    const-string v5, "dm"

    invoke-virtual {v4, v5, v1}, Lorg/codeaurora/ims/CheckinEvent;->setValue(Ljava/lang/String;I)V

    .line 822
    iget v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->val$event_code:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_8

    .line 823
    const-string v5, "evt"

    iget v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->val$event_code:I

    invoke-virtual {v4, v5, v6}, Lorg/codeaurora/ims/CheckinEvent;->setValue(Ljava/lang/String;I)V

    .line 825
    :cond_8
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->val$event_info:Ljava/lang/String;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->val$event_info:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    .line 826
    const-string v5, "evt_info"

    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->val$event_info:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/codeaurora/ims/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    :cond_9
    shl-int/lit8 v5, v0, 0x10

    or-int/2addr v5, v1

    .line 830
    .local v5, "flag":I
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsConfigImpl;->access$600(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v6

    if-ne v6, v5, :cond_a

    .line 831
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignore Checkin event, flag={0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "}, tag={"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/codeaurora/ims/CheckinEvent;->getTagName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "}, value={"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {v4}, Lorg/codeaurora/ims/CheckinEvent;->serializeEvent()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 831
    invoke-static {v6, v7}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 834
    return-void

    .line 836
    :cond_a
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v6, v5}, Lorg/codeaurora/ims/ImsConfigImpl;->access$602(Lorg/codeaurora/ims/ImsConfigImpl;I)I

    .line 838
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsConfigImpl;->access$200(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/codeaurora/ims/CheckinEvent;->publish(Landroid/content/ContentResolver;)V

    .line 840
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Log Checkin event, tag={"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/codeaurora/ims/CheckinEvent;->getTagName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "}, value={"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    invoke-virtual {v4}, Lorg/codeaurora/ims/CheckinEvent;->serializeEvent()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 840
    invoke-static {v6, v7}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    .end local v5    # "flag":I
    goto :goto_0

    .line 842
    :catch_0
    move-exception v5

    .line 843
    .local v5, "ex":Ljava/lang/Exception;
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Checkin publish failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 845
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
