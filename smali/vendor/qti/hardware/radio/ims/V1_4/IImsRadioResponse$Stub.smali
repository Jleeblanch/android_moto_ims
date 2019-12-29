.class public abstract Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioResponse.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1077
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1080
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1128
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1129
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1130
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1131
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1132
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

    .line 1101
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

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

    new-array v3, v2, [B

    fill-array-data v3, :array_3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x2ct
        -0x25t
        0x28t
        -0x2bt
        0x78t
        0x61t
        0x74t
        0x30t
        -0x3t
        0x13t
        -0x3t
        -0x2ct
        0x4bt
        -0x67t
        -0x26t
        0x66t
        0x4dt
        -0x5dt
        0x11t
        0x42t
        0x3dt
        -0x33t
        0x77t
        -0x46t
        0x6et
        0x13t
        0x25t
        0x6t
        0x42t
        0x2ft
        0x64t
        -0x20t
    .end array-data

    :array_1
    .array-data 1
        0x26t
        0x42t
        0x61t
        0x79t
        0x73t
        -0x72t
        0x56t
        0x2bt
        0x63t
        0x36t
        -0x3et
        0x1ft
        -0x58t
        0x7dt
        -0x2at
        0x3at
        0x61t
        -0xdt
        0x39t
        -0xdt
        -0x61t
        0x54t
        -0x23t
        -0x4et
        0x1bt
        0x6bt
        -0x71t
        -0x55t
        0x3bt
        -0x4ct
        -0x76t
        -0x6et
    .end array-data

    :array_2
    .array-data 1
        -0x4at
        0x3ct
        0x39t
        0x7ft
        -0x3bt
        0x21t
        0x65t
        0x18t
        -0x18t
        0x15t
        0x53t
        -0x6dt
        -0x38t
        -0x58t
        0x4t
        0xdt
        0x21t
        0x4et
        -0x60t
        0x5t
        -0x51t
        0x49t
        -0x46t
        0x0t
        -0x5dt
        -0x61t
        -0x17t
        -0x35t
        0x67t
        0x27t
        0x62t
        0x22t
    .end array-data

    :array_3
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

    :array_4
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
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1085
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.radio.ims@1.4::IImsRadioResponse"

    const-string v2, "vendor.qti.hardware.radio.ims@1.3::IImsRadioResponse"

    const-string v3, "vendor.qti.hardware.radio.ims@1.2::IImsRadioResponse"

    const-string v4, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    const-string v5, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1095
    const-string v0, "vendor.qti.hardware.radio.ims@1.4::IImsRadioResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1117
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1137
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1138
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

    .line 1166
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 2036
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 2037
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_6d

    .line 2038
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2039
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2040
    goto/16 :goto_7

    .line 2023
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 2024
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 2025
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2026
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2027
    goto/16 :goto_7

    .line 2028
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2030
    invoke-virtual {v6}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->notifySyspropsChanged()V

    .line 2031
    goto/16 :goto_7

    .line 2007
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 2008
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 2009
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2010
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2011
    goto/16 :goto_7

    .line 2012
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2014
    invoke-virtual {v6}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 2015
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2016
    invoke-virtual {v0, v8}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2017
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2018
    goto/16 :goto_7

    .line 1992
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 1993
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 1994
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1995
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1996
    goto/16 :goto_7

    .line 1997
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1999
    invoke-virtual {v6}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->ping()V

    .line 2000
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2001
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2002
    goto/16 :goto_7

    .line 1982
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 1983
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_6d

    .line 1984
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1985
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1986
    goto/16 :goto_7

    .line 1969
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 1970
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 1971
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1972
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1973
    goto/16 :goto_7

    .line 1974
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1976
    invoke-virtual {v6}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->setHALInstrumentation()V

    .line 1977
    goto/16 :goto_7

    .line 1936
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 1937
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 1938
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1939
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1940
    goto/16 :goto_7

    .line 1941
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1943
    invoke-virtual {v6}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1944
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1946
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1948
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1949
    .local v4, "_hidl_vec_size":I
    const-wide/16 v9, 0x8

    invoke-virtual {v3, v9, v10, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1950
    const-wide/16 v9, 0xc

    invoke-virtual {v3, v9, v10, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1951
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v9, v4, 0x20

    invoke-direct {v5, v9}, Landroid/os/HwBlob;-><init>(I)V

    .line 1952
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 1954
    mul-int/lit8 v9, v1, 0x20

    int-to-long v9, v9

    .line 1955
    .local v9, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    invoke-virtual {v5, v9, v10, v11}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1956
    nop

    .line 1952
    .end local v9    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1959
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v9, 0x0

    invoke-virtual {v3, v9, v10, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1961
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1963
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1964
    goto/16 :goto_7

    .line 1920
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 1921
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 1922
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1923
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1924
    goto/16 :goto_7

    .line 1925
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1927
    invoke-virtual {v6}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1928
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1929
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1930
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1931
    goto/16 :goto_7

    .line 1906
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 1907
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 1908
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1909
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1910
    goto/16 :goto_7

    .line 1911
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1913
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1914
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1915
    goto/16 :goto_7

    .line 1890
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 1891
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 1892
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1893
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1894
    goto/16 :goto_7

    .line 1895
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1897
    invoke-virtual {v6}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1898
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1899
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1900
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1901
    goto/16 :goto_7

    .line 1874
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    .line 1875
    .local v1, "_hidl_is_oneway":Z
    :cond_13
    if-eq v1, v2, :cond_14

    .line 1876
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1877
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1878
    goto/16 :goto_7

    .line 1879
    :cond_14
    const-string v0, "vendor.qti.hardware.radio.ims@1.4::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1881
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1882
    .local v0, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1883
    .local v2, "msisdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v3

    .line 1884
    .local v3, "virtualLineInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->queryVirtualLineInfoResponse(ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 1885
    goto/16 :goto_7

    .line 1859
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "msisdn":Ljava/lang/String;
    .end local v3    # "virtualLineInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 1860
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15
    if-eq v1, v2, :cond_16

    .line 1861
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1862
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1863
    goto/16 :goto_7

    .line 1864
    :cond_16
    const-string v0, "vendor.qti.hardware.radio.ims@1.4::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1866
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1867
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1868
    .local v2, "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->registerMultiIdentityLinesResponse(II)V

    .line 1869
    goto/16 :goto_7

    .line 1842
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 1843
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17
    if-eq v1, v2, :cond_18

    .line 1844
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1845
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1846
    goto/16 :goto_7

    .line 1847
    :cond_18
    const-string v0, "vendor.qti.hardware.radio.ims@1.3::IImsRadioResponse"

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
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;-><init>()V

    .line 1852
    .local v3, "colrInfo":Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1853
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->getColrResponse_1_3(IILvendor/qti/hardware/radio/ims/V1_3/ColrInfo;)V

    .line 1854
    goto/16 :goto_7

    .line 1825
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "colrInfo":Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    .line 1826
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19
    if-eq v1, v2, :cond_1a

    .line 1827
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1828
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1829
    goto/16 :goto_7

    .line 1830
    :cond_1a
    const-string v0, "vendor.qti.hardware.radio.ims@1.3::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1832
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1833
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1834
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;-><init>()V

    .line 1835
    .local v3, "suppServiceStatus":Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1836
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->suppServiceStatusResponse_1_3(IILvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;)V

    .line 1837
    goto/16 :goto_7

    .line 1808
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "suppServiceStatus":Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 1809
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 1810
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1811
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1812
    goto/16 :goto_7

    .line 1813
    :cond_1c
    const-string v0, "vendor.qti.hardware.radio.ims@1.2::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1815
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1816
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1817
    .local v2, "msgeRef":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1818
    .local v3, "smsStatus":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1819
    .local v4, "reason":I
    invoke-virtual {v6, v0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->sendImsSmsResponse(IIII)V

    .line 1820
    goto/16 :goto_7

    .line 1791
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "msgeRef":I
    .end local v3    # "smsStatus":I
    .end local v4    # "reason":I
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 1792
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 1793
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1794
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1795
    goto/16 :goto_7

    .line 1796
    :cond_1e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1798
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1799
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1800
    .local v2, "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;-><init>()V

    .line 1801
    .local v3, "ssacInfo":Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1802
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->querySsacStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/SsacInfo;)V

    .line 1803
    goto/16 :goto_7

    .line 1774
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "ssacInfo":Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 1775
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_20

    .line 1776
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1777
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1778
    goto/16 :goto_7

    .line 1779
    :cond_20
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1781
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1782
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1783
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;-><init>()V

    .line 1784
    .local v3, "vopsInfo":Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1785
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->queryVopsStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/VopsInfo;)V

    .line 1786
    goto/16 :goto_7

    .line 1758
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "vopsInfo":Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    .line 1759
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21
    if-eq v1, v2, :cond_22

    .line 1760
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1761
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1762
    goto/16 :goto_7

    .line 1763
    :cond_22
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1765
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1766
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1767
    .restart local v2    # "errorCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1768
    .local v3, "voltePref":I
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->queryVoltePrefResponse(III)V

    .line 1769
    goto/16 :goto_7

    .line 1743
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "voltePref":I
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    move v1, v2

    nop

    .line 1744
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23
    if-eq v1, v2, :cond_24

    .line 1745
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1746
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1747
    goto/16 :goto_7

    .line 1748
    :cond_24
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1750
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1751
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1752
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->updateVoltePrefResponse(II)V

    .line 1753
    goto/16 :goto_7

    .line 1728
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    move v1, v2

    nop

    .line 1729
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25
    if-eq v1, v2, :cond_26

    .line 1730
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1731
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1732
    goto/16 :goto_7

    .line 1733
    :cond_26
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1735
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1736
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1737
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->cancelModifyCallResponse(II)V

    .line 1738
    goto/16 :goto_7

    .line 1713
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    .line 1714
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27
    if-eq v1, v2, :cond_28

    .line 1715
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1716
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1717
    goto/16 :goto_7

    .line 1718
    :cond_28
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1720
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1721
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1722
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->sendRttMessageResponse(II)V

    .line 1723
    goto/16 :goto_7

    .line 1696
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    move v1, v2

    nop

    .line 1697
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_29
    if-eq v1, v2, :cond_2a

    .line 1698
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1699
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1700
    goto/16 :goto_7

    .line 1701
    :cond_2a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1703
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1704
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1705
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;-><init>()V

    .line 1706
    .local v3, "subConfigInfo":Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1707
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->getImsSubConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)V

    .line 1708
    goto/16 :goto_7

    .line 1681
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "subConfigInfo":Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    .line 1682
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2b
    if-eq v1, v2, :cond_2c

    .line 1683
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1684
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1685
    goto/16 :goto_7

    .line 1686
    :cond_2c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1688
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1689
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1690
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->sendGeolocationInfoResponse(II)V

    .line 1691
    goto/16 :goto_7

    .line 1666
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    move v1, v2

    nop

    .line 1667
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2d
    if-eq v1, v2, :cond_2e

    .line 1668
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1669
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1670
    goto/16 :goto_7

    .line 1671
    :cond_2e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1673
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1674
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1675
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->deflectCallResponse(II)V

    .line 1676
    goto/16 :goto_7

    .line 1651
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    move v1, v2

    nop

    .line 1652
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2f
    if-eq v1, v2, :cond_30

    .line 1653
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1654
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1655
    goto/16 :goto_7

    .line 1656
    :cond_30
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1658
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1659
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1660
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->addParticipantResponse(II)V

    .line 1661
    goto/16 :goto_7

    .line 1635
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    move v1, v2

    nop

    .line 1636
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_31
    if-eq v1, v2, :cond_32

    .line 1637
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1638
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1639
    goto/16 :goto_7

    .line 1640
    :cond_32
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1642
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1643
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1644
    .restart local v2    # "errorCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 1645
    .local v3, "packetErrorCount":J
    invoke-virtual {v6, v0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->getRtpErrorStatisticsResponse(IIJ)V

    .line 1646
    goto/16 :goto_7

    .line 1619
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "packetErrorCount":J
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    move v1, v2

    nop

    .line 1620
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_33
    if-eq v1, v2, :cond_34

    .line 1621
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1622
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1623
    goto/16 :goto_7

    .line 1624
    :cond_34
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1626
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1627
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1628
    .restart local v2    # "errorCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 1629
    .local v3, "packetCount":J
    invoke-virtual {v6, v0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->getRtpStatisticsResponse(IIJ)V

    .line 1630
    goto/16 :goto_7

    .line 1603
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "packetCount":J
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    move v1, v2

    nop

    .line 1604
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_35
    if-eq v1, v2, :cond_36

    .line 1605
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1606
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1607
    goto/16 :goto_7

    .line 1608
    :cond_36
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1610
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1611
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1612
    .restart local v2    # "errorCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1613
    .local v3, "serviceStatus":I
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->setSuppServiceNotificationResponse(III)V

    .line 1614
    goto/16 :goto_7

    .line 1588
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "serviceStatus":I
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 1589
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_37
    if-eq v1, v2, :cond_38

    .line 1590
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1591
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1592
    goto/16 :goto_7

    .line 1593
    :cond_38
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1595
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1596
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1597
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->explicitCallTransferResponse(II)V

    .line 1598
    goto/16 :goto_7

    .line 1569
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    move v1, v2

    nop

    :cond_39
    move v9, v1

    .line 1570
    .local v9, "_hidl_is_oneway":Z
    if-eq v9, v2, :cond_3a

    .line 1571
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1572
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1573
    goto/16 :goto_7

    .line 1574
    :cond_3a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1576
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 1577
    .local v10, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 1578
    .local v11, "errorCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 1579
    .local v12, "serviceStatus":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 1580
    .local v13, "serviceClass":I
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    move-object v5, v0

    .line 1581
    .local v5, "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v5, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1582
    move-object v0, v6

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move-object v14, v5

    .end local v5    # "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    .local v14, "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual/range {v0 .. v5}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->getCallWaitingResponse(IIIILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1583
    goto/16 :goto_7

    .line 1551
    .end local v9    # "_hidl_is_oneway":Z
    .end local v10    # "token":I
    .end local v11    # "errorCode":I
    .end local v12    # "serviceStatus":I
    .end local v13    # "serviceClass":I
    .end local v14    # "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    move v1, v2

    nop

    .line 1552
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3b
    if-eq v1, v2, :cond_3c

    .line 1553
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1554
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1555
    goto/16 :goto_7

    .line 1556
    :cond_3c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1558
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1559
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1560
    .restart local v2    # "errorCode":I
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1561
    .local v3, "callForwardInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;>;"
    new-instance v4, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v4}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1562
    .local v4, "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v4, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1563
    invoke-virtual {v6, v0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->queryCallForwardStatusResponse(IILjava/util/ArrayList;Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1564
    goto/16 :goto_7

    .line 1536
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "callForwardInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;>;"
    .end local v4    # "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3d

    move v1, v2

    nop

    .line 1537
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3d
    if-eq v1, v2, :cond_3e

    .line 1538
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1539
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1540
    goto/16 :goto_7

    .line 1541
    :cond_3e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1543
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1544
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1545
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->modifyCallConfirmResponse(II)V

    .line 1546
    goto/16 :goto_7

    .line 1521
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3f

    move v1, v2

    nop

    .line 1522
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3f
    if-eq v1, v2, :cond_40

    .line 1523
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1524
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1525
    goto/16 :goto_7

    .line 1526
    :cond_40
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1528
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1529
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1530
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->modifyCallInitiateResponse(II)V

    .line 1531
    goto/16 :goto_7

    .line 1506
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_41

    move v1, v2

    nop

    .line 1507
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_41
    if-eq v1, v2, :cond_42

    .line 1508
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1509
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1510
    goto/16 :goto_7

    .line 1511
    :cond_42
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1513
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1514
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1515
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->setUiTTYModeResponse(II)V

    .line 1516
    goto/16 :goto_7

    .line 1491
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_43

    move v1, v2

    nop

    .line 1492
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_43
    if-eq v1, v2, :cond_44

    .line 1493
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1494
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1495
    goto/16 :goto_7

    .line 1496
    :cond_44
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1498
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1499
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1500
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->stopDtmfResponse(II)V

    .line 1501
    goto/16 :goto_7

    .line 1476
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_45

    move v1, v2

    nop

    .line 1477
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_45
    if-eq v1, v2, :cond_46

    .line 1478
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1479
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1480
    goto/16 :goto_7

    .line 1481
    :cond_46
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1483
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1484
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1485
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->startDtmfResponse(II)V

    .line 1486
    goto/16 :goto_7

    .line 1461
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_47

    move v1, v2

    nop

    .line 1462
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_47
    if-eq v1, v2, :cond_48

    .line 1463
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1464
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1465
    goto/16 :goto_7

    .line 1466
    :cond_48
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1468
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1469
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1470
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->sendDtmfResponse(II)V

    .line 1471
    goto/16 :goto_7

    .line 1446
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_1b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_49

    move v1, v2

    nop

    .line 1447
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_49
    if-eq v1, v2, :cond_4a

    .line 1448
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1449
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1450
    goto/16 :goto_7

    .line 1451
    :cond_4a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1453
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1454
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1455
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->exitEmergencyCallbackModeResponse(II)V

    .line 1456
    goto/16 :goto_7

    .line 1429
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4b

    move v1, v2

    nop

    .line 1430
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4b
    if-eq v1, v2, :cond_4c

    .line 1431
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1432
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1433
    goto/16 :goto_7

    .line 1434
    :cond_4c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1436
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1437
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1438
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;-><init>()V

    .line 1439
    .local v3, "colrInfo":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1440
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->getColrResponse(IILvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)V

    .line 1441
    goto/16 :goto_7

    .line 1414
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "colrInfo":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    :pswitch_1d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4d

    move v1, v2

    nop

    .line 1415
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4d
    if-eq v1, v2, :cond_4e

    .line 1416
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1417
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1418
    goto/16 :goto_7

    .line 1419
    :cond_4e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1421
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1422
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1423
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->setClirResponse(II)V

    .line 1424
    goto/16 :goto_7

    .line 1396
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_1e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4f

    move v1, v2

    nop

    .line 1397
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4f
    if-eq v1, v2, :cond_50

    .line 1398
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1399
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1400
    goto/16 :goto_7

    .line 1401
    :cond_50
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1403
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1404
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1405
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;-><init>()V

    .line 1406
    .local v3, "clirInfo":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1407
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 1408
    .local v4, "hasClirInfo":Z
    invoke-virtual {v6, v0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->getClirResponse(IILvendor/qti/hardware/radio/ims/V1_0/ClirInfo;Z)V

    .line 1409
    goto/16 :goto_7

    .line 1379
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "clirInfo":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    .end local v4    # "hasClirInfo":Z
    :pswitch_1f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_51

    move v1, v2

    nop

    .line 1380
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_51
    if-eq v1, v2, :cond_52

    .line 1381
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1382
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1383
    goto/16 :goto_7

    .line 1384
    :cond_52
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1386
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1387
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1388
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;-><init>()V

    .line 1389
    .local v3, "clipProvisionStatus":Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1390
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->getClipResponse(IILvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;)V

    .line 1391
    goto/16 :goto_7

    .line 1362
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "clipProvisionStatus":Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;
    :pswitch_20
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_53

    move v1, v2

    nop

    .line 1363
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_53
    if-eq v1, v2, :cond_54

    .line 1364
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1365
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1366
    goto/16 :goto_7

    .line 1367
    :cond_54
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1369
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1370
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1371
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1372
    .local v3, "errorInfo":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1373
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->conferenceResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1374
    goto/16 :goto_7

    .line 1345
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "errorInfo":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :pswitch_21
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_55

    move v1, v2

    nop

    .line 1346
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_55
    if-eq v1, v2, :cond_56

    .line 1347
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1348
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1349
    goto/16 :goto_7

    .line 1350
    :cond_56
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1352
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1353
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1354
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;-><init>()V

    .line 1355
    .local v3, "suppServiceStatus":Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1356
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->suppServiceStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;)V

    .line 1357
    goto/16 :goto_7

    .line 1328
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "suppServiceStatus":Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;
    :pswitch_22
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_57

    move v1, v2

    nop

    .line 1329
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_57
    if-eq v1, v2, :cond_58

    .line 1330
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1331
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1332
    goto/16 :goto_7

    .line 1333
    :cond_58
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1335
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1336
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1337
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;-><init>()V

    .line 1338
    .local v3, "registration":Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1339
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->getRegistrationResponse(IILvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)V

    .line 1340
    goto/16 :goto_7

    .line 1311
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "registration":Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;
    :pswitch_23
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_59

    move v1, v2

    nop

    .line 1312
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_59
    if-eq v1, v2, :cond_5a

    .line 1313
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1314
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1315
    goto/16 :goto_7

    .line 1316
    :cond_5a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1318
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1319
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1320
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1321
    .local v3, "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1322
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->getConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 1323
    goto/16 :goto_7

    .line 1294
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :pswitch_24
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5b

    move v1, v2

    nop

    .line 1295
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5b
    if-eq v1, v2, :cond_5c

    .line 1296
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1297
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1298
    goto/16 :goto_7

    .line 1299
    :cond_5c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1301
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1302
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1303
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1304
    .restart local v3    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1305
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->setConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 1306
    goto/16 :goto_7

    .line 1277
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :pswitch_25
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5d

    move v1, v2

    nop

    .line 1278
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5d
    if-eq v1, v2, :cond_5e

    .line 1279
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1280
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1281
    goto/16 :goto_7

    .line 1282
    :cond_5e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1284
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1285
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1286
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1287
    .local v3, "sipError":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1288
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->resumeResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1289
    goto/16 :goto_7

    .line 1260
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "sipError":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :pswitch_26
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5f

    move v1, v2

    nop

    .line 1261
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5f
    if-eq v1, v2, :cond_60

    .line 1262
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1263
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1264
    goto/16 :goto_7

    .line 1265
    :cond_60
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1267
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1268
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1269
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1270
    .restart local v3    # "sipError":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1271
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->holdResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1272
    goto/16 :goto_7

    .line 1245
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "sipError":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :pswitch_27
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_61

    move v1, v2

    nop

    .line 1246
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_61
    if-eq v1, v2, :cond_62

    .line 1247
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1248
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1249
    goto/16 :goto_7

    .line 1250
    :cond_62
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1252
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1253
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1254
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->setServiceStatusResponse(II)V

    .line 1255
    goto/16 :goto_7

    .line 1229
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_28
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_63

    move v1, v2

    nop

    .line 1230
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_63
    if-eq v1, v2, :cond_64

    .line 1231
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1232
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1233
    goto/16 :goto_7

    .line 1234
    :cond_64
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1236
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1237
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1238
    .restart local v2    # "errorCode":I
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1239
    .local v3, "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->queryServiceStatusResponse(IILjava/util/ArrayList;)V

    .line 1240
    goto/16 :goto_7

    .line 1214
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    :pswitch_29
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_65

    move v1, v2

    nop

    .line 1215
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_65
    if-eq v1, v2, :cond_66

    .line 1216
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1217
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1218
    goto/16 :goto_7

    .line 1219
    :cond_66
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1221
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1222
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1223
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->requestRegistrationChangeResponse(II)V

    .line 1224
    goto :goto_7

    .line 1199
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_2a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_67

    move v1, v2

    nop

    .line 1200
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_67
    if-eq v1, v2, :cond_68

    .line 1201
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1202
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1203
    goto :goto_7

    .line 1204
    :cond_68
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1206
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1207
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1208
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->hangupResponse(II)V

    .line 1209
    goto :goto_7

    .line 1184
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_2b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_69

    move v1, v2

    nop

    .line 1185
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_69
    if-eq v1, v2, :cond_6a

    .line 1186
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1187
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1188
    goto :goto_7

    .line 1189
    :cond_6a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1191
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1192
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1193
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->answerResponse(II)V

    .line 1194
    goto :goto_7

    .line 1169
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_2c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6b

    move v1, v2

    nop

    .line 1170
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6b
    if-eq v1, v2, :cond_6c

    .line 1171
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1172
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1173
    goto :goto_7

    .line 1174
    :cond_6c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1176
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1177
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1178
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->dialResponse(II)V

    .line 1179
    nop

    .line 2045
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :cond_6d
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 1122
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1148
    const-string v0, "vendor.qti.hardware.radio.ims@1.4::IImsRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1149
    return-object p0

    .line 1151
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

    .line 1155
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 1156
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1142
    const/4 v0, 0x1

    return v0
.end method
