.class public Lcom/alibaba/fastjson/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field public static final CA:[C

.field public static final IA:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/Base64;->CA:[C

    const/16 v0, 0x100

    .line 14
    new-array v0, v0, [I

    sput-object v0, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    .line 16
    sget-object v0, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    const/4 v2, -0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 17
    sget-object v0, Lcom/alibaba/fastjson/util/Base64;->CA:[C

    array-length v2, v0

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_0

    .line 19
    sget-object v0, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    const/16 v2, 0x3d

    aput v1, v0, v2

    .line 20
    return-void

    .line 18
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    sget-object v4, Lcom/alibaba/fastjson/util/Base64;->CA:[C

    aget-char v4, v4, v0

    aput v0, v3, v4

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeFast(Ljava/lang/String;)[B
    .locals 13

    .prologue
    const/16 v8, 0x4c

    const/16 v7, 0x3d

    const/4 v1, 0x0

    .line 156
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 157
    if-eqz v2, :cond_4

    .line 161
    add-int/lit8 v0, v2, -0x1

    move v4, v1

    .line 164
    :goto_0
    if-lt v4, v0, :cond_5

    :cond_0
    move v6, v0

    .line 168
    :goto_1
    if-gtz v6, :cond_6

    .line 172
    :cond_1
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v7, :cond_7

    move v0, v1

    .line 173
    :goto_2
    sub-int v3, v6, v4

    add-int/lit8 v3, v3, 0x1

    .line 174
    if-gt v2, v8, :cond_9

    move v2, v1

    .line 176
    :goto_3
    sub-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x6

    shr-int/lit8 v3, v3, 0x3

    sub-int v7, v3, v0

    .line 177
    new-array v8, v7, [B

    .line 181
    div-int/lit8 v3, v7, 0x3

    mul-int/lit8 v9, v3, 0x3

    move v3, v1

    move v5, v1

    :cond_2
    :goto_4
    if-lt v5, v9, :cond_b

    .line 198
    if-lt v5, v7, :cond_c

    .line 208
    :cond_3
    return-object v8

    .line 158
    :cond_4
    new-array v0, v1, [B

    return-object v0

    .line 164
    :cond_5
    sget-object v3, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aget v3, v3, v5

    if-gez v3, :cond_0

    .line 165
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 168
    :cond_6
    sget-object v0, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit16 v3, v3, 0xff

    aget v0, v0, v3

    if-gez v0, :cond_1

    .line 169
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_1

    .line 172
    :cond_7
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v7, :cond_8

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x2

    goto :goto_2

    .line 174
    :cond_9
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0xd

    if-eq v2, v5, :cond_a

    move v2, v1

    :goto_5
    shl-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    div-int/lit8 v2, v3, 0x4e

    goto :goto_5

    .line 183
    :cond_b
    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v4, v10, v4

    shl-int/lit8 v4, v4, 0x12

    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v12, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v10, v10, v11

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v4, v10

    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v11, v12, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v10, v10, v12

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v10, v4

    sget-object v12, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v4, v11, 0x1

    .line 184
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v11, v12, v11

    or-int/2addr v10, v11

    .line 187
    add-int/lit8 v11, v5, 0x1

    shr-int/lit8 v12, v10, 0x10

    int-to-byte v12, v12

    int-to-byte v12, v12

    aput-byte v12, v8, v5

    .line 188
    add-int/lit8 v12, v11, 0x1

    shr-int/lit8 v5, v10, 0x8

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v8, v11

    .line 189
    add-int/lit8 v5, v12, 0x1

    int-to-byte v10, v10

    int-to-byte v10, v10

    aput-byte v10, v8, v12

    .line 192
    if-lez v2, :cond_2

    add-int/lit8 v3, v3, 0x1

    const/16 v10, 0x13

    if-ne v3, v10, :cond_2

    .line 193
    add-int/lit8 v3, v4, 0x2

    move v4, v3

    move v3, v1

    .line 194
    goto/16 :goto_4

    :cond_c
    move v3, v1

    move v2, v4

    .line 201
    :goto_6
    sub-int v4, v6, v0

    if-le v2, v4, :cond_d

    const/16 v0, 0x10

    move v1, v5

    .line 204
    :goto_7
    if-ge v1, v7, :cond_3

    .line 205
    add-int/lit8 v2, v1, 0x1

    shr-int v4, v3, v0

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v8, v1

    .line 204
    add-int/lit8 v0, v0, -0x8

    move v1, v2

    goto :goto_7

    .line 202
    :cond_d
    sget-object v9, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget v2, v9, v2

    mul-int/lit8 v9, v1, 0x6

    rsub-int/lit8 v9, v9, 0x12

    shl-int/2addr v2, v9

    or-int/2addr v2, v3

    .line 201
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v4

    goto :goto_6
.end method

.method public static decodeFast(Ljava/lang/String;II)[B
    .locals 13

    .prologue
    const/16 v7, 0x4c

    const/16 v5, 0x3d

    const/4 v1, 0x0

    .line 90
    if-eqz p2, :cond_4

    .line 94
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    move v4, p1

    .line 97
    :goto_0
    if-lt v4, v0, :cond_5

    :cond_0
    move v6, v0

    .line 101
    :goto_1
    if-gtz v6, :cond_6

    .line 105
    :cond_1
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_7

    move v0, v1

    .line 106
    :goto_2
    sub-int v2, v6, v4

    add-int/lit8 v3, v2, 0x1

    .line 107
    if-gt p2, v7, :cond_9

    move v2, v1

    .line 109
    :goto_3
    sub-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x6

    shr-int/lit8 v3, v3, 0x3

    sub-int v7, v3, v0

    .line 110
    new-array v8, v7, [B

    .line 114
    div-int/lit8 v3, v7, 0x3

    mul-int/lit8 v9, v3, 0x3

    move v3, v1

    move v5, v1

    :cond_2
    :goto_4
    if-lt v5, v9, :cond_b

    .line 130
    if-lt v5, v7, :cond_c

    .line 140
    :cond_3
    return-object v8

    .line 91
    :cond_4
    new-array v0, v1, [B

    return-object v0

    .line 97
    :cond_5
    sget-object v2, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget v2, v2, v3

    if-gez v2, :cond_0

    .line 98
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 101
    :cond_6
    sget-object v0, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget v0, v0, v2

    if-gez v0, :cond_1

    .line 102
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_1

    .line 105
    :cond_7
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_8

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x2

    goto :goto_2

    .line 107
    :cond_9
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0xd

    if-eq v2, v5, :cond_a

    move v2, v1

    :goto_5
    shl-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    div-int/lit8 v2, v3, 0x4e

    goto :goto_5

    .line 116
    :cond_b
    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v4, v10, v4

    shl-int/lit8 v4, v4, 0x12

    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v12, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v10, v10, v11

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v4, v10

    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v11, v12, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v10, v10, v12

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v10, v4

    sget-object v12, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v4, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v11, v12, v11

    or-int/2addr v10, v11

    .line 119
    add-int/lit8 v11, v5, 0x1

    shr-int/lit8 v12, v10, 0x10

    int-to-byte v12, v12

    int-to-byte v12, v12

    aput-byte v12, v8, v5

    .line 120
    add-int/lit8 v12, v11, 0x1

    shr-int/lit8 v5, v10, 0x8

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v8, v11

    .line 121
    add-int/lit8 v5, v12, 0x1

    int-to-byte v10, v10

    int-to-byte v10, v10

    aput-byte v10, v8, v12

    .line 124
    if-lez v2, :cond_2

    add-int/lit8 v3, v3, 0x1

    const/16 v10, 0x13

    if-ne v3, v10, :cond_2

    .line 125
    add-int/lit8 v3, v4, 0x2

    move v4, v3

    move v3, v1

    .line 126
    goto/16 :goto_4

    :cond_c
    move v3, v1

    move v2, v4

    .line 133
    :goto_6
    sub-int v4, v6, v0

    if-le v2, v4, :cond_d

    const/16 v0, 0x10

    move v1, v5

    .line 136
    :goto_7
    if-ge v1, v7, :cond_3

    .line 137
    add-int/lit8 v2, v1, 0x1

    shr-int v4, v3, v0

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v8, v1

    .line 136
    add-int/lit8 v0, v0, -0x8

    move v1, v2

    goto :goto_7

    .line 134
    :cond_d
    sget-object v9, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget v2, v9, v2

    mul-int/lit8 v9, v1, 0x6

    rsub-int/lit8 v9, v9, 0x12

    shl-int/2addr v2, v9

    or-int/2addr v2, v3

    .line 133
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v4

    goto :goto_6
.end method

.method public static decodeFast([CII)[B
    .locals 13

    .prologue
    const/16 v7, 0x4c

    const/16 v5, 0x3d

    const/4 v1, 0x0

    .line 35
    if-eqz p2, :cond_4

    .line 39
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    move v4, p1

    .line 42
    :goto_0
    if-lt v4, v0, :cond_5

    :cond_0
    move v6, v0

    .line 46
    :goto_1
    if-gtz v6, :cond_6

    .line 50
    :cond_1
    aget-char v0, p0, v6

    if-eq v0, v5, :cond_7

    move v0, v1

    .line 51
    :goto_2
    sub-int v2, v6, v4

    add-int/lit8 v3, v2, 0x1

    .line 52
    if-gt p2, v7, :cond_9

    move v2, v1

    .line 54
    :goto_3
    sub-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x6

    shr-int/lit8 v3, v3, 0x3

    sub-int v7, v3, v0

    .line 55
    new-array v8, v7, [B

    .line 59
    div-int/lit8 v3, v7, 0x3

    mul-int/lit8 v9, v3, 0x3

    move v3, v1

    move v5, v1

    :cond_2
    :goto_4
    if-lt v5, v9, :cond_b

    .line 75
    if-lt v5, v7, :cond_c

    .line 85
    :cond_3
    return-object v8

    .line 36
    :cond_4
    new-array v0, v1, [B

    return-object v0

    .line 42
    :cond_5
    sget-object v2, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    aget-char v3, p0, v4

    aget v2, v2, v3

    if-gez v2, :cond_0

    .line 43
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 46
    :cond_6
    sget-object v0, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    aget-char v2, p0, v6

    aget v0, v0, v2

    if-gez v0, :cond_1

    .line 47
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_1

    .line 50
    :cond_7
    add-int/lit8 v0, v6, -0x1

    aget-char v0, p0, v0

    if-eq v0, v5, :cond_8

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x2

    goto :goto_2

    .line 52
    :cond_9
    aget-char v2, p0, v7

    const/16 v5, 0xd

    if-eq v2, v5, :cond_a

    move v2, v1

    :goto_5
    shl-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    div-int/lit8 v2, v3, 0x4e

    goto :goto_5

    .line 61
    :cond_b
    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v11, v4, 0x1

    aget-char v4, p0, v4

    aget v4, v10, v4

    shl-int/lit8 v4, v4, 0x12

    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v12, v11, 0x1

    aget-char v11, p0, v11

    aget v10, v10, v11

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v4, v10

    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v11, v12, 0x1

    aget-char v12, p0, v12

    aget v10, v10, v12

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v10, v4

    sget-object v12, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v4, v11, 0x1

    aget-char v11, p0, v11

    aget v11, v12, v11

    or-int/2addr v10, v11

    .line 64
    add-int/lit8 v11, v5, 0x1

    shr-int/lit8 v12, v10, 0x10

    int-to-byte v12, v12

    int-to-byte v12, v12

    aput-byte v12, v8, v5

    .line 65
    add-int/lit8 v12, v11, 0x1

    shr-int/lit8 v5, v10, 0x8

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v8, v11

    .line 66
    add-int/lit8 v5, v12, 0x1

    int-to-byte v10, v10

    int-to-byte v10, v10

    aput-byte v10, v8, v12

    .line 69
    if-lez v2, :cond_2

    add-int/lit8 v3, v3, 0x1

    const/16 v10, 0x13

    if-ne v3, v10, :cond_2

    .line 70
    add-int/lit8 v3, v4, 0x2

    move v4, v3

    move v3, v1

    .line 71
    goto/16 :goto_4

    :cond_c
    move v3, v1

    move v2, v4

    .line 78
    :goto_6
    sub-int v4, v6, v0

    if-le v2, v4, :cond_d

    const/16 v0, 0x10

    move v1, v5

    .line 81
    :goto_7
    if-ge v1, v7, :cond_3

    .line 82
    add-int/lit8 v2, v1, 0x1

    shr-int v4, v3, v0

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v8, v1

    .line 81
    add-int/lit8 v0, v0, -0x8

    move v1, v2

    goto :goto_7

    .line 79
    :cond_d
    sget-object v9, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v4, v2, 0x1

    aget-char v2, p0, v2

    aget v2, v9, v2

    mul-int/lit8 v9, v1, 0x6

    rsub-int/lit8 v9, v9, 0x12

    shl-int/2addr v2, v9

    or-int/2addr v2, v3

    .line 78
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v4

    goto :goto_6
.end method
