.class Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;
.super Landroid/os/Handler;
.source "ImsCallModification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsCallModification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsCallModificationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsCallModification;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsCallModification;)V
    .locals 1
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsCallModification;

    .line 636
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    .line 637
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 638
    return-void
.end method

.method private clearMultiTaskRetryCount()I
    .locals 2

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing MultiTaskRetryCount from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->access$800(Lorg/codeaurora/ims/ImsCallModification;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallModification;->access$802(Lorg/codeaurora/ims/ImsCallModification;I)I

    move-result v0

    return v0
.end method

.method private onAvpRetry(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 755
    const-string v0, "EVENT_AVP_UPGRADE received"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 756
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 757
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 758
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 759
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 760
    .local v1, "shouldNotifyUser":Z
    if-eqz v1, :cond_0

    .line 761
    const-string v2, "AVP Retry error when Voice call was upgraded to video call"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 769
    :cond_0
    const-string v2, "AVP Retry error when Video call was dialed"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 773
    .end local v1    # "shouldNotifyUser":Z
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->access$400(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 774
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->access$500(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 775
    return-void
.end method

.method private onModifyCallDone(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onModifyCallDone for event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 662
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 663
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_1

    .line 667
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->access$100(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 668
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallModification;->access$100(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object v2

    iget-object v2, v2, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsCallModification;->access$200(Lorg/codeaurora/ims/ImsCallModification;I)V

    goto :goto_0

    .line 670
    :cond_0
    const-string v1, "videocall error during modifyCall"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 676
    :cond_1
    :goto_0
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 677
    .local v1, "onComplete":Landroid/os/Message;
    if-eqz v1, :cond_2

    .line 678
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 682
    invoke-virtual {v1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 686
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onModifyCallInitiateDone callModifyRequest="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallModification;->access$100(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 687
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallModification;->access$100(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 688
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallModification;->access$100(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object v2

    iget-object v2, v2, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithDir(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 689
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallModification;->access$100(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object v3

    iget-object v3, v3, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsCallModification;->access$302(Lorg/codeaurora/ims/ImsCallModification;I)I

    .line 690
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onModifyCallInitiateDone mPrevVideoCallType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallModification;->access$300(Lorg/codeaurora/ims/ImsCallModification;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    :cond_3
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallModification;->access$400(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 697
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallModification;->access$500(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 698
    return-void
.end method

.method private onVideoPauseDone(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 702
    const-string v0, "EVENT_VIDEO_PAUSE_DONE received"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 704
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_4

    .line 705
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 708
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->access$100(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 709
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallModification;->access$100(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object v2

    iget-object v2, v2, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsCallModification;->access$602(Lorg/codeaurora/ims/ImsCallModification;Z)Z

    .line 712
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->access$400(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 713
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->clearMultiTaskRetryCount()I

    .line 714
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->access$500(Lorg/codeaurora/ims/ImsCallModification;)V

    goto :goto_1

    .line 718
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->access$700(Lorg/codeaurora/ims/ImsCallModification;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 719
    const-string v1, "Error during video pause so retry"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 721
    const-wide v1, 0x407f400000000000L    # 500.0

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const v4, 0x453b8000    # 3000.0f

    mul-float/2addr v3, v4

    float-to-double v3, v3

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 722
    .local v1, "delay":I
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    iget-object v3, v3, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 724
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVideoPauseDone delay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 726
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallModification;->access$808(Lorg/codeaurora/ims/ImsCallModification;)I

    .line 727
    .end local v1    # "delay":I
    goto :goto_1

    .line 728
    :cond_3
    const-string v1, "Video Pause retry limit reached."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->clearMultiTaskRetryCount()I

    .line 730
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->access$400(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 731
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->access$500(Lorg/codeaurora/ims/ImsCallModification;)V

    goto :goto_1

    .line 735
    :cond_4
    const-string v1, "Error EVENT_VIDEO_PAUSE_DONE ar is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 737
    :goto_1
    return-void
.end method

.method private onVideoPauseRetry()V
    .locals 2

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_VIDEO_PAUSE_RETRY received mMultiTaskRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    .line 741
    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->access$800(Lorg/codeaurora/ims/ImsCallModification;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 740
    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallModification;->access$900(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/ImsCallModification$PauseState;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/ImsCallModification$PauseState;->NONE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    if-ne v0, v1, :cond_0

    .line 743
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallModification;->access$100(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 744
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->access$100(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object v1

    iget-object v1, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallModification;->access$1000(Lorg/codeaurora/ims/ImsCallModification;I)V

    goto :goto_0

    .line 747
    :cond_0
    const-string v0, "User pressed home/resume during retry sending new multitask request"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 748
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallModification;->access$400(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 749
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->clearMultiTaskRetryCount()I

    .line 750
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallModification;->access$500(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 752
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 643
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 652
    :pswitch_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->onVideoPauseRetry()V

    .line 653
    goto :goto_0

    .line 649
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->onVideoPauseDone(Landroid/os/Message;)V

    .line 650
    goto :goto_0

    .line 646
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->onModifyCallDone(Landroid/os/Message;)V

    .line 647
    goto :goto_0

    .line 655
    :pswitch_3
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->onAvpRetry(Landroid/os/Message;)V

    .line 658
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
