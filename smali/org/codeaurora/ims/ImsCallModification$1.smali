.class Lorg/codeaurora/ims/ImsCallModification$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsCallModification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsCallModification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsCallModification;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsCallModification;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsCallModification;

    .line 94
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallModification$1;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "action":Ljava/lang/String;
    const-string v1, "ImsCallModification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsCarMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification$1;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallModification;->access$000(Lorg/codeaurora/ims/ImsCallModification;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " intent received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$1;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsCallModification;->access$002(Lorg/codeaurora/ims/ImsCallModification;Z)Z

    goto :goto_0

    .line 105
    :cond_0
    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$1;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsCallModification;->access$002(Lorg/codeaurora/ims/ImsCallModification;Z)Z

    goto :goto_0

    .line 108
    :cond_1
    const-string v1, "ImsCallModification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected intent received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    :goto_0
    return-void
.end method
