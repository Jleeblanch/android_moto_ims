.class public abstract Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadio.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1390
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1393
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1435
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1436
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1437
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1438
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1439
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

    .line 1411
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

    .line 1398
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

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

    .line 1405
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1424
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1444
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1445
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

    .line 1473
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_8

    .line 2296
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 2297
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_6b

    .line 2298
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2299
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2300
    goto/16 :goto_8

    .line 2283
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 2284
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 2285
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2286
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2287
    goto/16 :goto_8

    .line 2288
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2290
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->notifySyspropsChanged()V

    .line 2291
    goto/16 :goto_8

    .line 2267
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 2268
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 2269
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2270
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2271
    goto/16 :goto_8

    .line 2272
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2274
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 2275
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2276
    invoke-virtual {v0, v9}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2277
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2278
    goto/16 :goto_8

    .line 2252
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 2253
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 2254
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2255
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2256
    goto/16 :goto_8

    .line 2257
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2259
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->ping()V

    .line 2260
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2261
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2262
    goto/16 :goto_8

    .line 2242
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 2243
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_6b

    .line 2244
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2245
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2246
    goto/16 :goto_8

    .line 2229
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 2230
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 2231
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2232
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2233
    goto/16 :goto_8

    .line 2234
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2236
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->setHALInstrumentation()V

    .line 2237
    goto/16 :goto_8

    .line 2196
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 2197
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 2198
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2199
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2200
    goto/16 :goto_8

    .line 2201
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2203
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2204
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2206
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 2208
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2209
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2210
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2211
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 2212
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 2214
    mul-int/lit8 v6, v1, 0x20

    int-to-long v10, v6

    .line 2215
    .local v10, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {v5, v10, v11, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2216
    nop

    .line 2212
    .end local v10    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2219
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v10, 0x0

    invoke-virtual {v3, v10, v11, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2221
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2223
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2224
    goto/16 :goto_8

    .line 2180
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 2181
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 2182
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2183
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2184
    goto/16 :goto_8

    .line 2185
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2187
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 2188
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2189
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2190
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2191
    goto/16 :goto_8

    .line 2166
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 2167
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 2168
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2169
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2170
    goto/16 :goto_8

    .line 2171
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2173
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2174
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2175
    goto/16 :goto_8

    .line 2150
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 2151
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 2152
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2153
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2154
    goto/16 :goto_8

    .line 2155
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2157
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2158
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2159
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2160
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2161
    goto/16 :goto_8

    .line 2136
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    .line 2137
    .local v1, "_hidl_is_oneway":Z
    :cond_13
    if-eq v1, v2, :cond_14

    .line 2138
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2139
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2140
    goto/16 :goto_8

    .line 2141
    :cond_14
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2143
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2144
    .local v0, "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->querySsacStatus(I)V

    .line 2145
    goto/16 :goto_8

    .line 2122
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 2123
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15
    if-eq v1, v2, :cond_16

    .line 2124
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2125
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2126
    goto/16 :goto_8

    .line 2127
    :cond_16
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2129
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2130
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->queryVopsStatus(I)V

    .line 2131
    goto/16 :goto_8

    .line 2108
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 2109
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17
    if-eq v1, v2, :cond_18

    .line 2110
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2111
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2112
    goto/16 :goto_8

    .line 2113
    :cond_18
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2115
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2116
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->queryVoltePref(I)V

    .line 2117
    goto/16 :goto_8

    .line 2093
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    .line 2094
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19
    if-eq v1, v2, :cond_1a

    .line 2095
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2096
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2097
    goto/16 :goto_8

    .line 2098
    :cond_1a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2100
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2101
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2102
    .local v2, "preference":I
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->updateVoltePref(II)V

    .line 2103
    goto/16 :goto_8

    .line 2078
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "preference":I
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 2079
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 2080
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2081
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2082
    goto/16 :goto_8

    .line 2083
    :cond_1c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2085
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2086
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2087
    .local v2, "callId":I
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->cancelModifyCall(II)V

    .line 2088
    goto/16 :goto_8

    .line 2063
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":I
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 2064
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 2065
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2066
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2067
    goto/16 :goto_8

    .line 2068
    :cond_1e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2070
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2071
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2072
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->sendRttMessage(ILjava/lang/String;)V

    .line 2073
    goto/16 :goto_8

    .line 2049
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Ljava/lang/String;
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 2050
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_20

    .line 2051
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2052
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2053
    goto/16 :goto_8

    .line 2054
    :cond_20
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2056
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2057
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->getImsSubConfig(I)V

    .line 2058
    goto/16 :goto_8

    .line 2031
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    :cond_21
    move v10, v1

    .line 2032
    .local v10, "_hidl_is_oneway":Z
    if-eq v10, v2, :cond_22

    .line 2033
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2034
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2035
    goto/16 :goto_8

    .line 2036
    :cond_22
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2038
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 2039
    .local v11, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v12

    .line 2040
    .local v12, "lat":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v14

    .line 2041
    .local v14, "lon":D
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;-><init>()V

    move-object v6, v0

    .line 2042
    .local v6, "addressInfo":Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;
    invoke-virtual {v6, v8}, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2043
    move-object v0, v7

    move v1, v11

    move-wide v2, v12

    move-wide v4, v14

    move-object/from16 v16, v6

    .end local v6    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;
    .local v16, "addressInfo":Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;
    invoke-virtual/range {v0 .. v6}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->sendGeolocationInfo(IDDLvendor/qti/hardware/radio/ims/V1_0/AddressInfo;)V

    .line 2044
    goto/16 :goto_8

    .line 2015
    .end local v10    # "_hidl_is_oneway":Z
    .end local v11    # "token":I
    .end local v12    # "lat":D
    .end local v14    # "lon":D
    .end local v16    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    move v1, v2

    nop

    .line 2016
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23
    if-eq v1, v2, :cond_24

    .line 2017
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2018
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2019
    goto/16 :goto_8

    .line 2020
    :cond_24
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2022
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2023
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;-><init>()V

    .line 2024
    .local v2, "deflectRequestInfo":Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2025
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->deflectCall(ILvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;)V

    .line 2026
    goto/16 :goto_8

    .line 2001
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "deflectRequestInfo":Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    move v1, v2

    nop

    .line 2002
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25
    if-eq v1, v2, :cond_26

    .line 2003
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2004
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2005
    goto/16 :goto_8

    .line 2006
    :cond_26
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2008
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2009
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->getRtpErrorStatistics(I)V

    .line 2010
    goto/16 :goto_8

    .line 1987
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    .line 1988
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27
    if-eq v1, v2, :cond_28

    .line 1989
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1990
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1991
    goto/16 :goto_8

    .line 1992
    :cond_28
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1994
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1995
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->getRtpStatistics(I)V

    .line 1996
    goto/16 :goto_8

    .line 1969
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    move v1, v2

    nop

    .line 1970
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_29
    if-eq v1, v2, :cond_2a

    .line 1971
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1972
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1973
    goto/16 :goto_8

    .line 1974
    :cond_2a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1976
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1977
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1978
    .local v2, "operationType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1979
    .local v3, "facilityType":I
    new-instance v4, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    invoke-direct {v4}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;-><init>()V

    .line 1980
    .local v4, "cbNumListInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    invoke-virtual {v4, v8}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1981
    invoke-virtual {v7, v0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->suppServiceStatus(IIILvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;)V

    .line 1982
    goto/16 :goto_8

    .line 1953
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "operationType":I
    .end local v3    # "facilityType":I
    .end local v4    # "cbNumListInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    .line 1954
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2b
    if-eq v1, v2, :cond_2c

    .line 1955
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1956
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1957
    goto/16 :goto_8

    .line 1958
    :cond_2c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1960
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1961
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;-><init>()V

    .line 1962
    .local v2, "ectInfo":Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1963
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->explicitCallTransfer(ILvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;)V

    .line 1964
    goto/16 :goto_8

    .line 1938
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ectInfo":Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    move v1, v2

    nop

    .line 1939
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2d
    if-eq v1, v2, :cond_2e

    .line 1940
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1941
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1942
    goto/16 :goto_8

    .line 1943
    :cond_2e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1945
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1946
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1947
    .local v2, "status":I
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->setSuppServiceNotification(II)V

    .line 1948
    goto/16 :goto_8

    .line 1922
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    move v1, v2

    nop

    .line 1923
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2f
    if-eq v1, v2, :cond_30

    .line 1924
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1925
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1926
    goto/16 :goto_8

    .line 1927
    :cond_30
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1929
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1930
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1931
    .local v2, "serviceStatus":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1932
    .local v3, "serviceClass":I
    invoke-virtual {v7, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->setCallWaiting(III)V

    .line 1933
    goto/16 :goto_8

    .line 1907
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "serviceStatus":I
    .end local v3    # "serviceClass":I
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    move v1, v2

    nop

    .line 1908
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_31
    if-eq v1, v2, :cond_32

    .line 1909
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1910
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1911
    goto/16 :goto_8

    .line 1912
    :cond_32
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1914
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1915
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1916
    .local v2, "serviceClass":I
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->getCallWaiting(II)V

    .line 1917
    goto/16 :goto_8

    .line 1891
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "serviceClass":I
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    move v1, v2

    nop

    .line 1892
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_33
    if-eq v1, v2, :cond_34

    .line 1893
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1894
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1895
    goto/16 :goto_8

    .line 1896
    :cond_34
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1898
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1899
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;-><init>()V

    .line 1900
    .local v2, "callForwardInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1901
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->setCallForwardStatus(ILvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;)V

    .line 1902
    goto/16 :goto_8

    .line 1875
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callForwardInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    move v1, v2

    nop

    .line 1876
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_35
    if-eq v1, v2, :cond_36

    .line 1877
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1878
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1879
    goto/16 :goto_8

    .line 1880
    :cond_36
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1882
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1883
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;-><init>()V

    .line 1884
    .restart local v2    # "callForwardInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1885
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->queryCallForwardStatus(ILvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;)V

    .line 1886
    goto/16 :goto_8

    .line 1859
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callForwardInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 1860
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_37
    if-eq v1, v2, :cond_38

    .line 1861
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1862
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1863
    goto/16 :goto_8

    .line 1864
    :cond_38
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1866
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1867
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;-><init>()V

    .line 1868
    .local v2, "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1869
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->modifyCallConfirm(ILvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    .line 1870
    goto/16 :goto_8

    .line 1843
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    move v1, v2

    nop

    .line 1844
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_39
    if-eq v1, v2, :cond_3a

    .line 1845
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1846
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1847
    goto/16 :goto_8

    .line 1848
    :cond_3a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1850
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1851
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;-><init>()V

    .line 1852
    .restart local v2    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1853
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->modifyCallInitiate(ILvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    .line 1854
    goto/16 :goto_8

    .line 1827
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    move v1, v2

    nop

    .line 1828
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3b
    if-eq v1, v2, :cond_3c

    .line 1829
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1830
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1831
    goto/16 :goto_8

    .line 1832
    :cond_3c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1834
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1835
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;-><init>()V

    .line 1836
    .local v2, "ttyInfo":Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1837
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->setUiTtyMode(ILvendor/qti/hardware/radio/ims/V1_0/TtyInfo;)V

    .line 1838
    goto/16 :goto_8

    .line 1813
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ttyInfo":Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3d

    move v1, v2

    nop

    .line 1814
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3d
    if-eq v1, v2, :cond_3e

    .line 1815
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1816
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1817
    goto/16 :goto_8

    .line 1818
    :cond_3e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1820
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1821
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->stopDtmf(I)V

    .line 1822
    goto/16 :goto_8

    .line 1797
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3f

    move v1, v2

    nop

    .line 1798
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3f
    if-eq v1, v2, :cond_40

    .line 1799
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1800
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1801
    goto/16 :goto_8

    .line 1802
    :cond_40
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1804
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1805
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;-><init>()V

    .line 1806
    .local v2, "dtmfInfo":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1807
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->startDtmf(ILvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;)V

    .line 1808
    goto/16 :goto_8

    .line 1781
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dtmfInfo":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_41

    move v1, v2

    nop

    .line 1782
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_41
    if-eq v1, v2, :cond_42

    .line 1783
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1784
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1785
    goto/16 :goto_8

    .line 1786
    :cond_42
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1788
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1789
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;-><init>()V

    .line 1790
    .restart local v2    # "dtmfInfo":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1791
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->sendDtmf(ILvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;)V

    .line 1792
    goto/16 :goto_8

    .line 1767
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dtmfInfo":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_43

    move v1, v2

    nop

    .line 1768
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_43
    if-eq v1, v2, :cond_44

    .line 1769
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1770
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1771
    goto/16 :goto_8

    .line 1772
    :cond_44
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1774
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1775
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 1776
    goto/16 :goto_8

    .line 1751
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_45

    move v1, v2

    nop

    .line 1752
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_45
    if-eq v1, v2, :cond_46

    .line 1753
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1754
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1755
    goto/16 :goto_8

    .line 1756
    :cond_46
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1758
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1759
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;-><init>()V

    .line 1760
    .local v2, "colrInfo":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1761
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->setColr(ILvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)V

    .line 1762
    goto/16 :goto_8

    .line 1737
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "colrInfo":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_47

    move v1, v2

    nop

    .line 1738
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_47
    if-eq v1, v2, :cond_48

    .line 1739
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1740
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1741
    goto/16 :goto_8

    .line 1742
    :cond_48
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1744
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1745
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->getColr(I)V

    .line 1746
    goto/16 :goto_8

    .line 1721
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_49

    move v1, v2

    nop

    .line 1722
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_49
    if-eq v1, v2, :cond_4a

    .line 1723
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1724
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1725
    goto/16 :goto_8

    .line 1726
    :cond_4a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1728
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1729
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;-><init>()V

    .line 1730
    .local v2, "clirInfo":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1731
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->setClir(ILvendor/qti/hardware/radio/ims/V1_0/ClirInfo;)V

    .line 1732
    goto/16 :goto_8

    .line 1707
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "clirInfo":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    :pswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4b

    move v1, v2

    nop

    .line 1708
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4b
    if-eq v1, v2, :cond_4c

    .line 1709
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1710
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1711
    goto/16 :goto_8

    .line 1712
    :cond_4c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1714
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1715
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->getClir(I)V

    .line 1716
    goto/16 :goto_8

    .line 1693
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4d

    move v1, v2

    nop

    .line 1694
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4d
    if-eq v1, v2, :cond_4e

    .line 1695
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1696
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1697
    goto/16 :goto_8

    .line 1698
    :cond_4e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1700
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1701
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->getClip(I)V

    .line 1702
    goto/16 :goto_8

    .line 1679
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4f

    move v1, v2

    nop

    .line 1680
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4f
    if-eq v1, v2, :cond_50

    .line 1681
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1682
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1683
    goto/16 :goto_8

    .line 1684
    :cond_50
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1686
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1687
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->conference(I)V

    .line 1688
    goto/16 :goto_8

    .line 1663
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_51

    move v1, v2

    nop

    .line 1664
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_51
    if-eq v1, v2, :cond_52

    .line 1665
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1666
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1667
    goto/16 :goto_8

    .line 1668
    :cond_52
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1670
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1671
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1672
    .local v2, "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1673
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->getConfig(ILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 1674
    goto/16 :goto_8

    .line 1647
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :pswitch_20
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_53

    move v1, v2

    nop

    .line 1648
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_53
    if-eq v1, v2, :cond_54

    .line 1649
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1650
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1651
    goto/16 :goto_8

    .line 1652
    :cond_54
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1654
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1655
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1656
    .restart local v2    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1657
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->setConfig(ILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 1658
    goto/16 :goto_8

    .line 1632
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :pswitch_21
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_55

    move v1, v2

    nop

    .line 1633
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_55
    if-eq v1, v2, :cond_56

    .line 1634
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1635
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1636
    goto/16 :goto_8

    .line 1637
    :cond_56
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1639
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1640
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1641
    .local v2, "callId":I
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->resume(II)V

    .line 1642
    goto/16 :goto_8

    .line 1617
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":I
    :pswitch_22
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_57

    move v1, v2

    nop

    .line 1618
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_57
    if-eq v1, v2, :cond_58

    .line 1619
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1620
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1621
    goto/16 :goto_8

    .line 1622
    :cond_58
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1624
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1625
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1626
    .restart local v2    # "callId":I
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->hold(II)V

    .line 1627
    goto/16 :goto_8

    .line 1601
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":I
    :pswitch_23
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_59

    move v1, v2

    nop

    .line 1602
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_59
    if-eq v1, v2, :cond_5a

    .line 1603
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1604
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1605
    goto/16 :goto_8

    .line 1606
    :cond_5a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1608
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1609
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;-><init>()V

    .line 1610
    .local v2, "srvStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1611
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->setServiceStatus(ILvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;)V

    .line 1612
    goto/16 :goto_8

    .line 1587
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "srvStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    :pswitch_24
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5b

    move v1, v2

    nop

    .line 1588
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5b
    if-eq v1, v2, :cond_5c

    .line 1589
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1590
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1591
    goto/16 :goto_8

    .line 1592
    :cond_5c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1594
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1595
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->queryServiceStatus(I)V

    .line 1596
    goto/16 :goto_8

    .line 1572
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_25
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5d

    move v1, v2

    nop

    .line 1573
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5d
    if-eq v1, v2, :cond_5e

    .line 1574
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1575
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1576
    goto/16 :goto_8

    .line 1577
    :cond_5e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1579
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1580
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1581
    .local v2, "state":I
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->requestRegistrationChange(II)V

    .line 1582
    goto/16 :goto_8

    .line 1556
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":I
    :pswitch_26
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5f

    move v1, v2

    nop

    .line 1557
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5f
    if-eq v1, v2, :cond_60

    .line 1558
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1559
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1560
    goto/16 :goto_8

    .line 1561
    :cond_60
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1563
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1564
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;-><init>()V

    .line 1565
    .local v2, "hangup":Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1566
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->hangup(ILvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;)V

    .line 1567
    goto/16 :goto_8

    .line 1539
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "hangup":Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;
    :pswitch_27
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_61

    move v1, v2

    nop

    .line 1540
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_61
    if-eq v1, v2, :cond_62

    .line 1541
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1542
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1543
    goto/16 :goto_8

    .line 1544
    :cond_62
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1546
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1547
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1548
    .local v2, "callType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1549
    .local v3, "presentation":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1550
    .local v4, "mode":I
    invoke-virtual {v7, v0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->answer(IIII)V

    .line 1551
    goto/16 :goto_8

    .line 1525
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callType":I
    .end local v3    # "presentation":I
    .end local v4    # "mode":I
    :pswitch_28
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_63

    move v1, v2

    nop

    .line 1526
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_63
    if-eq v1, v2, :cond_64

    .line 1527
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1528
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1529
    goto/16 :goto_8

    .line 1530
    :cond_64
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1532
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1533
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->getImsRegistrationState(I)V

    .line 1534
    goto/16 :goto_8

    .line 1509
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_29
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_65

    move v1, v2

    nop

    .line 1510
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_65
    if-eq v1, v2, :cond_66

    .line 1511
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1512
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1513
    goto :goto_8

    .line 1514
    :cond_66
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1516
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1517
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;-><init>()V

    .line 1518
    .local v2, "dialRequest":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1519
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->addParticipant(ILvendor/qti/hardware/radio/ims/V1_0/DialRequest;)V

    .line 1520
    goto :goto_8

    .line 1493
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    :pswitch_2a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_67

    move v1, v2

    nop

    .line 1494
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_67
    if-eq v1, v2, :cond_68

    .line 1495
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1496
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1497
    goto :goto_8

    .line 1498
    :cond_68
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1500
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1501
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;-><init>()V

    .line 1502
    .restart local v2    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1503
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->dial(ILvendor/qti/hardware/radio/ims/V1_0/DialRequest;)V

    .line 1504
    goto :goto_8

    .line 1476
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    :pswitch_2b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_69

    goto :goto_7

    :cond_69
    move v2, v1

    .line 1477
    .local v2, "_hidl_is_oneway":Z
    :goto_7
    if-eqz v2, :cond_6a

    .line 1478
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1479
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1480
    goto :goto_8

    .line 1481
    :cond_6a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1483
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;

    move-result-object v0

    .line 1484
    .local v0, "imsRadioResponse":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;

    move-result-object v3

    .line 1485
    .local v3, "imsRadioIndication":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;
    invoke-virtual {v7, v0, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->setCallback(Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;)V

    .line 1486
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1487
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1488
    nop

    .line 2305
    .end local v0    # "imsRadioResponse":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "imsRadioIndication":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;
    :cond_6b
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 1429
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1455
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1456
    return-object p0

    .line 1458
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

    .line 1462
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 1463
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1420
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1449
    const/4 v0, 0x1

    return v0
.end method
