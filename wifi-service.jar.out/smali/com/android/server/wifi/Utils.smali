.class final Lcom/android/server/wifi/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final EID_VENDOR_SPECIFIC:I = 0xdd

.field private static final VENDOR_SPECIFIC_INFO_IOS:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 16
    sput-object v0, Lcom/android/server/wifi/Utils;->VENDOR_SPECIFIC_INFO_IOS:[B

    .line 13
    return-void

    .line 17
    :array_0
    .array-data 1
        0x0t
        0x17t
        -0xet
        0x6t
        0x1t
        0x1t
        0x3t
        0x1t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromHex(CZ)I
    .locals 3
    .param p0, "ch"    # C
    .param p1, "lenient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 44
    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    .line 45
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 46
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 47
    add-int/lit8 v0, p0, 0xa

    add-int/lit8 v0, v0, -0x61

    return v0

    .line 48
    :cond_1
    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    .line 49
    add-int/lit8 v0, p0, 0xa

    add-int/lit8 v0, v0, -0x41

    return v0

    .line 50
    :cond_2
    if-eqz p1, :cond_3

    .line 51
    const/4 v0, -0x1

    return v0

    .line 53
    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad hex-character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getWifiConfigStringWithPassword(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 178
    invoke-static {p0}, Lcom/android/server/wifi/ConfigUtils;->getWifiConfigStringWithPassword(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static hexToBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 30
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Odd length hex string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 32
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 33
    .local v0, "data":[B
    const/4 v2, 0x0

    .line 34
    .local v2, "position":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 36
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v5}, Lcom/android/server/wifi/Utils;->fromHex(CZ)I

    move-result v3

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x4

    .line 37
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Lcom/android/server/wifi/Utils;->fromHex(CZ)I

    move-result v4

    and-int/lit8 v4, v4, 0xf

    .line 36
    or-int/2addr v3, v4

    int-to-byte v3, v3

    .line 35
    aput-byte v3, v0, v2

    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 34
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 40
    :cond_1
    return-object v0
.end method

.method static isGBK(Ljava/lang/String;)Z
    .locals 9
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xff

    const/4 v7, 0x0

    .line 111
    invoke-static {p0}, Lcom/android/server/wifi/Utils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 114
    .local v2, "bytes":[B
    const/4 v4, 0x1

    .line 115
    .local v4, "isAllASCII":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_3

    .line 116
    aget-byte v5, v2, v3

    and-int/lit16 v0, v5, 0xff

    .line 117
    .local v0, "byte1":I
    const/16 v5, 0x81

    if-lt v0, v5, :cond_2

    if-ge v0, v8, :cond_2

    add-int/lit8 v5, v3, 0x1

    array-length v6, v2

    if-ge v5, v6, :cond_2

    .line 118
    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v1, v5, 0xff

    .line 119
    .local v1, "byte2":I
    const/16 v5, 0x40

    if-lt v1, v5, :cond_1

    if-ge v1, v8, :cond_1

    const/16 v5, 0x7f

    if-eq v1, v5, :cond_1

    .line 121
    const/4 v4, 0x0

    .line 122
    add-int/lit8 v3, v3, 0x1

    .line 115
    .end local v1    # "byte2":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    .restart local v1    # "byte2":I
    :cond_1
    return v7

    .line 128
    .end local v1    # "byte2":I
    :cond_2
    const/16 v5, 0x80

    if-lt v0, v5, :cond_0

    .line 132
    return v7

    .line 136
    .end local v0    # "byte1":I
    :cond_3
    if-eqz v4, :cond_4

    .line 137
    return v7

    .line 138
    :cond_4
    const/4 v5, 0x1

    return v5
.end method

.method static isMeteredHint([Landroid/net/wifi/ScanResult$InformationElement;)Z
    .locals 4
    .param p0, "infoElements"    # [Landroid/net/wifi/ScanResult$InformationElement;

    .prologue
    .line 164
    if-eqz p0, :cond_1

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 166
    aget-object v2, p0, v0

    iget v2, v2, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v3, 0xdd

    if-ne v2, v3, :cond_0

    .line 167
    aget-object v2, p0, v0

    iget-object v2, v2, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    sget-object v3, Lcom/android/server/wifi/Utils;->VENDOR_SPECIFIC_INFO_IOS:[B

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 168
    .local v1, "value":[B
    sget-object v2, Lcom/android/server/wifi/Utils;->VENDOR_SPECIFIC_INFO_IOS:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    const/4 v2, 0x1

    return v2

    .line 165
    .end local v1    # "value":[B
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    .end local v0    # "i":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method static isUTF8(Ljava/lang/String;)Z
    .locals 8
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x80

    const/4 v6, 0x0

    .line 70
    invoke-static {p0}, Lcom/android/server/wifi/Utils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 71
    .local v0, "bytes":[B
    const/4 v4, 0x0

    .line 73
    .local v4, "nBytes":I
    const/4 v3, 0x1

    .line 74
    .local v3, "isAllASCII":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_9

    .line 75
    aget-byte v5, v0, v2

    and-int/lit16 v1, v5, 0xff

    .line 76
    .local v1, "chr":I
    and-int/lit16 v5, v1, 0x80

    if-eqz v5, :cond_0

    .line 77
    const/4 v3, 0x0

    .line 79
    :cond_0
    if-nez v4, :cond_7

    .line 80
    if-lt v1, v7, :cond_1

    .line 81
    const/16 v5, 0xfc

    if-lt v1, v5, :cond_2

    const/16 v5, 0xfd

    if-gt v1, v5, :cond_2

    .line 82
    const/4 v4, 0x6

    .line 94
    :goto_1
    add-int/lit8 v4, v4, -0x1

    .line 74
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_2
    const/16 v5, 0xf8

    if-lt v1, v5, :cond_3

    .line 84
    const/4 v4, 0x5

    goto :goto_1

    .line 85
    :cond_3
    const/16 v5, 0xf0

    if-lt v1, v5, :cond_4

    .line 86
    const/4 v4, 0x4

    goto :goto_1

    .line 87
    :cond_4
    const/16 v5, 0xe0

    if-lt v1, v5, :cond_5

    .line 88
    const/4 v4, 0x3

    goto :goto_1

    .line 89
    :cond_5
    const/16 v5, 0xc0

    if-lt v1, v5, :cond_6

    .line 90
    const/4 v4, 0x2

    goto :goto_1

    .line 92
    :cond_6
    return v6

    .line 97
    :cond_7
    and-int/lit16 v5, v1, 0xc0

    if-eq v5, v7, :cond_8

    .line 98
    return v6

    .line 100
    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 104
    .end local v1    # "chr":I
    :cond_9
    if-gtz v4, :cond_a

    if-eqz v3, :cond_b

    .line 105
    :cond_a
    return v6

    .line 107
    :cond_b
    const/4 v5, 0x1

    return v5
.end method

.method static parseInformationElements([B)[Landroid/net/wifi/ScanResult$InformationElement;
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    .line 142
    if-nez p0, :cond_0

    .line 143
    const/4 v5, 0x0

    new-array v5, v5, [Landroid/net/wifi/ScanResult$InformationElement;

    return-object v5

    .line 145
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 147
    .local v0, "data":Ljava/nio/ByteBuffer;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v4, "infoElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/ScanResult$InformationElement;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 149
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v1, v5, 0xff

    .line 150
    .local v1, "eid":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v2, v5, 0xff

    .line 151
    .local v2, "elementLength":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-le v2, v5, :cond_2

    .line 160
    .end local v1    # "eid":I
    .end local v2    # "elementLength":I
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/net/wifi/ScanResult$InformationElement;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/net/wifi/ScanResult$InformationElement;

    return-object v5

    .line 154
    .restart local v1    # "eid":I
    .restart local v2    # "elementLength":I
    :cond_2
    new-instance v3, Landroid/net/wifi/ScanResult$InformationElement;

    invoke-direct {v3}, Landroid/net/wifi/ScanResult$InformationElement;-><init>()V

    .line 155
    .local v3, "ie":Landroid/net/wifi/ScanResult$InformationElement;
    iput v1, v3, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 156
    new-array v5, v2, [B

    iput-object v5, v3, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 157
    iget-object v5, v3, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 158
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 58
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const-string/jumbo v1, ""

    return-object v1

    .line 61
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 62
    .local v0, "length":I
    if-le v0, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 63
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 64
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 66
    :cond_1
    return-object p0
.end method

.method static toHex([B)Ljava/lang/String;
    .locals 8
    .param p0, "octets"    # [B

    .prologue
    const/4 v3, 0x0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 22
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v4, p0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-byte v0, p0, v2

    .line 23
    .local v0, "o":B
    const-string/jumbo v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    .end local v0    # "o":B
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
