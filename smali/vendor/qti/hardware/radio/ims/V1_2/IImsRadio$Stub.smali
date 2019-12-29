.class public abstract Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadio.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1193
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1196
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1242
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1243
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1244
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1245
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1246
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

    .line 1216
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_2

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x6ct
        0x44t
        -0x35t
        0x5at
        -0x25t
        -0x5et
        0x1ft
        -0x20t
        -0x38t
        -0x53t
        -0x14t
        0x26t
        -0x73t
        -0x69t
        -0x5dt
        0x4et
        -0x21t
        -0x1et
        -0x2t
        -0x62t
        0x1t
        -0x77t
        -0x43t
        0x3ft
        0x5bt
        0x5ft
        -0x70t
        0x40t
        -0x7dt
        0xat
        -0x21t
        -0x45t
    .end array-data

    :array_1
    .array-data 1
        0x2ft
        0x49t
        -0x57t
        0x31t
        0x13t
        0x1et
        -0x13t
        0x53t
        0x26t
        0x5ft
        -0x1bt
        -0x66t
        0x68t
        0x61t
        -0x3et
        -0x43t
        0x47t
        0x6bt
        -0x11t
        0x50t
        0x40t
        0x34t
        0x49t
        -0xbt
        0x56t
        -0x51t
        0x8t
        -0x7dt
        0x57t
        0x3dt
        0x7ft
        -0xft
    .end array-data

    :array_2
    .array-data 1
        -0x53t
        -0x17t
        0x0t
        -0x8t
        -0x1et
        0x77t
        0x5ct
        0x1at
        -0x1dt
        -0x42t
        0x7t
        0x27t
        -0x45t
        0x51t
        0x17t
        0x18t
        -0x2ft
        0x62t
        -0x40t
        -0x50t
        0x3ct
        -0x74t
        0x66t
        -0x1ft
        -0x36t
        -0x31t
        0x53t
        0xbt
        0x12t
        -0x52t
        -0xbt
        0x3dt
    .end array-data

    :array_3
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
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1201
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.radio.ims@1.2::IImsRadio"

    const-string v2, "vendor.qti.hardware.radio.ims@1.1::IImsRadio"

    const-string v3, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    const-string v4, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1210
    const-string v0, "vendor.qti.hardware.radio.ims@1.2::IImsRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1231
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1251
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1252
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 17
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 1280
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_9

    .line 2217
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 2218
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_79

    .line 2219
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2220
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2221
    goto/16 :goto_9

    .line 2204
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 2205
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 2206
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2207
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2208
    goto/16 :goto_9

    .line 2209
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2211
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->notifySyspropsChanged()V

    .line 2212
    goto/16 :goto_9

    .line 2188
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 2189
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 2190
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2191
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2192
    goto/16 :goto_9

    .line 2193
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2195
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 2196
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2197
    invoke-virtual {v0, v9}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2198
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2199
    goto/16 :goto_9

    .line 2173
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 2174
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 2175
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2176
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2177
    goto/16 :goto_9

    .line 2178
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2180
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->ping()V

    .line 2181
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2182
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2183
    goto/16 :goto_9

    .line 2163
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 2164
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_79

    .line 2165
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2166
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2167
    goto/16 :goto_9

    .line 2150
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 2151
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 2152
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2153
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2154
    goto/16 :goto_9

    .line 2155
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2157
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->setHALInstrumentation()V

    .line 2158
    goto/16 :goto_9

    .line 2117
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 2118
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 2119
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2120
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2121
    goto/16 :goto_9

    .line 2122
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2124
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2125
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2127
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 2129
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2130
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2131
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2132
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 2133
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 2135
    mul-int/lit8 v6, v1, 0x20

    int-to-long v10, v6

    .line 2136
    .local v10, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {v5, v10, v11, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2137
    nop

    .line 2133
    .end local v10    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2140
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v10, 0x0

    invoke-virtual {v3, v10, v11, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2142
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2144
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2145
    goto/16 :goto_9

    .line 2101
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 2102
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 2103
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2104
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2105
    goto/16 :goto_9

    .line 2106
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2108
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 2109
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2110
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2111
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2112
    goto/16 :goto_9

    .line 2087
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 2088
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 2089
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2090
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2091
    goto/16 :goto_9

    .line 2092
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2094
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2095
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2096
    goto/16 :goto_9

    .line 2071
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 2072
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 2073
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2074
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2075
    goto/16 :goto_9

    .line 2076
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2078
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2079
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2080
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2081
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2082
    goto/16 :goto_9

    .line 2053
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    :cond_13
    move v10, v1

    .line 2054
    .local v10, "_hidl_is_oneway":Z
    if-eq v10, v2, :cond_14

    .line 2055
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2056
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2057
    goto/16 :goto_9

    .line 2058
    :cond_14
    const-string v0, "vendor.qti.hardware.radio.ims@1.2::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2060
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 2061
    .local v11, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v12

    .line 2062
    .local v12, "lat":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v14

    .line 2063
    .local v14, "lon":D
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;-><init>()V

    move-object v6, v0

    .line 2064
    .local v6, "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    invoke-virtual {v6, v8}, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2065
    move-object v0, v7

    move v1, v11

    move-wide v2, v12

    move-wide v4, v14

    move-object/from16 v16, v6

    .end local v6    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    .local v16, "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    invoke-virtual/range {v0 .. v6}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->sendGeolocationInfo_1_2(IDDLvendor/qti/hardware/radio/ims/V1_2/AddressInfo;)V

    .line 2066
    goto/16 :goto_9

    .line 2037
    .end local v10    # "_hidl_is_oneway":Z
    .end local v11    # "token":I
    .end local v12    # "lat":D
    .end local v14    # "lon":D
    .end local v16    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    goto :goto_7

    :cond_15
    move v2, v1

    .line 2038
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_7
    if-eqz v2, :cond_16

    .line 2039
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2040
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2041
    goto/16 :goto_9

    .line 2042
    :cond_16
    const-string v0, "vendor.qti.hardware.radio.ims@1.2::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2044
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->getSmsFormat()Ljava/lang/String;

    move-result-object v0

    .line 2045
    .local v0, "_hidl_out_format":Ljava/lang/String;
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2046
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2047
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2048
    goto/16 :goto_9

    .line 2021
    .end local v0    # "_hidl_out_format":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 2022
    .local v1, "_hidl_is_oneway":Z
    :cond_17
    if-eq v1, v2, :cond_18

    .line 2023
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2024
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2025
    goto/16 :goto_9

    .line 2026
    :cond_18
    const-string v0, "vendor.qti.hardware.radio.ims@1.2::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2028
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2029
    .local v0, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2030
    .local v2, "messageRef":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2031
    .local v3, "smsReport":I
    invoke-virtual {v7, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->acknowledgeSmsReport(III)V

    .line 2032
    goto/16 :goto_9

    .line 2005
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "messageRef":I
    .end local v3    # "smsReport":I
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    .line 2006
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19
    if-eq v1, v2, :cond_1a

    .line 2007
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2008
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2009
    goto/16 :goto_9

    .line 2010
    :cond_1a
    const-string v0, "vendor.qti.hardware.radio.ims@1.2::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2012
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2013
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2014
    .restart local v2    # "messageRef":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2015
    .local v3, "smsResult":I
    invoke-virtual {v7, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->acknowledgeSms(III)V

    .line 2016
    goto/16 :goto_9

    .line 1989
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "messageRef":I
    .end local v3    # "smsResult":I
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 1990
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 1991
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1992
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1993
    goto/16 :goto_9

    .line 1994
    :cond_1c
    const-string v0, "vendor.qti.hardware.radio.ims@1.2::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1996
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1997
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;-><init>()V

    .line 1998
    .local v2, "imsSms":Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1999
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->sendImsSms(ILvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;)V

    .line 2000
    goto/16 :goto_9

    .line 1973
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "imsSms":Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 1974
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 1975
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1976
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1977
    goto/16 :goto_9

    .line 1978
    :cond_1e
    const-string v0, "vendor.qti.hardware.radio.ims@1.2::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1980
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1981
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;-><init>()V

    .line 1982
    .local v2, "hangup":Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1983
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->hangup_1_2(ILvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;)V

    .line 1984
    goto/16 :goto_9

    .line 1957
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "hangup":Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 1958
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_20

    .line 1959
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1960
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1961
    goto/16 :goto_9

    .line 1962
    :cond_20
    const-string v0, "vendor.qti.hardware.radio.ims@1.1::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1964
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1965
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;-><init>()V

    .line 1966
    .local v2, "hangup":Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1967
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->hangup_1_1(ILvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;)V

    .line 1968
    goto/16 :goto_9

    .line 1943
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "hangup":Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    .line 1944
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21
    if-eq v1, v2, :cond_22

    .line 1945
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1946
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1947
    goto/16 :goto_9

    .line 1948
    :cond_22
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1950
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1951
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->querySsacStatus(I)V

    .line 1952
    goto/16 :goto_9

    .line 1929
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    move v1, v2

    nop

    .line 1930
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23
    if-eq v1, v2, :cond_24

    .line 1931
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1932
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1933
    goto/16 :goto_9

    .line 1934
    :cond_24
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1936
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1937
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->queryVopsStatus(I)V

    .line 1938
    goto/16 :goto_9

    .line 1915
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    move v1, v2

    nop

    .line 1916
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25
    if-eq v1, v2, :cond_26

    .line 1917
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1918
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1919
    goto/16 :goto_9

    .line 1920
    :cond_26
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1922
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1923
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->queryVoltePref(I)V

    .line 1924
    goto/16 :goto_9

    .line 1900
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    .line 1901
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27
    if-eq v1, v2, :cond_28

    .line 1902
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1903
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1904
    goto/16 :goto_9

    .line 1905
    :cond_28
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1907
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1908
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1909
    .local v2, "preference":I
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->updateVoltePref(II)V

    .line 1910
    goto/16 :goto_9

    .line 1885
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "preference":I
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    move v1, v2

    nop

    .line 1886
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_29
    if-eq v1, v2, :cond_2a

    .line 1887
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1888
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1889
    goto/16 :goto_9

    .line 1890
    :cond_2a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1892
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1893
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1894
    .local v2, "callId":I
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->cancelModifyCall(II)V

    .line 1895
    goto/16 :goto_9

    .line 1870
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":I
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    .line 1871
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2b
    if-eq v1, v2, :cond_2c

    .line 1872
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1873
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1874
    goto/16 :goto_9

    .line 1875
    :cond_2c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1877
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1878
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1879
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->sendRttMessage(ILjava/lang/String;)V

    .line 1880
    goto/16 :goto_9

    .line 1856
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Ljava/lang/String;
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    move v1, v2

    nop

    .line 1857
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2d
    if-eq v1, v2, :cond_2e

    .line 1858
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1859
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1860
    goto/16 :goto_9

    .line 1861
    :cond_2e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1863
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1864
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->getImsSubConfig(I)V

    .line 1865
    goto/16 :goto_9

    .line 1838
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    move v1, v2

    nop

    :cond_2f
    move v10, v1

    .line 1839
    .restart local v10    # "_hidl_is_oneway":Z
    if-eq v10, v2, :cond_30

    .line 1840
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1841
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1842
    goto/16 :goto_9

    .line 1843
    :cond_30
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1845
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 1846
    .restart local v11    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v12

    .line 1847
    .restart local v12    # "lat":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v14

    .line 1848
    .restart local v14    # "lon":D
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;-><init>()V

    move-object v6, v0

    .line 1849
    .local v6, "addressInfo":Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;
    invoke-virtual {v6, v8}, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1850
    move-object v0, v7

    move v1, v11

    move-wide v2, v12

    move-wide v4, v14

    move-object/from16 v16, v6

    .end local v6    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;
    .local v16, "addressInfo":Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;
    invoke-virtual/range {v0 .. v6}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->sendGeolocationInfo(IDDLvendor/qti/hardware/radio/ims/V1_0/AddressInfo;)V

    .line 1851
    goto/16 :goto_9

    .line 1822
    .end local v10    # "_hidl_is_oneway":Z
    .end local v11    # "token":I
    .end local v12    # "lat":D
    .end local v14    # "lon":D
    .end local v16    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    move v1, v2

    nop

    .line 1823
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_31
    if-eq v1, v2, :cond_32

    .line 1824
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1825
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1826
    goto/16 :goto_9

    .line 1827
    :cond_32
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1829
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1830
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;-><init>()V

    .line 1831
    .local v2, "deflectRequestInfo":Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1832
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->deflectCall(ILvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;)V

    .line 1833
    goto/16 :goto_9

    .line 1808
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "deflectRequestInfo":Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    move v1, v2

    nop

    .line 1809
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_33
    if-eq v1, v2, :cond_34

    .line 1810
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1811
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1812
    goto/16 :goto_9

    .line 1813
    :cond_34
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1815
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1816
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->getRtpErrorStatistics(I)V

    .line 1817
    goto/16 :goto_9

    .line 1794
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    move v1, v2

    nop

    .line 1795
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_35
    if-eq v1, v2, :cond_36

    .line 1796
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1797
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1798
    goto/16 :goto_9

    .line 1799
    :cond_36
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1801
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1802
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->getRtpStatistics(I)V

    .line 1803
    goto/16 :goto_9

    .line 1776
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 1777
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_37
    if-eq v1, v2, :cond_38

    .line 1778
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1779
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1780
    goto/16 :goto_9

    .line 1781
    :cond_38
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1783
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1784
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1785
    .local v2, "operationType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1786
    .local v3, "facilityType":I
    new-instance v4, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    invoke-direct {v4}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;-><init>()V

    .line 1787
    .local v4, "cbNumListInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    invoke-virtual {v4, v8}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1788
    invoke-virtual {v7, v0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->suppServiceStatus(IIILvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;)V

    .line 1789
    goto/16 :goto_9

    .line 1760
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "operationType":I
    .end local v3    # "facilityType":I
    .end local v4    # "cbNumListInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    move v1, v2

    nop

    .line 1761
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_39
    if-eq v1, v2, :cond_3a

    .line 1762
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1763
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1764
    goto/16 :goto_9

    .line 1765
    :cond_3a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1767
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1768
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;-><init>()V

    .line 1769
    .local v2, "ectInfo":Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1770
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->explicitCallTransfer(ILvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;)V

    .line 1771
    goto/16 :goto_9

    .line 1745
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ectInfo":Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    move v1, v2

    nop

    .line 1746
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3b
    if-eq v1, v2, :cond_3c

    .line 1747
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1748
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1749
    goto/16 :goto_9

    .line 1750
    :cond_3c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1752
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1753
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1754
    .local v2, "status":I
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->setSuppServiceNotification(II)V

    .line 1755
    goto/16 :goto_9

    .line 1729
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3d

    move v1, v2

    nop

    .line 1730
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3d
    if-eq v1, v2, :cond_3e

    .line 1731
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1732
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1733
    goto/16 :goto_9

    .line 1734
    :cond_3e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1736
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1737
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1738
    .local v2, "serviceStatus":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1739
    .local v3, "serviceClass":I
    invoke-virtual {v7, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->setCallWaiting(III)V

    .line 1740
    goto/16 :goto_9

    .line 1714
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "serviceStatus":I
    .end local v3    # "serviceClass":I
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3f

    move v1, v2

    nop

    .line 1715
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3f
    if-eq v1, v2, :cond_40

    .line 1716
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1717
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1718
    goto/16 :goto_9

    .line 1719
    :cond_40
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1721
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1722
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1723
    .local v2, "serviceClass":I
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->getCallWaiting(II)V

    .line 1724
    goto/16 :goto_9

    .line 1698
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "serviceClass":I
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_41

    move v1, v2

    nop

    .line 1699
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_41
    if-eq v1, v2, :cond_42

    .line 1700
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1701
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1702
    goto/16 :goto_9

    .line 1703
    :cond_42
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1705
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1706
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;-><init>()V

    .line 1707
    .local v2, "callForwardInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1708
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->setCallForwardStatus(ILvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;)V

    .line 1709
    goto/16 :goto_9

    .line 1682
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callForwardInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_43

    move v1, v2

    nop

    .line 1683
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_43
    if-eq v1, v2, :cond_44

    .line 1684
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1685
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1686
    goto/16 :goto_9

    .line 1687
    :cond_44
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1689
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1690
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;-><init>()V

    .line 1691
    .restart local v2    # "callForwardInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1692
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->queryCallForwardStatus(ILvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;)V

    .line 1693
    goto/16 :goto_9

    .line 1666
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callForwardInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_45

    move v1, v2

    nop

    .line 1667
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_45
    if-eq v1, v2, :cond_46

    .line 1668
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1669
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1670
    goto/16 :goto_9

    .line 1671
    :cond_46
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1673
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1674
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;-><init>()V

    .line 1675
    .local v2, "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1676
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->modifyCallConfirm(ILvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    .line 1677
    goto/16 :goto_9

    .line 1650
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_47

    move v1, v2

    nop

    .line 1651
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_47
    if-eq v1, v2, :cond_48

    .line 1652
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1653
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1654
    goto/16 :goto_9

    .line 1655
    :cond_48
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1657
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1658
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;-><init>()V

    .line 1659
    .restart local v2    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1660
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->modifyCallInitiate(ILvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    .line 1661
    goto/16 :goto_9

    .line 1634
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    :pswitch_1b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_49

    move v1, v2

    nop

    .line 1635
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_49
    if-eq v1, v2, :cond_4a

    .line 1636
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1637
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1638
    goto/16 :goto_9

    .line 1639
    :cond_4a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1641
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1642
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;-><init>()V

    .line 1643
    .local v2, "ttyInfo":Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1644
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->setUiTtyMode(ILvendor/qti/hardware/radio/ims/V1_0/TtyInfo;)V

    .line 1645
    goto/16 :goto_9

    .line 1620
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ttyInfo":Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;
    :pswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4b

    move v1, v2

    nop

    .line 1621
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4b
    if-eq v1, v2, :cond_4c

    .line 1622
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1623
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1624
    goto/16 :goto_9

    .line 1625
    :cond_4c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1627
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1628
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->stopDtmf(I)V

    .line 1629
    goto/16 :goto_9

    .line 1604
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4d

    move v1, v2

    nop

    .line 1605
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4d
    if-eq v1, v2, :cond_4e

    .line 1606
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1607
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1608
    goto/16 :goto_9

    .line 1609
    :cond_4e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1611
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1612
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;-><init>()V

    .line 1613
    .local v2, "dtmfInfo":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1614
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->startDtmf(ILvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;)V

    .line 1615
    goto/16 :goto_9

    .line 1588
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dtmfInfo":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    :pswitch_1e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4f

    move v1, v2

    nop

    .line 1589
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4f
    if-eq v1, v2, :cond_50

    .line 1590
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1591
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1592
    goto/16 :goto_9

    .line 1593
    :cond_50
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1595
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1596
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;-><init>()V

    .line 1597
    .restart local v2    # "dtmfInfo":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1598
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->sendDtmf(ILvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;)V

    .line 1599
    goto/16 :goto_9

    .line 1574
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dtmfInfo":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    :pswitch_1f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_51

    move v1, v2

    nop

    .line 1575
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_51
    if-eq v1, v2, :cond_52

    .line 1576
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1577
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1578
    goto/16 :goto_9

    .line 1579
    :cond_52
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1581
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1582
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 1583
    goto/16 :goto_9

    .line 1558
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_20
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_53

    move v1, v2

    nop

    .line 1559
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_53
    if-eq v1, v2, :cond_54

    .line 1560
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1561
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1562
    goto/16 :goto_9

    .line 1563
    :cond_54
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1565
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1566
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;-><init>()V

    .line 1567
    .local v2, "colrInfo":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1568
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->setColr(ILvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)V

    .line 1569
    goto/16 :goto_9

    .line 1544
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "colrInfo":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    :pswitch_21
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_55

    move v1, v2

    nop

    .line 1545
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_55
    if-eq v1, v2, :cond_56

    .line 1546
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1547
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1548
    goto/16 :goto_9

    .line 1549
    :cond_56
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1551
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1552
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->getColr(I)V

    .line 1553
    goto/16 :goto_9

    .line 1528
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_22
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_57

    move v1, v2

    nop

    .line 1529
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_57
    if-eq v1, v2, :cond_58

    .line 1530
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1531
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1532
    goto/16 :goto_9

    .line 1533
    :cond_58
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1535
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1536
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;-><init>()V

    .line 1537
    .local v2, "clirInfo":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1538
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->setClir(ILvendor/qti/hardware/radio/ims/V1_0/ClirInfo;)V

    .line 1539
    goto/16 :goto_9

    .line 1514
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "clirInfo":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    :pswitch_23
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_59

    move v1, v2

    nop

    .line 1515
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_59
    if-eq v1, v2, :cond_5a

    .line 1516
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1517
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1518
    goto/16 :goto_9

    .line 1519
    :cond_5a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1521
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1522
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->getClir(I)V

    .line 1523
    goto/16 :goto_9

    .line 1500
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_24
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5b

    move v1, v2

    nop

    .line 1501
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5b
    if-eq v1, v2, :cond_5c

    .line 1502
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1503
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1504
    goto/16 :goto_9

    .line 1505
    :cond_5c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1507
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1508
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->getClip(I)V

    .line 1509
    goto/16 :goto_9

    .line 1486
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_25
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5d

    move v1, v2

    nop

    .line 1487
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5d
    if-eq v1, v2, :cond_5e

    .line 1488
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1489
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1490
    goto/16 :goto_9

    .line 1491
    :cond_5e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1493
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1494
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->conference(I)V

    .line 1495
    goto/16 :goto_9

    .line 1470
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_26
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5f

    move v1, v2

    nop

    .line 1471
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5f
    if-eq v1, v2, :cond_60

    .line 1472
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1473
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1474
    goto/16 :goto_9

    .line 1475
    :cond_60
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1477
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1478
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1479
    .local v2, "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1480
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->getConfig(ILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 1481
    goto/16 :goto_9

    .line 1454
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :pswitch_27
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_61

    move v1, v2

    nop

    .line 1455
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_61
    if-eq v1, v2, :cond_62

    .line 1456
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1457
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1458
    goto/16 :goto_9

    .line 1459
    :cond_62
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1461
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1462
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1463
    .restart local v2    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1464
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->setConfig(ILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 1465
    goto/16 :goto_9

    .line 1439
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :pswitch_28
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_63

    move v1, v2

    nop

    .line 1440
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_63
    if-eq v1, v2, :cond_64

    .line 1441
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1442
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1443
    goto/16 :goto_9

    .line 1444
    :cond_64
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1446
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1447
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1448
    .local v2, "callId":I
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->resume(II)V

    .line 1449
    goto/16 :goto_9

    .line 1424
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":I
    :pswitch_29
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_65

    move v1, v2

    nop

    .line 1425
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_65
    if-eq v1, v2, :cond_66

    .line 1426
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1427
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1428
    goto/16 :goto_9

    .line 1429
    :cond_66
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1431
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1432
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1433
    .restart local v2    # "callId":I
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->hold(II)V

    .line 1434
    goto/16 :goto_9

    .line 1408
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":I
    :pswitch_2a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_67

    move v1, v2

    nop

    .line 1409
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_67
    if-eq v1, v2, :cond_68

    .line 1410
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1411
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1412
    goto/16 :goto_9

    .line 1413
    :cond_68
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1415
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1416
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;-><init>()V

    .line 1417
    .local v2, "srvStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1418
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->setServiceStatus(ILvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;)V

    .line 1419
    goto/16 :goto_9

    .line 1394
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "srvStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    :pswitch_2b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_69

    move v1, v2

    nop

    .line 1395
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_69
    if-eq v1, v2, :cond_6a

    .line 1396
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1397
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1398
    goto/16 :goto_9

    .line 1399
    :cond_6a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1401
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1402
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->queryServiceStatus(I)V

    .line 1403
    goto/16 :goto_9

    .line 1379
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6b

    move v1, v2

    nop

    .line 1380
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6b
    if-eq v1, v2, :cond_6c

    .line 1381
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1382
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1383
    goto/16 :goto_9

    .line 1384
    :cond_6c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1386
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1387
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1388
    .local v2, "state":I
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->requestRegistrationChange(II)V

    .line 1389
    goto/16 :goto_9

    .line 1363
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":I
    :pswitch_2d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6d

    move v1, v2

    nop

    .line 1364
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6d
    if-eq v1, v2, :cond_6e

    .line 1365
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1366
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1367
    goto/16 :goto_9

    .line 1368
    :cond_6e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1370
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1371
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;-><init>()V

    .line 1372
    .local v2, "hangup":Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1373
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->hangup(ILvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;)V

    .line 1374
    goto/16 :goto_9

    .line 1346
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "hangup":Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;
    :pswitch_2e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6f

    move v1, v2

    nop

    .line 1347
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6f
    if-eq v1, v2, :cond_70

    .line 1348
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1349
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1350
    goto/16 :goto_9

    .line 1351
    :cond_70
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1353
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1354
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1355
    .local v2, "callType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1356
    .local v3, "presentation":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1357
    .local v4, "mode":I
    invoke-virtual {v7, v0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->answer(IIII)V

    .line 1358
    goto/16 :goto_9

    .line 1332
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callType":I
    .end local v3    # "presentation":I
    .end local v4    # "mode":I
    :pswitch_2f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_71

    move v1, v2

    nop

    .line 1333
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_71
    if-eq v1, v2, :cond_72

    .line 1334
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1335
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1336
    goto/16 :goto_9

    .line 1337
    :cond_72
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1339
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1340
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->getImsRegistrationState(I)V

    .line 1341
    goto/16 :goto_9

    .line 1316
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_30
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_73

    move v1, v2

    nop

    .line 1317
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_73
    if-eq v1, v2, :cond_74

    .line 1318
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1319
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1320
    goto :goto_9

    .line 1321
    :cond_74
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1323
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1324
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;-><init>()V

    .line 1325
    .local v2, "dialRequest":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1326
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->addParticipant(ILvendor/qti/hardware/radio/ims/V1_0/DialRequest;)V

    .line 1327
    goto :goto_9

    .line 1300
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    :pswitch_31
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_75

    move v1, v2

    nop

    .line 1301
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_75
    if-eq v1, v2, :cond_76

    .line 1302
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1303
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1304
    goto :goto_9

    .line 1305
    :cond_76
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1307
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1308
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;-><init>()V

    .line 1309
    .restart local v2    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1310
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->dial(ILvendor/qti/hardware/radio/ims/V1_0/DialRequest;)V

    .line 1311
    goto :goto_9

    .line 1283
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    :pswitch_32
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_77

    goto :goto_8

    :cond_77
    move v2, v1

    .line 1284
    .local v2, "_hidl_is_oneway":Z
    :goto_8
    if-eqz v2, :cond_78

    .line 1285
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1286
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1287
    goto :goto_9

    .line 1288
    :cond_78
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1290
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;

    move-result-object v0

    .line 1291
    .local v0, "imsRadioResponse":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;

    move-result-object v3

    .line 1292
    .local v3, "imsRadioIndication":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;
    invoke-virtual {v7, v0, v3}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->setCallback(Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;)V

    .line 1293
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1294
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1295
    nop

    .line 2226
    .end local v0    # "imsRadioResponse":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "imsRadioIndication":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;
    :cond_79
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
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

    .line 1236
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1262
    const-string v0, "vendor.qti.hardware.radio.ims@1.2::IImsRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1263
    return-object p0

    .line 1265
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

    .line 1269
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 1270
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1227
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1256
    const/4 v0, 0x1

    return v0
.end method
