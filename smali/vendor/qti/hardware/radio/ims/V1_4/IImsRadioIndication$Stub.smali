.class public abstract Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioIndication.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 852
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 855
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 905
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 906
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 907
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 908
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 909
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

    .line 877
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

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

    new-array v3, v2, [B

    fill-array-data v3, :array_4

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x20t
        0x1et
        0x57t
        -0x52t
        0x68t
        0x16t
        -0x3dt
        -0x33t
        0x6dt
        -0x41t
        0x6et
        -0x23t
        0x79t
        0x7t
        0x44t
        0x65t
        -0x3ft
        0x71t
        -0x80t
        -0x4t
        -0xat
        -0x34t
        0x2t
        -0x37t
        -0x6at
        0x5bt
        0x23t
        0x26t
        -0x24t
        0x2t
        -0x4ft
        0x1dt
    .end array-data

    :array_1
    .array-data 1
        -0x6ct
        -0x1dt
        0x1et
        -0x60t
        -0x45t
        0xbt
        -0x1ct
        0x2bt
        0x12t
        0x1at
        -0x18t
        0x54t
        -0x6ct
        -0x5dt
        -0x40t
        -0x68t
        0x72t
        0x22t
        0x29t
        0x7dt
        -0x3ct
        0x5bt
        -0x5ft
        -0x43t
        0x27t
        -0xet
        0x38t
        0x7dt
        -0x37t
        -0x7ct
        0x20t
        -0x16t
    .end array-data

    :array_2
    .array-data 1
        0x50t
        -0xbt
        0x58t
        -0x3et
        0x73t
        -0x11t
        0x7ft
        0x78t
        -0x12t
        -0x15t
        -0x3bt
        -0x11t
        -0x61t
        -0x1ct
        -0x28t
        -0x5ft
        0x18t
        0x74t
        0x65t
        0x5t
        -0x4ft
        -0x1t
        0x5dt
        0x74t
        0x7ct
        -0x2ct
        -0x4bt
        -0x2et
        -0x1ct
        -0x7dt
        0x77t
        0x20t
    .end array-data

    :array_3
    .array-data 1
        -0x5t
        0x32t
        -0xbt
        0x0t
        0x37t
        -0x23t
        0xdt
        -0x54t
        0x15t
        -0x29t
        0x38t
        -0x43t
        0x5bt
        0x2et
        0x44t
        0x37t
        0x60t
        -0x38t
        -0x60t
        -0x20t
        0x41t
        -0x55t
        -0x52t
        -0x74t
        0x6at
        -0x7dt
        -0x1at
        -0x4t
        -0xbt
        0xat
        0x23t
        -0x7ct
    .end array-data

    :array_4
    .array-data 1
        0x3bt
        0x14t
        -0x1ct
        -0x45t
        -0x7ft
        0xft
        0x2ft
        -0xct
        -0x7et
        -0x6ct
        0x22t
        0x4et
        0x3ct
        -0x6ft
        -0x16t
        -0x28t
        -0x53t
        -0x9t
        -0xft
        0x4dt
        0x6at
        -0x6ct
        0x5et
        0xft
        0x50t
        0xbt
        -0x14t
        0x78t
        -0x6et
        -0x3et
        0x76t
        0x7et
    .end array-data

    :array_5
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
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 860
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.radio.ims@1.4::IImsRadioIndication"

    const-string v2, "vendor.qti.hardware.radio.ims@1.3::IImsRadioIndication"

    const-string v3, "vendor.qti.hardware.radio.ims@1.2::IImsRadioIndication"

    const-string v4, "vendor.qti.hardware.radio.ims@1.1::IImsRadioIndication"

    const-string v5, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    const-string v6, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 871
    const-string v0, "vendor.qti.hardware.radio.ims@1.4::IImsRadioIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 894
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 914
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 915
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 9
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 943
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 1600
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 1601
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_59

    .line 1602
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1603
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1604
    goto/16 :goto_7

    .line 1587
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 1588
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 1589
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1590
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1591
    goto/16 :goto_7

    .line 1592
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1594
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->notifySyspropsChanged()V

    .line 1595
    goto/16 :goto_7

    .line 1571
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 1572
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 1573
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1574
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1575
    goto/16 :goto_7

    .line 1576
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1578
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1579
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1580
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1581
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1582
    goto/16 :goto_7

    .line 1556
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 1557
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 1558
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1559
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1560
    goto/16 :goto_7

    .line 1561
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1563
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->ping()V

    .line 1564
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1565
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1566
    goto/16 :goto_7

    .line 1546
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 1547
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_59

    .line 1548
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1549
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1550
    goto/16 :goto_7

    .line 1533
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 1534
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 1535
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1536
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1537
    goto/16 :goto_7

    .line 1538
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1540
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->setHALInstrumentation()V

    .line 1541
    goto/16 :goto_7

    .line 1500
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 1501
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 1502
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1503
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1504
    goto/16 :goto_7

    .line 1505
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1507
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1508
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1510
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1512
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1513
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1514
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1515
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 1516
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 1518
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 1519
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1520
    nop

    .line 1516
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1523
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1525
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1527
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1528
    goto/16 :goto_7

    .line 1484
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 1485
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 1486
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1487
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1488
    goto/16 :goto_7

    .line 1489
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1491
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1492
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1493
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1494
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1495
    goto/16 :goto_7

    .line 1470
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 1471
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 1472
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1473
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1474
    goto/16 :goto_7

    .line 1475
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1477
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1478
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1479
    goto/16 :goto_7

    .line 1454
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 1455
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 1456
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1457
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1458
    goto/16 :goto_7

    .line 1459
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1461
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1462
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1463
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1464
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1465
    goto/16 :goto_7

    .line 1440
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    .line 1441
    .local v1, "_hidl_is_oneway":Z
    :cond_13
    if-eq v1, v2, :cond_14

    .line 1442
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1443
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1444
    goto/16 :goto_7

    .line 1445
    :cond_14
    const-string v0, "vendor.qti.hardware.radio.ims@1.4::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1447
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1448
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onCallStateChanged_1_4(Ljava/util/ArrayList;)V

    .line 1449
    goto/16 :goto_7

    .line 1427
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 1428
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15
    if-eq v1, v2, :cond_16

    .line 1429
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1430
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1431
    goto/16 :goto_7

    .line 1432
    :cond_16
    const-string v0, "vendor.qti.hardware.radio.ims@1.4::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1434
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onMultiIdentityInfoPending()V

    .line 1435
    goto/16 :goto_7

    .line 1413
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 1414
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17
    if-eq v1, v2, :cond_18

    .line 1415
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1416
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1417
    goto/16 :goto_7

    .line 1418
    :cond_18
    const-string v0, "vendor.qti.hardware.radio.ims@1.4::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1420
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1421
    .local v0, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onMultiIdentityRegistrationStatusChange(Ljava/util/ArrayList;)V

    .line 1422
    goto/16 :goto_7

    .line 1399
    .end local v0    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    .line 1400
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19
    if-eq v1, v2, :cond_1a

    .line 1401
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1402
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1403
    goto/16 :goto_7

    .line 1404
    :cond_1a
    const-string v0, "vendor.qti.hardware.radio.ims@1.3::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1406
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1407
    .local v0, "voiceInfo":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onVoiceInfoChanged(I)V

    .line 1408
    goto/16 :goto_7

    .line 1384
    .end local v0    # "voiceInfo":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 1385
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 1386
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1387
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1388
    goto/16 :goto_7

    .line 1389
    :cond_1c
    const-string v0, "vendor.qti.hardware.radio.ims@1.3::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1391
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;-><init>()V

    .line 1392
    .local v0, "autoCallRejectionInfo":Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1393
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onIncomingCallAutoRejected(Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;)V

    .line 1394
    goto/16 :goto_7

    .line 1370
    .end local v0    # "autoCallRejectionInfo":Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 1371
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 1372
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1373
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1374
    goto/16 :goto_7

    .line 1375
    :cond_1e
    const-string v0, "vendor.qti.hardware.radio.ims@1.3::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1377
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1378
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onCallStateChanged_1_3(Ljava/util/ArrayList;)V

    .line 1379
    goto/16 :goto_7

    .line 1356
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 1357
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_20

    .line 1358
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1359
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1360
    goto/16 :goto_7

    .line 1361
    :cond_20
    const-string v0, "vendor.qti.hardware.radio.ims@1.2::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1363
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1364
    .local v0, "isVopsEnabled":Z
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onVopsChanged(Z)V

    .line 1365
    goto/16 :goto_7

    .line 1341
    .end local v0    # "isVopsEnabled":Z
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    .line 1342
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21
    if-eq v1, v2, :cond_22

    .line 1343
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1344
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1345
    goto/16 :goto_7

    .line 1346
    :cond_22
    const-string v0, "vendor.qti.hardware.radio.ims@1.2::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1348
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;-><init>()V

    .line 1349
    .local v0, "imsSms":Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1350
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onIncomingImsSms(Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;)V

    .line 1351
    goto/16 :goto_7

    .line 1326
    .end local v0    # "imsSms":Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    move v1, v2

    nop

    .line 1327
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23
    if-eq v1, v2, :cond_24

    .line 1328
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1329
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1330
    goto/16 :goto_7

    .line 1331
    :cond_24
    const-string v0, "vendor.qti.hardware.radio.ims@1.2::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1333
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;-><init>()V

    .line 1334
    .local v0, "smsStatusReport":Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1335
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onImsSmsStatusReport(Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;)V

    .line 1336
    goto/16 :goto_7

    .line 1312
    .end local v0    # "smsStatusReport":Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    move v1, v2

    nop

    .line 1313
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25
    if-eq v1, v2, :cond_26

    .line 1314
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1315
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1316
    goto/16 :goto_7

    .line 1317
    :cond_26
    const-string v0, "vendor.qti.hardware.radio.ims@1.2::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1319
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1320
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onCallStateChanged_1_2(Ljava/util/ArrayList;)V

    .line 1321
    goto/16 :goto_7

    .line 1298
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    .line 1299
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27
    if-eq v1, v2, :cond_28

    .line 1300
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1301
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1302
    goto/16 :goto_7

    .line 1303
    :cond_28
    const-string v0, "vendor.qti.hardware.radio.ims@1.1::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1305
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1306
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onCallStateChanged_1_1(Ljava/util/ArrayList;)V

    .line 1307
    goto/16 :goto_7

    .line 1283
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    move v1, v2

    nop

    .line 1284
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_29
    if-eq v1, v2, :cond_2a

    .line 1285
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1286
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1287
    goto/16 :goto_7

    .line 1288
    :cond_2a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1290
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;-><init>()V

    .line 1291
    .local v0, "ssacInfo":Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1292
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onSsacStatusChangedIndication(Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;)V

    .line 1293
    goto/16 :goto_7

    .line 1268
    .end local v0    # "ssacInfo":Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    .line 1269
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2b
    if-eq v1, v2, :cond_2c

    .line 1270
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1271
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1272
    goto/16 :goto_7

    .line 1273
    :cond_2c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1275
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;-><init>()V

    .line 1276
    .local v0, "vopsInfo":Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1277
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onVopsStatusChangedIndication(Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;)V

    .line 1278
    goto/16 :goto_7

    .line 1253
    .end local v0    # "vopsInfo":Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    move v1, v2

    nop

    .line 1254
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2d
    if-eq v1, v2, :cond_2e

    .line 1255
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1256
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1257
    goto/16 :goto_7

    .line 1258
    :cond_2e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1260
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 1261
    .local v0, "ss":Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1262
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onSupplementaryServiceIndication(Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;)V

    .line 1263
    goto/16 :goto_7

    .line 1239
    .end local v0    # "ss":Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    move v1, v2

    nop

    .line 1240
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2f
    if-eq v1, v2, :cond_30

    .line 1241
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1242
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1243
    goto/16 :goto_7

    .line 1244
    :cond_30
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1246
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1247
    .local v0, "voWiFiCallQualityInfo":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onVoWiFiCallQuality(I)V

    .line 1248
    goto/16 :goto_7

    .line 1225
    .end local v0    # "voWiFiCallQualityInfo":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    move v1, v2

    nop

    .line 1226
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_31
    if-eq v1, v2, :cond_32

    .line 1227
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1228
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1229
    goto/16 :goto_7

    .line 1230
    :cond_32
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1232
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1233
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onRttMessageReceived(Ljava/lang/String;)V

    .line 1234
    goto/16 :goto_7

    .line 1206
    .end local v0    # "message":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    move v1, v2

    nop

    .line 1207
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_33
    if-eq v1, v2, :cond_34

    .line 1208
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1209
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1210
    goto/16 :goto_7

    .line 1211
    :cond_34
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1213
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1214
    .local v0, "hasBlockStatusOnWwan":Z
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;-><init>()V

    .line 1215
    .local v2, "blockStatusOnWwan":Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1216
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 1217
    .local v3, "hasBlockStatusOnWlan":Z
    new-instance v4, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;

    invoke-direct {v4}, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;-><init>()V

    .line 1218
    .local v4, "blockStatusOnWlan":Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;
    invoke-virtual {v4, p2}, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1219
    invoke-virtual {p0, v0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onRegistrationBlockStatus(ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)V

    .line 1220
    goto/16 :goto_7

    .line 1191
    .end local v0    # "hasBlockStatusOnWwan":Z
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "blockStatusOnWwan":Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;
    .end local v3    # "hasBlockStatusOnWlan":Z
    .end local v4    # "blockStatusOnWlan":Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    move v1, v2

    nop

    .line 1192
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_35
    if-eq v1, v2, :cond_36

    .line 1193
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1194
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1195
    goto/16 :goto_7

    .line 1196
    :cond_36
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1198
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;-><init>()V

    .line 1199
    .local v0, "participantStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1200
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onParticipantStatusInfo(Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;)V

    .line 1201
    goto/16 :goto_7

    .line 1176
    .end local v0    # "participantStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 1177
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_37
    if-eq v1, v2, :cond_38

    .line 1178
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1179
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1180
    goto/16 :goto_7

    .line 1181
    :cond_38
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1183
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;-><init>()V

    .line 1184
    .local v0, "config":Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1185
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onImsSubConfigChanged(Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)V

    .line 1186
    goto/16 :goto_7

    .line 1161
    .end local v0    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    move v1, v2

    nop

    .line 1162
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_39
    if-eq v1, v2, :cond_3a

    .line 1163
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1164
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1165
    goto/16 :goto_7

    .line 1166
    :cond_3a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1168
    invoke-virtual {p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v2

    .line 1169
    .local v2, "lat":D
    invoke-virtual {p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v4

    .line 1170
    .local v4, "lon":D
    invoke-virtual {p0, v2, v3, v4, v5}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onGeolocationInfoRequested(DD)V

    .line 1171
    goto/16 :goto_7

    .line 1146
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "lat":D
    .end local v4    # "lon":D
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    move v1, v2

    nop

    .line 1147
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3b
    if-eq v1, v2, :cond_3c

    .line 1148
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1149
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1150
    goto/16 :goto_7

    .line 1151
    :cond_3c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1153
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;-><init>()V

    .line 1154
    .local v0, "messageWaitingIndication":Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1155
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onMessageWaiting(Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;)V

    .line 1156
    goto/16 :goto_7

    .line 1131
    .end local v0    # "messageWaitingIndication":Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3d

    move v1, v2

    nop

    .line 1132
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3d
    if-eq v1, v2, :cond_3e

    .line 1133
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1134
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1135
    goto/16 :goto_7

    .line 1136
    :cond_3e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1138
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;-><init>()V

    .line 1139
    .local v0, "suppServiceNotification":Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1140
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onSuppServiceNotification(Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;)V

    .line 1141
    goto/16 :goto_7

    .line 1116
    .end local v0    # "suppServiceNotification":Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3f

    move v1, v2

    nop

    .line 1117
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3f
    if-eq v1, v2, :cond_40

    .line 1118
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1119
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1120
    goto/16 :goto_7

    .line 1121
    :cond_40
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1123
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;-><init>()V

    .line 1124
    .local v0, "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1125
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onModifyCall(Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    .line 1126
    goto/16 :goto_7

    .line 1101
    .end local v0    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_41

    move v1, v2

    nop

    .line 1102
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_41
    if-eq v1, v2, :cond_42

    .line 1103
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1104
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1105
    goto/16 :goto_7

    .line 1106
    :cond_42
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1108
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;-><init>()V

    .line 1109
    .local v0, "viceInfo":Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1110
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onRefreshViceInfo(Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;)V

    .line 1111
    goto/16 :goto_7

    .line 1086
    .end local v0    # "viceInfo":Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_43

    move v1, v2

    nop

    .line 1087
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_43
    if-eq v1, v2, :cond_44

    .line 1088
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1089
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1090
    goto/16 :goto_7

    .line 1091
    :cond_44
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1093
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;-><init>()V

    .line 1094
    .local v0, "conferenceInfo":Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1095
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onRefreshConferenceInfo(Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;)V

    .line 1096
    goto/16 :goto_7

    .line 1071
    .end local v0    # "conferenceInfo":Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_45

    move v1, v2

    nop

    .line 1072
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_45
    if-eq v1, v2, :cond_46

    .line 1073
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1074
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1075
    goto/16 :goto_7

    .line 1076
    :cond_46
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1078
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;-><init>()V

    .line 1079
    .local v0, "ttyInfo":Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1080
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onTtyNotification(Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;)V

    .line 1081
    goto/16 :goto_7

    .line 1058
    .end local v0    # "ttyInfo":Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_47

    move v1, v2

    nop

    .line 1059
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_47
    if-eq v1, v2, :cond_48

    .line 1060
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1061
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1062
    goto/16 :goto_7

    .line 1063
    :cond_48
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onExitEmergencyCallBackMode()V

    .line 1066
    goto/16 :goto_7

    .line 1045
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_49

    move v1, v2

    nop

    .line 1046
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_49
    if-eq v1, v2, :cond_4a

    .line 1047
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1048
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1049
    goto/16 :goto_7

    .line 1050
    :cond_4a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onEnterEmergencyCallBackMode()V

    .line 1053
    goto/16 :goto_7

    .line 1031
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4b

    move v1, v2

    nop

    .line 1032
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4b
    if-eq v1, v2, :cond_4c

    .line 1033
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1034
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1035
    goto/16 :goto_7

    .line 1036
    :cond_4c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1039
    .local v0, "radioState":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onRadioStateChanged(I)V

    .line 1040
    goto/16 :goto_7

    .line 1017
    .end local v0    # "radioState":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4d

    move v1, v2

    nop

    .line 1018
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4d
    if-eq v1, v2, :cond_4e

    .line 1019
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1020
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1021
    goto/16 :goto_7

    .line 1022
    :cond_4e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1025
    .local v0, "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onServiceStatusChanged(Ljava/util/ArrayList;)V

    .line 1026
    goto/16 :goto_7

    .line 1002
    .end local v0    # "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4f

    move v1, v2

    nop

    .line 1003
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4f
    if-eq v1, v2, :cond_50

    .line 1004
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1005
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1006
    goto/16 :goto_7

    .line 1007
    :cond_50
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1009
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;-><init>()V

    .line 1010
    .local v0, "handover":Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1011
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onHandover(Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;)V

    .line 1012
    goto/16 :goto_7

    .line 987
    .end local v0    # "handover":Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_51

    move v1, v2

    nop

    .line 988
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_51
    if-eq v1, v2, :cond_52

    .line 989
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 990
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 991
    goto/16 :goto_7

    .line 992
    :cond_52
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 994
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;-><init>()V

    .line 995
    .local v0, "registration":Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 996
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onRegistrationChanged(Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)V

    .line 997
    goto :goto_7

    .line 973
    .end local v0    # "registration":Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_20
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_53

    move v1, v2

    nop

    .line 974
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_53
    if-eq v1, v2, :cond_54

    .line 975
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 976
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 977
    goto :goto_7

    .line 978
    :cond_54
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 980
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 981
    .local v0, "tone":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onRingbackTone(I)V

    .line 982
    goto :goto_7

    .line 960
    .end local v0    # "tone":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_21
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_55

    move v1, v2

    nop

    .line 961
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_55
    if-eq v1, v2, :cond_56

    .line 962
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 963
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 964
    goto :goto_7

    .line 965
    :cond_56
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 967
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onRing()V

    .line 968
    goto :goto_7

    .line 946
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_22
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_57

    move v1, v2

    nop

    .line 947
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_57
    if-eq v1, v2, :cond_58

    .line 948
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 949
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 950
    goto :goto_7

    .line 951
    :cond_58
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 953
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 954
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onCallStateChanged(Ljava/util/ArrayList;)V

    .line 955
    nop

    .line 1609
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :cond_59
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 899
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 925
    const-string v0, "vendor.qti.hardware.radio.ims@1.4::IImsRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 926
    return-object p0

    .line 928
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

    .line 932
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 933
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 890
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 919
    const/4 v0, 0x1

    return v0
.end method
