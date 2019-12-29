.class public abstract Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioResponse.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1337
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1340
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1382
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1383
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1384
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1385
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1386
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1358
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x1dt
        -0x24t
        -0x7bt
        0x29t
        -0x2at
        0x7at
        0x24t
        0x7bt
        0x60t
        -0x66t
        0x59t
        -0x41t
        -0x60t
        0x21t
        -0x25t
        0x62t
        -0x4t
        -0x1at
        0x23t
        0xdt
        0x2at
        0x3t
        0x3at
        -0x1ct
        -0x5ft
        -0x36t
        -0x52t
        -0x35t
        -0x49t
        0x26t
        -0x62t
        0x4dt
    .end array-data

    :array_1
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1345
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1352
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1371
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1391
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1392
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 15
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    .line 1420
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 2208
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 2209
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_63

    .line 2210
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2211
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2212
    goto/16 :goto_7

    .line 2195
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 2196
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 2197
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2198
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2199
    goto/16 :goto_7

    .line 2200
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2202
    invoke-virtual {v6}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->notifySyspropsChanged()V

    .line 2203
    goto/16 :goto_7

    .line 2179
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 2180
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 2181
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2182
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2183
    goto/16 :goto_7

    .line 2184
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2186
    invoke-virtual {v6}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 2187
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2188
    invoke-virtual {v0, v8}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2189
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2190
    goto/16 :goto_7

    .line 2164
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 2165
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 2166
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2167
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2168
    goto/16 :goto_7

    .line 2169
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2171
    invoke-virtual {v6}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->ping()V

    .line 2172
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2173
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2174
    goto/16 :goto_7

    .line 2154
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 2155
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_63

    .line 2156
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2157
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2158
    goto/16 :goto_7

    .line 2141
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 2142
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 2143
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2144
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2145
    goto/16 :goto_7

    .line 2146
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2148
    invoke-virtual {v6}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->setHALInstrumentation()V

    .line 2149
    goto/16 :goto_7

    .line 2108
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 2109
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 2110
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2111
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2112
    goto/16 :goto_7

    .line 2113
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2115
    invoke-virtual {v6}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2116
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2118
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 2120
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2121
    .local v4, "_hidl_vec_size":I
    const-wide/16 v9, 0x8

    invoke-virtual {v3, v9, v10, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2122
    const-wide/16 v9, 0xc

    invoke-virtual {v3, v9, v10, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2123
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v9, v4, 0x20

    invoke-direct {v5, v9}, Landroid/os/HwBlob;-><init>(I)V

    .line 2124
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 2126
    mul-int/lit8 v9, v1, 0x20

    int-to-long v9, v9

    .line 2127
    .local v9, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    invoke-virtual {v5, v9, v10, v11}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2128
    nop

    .line 2124
    .end local v9    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2131
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v9, 0x0

    invoke-virtual {v3, v9, v10, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2133
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2135
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2136
    goto/16 :goto_7

    .line 2092
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 2093
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 2094
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2095
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2096
    goto/16 :goto_7

    .line 2097
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2099
    invoke-virtual {v6}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 2100
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2101
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2102
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2103
    goto/16 :goto_7

    .line 2078
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 2079
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 2080
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2081
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2082
    goto/16 :goto_7

    .line 2083
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2085
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2086
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2087
    goto/16 :goto_7

    .line 2062
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 2063
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 2064
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2065
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2066
    goto/16 :goto_7

    .line 2067
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2069
    invoke-virtual {v6}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2070
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2071
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2072
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2073
    goto/16 :goto_7

    .line 2045
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    .line 2046
    .local v1, "_hidl_is_oneway":Z
    :cond_13
    if-eq v1, v2, :cond_14

    .line 2047
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2048
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2049
    goto/16 :goto_7

    .line 2050
    :cond_14
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2052
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2053
    .local v0, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2054
    .local v2, "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;-><init>()V

    .line 2055
    .local v3, "ssacInfo":Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2056
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->querySsacStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/SsacInfo;)V

    .line 2057
    goto/16 :goto_7

    .line 2028
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "ssacInfo":Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 2029
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15
    if-eq v1, v2, :cond_16

    .line 2030
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2031
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2032
    goto/16 :goto_7

    .line 2033
    :cond_16
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2035
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2036
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2037
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;-><init>()V

    .line 2038
    .local v3, "vopsInfo":Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2039
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->queryVopsStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/VopsInfo;)V

    .line 2040
    goto/16 :goto_7

    .line 2012
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "vopsInfo":Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 2013
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17
    if-eq v1, v2, :cond_18

    .line 2014
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2015
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2016
    goto/16 :goto_7

    .line 2017
    :cond_18
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2019
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2020
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2021
    .restart local v2    # "errorCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2022
    .local v3, "voltePref":I
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->queryVoltePrefResponse(III)V

    .line 2023
    goto/16 :goto_7

    .line 1997
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "voltePref":I
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    .line 1998
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19
    if-eq v1, v2, :cond_1a

    .line 1999
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2000
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2001
    goto/16 :goto_7

    .line 2002
    :cond_1a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2004
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2005
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2006
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->updateVoltePrefResponse(II)V

    .line 2007
    goto/16 :goto_7

    .line 1982
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 1983
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 1984
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1985
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1986
    goto/16 :goto_7

    .line 1987
    :cond_1c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1989
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1990
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1991
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->cancelModifyCallResponse(II)V

    .line 1992
    goto/16 :goto_7

    .line 1967
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 1968
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 1969
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1970
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1971
    goto/16 :goto_7

    .line 1972
    :cond_1e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1974
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1975
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1976
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->sendRttMessageResponse(II)V

    .line 1977
    goto/16 :goto_7

    .line 1950
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 1951
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_20

    .line 1952
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1953
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1954
    goto/16 :goto_7

    .line 1955
    :cond_20
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1957
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1958
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1959
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;-><init>()V

    .line 1960
    .local v3, "subConfigInfo":Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1961
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getImsSubConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)V

    .line 1962
    goto/16 :goto_7

    .line 1935
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "subConfigInfo":Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    .line 1936
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21
    if-eq v1, v2, :cond_22

    .line 1937
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1938
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1939
    goto/16 :goto_7

    .line 1940
    :cond_22
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1942
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1943
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1944
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->sendGeolocationInfoResponse(II)V

    .line 1945
    goto/16 :goto_7

    .line 1920
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    move v1, v2

    nop

    .line 1921
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23
    if-eq v1, v2, :cond_24

    .line 1922
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1923
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1924
    goto/16 :goto_7

    .line 1925
    :cond_24
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1927
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1928
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1929
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->deflectCallResponse(II)V

    .line 1930
    goto/16 :goto_7

    .line 1905
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    move v1, v2

    nop

    .line 1906
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25
    if-eq v1, v2, :cond_26

    .line 1907
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1908
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1909
    goto/16 :goto_7

    .line 1910
    :cond_26
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1912
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1913
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1914
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->addParticipantResponse(II)V

    .line 1915
    goto/16 :goto_7

    .line 1889
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    .line 1890
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27
    if-eq v1, v2, :cond_28

    .line 1891
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1892
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1893
    goto/16 :goto_7

    .line 1894
    :cond_28
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1896
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1897
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1898
    .restart local v2    # "errorCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 1899
    .local v3, "packetErrorCount":J
    invoke-virtual {v6, v0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getRtpErrorStatisticsResponse(IIJ)V

    .line 1900
    goto/16 :goto_7

    .line 1873
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "packetErrorCount":J
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    move v1, v2

    nop

    .line 1874
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_29
    if-eq v1, v2, :cond_2a

    .line 1875
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1876
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1877
    goto/16 :goto_7

    .line 1878
    :cond_2a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1880
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1881
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1882
    .restart local v2    # "errorCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 1883
    .local v3, "packetCount":J
    invoke-virtual {v6, v0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getRtpStatisticsResponse(IIJ)V

    .line 1884
    goto/16 :goto_7

    .line 1857
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "packetCount":J
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    .line 1858
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2b
    if-eq v1, v2, :cond_2c

    .line 1859
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1860
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1861
    goto/16 :goto_7

    .line 1862
    :cond_2c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1864
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1865
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1866
    .restart local v2    # "errorCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1867
    .local v3, "serviceStatus":I
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->setSuppServiceNotificationResponse(III)V

    .line 1868
    goto/16 :goto_7

    .line 1842
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "serviceStatus":I
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    move v1, v2

    nop

    .line 1843
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2d
    if-eq v1, v2, :cond_2e

    .line 1844
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1845
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1846
    goto/16 :goto_7

    .line 1847
    :cond_2e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1849
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1850
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1851
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->explicitCallTransferResponse(II)V

    .line 1852
    goto/16 :goto_7

    .line 1823
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    move v1, v2

    nop

    :cond_2f
    move v9, v1

    .line 1824
    .local v9, "_hidl_is_oneway":Z
    if-eq v9, v2, :cond_30

    .line 1825
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1826
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1827
    goto/16 :goto_7

    .line 1828
    :cond_30
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1830
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 1831
    .local v10, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 1832
    .local v11, "errorCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 1833
    .local v12, "serviceStatus":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 1834
    .local v13, "serviceClass":I
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    move-object v5, v0

    .line 1835
    .local v5, "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v5, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1836
    move-object v0, v6

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move-object v14, v5

    .end local v5    # "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    .local v14, "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual/range {v0 .. v5}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getCallWaitingResponse(IIIILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1837
    goto/16 :goto_7

    .line 1805
    .end local v9    # "_hidl_is_oneway":Z
    .end local v10    # "token":I
    .end local v11    # "errorCode":I
    .end local v12    # "serviceStatus":I
    .end local v13    # "serviceClass":I
    .end local v14    # "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    move v1, v2

    nop

    .line 1806
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_31
    if-eq v1, v2, :cond_32

    .line 1807
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1808
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1809
    goto/16 :goto_7

    .line 1810
    :cond_32
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1812
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1813
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1814
    .restart local v2    # "errorCode":I
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1815
    .local v3, "callForwardInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;>;"
    new-instance v4, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v4}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1816
    .local v4, "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v4, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1817
    invoke-virtual {v6, v0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->queryCallForwardStatusResponse(IILjava/util/ArrayList;Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1818
    goto/16 :goto_7

    .line 1790
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "callForwardInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;>;"
    .end local v4    # "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    move v1, v2

    nop

    .line 1791
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_33
    if-eq v1, v2, :cond_34

    .line 1792
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1793
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1794
    goto/16 :goto_7

    .line 1795
    :cond_34
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1797
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1798
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1799
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->modifyCallConfirmResponse(II)V

    .line 1800
    goto/16 :goto_7

    .line 1775
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    move v1, v2

    nop

    .line 1776
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_35
    if-eq v1, v2, :cond_36

    .line 1777
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1778
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1779
    goto/16 :goto_7

    .line 1780
    :cond_36
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1782
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1783
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1784
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->modifyCallInitiateResponse(II)V

    .line 1785
    goto/16 :goto_7

    .line 1760
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 1761
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_37
    if-eq v1, v2, :cond_38

    .line 1762
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1763
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1764
    goto/16 :goto_7

    .line 1765
    :cond_38
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1767
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1768
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1769
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->setUiTTYModeResponse(II)V

    .line 1770
    goto/16 :goto_7

    .line 1745
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    move v1, v2

    nop

    .line 1746
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_39
    if-eq v1, v2, :cond_3a

    .line 1747
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1748
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1749
    goto/16 :goto_7

    .line 1750
    :cond_3a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1752
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1753
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1754
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->stopDtmfResponse(II)V

    .line 1755
    goto/16 :goto_7

    .line 1730
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    move v1, v2

    nop

    .line 1731
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3b
    if-eq v1, v2, :cond_3c

    .line 1732
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1733
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1734
    goto/16 :goto_7

    .line 1735
    :cond_3c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1737
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1738
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1739
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->startDtmfResponse(II)V

    .line 1740
    goto/16 :goto_7

    .line 1715
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3d

    move v1, v2

    nop

    .line 1716
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3d
    if-eq v1, v2, :cond_3e

    .line 1717
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1718
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1719
    goto/16 :goto_7

    .line 1720
    :cond_3e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1722
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1723
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1724
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->sendDtmfResponse(II)V

    .line 1725
    goto/16 :goto_7

    .line 1700
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3f

    move v1, v2

    nop

    .line 1701
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3f
    if-eq v1, v2, :cond_40

    .line 1702
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1703
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1704
    goto/16 :goto_7

    .line 1705
    :cond_40
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1707
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1708
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1709
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->exitEmergencyCallbackModeResponse(II)V

    .line 1710
    goto/16 :goto_7

    .line 1683
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_41

    move v1, v2

    nop

    .line 1684
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_41
    if-eq v1, v2, :cond_42

    .line 1685
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1686
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1687
    goto/16 :goto_7

    .line 1688
    :cond_42
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1690
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1691
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1692
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;-><init>()V

    .line 1693
    .local v3, "colrInfo":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1694
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getColrResponse(IILvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)V

    .line 1695
    goto/16 :goto_7

    .line 1668
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "colrInfo":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_43

    move v1, v2

    nop

    .line 1669
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_43
    if-eq v1, v2, :cond_44

    .line 1670
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1671
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1672
    goto/16 :goto_7

    .line 1673
    :cond_44
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1675
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1676
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1677
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->setClirResponse(II)V

    .line 1678
    goto/16 :goto_7

    .line 1650
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_45

    move v1, v2

    nop

    .line 1651
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_45
    if-eq v1, v2, :cond_46

    .line 1652
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1653
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1654
    goto/16 :goto_7

    .line 1655
    :cond_46
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1657
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1658
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1659
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;-><init>()V

    .line 1660
    .local v3, "clirInfo":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1661
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 1662
    .local v4, "hasClirInfo":Z
    invoke-virtual {v6, v0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getClirResponse(IILvendor/qti/hardware/radio/ims/V1_0/ClirInfo;Z)V

    .line 1663
    goto/16 :goto_7

    .line 1633
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "clirInfo":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    .end local v4    # "hasClirInfo":Z
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_47

    move v1, v2

    nop

    .line 1634
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_47
    if-eq v1, v2, :cond_48

    .line 1635
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1636
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1637
    goto/16 :goto_7

    .line 1638
    :cond_48
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1640
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1641
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1642
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;-><init>()V

    .line 1643
    .local v3, "clipProvisionStatus":Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1644
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getClipResponse(IILvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;)V

    .line 1645
    goto/16 :goto_7

    .line 1616
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "clipProvisionStatus":Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;
    :pswitch_1b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_49

    move v1, v2

    nop

    .line 1617
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_49
    if-eq v1, v2, :cond_4a

    .line 1618
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1619
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1620
    goto/16 :goto_7

    .line 1621
    :cond_4a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1623
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1624
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1625
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1626
    .local v3, "errorInfo":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1627
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->conferenceResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1628
    goto/16 :goto_7

    .line 1599
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "errorInfo":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :pswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4b

    move v1, v2

    nop

    .line 1600
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4b
    if-eq v1, v2, :cond_4c

    .line 1601
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1602
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1603
    goto/16 :goto_7

    .line 1604
    :cond_4c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1606
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1607
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1608
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;-><init>()V

    .line 1609
    .local v3, "suppServiceStatus":Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1610
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->suppServiceStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;)V

    .line 1611
    goto/16 :goto_7

    .line 1582
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "suppServiceStatus":Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;
    :pswitch_1d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4d

    move v1, v2

    nop

    .line 1583
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4d
    if-eq v1, v2, :cond_4e

    .line 1584
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1585
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1586
    goto/16 :goto_7

    .line 1587
    :cond_4e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1589
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1590
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1591
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;-><init>()V

    .line 1592
    .local v3, "registration":Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1593
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getRegistrationResponse(IILvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)V

    .line 1594
    goto/16 :goto_7

    .line 1565
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "registration":Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;
    :pswitch_1e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4f

    move v1, v2

    nop

    .line 1566
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4f
    if-eq v1, v2, :cond_50

    .line 1567
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1568
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1569
    goto/16 :goto_7

    .line 1570
    :cond_50
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1572
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1573
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1574
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1575
    .local v3, "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1576
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 1577
    goto/16 :goto_7

    .line 1548
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :pswitch_1f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_51

    move v1, v2

    nop

    .line 1549
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_51
    if-eq v1, v2, :cond_52

    .line 1550
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1551
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1552
    goto/16 :goto_7

    .line 1553
    :cond_52
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1555
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1556
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1557
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1558
    .restart local v3    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1559
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->setConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 1560
    goto/16 :goto_7

    .line 1531
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :pswitch_20
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_53

    move v1, v2

    nop

    .line 1532
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_53
    if-eq v1, v2, :cond_54

    .line 1533
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1534
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1535
    goto/16 :goto_7

    .line 1536
    :cond_54
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1538
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1539
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1540
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1541
    .local v3, "sipError":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1542
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->resumeResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1543
    goto/16 :goto_7

    .line 1514
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "sipError":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :pswitch_21
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_55

    move v1, v2

    nop

    .line 1515
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_55
    if-eq v1, v2, :cond_56

    .line 1516
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1517
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1518
    goto/16 :goto_7

    .line 1519
    :cond_56
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1521
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1522
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1523
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1524
    .restart local v3    # "sipError":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1525
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->holdResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1526
    goto/16 :goto_7

    .line 1499
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "sipError":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :pswitch_22
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_57

    move v1, v2

    nop

    .line 1500
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_57
    if-eq v1, v2, :cond_58

    .line 1501
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1502
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1503
    goto/16 :goto_7

    .line 1504
    :cond_58
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1506
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1507
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1508
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->setServiceStatusResponse(II)V

    .line 1509
    goto/16 :goto_7

    .line 1483
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_23
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_59

    move v1, v2

    nop

    .line 1484
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_59
    if-eq v1, v2, :cond_5a

    .line 1485
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1486
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1487
    goto/16 :goto_7

    .line 1488
    :cond_5a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1490
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1491
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1492
    .restart local v2    # "errorCode":I
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1493
    .local v3, "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->queryServiceStatusResponse(IILjava/util/ArrayList;)V

    .line 1494
    goto/16 :goto_7

    .line 1468
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    :pswitch_24
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5b

    move v1, v2

    nop

    .line 1469
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5b
    if-eq v1, v2, :cond_5c

    .line 1470
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1471
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1472
    goto/16 :goto_7

    .line 1473
    :cond_5c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1475
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1476
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1477
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->requestRegistrationChangeResponse(II)V

    .line 1478
    goto :goto_7

    .line 1453
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_25
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5d

    move v1, v2

    nop

    .line 1454
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5d
    if-eq v1, v2, :cond_5e

    .line 1455
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1456
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1457
    goto :goto_7

    .line 1458
    :cond_5e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1460
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1461
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1462
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->hangupResponse(II)V

    .line 1463
    goto :goto_7

    .line 1438
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_26
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5f

    move v1, v2

    nop

    .line 1439
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5f
    if-eq v1, v2, :cond_60

    .line 1440
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1441
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1442
    goto :goto_7

    .line 1443
    :cond_60
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1445
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1446
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1447
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->answerResponse(II)V

    .line 1448
    goto :goto_7

    .line 1423
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_27
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_61

    move v1, v2

    nop

    .line 1424
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_61
    if-eq v1, v2, :cond_62

    .line 1425
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1426
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1427
    goto :goto_7

    .line 1428
    :cond_62
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1430
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1431
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1432
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->dialResponse(II)V

    .line 1433
    nop

    .line 2217
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :cond_63
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_9
        0xf444247 -> :sswitch_8
        0xf445343 -> :sswitch_7
        0xf485348 -> :sswitch_6
        0xf494e54 -> :sswitch_5
        0xf4c5444 -> :sswitch_4
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_2
        0xf535953 -> :sswitch_1
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 1376
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1402
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1403
    return-object p0

    .line 1405
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1409
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 1410
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1367
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 1396
    const/4 v0, 0x1

    return v0
.end method
