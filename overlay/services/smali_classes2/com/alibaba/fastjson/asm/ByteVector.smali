.class public Lcom/alibaba/fastjson/asm/ByteVector;
.super Ljava/lang/Object;
.source "ByteVector.java"


# instance fields
.field data:[B

.field length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    .line 54
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    .line 64
    return-void
.end method

.method private enlarge(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 217
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v0, v0

    mul-int/lit8 v1, v0, 0x2

    .line 218
    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/2addr v0, p1

    .line 219
    if-gt v1, v0, :cond_0

    :goto_0
    new-array v0, v0, [B

    .line 220
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    iget v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    .line 222
    return-void

    :cond_0
    move v0, v1

    .line 219
    goto :goto_0
.end method


# virtual methods
.method put11(II)Lcom/alibaba/fastjson/asm/ByteVector;
    .locals 4

    .prologue
    .line 90
    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 91
    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    .line 95
    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p1

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 96
    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, p2

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 97
    iput v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 98
    return-object p0

    :cond_0
    const/4 v1, 0x2

    .line 92
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    goto :goto_0
.end method

.method put12(II)Lcom/alibaba/fastjson/asm/ByteVector;
    .locals 4

    .prologue
    .line 127
    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 128
    add-int/lit8 v1, v0, 0x3

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 131
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    .line 132
    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p1

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 133
    add-int/lit8 v0, v2, 0x1

    ushr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 134
    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p2

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 135
    iput v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 136
    return-object p0

    :cond_0
    const/4 v1, 0x3

    .line 129
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    goto :goto_0
.end method

.method public putByte(I)Lcom/alibaba/fastjson/asm/ByteVector;
    .locals 4

    .prologue
    .line 73
    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 74
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 77
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p1

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 78
    iput v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 79
    return-object p0

    :cond_0
    const/4 v1, 0x1

    .line 75
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    goto :goto_0
.end method

.method public putByteArray([BII)Lcom/alibaba/fastjson/asm/ByteVector;
    .locals 2

    .prologue
    .line 201
    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 204
    :goto_0
    if-nez p1, :cond_1

    .line 207
    :goto_1
    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 208
    return-object p0

    .line 202
    :cond_0
    invoke-direct {p0, p3}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    iget v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;
    .locals 4

    .prologue
    .line 146
    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 147
    add-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 150
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    .line 151
    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 152
    add-int/lit8 v0, v2, 0x1

    ushr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 153
    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 154
    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, p1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 155
    iput v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 156
    return-object p0

    :cond_0
    const/4 v1, 0x4

    .line 148
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    goto :goto_0
.end method

.method public putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
    .locals 4

    .prologue
    .line 108
    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 109
    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 112
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    .line 113
    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 114
    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, p1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 115
    iput v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 116
    return-object p0

    :cond_0
    const/4 v1, 0x2

    .line 110
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    goto :goto_0
.end method

.method public putUTF8(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/ByteVector;
    .locals 6

    .prologue
    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 167
    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 168
    add-int/lit8 v1, v0, 0x2

    add-int/2addr v1, v3

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 171
    :goto_0
    iget-object v4, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    .line 178
    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v1, v3, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 179
    add-int/lit8 v1, v2, 0x1

    int-to-byte v0, v3

    int-to-byte v0, v0

    aput-byte v0, v4, v2

    const/4 v0, 0x0

    .line 180
    :goto_1
    if-lt v0, v3, :cond_1

    .line 188
    iput v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 189
    return-object p0

    .line 169
    :cond_0
    add-int/lit8 v1, v3, 0x2

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v2, 0x1

    .line 182
    if-ge v5, v2, :cond_3

    .line 185
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_3
    const/16 v2, 0x7f

    .line 182
    if-gt v5, v2, :cond_2

    .line 183
    add-int/lit8 v2, v1, 0x1

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 180
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1
.end method
