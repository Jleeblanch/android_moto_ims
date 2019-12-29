.class public Lorg/codeaurora/ims/ImsServicePreferences;
.super Ljava/lang/Object;
.source "ImsServicePreferences.java"


# static fields
.field private static final IMS_REG_PHONE_ID:Ljava/lang/String; = "ImsRegPhoneId"

.field private static final IMS_REG_SUB_IDS:Ljava/lang/String; = "ImsRegSubIds"

.field private static final PREFERENCES:Ljava/lang/String; = "ImsService"

.field private static sInstance:Lorg/codeaurora/ims/ImsServicePreferences;


# instance fields
.field private mCommonPref:Landroid/content/SharedPreferences;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lorg/codeaurora/ims/ImsServicePreferences;->sInstance:Lorg/codeaurora/ims/ImsServicePreferences;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServicePreferences;->mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lorg/codeaurora/ims/ImsServicePreferences;->mCommonPref:Landroid/content/SharedPreferences;

    .line 46
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServicePreferences;->mContext:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServicePreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 48
    .local v0, "storageContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServicePreferences;->mContext:Landroid/content/Context;

    .line 51
    :cond_0
    const-string v1, "ImsService"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServicePreferences;->mCommonPref:Landroid/content/SharedPreferences;

    .line 52
    return-void
.end method

.method private addSubIdInList(I)Ljava/lang/String;
    .locals 9
    .param p1, "subId"    # I

    .line 113
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServicePreferences;->mCommonPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    return-object v0

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServicePreferences;->mCommonPref:Landroid/content/SharedPreferences;

    const-string v1, "ImsRegSubIds"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "idStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSubIdInList, the original idStr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 122
    const-string v2, ","

    .line 123
    .local v2, "delims":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "arrays":[Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 125
    move v5, v3

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_2

    .line 126
    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 127
    .local v6, "sid":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, p1, :cond_1

    .line 128
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v6    # "sid":Ljava/lang/Integer;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 134
    .end local v2    # "delims":Ljava/lang/String;
    .end local v4    # "arrays":[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    nop

    .local v3, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 137
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 139
    .local v4, "sid":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .end local v4    # "sid":Ljava/lang/Integer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 142
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSubIdInList, the new idStr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    return-object v0
.end method

.method public static createInstance(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 32
    if-nez p0, :cond_0

    .line 33
    const-string v0, "ImsServicePreferences"

    const-string v1, "Failed to create instance, context can\'t be null"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void

    .line 36
    :cond_0
    sget-object v0, Lorg/codeaurora/ims/ImsServicePreferences;->sInstance:Lorg/codeaurora/ims/ImsServicePreferences;

    if-nez v0, :cond_1

    .line 37
    new-instance v0, Lorg/codeaurora/ims/ImsServicePreferences;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsServicePreferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/codeaurora/ims/ImsServicePreferences;->sInstance:Lorg/codeaurora/ims/ImsServicePreferences;

    .line 39
    :cond_1
    return-void
.end method

.method public static getInstance()Lorg/codeaurora/ims/ImsServicePreferences;
    .locals 1

    .line 42
    sget-object v0, Lorg/codeaurora/ims/ImsServicePreferences;->sInstance:Lorg/codeaurora/ims/ImsServicePreferences;

    return-object v0
.end method


# virtual methods
.method public getImsRegPhoneId()I
    .locals 3

    .line 87
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServicePreferences;->mCommonPref:Landroid/content/SharedPreferences;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 88
    return v1

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServicePreferences;->mCommonPref:Landroid/content/SharedPreferences;

    const-string v2, "ImsRegPhoneId"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 92
    .local v0, "phoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImsRegPhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    return v0
.end method

.method public getImsRegSubIds()[I
    .locals 8

    .line 58
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServicePreferences;->mCommonPref:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 59
    return-object v1

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServicePreferences;->mCommonPref:Landroid/content/SharedPreferences;

    const-string v2, "ImsRegSubIds"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "idStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsRegSubIds, idStr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    return-object v1

    .line 68
    :cond_1
    const-string v2, ","

    .line 69
    .local v2, "delims":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "arrays":[Ljava/lang/String;
    if-eqz v3, :cond_4

    array-length v4, v3

    if-gtz v4, :cond_2

    goto :goto_2

    .line 74
    :cond_2
    array-length v1, v3

    .line 75
    .local v1, "length":I
    new-array v4, v1, [I

    .line 76
    .local v4, "ret":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_3

    .line 78
    :try_start_0
    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_1

    .line 79
    :catch_0
    move-exception v6

    .line 80
    .local v6, "ex":Ljava/lang/NumberFormatException;
    const/4 v7, -0x1

    aput v7, v4, v5

    .line 76
    .end local v6    # "ex":Ljava/lang/NumberFormatException;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 83
    .end local v5    # "i":I
    :cond_3
    return-object v4

    .line 71
    .end local v1    # "length":I
    .end local v4    # "ret":[I
    :cond_4
    :goto_2
    return-object v1
.end method

.method public setImsRegPhoneId(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 97
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServicePreferences;->mCommonPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 98
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServicePreferences;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/ims/ImsManager;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result v0

    .line 102
    .local v0, "subId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImsRegPhoneId, phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServicePreferences;->addSubIdInList(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "subIdStr":Ljava/lang/String;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServicePreferences;->mCommonPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 107
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "ImsRegSubIds"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    const-string v3, "ImsRegPhoneId"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    return-void
.end method
