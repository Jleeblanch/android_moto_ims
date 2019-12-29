.class Lorg/codeaurora/ims/ImsServiceSub$2;
.super Ljava/lang/Object;
.source "ImsServiceSub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsServiceSub;->handleRegistrationBlockStatus(Landroid/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 2280
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub$2;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2283
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$2;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    const-string v1, "Permanent IWLAN reg failure (IKEv2 auth failure)."

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->access$900(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2284
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    const-string v1, "WiFi_Error09-Unable to connect"

    const/16 v2, 0x578

    const/16 v3, 0x580

    invoke-direct {v0, v2, v3, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 2288
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$2;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->access$600(Lorg/codeaurora/ims/ImsServiceSub;)Lorg/codeaurora/ims/ImsRegistrationImpl;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v0}, Lorg/codeaurora/ims/ImsRegistrationImpl;->registrationChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 2291
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$2;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    const/4 v3, 0x2

    invoke-static {v1, v0, v3, v2}, Lorg/codeaurora/ims/ImsServiceSub;->access$1100(Lorg/codeaurora/ims/ImsServiceSub;Landroid/telephony/ims/ImsReasonInfo;II)V

    .line 2295
    return-void
.end method
