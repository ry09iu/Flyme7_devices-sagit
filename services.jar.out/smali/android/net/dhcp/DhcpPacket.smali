.class abstract Landroid/net/dhcp/DhcpPacket;
.super Ljava/lang/Object;
.source "DhcpPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/dhcp/DhcpPacket$ParseException;
    }
.end annotation


# static fields
.field protected static final CLIENT_ID_ETHER:B = 0x1t

.field protected static final DHCP_BOOTREPLY:B = 0x2t

.field protected static final DHCP_BOOTREQUEST:B = 0x1t

.field protected static final DHCP_BROADCAST_ADDRESS:B = 0x1ct

.field static final DHCP_CLIENT:S = 0x44s

.field protected static final DHCP_CLIENT_IDENTIFIER:B = 0x3dt

.field protected static final DHCP_DNS_SERVER:B = 0x6t

.field protected static final DHCP_DOMAIN_NAME:B = 0xft

.field protected static final DHCP_HOST_NAME:B = 0xct

.field protected static final DHCP_LEASE_TIME:B = 0x33t

.field private static final DHCP_MAGIC_COOKIE:I = 0x63825363

.field protected static final DHCP_MAX_MESSAGE_SIZE:B = 0x39t

.field protected static final DHCP_MESSAGE:B = 0x38t

.field protected static final DHCP_MESSAGE_TYPE:B = 0x35t

.field protected static final DHCP_MESSAGE_TYPE_ACK:B = 0x5t

.field protected static final DHCP_MESSAGE_TYPE_DECLINE:B = 0x4t

.field protected static final DHCP_MESSAGE_TYPE_DISCOVER:B = 0x1t

.field protected static final DHCP_MESSAGE_TYPE_INFORM:B = 0x8t

.field protected static final DHCP_MESSAGE_TYPE_NAK:B = 0x6t

.field protected static final DHCP_MESSAGE_TYPE_OFFER:B = 0x2t

.field protected static final DHCP_MESSAGE_TYPE_REQUEST:B = 0x3t

.field protected static final DHCP_MTU:B = 0x1at

.field protected static final DHCP_OPTION_END:B = -0x1t

.field protected static final DHCP_OPTION_PAD:B = 0x0t

.field protected static final DHCP_PARAMETER_LIST:B = 0x37t

.field protected static final DHCP_REBINDING_TIME:B = 0x3bt

.field protected static final DHCP_RENEWAL_TIME:B = 0x3at

.field protected static final DHCP_REQUESTED_IP:B = 0x32t

.field protected static final DHCP_ROUTER:B = 0x3t

.field static final DHCP_SERVER:S = 0x43s

.field protected static final DHCP_SERVER_IDENTIFIER:B = 0x36t

.field protected static final DHCP_SUBNET_MASK:B = 0x1t

.field protected static final DHCP_VENDOR_CLASS_ID:B = 0x3ct

.field protected static final DHCP_VENDOR_INFO:B = 0x2bt

.field public static final ENCAP_BOOTP:I = 0x2

.field public static final ENCAP_L2:I = 0x0

.field public static final ENCAP_L3:I = 0x1

.field public static final ETHER_BROADCAST:[B

.field public static final HWADDR_LEN:I = 0x10

.field public static final INADDR_ANY:Ljava/net/Inet4Address;

.field public static final INADDR_BROADCAST:Ljava/net/Inet4Address;

.field public static final INFINITE_LEASE:I = -0x1

.field private static final IP_FLAGS_OFFSET:S = 0x4000s

.field private static final IP_TOS_LOWDELAY:B = 0x10t

.field private static final IP_TTL:B = 0x40t

.field private static final IP_TYPE_UDP:B = 0x11t

.field private static final IP_VERSION_HEADER_LEN:B = 0x45t

.field protected static final MAX_LENGTH:I = 0x5dc

.field private static final MAX_MTU:I = 0x5dc

.field public static final MAX_OPTION_LEN:I = 0xff

.field public static final MINIMUM_LEASE:I = 0x3c

.field private static final MIN_MTU:I = 0x500

.field public static final MIN_PACKET_LENGTH_BOOTP:I = 0xec

.field public static final MIN_PACKET_LENGTH_L2:I = 0x116

.field public static final MIN_PACKET_LENGTH_L3:I = 0x108

.field protected static final TAG:Ljava/lang/String; = "DhcpPacket"

.field static testOverrideHostname:Ljava/lang/String;

.field static testOverrideVendorId:Ljava/lang/String;


# instance fields
.field protected mBroadcast:Z

.field protected mBroadcastAddress:Ljava/net/Inet4Address;

.field protected final mClientIp:Ljava/net/Inet4Address;

.field protected final mClientMac:[B

.field protected mDnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field protected mDomainName:Ljava/lang/String;

.field protected mGateways:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field protected mHostName:Ljava/lang/String;

.field protected mLeaseTime:Ljava/lang/Integer;

.field protected mMaxMessageSize:Ljava/lang/Short;

.field protected mMessage:Ljava/lang/String;

.field protected mMtu:Ljava/lang/Short;

.field private final mNextIp:Ljava/net/Inet4Address;

.field private final mRelayIp:Ljava/net/Inet4Address;

.field protected mRequestedIp:Ljava/net/Inet4Address;

.field protected mRequestedParams:[B

.field protected final mSecs:S

.field protected mServerIdentifier:Ljava/net/Inet4Address;

.field protected mSubnetMask:Ljava/net/Inet4Address;

.field protected mT1:Ljava/lang/Integer;

.field protected mT2:Ljava/lang/Integer;

.field protected final mTransId:I

.field protected mVendorId:Ljava/lang/String;

.field protected mVendorInfo:Ljava/lang/String;

.field protected final mYourIp:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    .line 39
    sget-object v0, Ljava/net/Inet4Address;->ALL:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    .line 40
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    .line 308
    sput-object v1, Landroid/net/dhcp/DhcpPacket;->testOverrideVendorId:Ljava/lang/String;

    .line 309
    sput-object v1, Landroid/net/dhcp/DhcpPacket;->testOverrideHostname:Ljava/lang/String;

    .line 29
    return-void

    .line 40
    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method protected constructor <init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V
    .locals 0
    .param p1, "transId"    # I
    .param p2, "secs"    # S
    .param p3, "clientIp"    # Ljava/net/Inet4Address;
    .param p4, "yourIp"    # Ljava/net/Inet4Address;
    .param p5, "nextIp"    # Ljava/net/Inet4Address;
    .param p6, "relayIp"    # Ljava/net/Inet4Address;
    .param p7, "clientMac"    # [B
    .param p8, "broadcast"    # Z

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput p1, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    .line 315
    iput-short p2, p0, Landroid/net/dhcp/DhcpPacket;->mSecs:S

    .line 316
    iput-object p3, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    .line 317
    iput-object p4, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    .line 318
    iput-object p5, p0, Landroid/net/dhcp/DhcpPacket;->mNextIp:Ljava/net/Inet4Address;

    .line 319
    iput-object p6, p0, Landroid/net/dhcp/DhcpPacket;->mRelayIp:Ljava/net/Inet4Address;

    .line 320
    iput-object p7, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    .line 321
    iput-boolean p8, p0, Landroid/net/dhcp/DhcpPacket;->mBroadcast:Z

    .line 313
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BB)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "value"    # B

    .prologue
    .line 524
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 525
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 526
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 523
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 588
    if-eqz p2, :cond_0

    .line 589
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 590
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 591
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 587
    :cond_0
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Short;)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "value"    # Ljava/lang/Short;

    .prologue
    .line 577
    if-eqz p2, :cond_0

    .line 578
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 579
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 580
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 576
    :cond_0
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V
    .locals 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 600
    :try_start_0
    const-string/jumbo v1, "US-ASCII"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p0, p1, v1}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    return-void

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "String is not US-ASCII: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "addr"    # Ljava/net/Inet4Address;

    .prologue
    .line 548
    if-eqz p2, :cond_0

    .line 549
    invoke-virtual {p2}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 547
    :cond_0
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V
    .locals 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "B",
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    const/16 v6, 0xff

    .line 557
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    .line 559
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v2, v3, 0x4

    .line 560
    .local v2, "optionLen":I
    if-le v2, v6, :cond_2

    .line 561
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DHCP option too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 562
    const-string/jumbo v5, " vs. "

    .line 561
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 565
    :cond_2
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 566
    int-to-byte v3, v2

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 568
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "addr$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    .line 569
    .local v0, "addr":Ljava/net/Inet4Address;
    invoke-virtual {v0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 556
    .end local v0    # "addr":Ljava/net/Inet4Address;
    :cond_3
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;B[B)V
    .locals 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "payload"    # [B

    .prologue
    const/16 v3, 0xff

    .line 533
    if-eqz p2, :cond_1

    .line 534
    array-length v0, p2

    if-le v0, v3, :cond_0

    .line 535
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DHCP option too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 536
    array-length v2, p2

    .line 535
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 536
    const-string/jumbo v2, " vs. "

    .line 535
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 539
    array-length v0, p2

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 540
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 532
    :cond_1
    return-void
.end method

.method protected static addTlvEnd(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 610
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 609
    return-void
.end method

.method public static buildAckPacket(IIZLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/Integer;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/util/List;Ljava/util/List;Ljava/net/Inet4Address;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 9
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "broadcast"    # Z
    .param p3, "serverIpAddr"    # Ljava/net/Inet4Address;
    .param p4, "clientIpAddr"    # Ljava/net/Inet4Address;
    .param p5, "mac"    # [B
    .param p6, "timeout"    # Ljava/lang/Integer;
    .param p7, "netMask"    # Ljava/net/Inet4Address;
    .param p8, "bcAddr"    # Ljava/net/Inet4Address;
    .param p11, "dhcpServerIdentifier"    # Ljava/net/Inet4Address;
    .param p12, "domainName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "[B",
            "Ljava/lang/Integer;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/net/Inet4Address;",
            "Ljava/lang/String;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .prologue
    .line 1207
    .local p9, "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .local p10, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    new-instance v1, Landroid/net/dhcp/DhcpAckPacket;

    .line 1208
    sget-object v6, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    const/4 v3, 0x0

    move v2, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object v8, p5

    .line 1207
    invoke-direct/range {v1 .. v8}, Landroid/net/dhcp/DhcpAckPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1209
    .local v1, "pkt":Landroid/net/dhcp/DhcpPacket;
    move-object/from16 v0, p9

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    .line 1210
    move-object/from16 v0, p10

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    .line 1211
    iput-object p6, v1, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 1212
    move-object/from16 v0, p12

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    .line 1213
    move-object/from16 v0, p7

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    .line 1214
    move-object/from16 v0, p11

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    .line 1215
    move-object/from16 v0, p8

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    .line 1216
    const/16 v2, 0x44

    const/16 v3, 0x43

    invoke-virtual {v1, p0, v2, v3}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2
.end method

.method public static buildDiscoverPacket(IIS[BZ[B)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "secs"    # S
    .param p3, "clientMac"    # [B
    .param p4, "broadcast"    # Z
    .param p5, "expectedParams"    # [B

    .prologue
    .line 1172
    new-instance v0, Landroid/net/dhcp/DhcpDiscoverPacket;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/net/dhcp/DhcpDiscoverPacket;-><init>(IS[BZ)V

    .line 1174
    .local v0, "pkt":Landroid/net/dhcp/DhcpPacket;
    iput-object p5, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    .line 1175
    const/16 v1, 0x43

    const/16 v2, 0x44

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static buildNakPacket(IILjava/net/Inet4Address;Ljava/net/Inet4Address;[B)Ljava/nio/ByteBuffer;
    .locals 8
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "serverIpAddr"    # Ljava/net/Inet4Address;
    .param p3, "clientIpAddr"    # Ljava/net/Inet4Address;
    .param p4, "mac"    # [B

    .prologue
    .line 1224
    new-instance v0, Landroid/net/dhcp/DhcpNakPacket;

    const/4 v2, 0x0

    move v1, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p2

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/net/dhcp/DhcpNakPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1226
    .local v0, "pkt":Landroid/net/dhcp/DhcpPacket;
    const-string/jumbo v1, "requested address not available"

    iput-object v1, v0, Landroid/net/dhcp/DhcpPacket;->mMessage:Ljava/lang/String;

    .line 1227
    iput-object p3, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    .line 1228
    const/16 v1, 0x44

    const/16 v2, 0x43

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static buildOfferPacket(IIZLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/Integer;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/util/List;Ljava/util/List;Ljava/net/Inet4Address;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 9
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "broadcast"    # Z
    .param p3, "serverIpAddr"    # Ljava/net/Inet4Address;
    .param p4, "clientIpAddr"    # Ljava/net/Inet4Address;
    .param p5, "mac"    # [B
    .param p6, "timeout"    # Ljava/lang/Integer;
    .param p7, "netMask"    # Ljava/net/Inet4Address;
    .param p8, "bcAddr"    # Ljava/net/Inet4Address;
    .param p11, "dhcpServerIdentifier"    # Ljava/net/Inet4Address;
    .param p12, "domainName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "[B",
            "Ljava/lang/Integer;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/net/Inet4Address;",
            "Ljava/lang/String;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .prologue
    .line 1187
    .local p9, "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .local p10, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    new-instance v1, Landroid/net/dhcp/DhcpOfferPacket;

    .line 1188
    sget-object v6, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    const/4 v3, 0x0

    move v2, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object v8, p5

    .line 1187
    invoke-direct/range {v1 .. v8}, Landroid/net/dhcp/DhcpOfferPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1189
    .local v1, "pkt":Landroid/net/dhcp/DhcpPacket;
    move-object/from16 v0, p9

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    .line 1190
    move-object/from16 v0, p10

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    .line 1191
    iput-object p6, v1, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 1192
    move-object/from16 v0, p12

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    .line 1193
    move-object/from16 v0, p11

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    .line 1194
    move-object/from16 v0, p7

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    .line 1195
    move-object/from16 v0, p8

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    .line 1196
    const/16 v2, 0x44

    const/16 v3, 0x43

    invoke-virtual {v1, p0, v2, v3}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2
.end method

.method public static buildRequestPacket(IISLjava/net/Inet4Address;Z[BLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 8
    .param p0, "encap"    # I
    .param p1, "transactionId"    # I
    .param p2, "secs"    # S
    .param p3, "clientIp"    # Ljava/net/Inet4Address;
    .param p4, "broadcast"    # Z
    .param p5, "clientMac"    # [B
    .param p6, "requestedIpAddress"    # Ljava/net/Inet4Address;
    .param p7, "serverIdentifier"    # Ljava/net/Inet4Address;
    .param p8, "requestedParams"    # [B
    .param p9, "hostName"    # Ljava/lang/String;

    .prologue
    .line 1238
    new-instance v1, Landroid/net/dhcp/DhcpRequestPacket;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p5

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/net/dhcp/DhcpRequestPacket;-><init>(ISLjava/net/Inet4Address;[BZ)V

    .line 1240
    .local v1, "pkt":Landroid/net/dhcp/DhcpPacket;
    iput-object p6, v1, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    .line 1241
    iput-object p7, v1, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    .line 1242
    move-object/from16 v0, p9

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mHostName:Ljava/lang/String;

    .line 1243
    move-object/from16 v0, p8

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    .line 1244
    const/16 v2, 0x43

    const/16 v3, 0x44

    invoke-virtual {v1, p0, v2, v3}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 1245
    .local v7, "result":Ljava/nio/ByteBuffer;
    return-object v7
.end method

.method private checksum(Ljava/nio/ByteBuffer;III)I
    .locals 11
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "seed"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    const/4 v7, 0x0

    const v10, 0xffff

    .line 482
    move v6, p2

    .line 483
    .local v6, "sum":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 487
    .local v1, "bufPosition":I
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 488
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    .line 491
    .local v5, "shortBuf":Ljava/nio/ShortBuffer;
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 493
    sub-int v8, p4, p3

    div-int/lit8 v8, v8, 0x2

    new-array v4, v8, [S

    .line 494
    .local v4, "shortArray":[S
    invoke-virtual {v5, v4}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 496
    array-length v8, v4

    :goto_0
    if-ge v7, v8, :cond_0

    aget-short v3, v4, v7

    .line 497
    .local v3, "s":S
    invoke-static {v3}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v9

    add-int/2addr v6, v9

    .line 496
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 500
    .end local v3    # "s":S
    :cond_0
    array-length v7, v4

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr p3, v7

    .line 503
    if-eq p4, p3, :cond_2

    .line 504
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    int-to-short v0, v7

    .line 507
    .local v0, "b":S
    if-gez v0, :cond_1

    .line 508
    add-int/lit16 v7, v0, 0x100

    int-to-short v0, v7

    .line 511
    :cond_1
    mul-int/lit16 v7, v0, 0x100

    add-int/2addr v6, v7

    .line 514
    .end local v0    # "b":S
    :cond_2
    shr-int/lit8 v7, v6, 0x10

    and-int/2addr v7, v10

    and-int v8, v6, v10

    add-int v6, v7, v8

    .line 515
    shr-int/lit8 v7, v6, 0x10

    and-int/2addr v7, v10

    add-int/2addr v7, v6

    and-int v6, v7, v10

    .line 516
    not-int v2, v6

    .line 517
    .local v2, "negated":I
    int-to-short v7, v2

    invoke-static {v7}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v7

    return v7
.end method

.method static decodeFullPacket(Ljava/nio/ByteBuffer;I)Landroid/net/dhcp/DhcpPacket;
    .locals 72
    .param p0, "packet"    # Ljava/nio/ByteBuffer;
    .param p1, "pktType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/dhcp/DhcpPacket$ParseException;
        }
    .end annotation

    .prologue
    .line 739
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 740
    .local v25, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 741
    .local v32, "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    const/16 v63, 0x0

    .line 742
    .local v63, "serverIdentifier":Ljava/net/Inet4Address;
    const/16 v57, 0x0

    .line 743
    .local v57, "netMask":Ljava/net/Inet4Address;
    const/16 v55, 0x0

    .line 744
    .local v55, "message":Ljava/lang/String;
    const/16 v70, 0x0

    .line 745
    .local v70, "vendorId":Ljava/lang/String;
    const/16 v71, 0x0

    .line 746
    .local v71, "vendorInfo":Ljava/lang/String;
    const/16 v31, 0x0

    .line 747
    .local v31, "expectedParams":[B
    const/16 v34, 0x0

    .line 748
    .local v34, "hostName":Ljava/lang/String;
    const/16 v26, 0x0

    .line 749
    .local v26, "domainName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 750
    .local v6, "ipSrc":Ljava/net/Inet4Address;
    const/16 v40, 0x0

    .line 751
    .local v40, "ipDst":Ljava/net/Inet4Address;
    const/16 v21, 0x0

    .line 752
    .local v21, "bcAddr":Ljava/net/Inet4Address;
    const/16 v62, 0x0

    .line 758
    .local v62, "requestedIp":Ljava/net/Inet4Address;
    const/16 v56, 0x0

    .line 759
    .local v56, "mtu":Ljava/lang/Short;
    const/16 v54, 0x0

    .line 760
    .local v54, "maxMessageSize":Ljava/lang/Short;
    const/16 v53, 0x0

    .line 761
    .local v53, "leaseTime":Ljava/lang/Integer;
    const/16 v18, 0x0

    .line 762
    .local v18, "T1":Ljava/lang/Integer;
    const/16 v19, 0x0

    .line 765
    .local v19, "T2":Ljava/lang/Integer;
    const/16 v24, -0x1

    .line 767
    .local v24, "dhcpType":B
    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 770
    if-nez p1, :cond_1

    .line 771
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    const/16 v11, 0x116

    if-ge v10, v11, :cond_0

    .line 772
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v11, Landroid/net/metrics/DhcpErrorEvent;->L2_TOO_SHORT:I

    .line 773
    const-string/jumbo v12, "L2 packet too short, %d < %d"

    .line 772
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    .line 773
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x0

    aput-object v14, v13, v17

    const/16 v14, 0x116

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x1

    aput-object v14, v13, v17

    .line 772
    invoke-direct {v10, v11, v12, v13}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v10

    .line 776
    :cond_0
    const/4 v10, 0x6

    new-array v0, v10, [B

    move-object/from16 v50, v0

    .line 777
    .local v50, "l2dst":[B
    const/4 v10, 0x6

    new-array v0, v10, [B

    move-object/from16 v51, v0

    .line 779
    .local v51, "l2src":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 780
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 782
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v52

    .line 784
    .local v52, "l2type":S
    sget v10, Landroid/system/OsConstants;->ETH_P_IP:I

    move/from16 v0, v52

    if-eq v0, v10, :cond_1

    .line 785
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v11, Landroid/net/metrics/DhcpErrorEvent;->L2_WRONG_ETH_TYPE:I

    .line 786
    const-string/jumbo v12, "Unexpected L2 type 0x%04x, expected 0x%04x"

    .line 785
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    .line 786
    invoke-static/range {v52 .. v52}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v14

    const/16 v17, 0x0

    aput-object v14, v13, v17

    sget v14, Landroid/system/OsConstants;->ETH_P_IP:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x1

    aput-object v14, v13, v17

    .line 785
    invoke-direct {v10, v11, v12, v13}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v10

    .line 790
    .end local v50    # "l2dst":[B
    .end local v51    # "l2src":[B
    .end local v52    # "l2type":S
    :cond_1
    const/4 v10, 0x1

    move/from16 v0, p1

    if-gt v0, v10, :cond_6

    .line 791
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    const/16 v11, 0x108

    if-ge v10, v11, :cond_2

    .line 792
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v11, Landroid/net/metrics/DhcpErrorEvent;->L3_TOO_SHORT:I

    .line 793
    const-string/jumbo v12, "L3 packet too short, %d < %d"

    .line 792
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    .line 793
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x0

    aput-object v14, v13, v17

    const/16 v14, 0x108

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x1

    aput-object v14, v13, v17

    .line 792
    invoke-direct {v10, v11, v12, v13}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v10

    .line 796
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v47

    .line 797
    .local v47, "ipTypeAndLength":B
    move/from16 v0, v47

    and-int/lit16 v10, v0, 0xf0

    shr-int/lit8 v48, v10, 0x4

    .line 798
    .local v48, "ipVersion":I
    const/4 v10, 0x4

    move/from16 v0, v48

    if-eq v0, v10, :cond_3

    .line 799
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    .line 800
    sget v11, Landroid/net/metrics/DhcpErrorEvent;->L3_NOT_IPV4:I

    const-string/jumbo v12, "Invalid IP version %d"

    .line 799
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 800
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x0

    aput-object v14, v13, v17

    .line 799
    invoke-direct {v10, v11, v12, v13}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v10

    .line 804
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v39

    .line 805
    .local v39, "ipDiffServicesField":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v46

    .line 806
    .local v46, "ipTotalLength":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v43

    .line 807
    .local v43, "ipIdentification":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v41

    .line 808
    .local v41, "ipFlags":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v42

    .line 809
    .local v42, "ipFragOffset":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v45

    .line 810
    .local v45, "ipTTL":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v44

    .line 811
    .local v44, "ipProto":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v38

    .line 813
    .local v38, "ipChksm":S
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v6

    .line 814
    .local v6, "ipSrc":Ljava/net/Inet4Address;
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v40

    .line 816
    .local v40, "ipDst":Ljava/net/Inet4Address;
    const/16 v10, 0x11

    move/from16 v0, v44

    if-eq v0, v10, :cond_4

    .line 817
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    .line 818
    sget v11, Landroid/net/metrics/DhcpErrorEvent;->L4_NOT_UDP:I

    const-string/jumbo v12, "Protocol not UDP: %d"

    .line 817
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 818
    invoke-static/range {v44 .. v44}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    const/16 v17, 0x0

    aput-object v14, v13, v17

    .line 817
    invoke-direct {v10, v11, v12, v13}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v10

    .line 824
    :cond_4
    and-int/lit8 v10, v47, 0xf

    add-int/lit8 v61, v10, -0x5

    .line 825
    .local v61, "optionWords":I
    const/16 v36, 0x0

    .local v36, "i":I
    :goto_0
    move/from16 v0, v36

    move/from16 v1, v61

    if-ge v0, v1, :cond_5

    .line 826
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 825
    add-int/lit8 v36, v36, 0x1

    goto :goto_0

    .line 830
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v69

    .line 831
    .local v69, "udpSrcPort":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v67

    .line 832
    .local v67, "udpDstPort":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v68

    .line 833
    .local v68, "udpLen":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v66

    .line 838
    .local v66, "udpChkSum":S
    move/from16 v0, v69

    move/from16 v1, v67

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpPacket;->isPacketToOrFromClient(SS)Z

    move-result v10

    if-nez v10, :cond_6

    .line 839
    move/from16 v0, v69

    move/from16 v1, v67

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpPacket;->isPacketServerToServer(SS)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 850
    .end local v6    # "ipSrc":Ljava/net/Inet4Address;
    .end local v36    # "i":I
    .end local v38    # "ipChksm":S
    .end local v39    # "ipDiffServicesField":B
    .end local v40    # "ipDst":Ljava/net/Inet4Address;
    .end local v41    # "ipFlags":B
    .end local v42    # "ipFragOffset":B
    .end local v43    # "ipIdentification":S
    .end local v44    # "ipProto":B
    .end local v45    # "ipTTL":B
    .end local v46    # "ipTotalLength":S
    .end local v47    # "ipTypeAndLength":B
    .end local v48    # "ipVersion":I
    .end local v61    # "optionWords":I
    .end local v66    # "udpChkSum":S
    .end local v67    # "udpDstPort":S
    .end local v68    # "udpLen":S
    .end local v69    # "udpSrcPort":S
    :cond_6
    const/4 v10, 0x2

    move/from16 v0, p1

    if-gt v0, v10, :cond_7

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    const/16 v11, 0xec

    if-ge v10, v11, :cond_9

    .line 851
    :cond_7
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v11, Landroid/net/metrics/DhcpErrorEvent;->BOOTP_TOO_SHORT:I

    .line 852
    const-string/jumbo v12, "Invalid type or BOOTP packet too short, %d < %d"

    .line 851
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    .line 853
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x0

    aput-object v14, v13, v17

    const/16 v14, 0xec

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x1

    aput-object v14, v13, v17

    .line 851
    invoke-direct {v10, v11, v12, v13}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v10

    .line 844
    .restart local v6    # "ipSrc":Ljava/net/Inet4Address;
    .restart local v36    # "i":I
    .restart local v38    # "ipChksm":S
    .restart local v39    # "ipDiffServicesField":B
    .restart local v40    # "ipDst":Ljava/net/Inet4Address;
    .restart local v41    # "ipFlags":B
    .restart local v42    # "ipFragOffset":B
    .restart local v43    # "ipIdentification":S
    .restart local v44    # "ipProto":B
    .restart local v45    # "ipTTL":B
    .restart local v46    # "ipTotalLength":S
    .restart local v47    # "ipTypeAndLength":B
    .restart local v48    # "ipVersion":I
    .restart local v61    # "optionWords":I
    .restart local v66    # "udpChkSum":S
    .restart local v67    # "udpDstPort":S
    .restart local v68    # "udpLen":S
    .restart local v69    # "udpSrcPort":S
    :cond_8
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v11, Landroid/net/metrics/DhcpErrorEvent;->L4_WRONG_PORT:I

    .line 845
    const-string/jumbo v12, "Unexpected UDP ports %d->%d"

    .line 844
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    .line 845
    invoke-static/range {v69 .. v69}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v14

    const/16 v17, 0x0

    aput-object v14, v13, v17

    invoke-static/range {v67 .. v67}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v14

    const/16 v17, 0x1

    aput-object v14, v13, v17

    .line 844
    invoke-direct {v10, v11, v12, v13}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v10

    .line 856
    .end local v6    # "ipSrc":Ljava/net/Inet4Address;
    .end local v36    # "i":I
    .end local v38    # "ipChksm":S
    .end local v39    # "ipDiffServicesField":B
    .end local v40    # "ipDst":Ljava/net/Inet4Address;
    .end local v41    # "ipFlags":B
    .end local v42    # "ipFragOffset":B
    .end local v43    # "ipIdentification":S
    .end local v44    # "ipProto":B
    .end local v45    # "ipTTL":B
    .end local v46    # "ipTotalLength":S
    .end local v47    # "ipTypeAndLength":B
    .end local v48    # "ipVersion":I
    .end local v61    # "optionWords":I
    .end local v66    # "udpChkSum":S
    .end local v67    # "udpDstPort":S
    .end local v68    # "udpLen":S
    .end local v69    # "udpSrcPort":S
    :cond_9
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v65

    .line 857
    .local v65, "type":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v35

    .line 858
    .local v35, "hwType":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v0, v10, 0xff

    move/from16 v20, v0

    .line 859
    .local v20, "addrLen":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v33

    .line 860
    .local v33, "hops":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 861
    .local v3, "transactionId":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 862
    .local v4, "secs":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v22

    .line 863
    .local v22, "bootpFlags":S
    const v10, 0x8000

    and-int v10, v10, v22

    if-eqz v10, :cond_b

    const/4 v5, 0x1

    .line 864
    .local v5, "broadcast":Z
    :goto_1
    const/4 v10, 0x4

    new-array v0, v10, [B

    move-object/from16 v49, v0

    .line 867
    .local v49, "ipv4addr":[B
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 868
    invoke-static/range {v49 .. v49}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v7

    check-cast v7, Ljava/net/Inet4Address;

    .line 869
    .local v7, "clientIp":Ljava/net/Inet4Address;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 870
    invoke-static/range {v49 .. v49}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v8

    check-cast v8, Ljava/net/Inet4Address;

    .line 871
    .local v8, "yourIp":Ljava/net/Inet4Address;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 872
    invoke-static/range {v49 .. v49}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v15

    check-cast v15, Ljava/net/Inet4Address;

    .line 873
    .local v15, "nextIp":Ljava/net/Inet4Address;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 874
    invoke-static/range {v49 .. v49}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v16

    check-cast v16, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    .local v16, "relayIp":Ljava/net/Inet4Address;
    const/16 v10, 0x10

    move/from16 v0, v20

    if-le v0, v10, :cond_a

    .line 887
    sget-object v10, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    array-length v0, v10

    move/from16 v20, v0

    .line 890
    :cond_a
    move/from16 v0, v20

    new-array v9, v0, [B

    .line 891
    .local v9, "clientMac":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 894
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    rsub-int/lit8 v11, v20, 0x10

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x40

    add-int/lit16 v10, v10, 0x80

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 899
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    const/4 v11, 0x4

    if-ge v10, v11, :cond_c

    .line 900
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v11, Landroid/net/metrics/DhcpErrorEvent;->DHCP_NO_COOKIE:I

    const-string/jumbo v12, "not a DHCP message"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-direct {v10, v11, v12, v13}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v10

    .line 863
    .end local v5    # "broadcast":Z
    .end local v7    # "clientIp":Ljava/net/Inet4Address;
    .end local v8    # "yourIp":Ljava/net/Inet4Address;
    .end local v9    # "clientMac":[B
    .end local v15    # "nextIp":Ljava/net/Inet4Address;
    .end local v16    # "relayIp":Ljava/net/Inet4Address;
    .end local v49    # "ipv4addr":[B
    :cond_b
    const/4 v5, 0x0

    .restart local v5    # "broadcast":Z
    goto :goto_1

    .line 875
    .restart local v49    # "ipv4addr":[B
    :catch_0
    move-exception v29

    .line 876
    .local v29, "ex":Ljava/net/UnknownHostException;
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v11, Landroid/net/metrics/DhcpErrorEvent;->L3_INVALID_IP:I

    .line 877
    const-string/jumbo v12, "Invalid IPv4 address: %s"

    .line 876
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 877
    invoke-static/range {v49 .. v49}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x0

    aput-object v14, v13, v17

    .line 876
    invoke-direct {v10, v11, v12, v13}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v10

    .line 903
    .end local v29    # "ex":Ljava/net/UnknownHostException;
    .restart local v7    # "clientIp":Ljava/net/Inet4Address;
    .restart local v8    # "yourIp":Ljava/net/Inet4Address;
    .restart local v9    # "clientMac":[B
    .restart local v15    # "nextIp":Ljava/net/Inet4Address;
    .restart local v16    # "relayIp":Ljava/net/Inet4Address;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v23

    .line 904
    .local v23, "dhcpMagicCookie":I
    const v10, 0x63825363

    move/from16 v0, v23

    if-eq v0, v10, :cond_d

    .line 905
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v11, Landroid/net/metrics/DhcpErrorEvent;->DHCP_BAD_MAGIC_COOKIE:I

    .line 906
    const-string/jumbo v12, "Bad magic cookie 0x%08x, should be 0x%08x"

    .line 905
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    .line 907
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x0

    aput-object v14, v13, v17

    const v14, 0x63825363

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x1

    aput-object v14, v13, v17

    .line 905
    invoke-direct {v10, v11, v12, v13}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v10

    .line 911
    :cond_d
    const/16 v58, 0x1

    .line 913
    .end local v18    # "T1":Ljava/lang/Integer;
    .end local v19    # "T2":Ljava/lang/Integer;
    .end local v21    # "bcAddr":Ljava/net/Inet4Address;
    .end local v24    # "dhcpType":B
    .end local v26    # "domainName":Ljava/lang/String;
    .end local v31    # "expectedParams":[B
    .end local v34    # "hostName":Ljava/lang/String;
    .end local v53    # "leaseTime":Ljava/lang/Integer;
    .end local v54    # "maxMessageSize":Ljava/lang/Short;
    .end local v55    # "message":Ljava/lang/String;
    .end local v56    # "mtu":Ljava/lang/Short;
    .end local v57    # "netMask":Ljava/net/Inet4Address;
    .end local v62    # "requestedIp":Ljava/net/Inet4Address;
    .end local v63    # "serverIdentifier":Ljava/net/Inet4Address;
    .end local v70    # "vendorId":Ljava/lang/String;
    .end local v71    # "vendorInfo":Ljava/lang/String;
    .local v58, "notFinishedOptions":Z
    :cond_e
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    if-ge v10, v11, :cond_11

    if-eqz v58, :cond_11

    .line 914
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v60

    .line 916
    .local v60, "optionType":B
    const/4 v10, -0x1

    move/from16 v0, v60

    if-ne v0, v10, :cond_f

    .line 917
    const/16 v58, 0x0

    goto :goto_2

    .line 918
    :cond_f
    if-eqz v60, :cond_e

    .line 921
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v0, v10, 0xff

    move/from16 v59, v0

    .line 922
    .local v59, "optionLen":I
    const/16 v30, 0x0

    .line 924
    .local v30, "expectedLen":I
    sparse-switch v60, :sswitch_data_0

    .line 1009
    const/16 v36, 0x0

    .restart local v36    # "i":I
    :goto_3
    move/from16 v0, v36

    move/from16 v1, v59

    if-ge v0, v1, :cond_10

    .line 1010
    add-int/lit8 v30, v30, 0x1

    .line 1011
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v64

    .line 1009
    .local v64, "throwaway":B
    add-int/lit8 v36, v36, 0x1

    goto :goto_3

    .line 926
    .end local v36    # "i":I
    .end local v64    # "throwaway":B
    :sswitch_0
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v57

    .line 927
    .local v57, "netMask":Ljava/net/Inet4Address;
    const/16 v30, 0x4

    .line 1015
    .end local v57    # "netMask":Ljava/net/Inet4Address;
    :cond_10
    :goto_4
    move/from16 v0, v30

    move/from16 v1, v59

    if-eq v0, v1, :cond_e

    .line 1017
    sget v10, Landroid/net/metrics/DhcpErrorEvent;->DHCP_INVALID_OPTION_LENGTH:I

    .line 1016
    move/from16 v0, v60

    invoke-static {v10, v0}, Landroid/net/metrics/DhcpErrorEvent;->errorCodeWithOption(II)I

    move-result v28

    .line 1018
    .local v28, "errorCode":I
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    .line 1019
    const-string/jumbo v11, "Invalid length %d for option %d, expected %d"

    .line 1018
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    .line 1020
    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static/range {v60 .. v60}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v12, v14

    .line 1018
    move/from16 v0, v28

    invoke-direct {v10, v0, v11, v12}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v10
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1023
    .end local v28    # "errorCode":I
    .end local v30    # "expectedLen":I
    .end local v59    # "optionLen":I
    :catch_1
    move-exception v27

    .line 1025
    .local v27, "e":Ljava/nio/BufferUnderflowException;
    sget v10, Landroid/net/metrics/DhcpErrorEvent;->BUFFER_UNDERFLOW:I

    .line 1024
    move/from16 v0, v60

    invoke-static {v10, v0}, Landroid/net/metrics/DhcpErrorEvent;->errorCodeWithOption(II)I

    move-result v28

    .line 1026
    .restart local v28    # "errorCode":I
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    const-string/jumbo v11, "BufferUnderflowException"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    move/from16 v0, v28

    invoke-direct {v10, v0, v11, v12}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v10

    .line 930
    .end local v27    # "e":Ljava/nio/BufferUnderflowException;
    .end local v28    # "errorCode":I
    .restart local v30    # "expectedLen":I
    .restart local v59    # "optionLen":I
    :sswitch_1
    const/16 v30, 0x0

    :goto_5
    move/from16 v0, v30

    move/from16 v1, v59

    if-ge v0, v1, :cond_10

    .line 931
    :try_start_2
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v10

    move-object/from16 v0, v32

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 930
    add-int/lit8 v30, v30, 0x4

    goto :goto_5

    .line 935
    :sswitch_2
    const/16 v30, 0x0

    :goto_6
    move/from16 v0, v30

    move/from16 v1, v59

    if-ge v0, v1, :cond_10

    .line 936
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v10

    move-object/from16 v0, v25

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 935
    add-int/lit8 v30, v30, 0x4

    goto :goto_6

    .line 940
    :sswitch_3
    move/from16 v30, v59

    .line 941
    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-static {v0, v1, v10}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v34

    .local v34, "hostName":Ljava/lang/String;
    goto :goto_4

    .line 944
    .end local v34    # "hostName":Ljava/lang/String;
    :sswitch_4
    const/16 v30, 0x2

    .line 945
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v56

    .local v56, "mtu":Ljava/lang/Short;
    goto/16 :goto_4

    .line 948
    .end local v56    # "mtu":Ljava/lang/Short;
    :sswitch_5
    move/from16 v30, v59

    .line 949
    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-static {v0, v1, v10}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v26

    .local v26, "domainName":Ljava/lang/String;
    goto/16 :goto_4

    .line 952
    .end local v26    # "domainName":Ljava/lang/String;
    :sswitch_6
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v21

    .line 953
    .local v21, "bcAddr":Ljava/net/Inet4Address;
    const/16 v30, 0x4

    .line 954
    goto/16 :goto_4

    .line 956
    .end local v21    # "bcAddr":Ljava/net/Inet4Address;
    :sswitch_7
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v62

    .line 957
    .local v62, "requestedIp":Ljava/net/Inet4Address;
    const/16 v30, 0x4

    .line 958
    goto/16 :goto_4

    .line 960
    .end local v62    # "requestedIp":Ljava/net/Inet4Address;
    :sswitch_8
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    .line 961
    .local v53, "leaseTime":Ljava/lang/Integer;
    const/16 v30, 0x4

    .line 962
    goto/16 :goto_4

    .line 964
    .end local v53    # "leaseTime":Ljava/lang/Integer;
    :sswitch_9
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v24

    .line 965
    .local v24, "dhcpType":B
    const/16 v30, 0x1

    .line 966
    goto/16 :goto_4

    .line 968
    .end local v24    # "dhcpType":B
    :sswitch_a
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v63

    .line 969
    .local v63, "serverIdentifier":Ljava/net/Inet4Address;
    const/16 v30, 0x4

    .line 970
    goto/16 :goto_4

    .line 972
    .end local v63    # "serverIdentifier":Ljava/net/Inet4Address;
    :sswitch_b
    move/from16 v0, v59

    new-array v0, v0, [B

    move-object/from16 v31, v0

    .line 973
    .local v31, "expectedParams":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 974
    move/from16 v30, v59

    .line 975
    goto/16 :goto_4

    .line 977
    .end local v31    # "expectedParams":[B
    :sswitch_c
    move/from16 v30, v59

    .line 978
    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-static {v0, v1, v10}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v55

    .local v55, "message":Ljava/lang/String;
    goto/16 :goto_4

    .line 981
    .end local v55    # "message":Ljava/lang/String;
    :sswitch_d
    const/16 v30, 0x2

    .line 982
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v54

    .local v54, "maxMessageSize":Ljava/lang/Short;
    goto/16 :goto_4

    .line 985
    .end local v54    # "maxMessageSize":Ljava/lang/Short;
    :sswitch_e
    const/16 v30, 0x4

    .line 986
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .local v18, "T1":Ljava/lang/Integer;
    goto/16 :goto_4

    .line 989
    .end local v18    # "T1":Ljava/lang/Integer;
    :sswitch_f
    const/16 v30, 0x4

    .line 990
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .local v19, "T2":Ljava/lang/Integer;
    goto/16 :goto_4

    .line 993
    .end local v19    # "T2":Ljava/lang/Integer;
    :sswitch_10
    move/from16 v30, v59

    .line 995
    const/4 v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-static {v0, v1, v10}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v70

    .local v70, "vendorId":Ljava/lang/String;
    goto/16 :goto_4

    .line 998
    .end local v70    # "vendorId":Ljava/lang/String;
    :sswitch_11
    move/from16 v0, v59

    new-array v0, v0, [B

    move-object/from16 v37, v0

    .line 999
    .local v37, "id":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1000
    move/from16 v30, v59

    goto/16 :goto_4

    .line 1003
    .end local v37    # "id":[B
    :sswitch_12
    move/from16 v30, v59

    .line 1005
    const/4 v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-static {v0, v1, v10}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;
    :try_end_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v71

    .local v71, "vendorInfo":Ljava/lang/String;
    goto/16 :goto_4

    .line 1032
    .end local v30    # "expectedLen":I
    .end local v59    # "optionLen":I
    .end local v60    # "optionType":B
    .end local v71    # "vendorInfo":Ljava/lang/String;
    :cond_11
    packed-switch v24, :pswitch_data_0

    .line 1068
    :pswitch_0
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v11, Landroid/net/metrics/DhcpErrorEvent;->DHCP_UNKNOWN_MSG_TYPE:I

    .line 1069
    const-string/jumbo v12, "Unimplemented DHCP type %d"

    .line 1068
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 1069
    invoke-static/range {v24 .. v24}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    const/16 v17, 0x0

    aput-object v14, v13, v17

    .line 1068
    invoke-direct {v10, v11, v12, v13}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v10

    .line 1034
    :pswitch_1
    new-instance v10, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v11, Landroid/net/metrics/DhcpErrorEvent;->DHCP_NO_MSG_TYPE:I

    .line 1035
    const-string/jumbo v12, "No DHCP message type option"

    .line 1034
    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-direct {v10, v11, v12, v13}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v10

    .line 1037
    :pswitch_2
    new-instance v2, Landroid/net/dhcp/DhcpDiscoverPacket;

    invoke-direct {v2, v3, v4, v9, v5}, Landroid/net/dhcp/DhcpDiscoverPacket;-><init>(IS[BZ)V

    .line 1072
    .end local v15    # "nextIp":Ljava/net/Inet4Address;
    .local v2, "newPacket":Landroid/net/dhcp/DhcpPacket;
    :goto_7
    move-object/from16 v0, v21

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    .line 1073
    move-object/from16 v0, v25

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    .line 1074
    move-object/from16 v0, v26

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    .line 1075
    move-object/from16 v0, v32

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    .line 1076
    move-object/from16 v0, v34

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mHostName:Ljava/lang/String;

    .line 1077
    move-object/from16 v0, v53

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 1078
    move-object/from16 v0, v55

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mMessage:Ljava/lang/String;

    .line 1079
    move-object/from16 v0, v56

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    .line 1080
    move-object/from16 v0, v62

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    .line 1081
    move-object/from16 v0, v31

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    .line 1082
    move-object/from16 v0, v63

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    .line 1083
    move-object/from16 v0, v57

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    .line 1084
    move-object/from16 v0, v54

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mMaxMessageSize:Ljava/lang/Short;

    .line 1085
    move-object/from16 v0, v18

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mT1:Ljava/lang/Integer;

    .line 1086
    move-object/from16 v0, v19

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mT2:Ljava/lang/Integer;

    .line 1087
    move-object/from16 v0, v70

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mVendorId:Ljava/lang/String;

    .line 1088
    move-object/from16 v0, v71

    iput-object v0, v2, Landroid/net/dhcp/DhcpPacket;->mVendorInfo:Ljava/lang/String;

    .line 1089
    return-object v2

    .line 1041
    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    .restart local v15    # "nextIp":Ljava/net/Inet4Address;
    :pswitch_3
    new-instance v2, Landroid/net/dhcp/DhcpOfferPacket;

    invoke-direct/range {v2 .. v9}, Landroid/net/dhcp/DhcpOfferPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1043
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_7

    .line 1045
    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    :pswitch_4
    new-instance v2, Landroid/net/dhcp/DhcpRequestPacket;

    move-object v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object v14, v9

    move v15, v5

    invoke-direct/range {v10 .. v15}, Landroid/net/dhcp/DhcpRequestPacket;-><init>(ISLjava/net/Inet4Address;[BZ)V

    .line 1047
    .end local v15    # "nextIp":Ljava/net/Inet4Address;
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_7

    .line 1049
    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    .restart local v15    # "nextIp":Ljava/net/Inet4Address;
    :pswitch_5
    new-instance v2, Landroid/net/dhcp/DhcpDeclinePacket;

    move-object v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object v14, v8

    move-object/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Landroid/net/dhcp/DhcpDeclinePacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1052
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_7

    .line 1054
    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    :pswitch_6
    new-instance v2, Landroid/net/dhcp/DhcpAckPacket;

    invoke-direct/range {v2 .. v9}, Landroid/net/dhcp/DhcpAckPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1056
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_7

    .line 1058
    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    :pswitch_7
    new-instance v2, Landroid/net/dhcp/DhcpNakPacket;

    move-object v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object v14, v8

    move-object/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Landroid/net/dhcp/DhcpNakPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1061
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto :goto_7

    .line 1063
    .end local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    :pswitch_8
    new-instance v2, Landroid/net/dhcp/DhcpInformPacket;

    move-object v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object v14, v8

    move-object/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Landroid/net/dhcp/DhcpInformPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1066
    .restart local v2    # "newPacket":Landroid/net/dhcp/DhcpPacket;
    goto/16 :goto_7

    .line 924
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
        0xc -> :sswitch_3
        0xf -> :sswitch_5
        0x1a -> :sswitch_4
        0x1c -> :sswitch_6
        0x2b -> :sswitch_12
        0x32 -> :sswitch_7
        0x33 -> :sswitch_8
        0x35 -> :sswitch_9
        0x36 -> :sswitch_a
        0x37 -> :sswitch_b
        0x38 -> :sswitch_c
        0x39 -> :sswitch_d
        0x3a -> :sswitch_e
        0x3b -> :sswitch_f
        0x3c -> :sswitch_10
        0x3d -> :sswitch_11
    .end sparse-switch

    .line 1032
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public static decodeFullPacket([BII)Landroid/net/dhcp/DhcpPacket;
    .locals 7
    .param p0, "packet"    # [B
    .param p1, "length"    # I
    .param p2, "pktType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/dhcp/DhcpPacket$ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1097
    invoke-static {p0, v6, p1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1099
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-static {v0, p2}, Landroid/net/dhcp/DhcpPacket;->decodeFullPacket(Ljava/nio/ByteBuffer;I)Landroid/net/dhcp/DhcpPacket;
    :try_end_0
    .catch Landroid/net/dhcp/DhcpPacket$ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 1102
    :catch_0
    move-exception v2

    .line 1103
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v4, Landroid/net/metrics/DhcpErrorEvent;->PARSING_ERROR:I

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5, v6}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 1100
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1101
    .local v1, "e":Landroid/net/dhcp/DhcpPacket$ParseException;
    throw v1
.end method

.method private getHostname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 619
    sget-object v0, Landroid/net/dhcp/DhcpPacket;->testOverrideHostname:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/dhcp/DhcpPacket;->testOverrideHostname:Ljava/lang/String;

    return-object v0

    .line 620
    :cond_0
    const-string/jumbo v0, "net.hostname"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVendorId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 614
    sget-object v0, Landroid/net/dhcp/DhcpPacket;->testOverrideVendorId:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/dhcp/DhcpPacket;->testOverrideVendorId:Ljava/lang/String;

    return-object v0

    .line 615
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android-dhcp-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static intAbs(S)I
    .locals 1
    .param p0, "v"    # S

    .prologue
    .line 473
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method private static isPacketServerToServer(SS)Z
    .locals 2
    .param p0, "udpSrcPort"    # S
    .param p1, "udpDstPort"    # S

    .prologue
    const/16 v1, 0x43

    const/4 v0, 0x0

    .line 708
    if-ne p0, v1, :cond_0

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isPacketToOrFromClient(SS)Z
    .locals 2
    .param p0, "udpSrcPort"    # S
    .param p1, "udpDstPort"    # S

    .prologue
    const/16 v1, 0x44

    const/4 v0, 0x1

    .line 704
    if-eq p0, v1, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static macToString([B)Ljava/lang/String;
    .locals 5
    .param p0, "mac"    # [B

    .prologue
    .line 639
    const-string/jumbo v2, ""

    .line 641
    .local v2, "macAddr":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 642
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p0, v1

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, "hexString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 648
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_0

    .line 649
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 641
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 653
    .end local v0    # "hexString":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private static readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;
    .locals 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "byteCount"    # I
    .param p2, "nullOk"    # Z

    .prologue
    const/4 v4, 0x0

    .line 686
    new-array v0, p1, [B

    .line 687
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 688
    array-length v1, v0

    .line 689
    .local v1, "length":I
    if-nez p2, :cond_0

    .line 694
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 695
    aget-byte v2, v0, v1

    if-nez v2, :cond_1

    .line 700
    :cond_0
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v4, v1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v2

    .line 694
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;
    .locals 4
    .param p0, "packet"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 667
    const/4 v2, 0x0

    .line 668
    .local v2, "result":Ljava/net/Inet4Address;
    const/4 v3, 0x4

    new-array v1, v3, [B

    .line 669
    .local v1, "ipAddr":[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 672
    :try_start_0
    invoke-static {v1}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    .end local v2    # "result":Ljava/net/Inet4Address;
    check-cast v2, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    :goto_0
    return-object v2

    .line 673
    :catch_0
    move-exception v0

    .line 676
    .local v0, "ex":Ljava/net/UnknownHostException;
    const/4 v2, 0x0

    .restart local v2    # "result":Ljava/net/Inet4Address;
    goto :goto_0
.end method


# virtual methods
.method protected addCommonClientTlvs(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 630
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    const/16 v1, 0x39

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Short;)V

    .line 631
    invoke-direct {p0}, Landroid/net/dhcp/DhcpPacket;->getVendorId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 632
    invoke-direct {p0}, Landroid/net/dhcp/DhcpPacket;->getHostname()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 629
    return-void
.end method

.method public abstract buildPacket(ISS)Ljava/nio/ByteBuffer;
.end method

.method protected fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V
    .locals 15
    .param p1, "encap"    # I
    .param p2, "destIp"    # Ljava/net/Inet4Address;
    .param p3, "srcIp"    # Ljava/net/Inet4Address;
    .param p4, "destUdp"    # S
    .param p5, "srcUdp"    # S
    .param p6, "buf"    # Ljava/nio/ByteBuffer;
    .param p7, "requestCode"    # B
    .param p8, "broadcast"    # Z

    .prologue
    .line 356
    invoke-virtual/range {p2 .. p2}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v2

    .line 357
    .local v2, "destIpArray":[B
    invoke-virtual/range {p3 .. p3}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v7

    .line 358
    .local v7, "srcIpArray":[B
    const/4 v5, 0x0

    .line 359
    .local v5, "ipHeaderOffset":I
    const/4 v6, 0x0

    .line 360
    .local v6, "ipLengthOffset":I
    const/4 v4, 0x0

    .line 361
    .local v4, "ipChecksumOffset":I
    const/4 v3, 0x0

    .line 362
    .local v3, "endIpHeader":I
    const/4 v9, 0x0

    .line 363
    .local v9, "udpHeaderOffset":I
    const/4 v11, 0x0

    .line 364
    .local v11, "udpLengthOffset":I
    const/4 v8, 0x0

    .line 366
    .local v8, "udpChecksumOffset":I
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 367
    sget-object v13, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 369
    if-nez p1, :cond_0

    .line 370
    sget-object v13, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 371
    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 372
    sget v13, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v13, v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 378
    :cond_0
    const/4 v13, 0x1

    move/from16 v0, p1

    if-gt v0, v13, :cond_1

    .line 379
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 380
    const/16 v13, 0x45

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 381
    const/16 v13, 0x10

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 382
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 383
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 384
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 385
    const/16 v13, 0x4000

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 386
    const/16 v13, 0x40

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 387
    const/16 v13, 0x11

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 388
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 389
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 391
    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 392
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 393
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 396
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 397
    move-object/from16 v0, p6

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 398
    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 399
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    .line 400
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 401
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    .line 402
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 406
    :cond_1
    invoke-virtual/range {p6 .. p7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 407
    const/4 v13, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 408
    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length v13, v13

    int-to-byte v13, v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 409
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 410
    iget v13, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 411
    iget-short v13, p0, Landroid/net/dhcp/DhcpPacket;->mSecs:S

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 413
    if-eqz p8, :cond_4

    .line 414
    const/16 v13, -0x8000

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 419
    :goto_0
    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    invoke-virtual {v13}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 420
    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    invoke-virtual {v13}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 421
    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mNextIp:Ljava/net/Inet4Address;

    invoke-virtual {v13}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 422
    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mRelayIp:Ljava/net/Inet4Address;

    invoke-virtual {v13}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 423
    iget-object v13, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 424
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    .line 425
    iget-object v14, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length v14, v14

    rsub-int/lit8 v14, v14, 0x10

    .line 424
    add-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x40

    add-int/lit16 v13, v13, 0x80

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 428
    const v13, 0x63825363

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 429
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Landroid/net/dhcp/DhcpPacket;->finishPacket(Ljava/nio/ByteBuffer;)V

    .line 432
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    and-int/lit8 v13, v13, 0x1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 433
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 438
    :cond_2
    const/4 v13, 0x1

    move/from16 v0, p1

    if-gt v0, v13, :cond_3

    .line 440
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    sub-int/2addr v13, v9

    int-to-short v10, v13

    .line 441
    .local v10, "udpLen":S
    move-object/from16 v0, p6

    invoke-virtual {v0, v11, v10}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 448
    add-int/lit8 v13, v4, 0x2

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v13

    invoke-static {v13}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v13

    add-int/lit8 v12, v13, 0x0

    .line 449
    .local v12, "udpSeed":I
    add-int/lit8 v13, v4, 0x4

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v13

    invoke-static {v13}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v13

    add-int/2addr v12, v13

    .line 450
    add-int/lit8 v13, v4, 0x6

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v13

    invoke-static {v13}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v13

    add-int/2addr v12, v13

    .line 451
    add-int/lit8 v13, v4, 0x8

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v13

    invoke-static {v13}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v13

    add-int/2addr v12, v13

    .line 454
    add-int/lit8 v12, v12, 0x11

    .line 455
    add-int/2addr v12, v10

    .line 459
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    .line 457
    move-object/from16 v0, p6

    invoke-direct {p0, v0, v12, v9, v13}, Landroid/net/dhcp/DhcpPacket;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result v13

    int-to-short v13, v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v8, v13}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 461
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    sub-int/2addr v13, v5

    int-to-short v13, v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v6, v13}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 464
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-direct {p0, v0, v13, v5, v3}, Landroid/net/dhcp/DhcpPacket;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result v13

    int-to-short v13, v13

    .line 463
    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v13}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 355
    .end local v10    # "udpLen":S
    .end local v12    # "udpSeed":I
    :cond_3
    return-void

    .line 416
    :cond_4
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto/16 :goto_0
.end method

.method abstract finishPacket(Ljava/nio/ByteBuffer;)V
.end method

.method public getClientId()[B
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 342
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [B

    .line 343
    .local v0, "clientId":[B
    aput-byte v4, v0, v3

    .line 344
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 345
    return-object v0
.end method

.method public getClientMac()[B
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    return-object v0
.end method

.method public getLeaseTimeMillis()J
    .locals 4

    .prologue
    .line 1157
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1158
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1159
    :cond_1
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_2

    .line 1160
    const-wide/32 v0, 0xea60

    return-wide v0

    .line 1162
    :cond_2
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getTransactionId()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    return v0
.end method

.method public toDhcpResults()Landroid/net/DhcpResults;
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1111
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    .line 1112
    .local v1, "ipAddress":Ljava/net/Inet4Address;
    sget-object v4, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v1, v4}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1113
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    .line 1114
    sget-object v4, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v1, v4}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1115
    return-object v6

    .line 1120
    :cond_0
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    if-eqz v4, :cond_2

    .line 1122
    :try_start_0
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    invoke-static {v4}, Landroid/net/NetworkUtils;->netmaskToPrefixLength(Ljava/net/Inet4Address;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1131
    .local v2, "prefixLength":I
    :goto_0
    new-instance v3, Landroid/net/DhcpResults;

    invoke-direct {v3}, Landroid/net/DhcpResults;-><init>()V

    .line 1133
    .local v3, "results":Landroid/net/DhcpResults;
    :try_start_1
    new-instance v4, Landroid/net/LinkAddress;

    invoke-direct {v4, v1, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v4, v3, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1138
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1139
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    iput-object v4, v3, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    .line 1142
    :cond_1
    iget-object v4, v3, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1143
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/DhcpResults;->domains:Ljava/lang/String;

    .line 1144
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    iput-object v4, v3, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    .line 1145
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mVendorInfo:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    .line 1146
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_1
    iput v4, v3, Landroid/net/DhcpResults;->leaseDuration:I

    .line 1147
    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    const/16 v6, 0x500

    if-gt v6, v4, :cond_4

    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    const/16 v6, 0x5dc

    if-gt v4, v6, :cond_4

    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    :goto_2
    iput v4, v3, Landroid/net/DhcpResults;->mtu:I

    .line 1149
    return-object v3

    .line 1123
    .end local v2    # "prefixLength":I
    .end local v3    # "results":Landroid/net/DhcpResults;
    :catch_0
    move-exception v0

    .line 1125
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    return-object v6

    .line 1128
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    invoke-static {v1}, Landroid/net/NetworkUtils;->getImplicitNetmask(Ljava/net/Inet4Address;)I

    move-result v2

    .restart local v2    # "prefixLength":I
    goto :goto_0

    .line 1134
    .restart local v3    # "results":Landroid/net/DhcpResults;
    :catch_1
    move-exception v0

    .line 1135
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    return-object v6

    .line 1146
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    const/4 v4, -0x1

    goto :goto_1

    :cond_4
    move v4, v5

    .line 1147
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 657
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    invoke-static {v1}, Landroid/net/dhcp/DhcpPacket;->macToString([B)Ljava/lang/String;

    move-result-object v0

    .line 659
    .local v0, "macAddr":Ljava/lang/String;
    return-object v0
.end method
