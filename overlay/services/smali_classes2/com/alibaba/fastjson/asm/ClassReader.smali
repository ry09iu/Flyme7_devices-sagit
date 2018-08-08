.class public Lcom/alibaba/fastjson/asm/ClassReader;
.super Ljava/lang/Object;
.source "ClassReader.java"


# instance fields
.field public final b:[B

.field public final header:I

.field private final items:[I

.field private final maxStringLength:I

.field private final strings:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    .line 21
    new-array v2, v2, [B

    .line 23
    :cond_0
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    .line 24
    if-eq v4, v5, :cond_1

    .line 28
    if-lez v4, :cond_0

    .line 29
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 33
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ClassReader;->b:[B

    const/16 v0, 0x8

    .line 37
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ClassReader;->items:[I

    .line 38
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassReader;->items:[I

    array-length v5, v0

    .line 39
    new-array v0, v5, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ClassReader;->strings:[Ljava/lang/String;

    const/16 v0, 0xa

    const/4 v2, 0x1

    move v4, v0

    .line 42
    :goto_1
    if-lt v2, v5, :cond_2

    .line 77
    iput v3, p0, Lcom/alibaba/fastjson/asm/ClassReader;->maxStringLength:I

    .line 79
    iput v4, p0, Lcom/alibaba/fastjson/asm/ClassReader;->header:I

    .line 80
    return-void

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassReader;->items:[I

    add-int/lit8 v6, v4, 0x1

    aput v6, v0, v2

    .line 45
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassReader;->b:[B

    aget-byte v0, v0, v4

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 75
    :cond_3
    :goto_2
    add-int/2addr v0, v4

    .line 42
    add-int/lit8 v2, v2, 0x1

    move v4, v0

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x5

    .line 53
    goto :goto_2

    :pswitch_2
    const/16 v0, 0x9

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_3
    const/4 v0, 0x4

    .line 61
    goto :goto_2

    .line 64
    :pswitch_4
    add-int/lit8 v0, v4, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 65
    if-le v0, v3, :cond_3

    move v3, v0

    .line 66
    goto :goto_2

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readInt(I)I
    .locals 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassReader;->b:[B

    .line 248
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private readMethod(Lcom/alibaba/fastjson/asm/TypeCollector;[CI)I
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-direct {p0, p3}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    .line 155
    add-int/lit8 v0, p3, 0x2

    invoke-direct {p0, v0, p2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    .line 156
    add-int/lit8 v0, p3, 0x4

    invoke-direct {p0, v0, p2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    .line 161
    add-int/lit8 v0, p3, 0x6

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 162
    add-int/lit8 v1, p3, 0x8

    move v3, v0

    move v4, v1

    move v0, v2

    .line 163
    :goto_0
    if-gtz v3, :cond_1

    .line 184
    invoke-virtual {p1, v5, v6, v7}, Lcom/alibaba/fastjson/asm/TypeCollector;->visitMethod(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodCollector;

    move-result-object v5

    .line 186
    if-nez v5, :cond_3

    .line 238
    :cond_0
    return v4

    .line 164
    :cond_1
    invoke-direct {p0, v4, p2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v8

    .line 165
    add-int/lit8 v1, v4, 0x2

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v9

    .line 166
    add-int/lit8 v1, v4, 0x6

    const-string/jumbo v4, "Code"

    .line 169
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 172
    :goto_1
    add-int v4, v1, v9

    .line 163
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 170
    goto :goto_1

    .line 186
    :cond_3
    if-eqz v0, :cond_0

    .line 187
    add-int/lit8 v1, v0, 0x4

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v1

    .line 188
    add-int/lit8 v0, v0, 0x8

    .line 191
    add-int/2addr v1, v0

    .line 194
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 195
    add-int/lit8 v1, v1, 0x2

    .line 196
    :goto_2
    if-gtz v0, :cond_5

    .line 203
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 204
    add-int/lit8 v1, v1, 0x2

    move v3, v1

    move v1, v2

    move v10, v0

    move v0, v2

    move v2, v10

    .line 205
    :goto_3
    if-gtz v2, :cond_6

    .line 217
    if-eqz v1, :cond_0

    .line 218
    if-nez v0, :cond_9

    .line 229
    :cond_4
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 230
    add-int/lit8 v1, v1, 0x2

    .line 231
    :goto_4
    if-lez v0, :cond_0

    .line 232
    add-int/lit8 v2, v1, 0x8

    invoke-direct {p0, v2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 233
    add-int/lit8 v3, v1, 0x4

    invoke-direct {p0, v3, p2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3, v2}, Lcom/alibaba/fastjson/asm/MethodCollector;->visitLocalVariable(Ljava/lang/String;I)V

    .line 234
    add-int/lit8 v1, v1, 0xa

    .line 231
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 197
    :cond_5
    add-int/lit8 v1, v1, 0x8

    .line 196
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 206
    :cond_6
    invoke-direct {p0, v3, p2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "LocalVariableTable"

    .line 207
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string/jumbo v7, "LocalVariableTypeTable"

    .line 209
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 212
    :goto_5
    add-int/lit8 v6, v3, 0x2

    invoke-direct {p0, v6}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x6

    add-int/2addr v3, v6

    .line 205
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 208
    :cond_7
    add-int/lit8 v1, v3, 0x6

    goto :goto_5

    .line 210
    :cond_8
    add-int/lit8 v0, v3, 0x6

    goto :goto_5

    .line 219
    :cond_9
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    .line 220
    add-int/lit8 v0, v0, 0x2

    .line 221
    new-array v3, v2, [I

    move v10, v2

    move v2, v0

    move v0, v10

    .line 222
    :goto_6
    if-lez v0, :cond_4

    .line 223
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v6, v2, 0x6

    aput v6, v3, v0

    .line 224
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v6, v2, 0x8

    invoke-direct {p0, v6}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    aput v6, v3, v0

    .line 225
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    aput v6, v3, v0

    .line 226
    add-int/lit8 v2, v2, 0xa

    goto :goto_6
.end method

.method private readUTF(II[C)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 263
    add-int v7, p1, p2

    .line 264
    iget-object v8, p0, Lcom/alibaba/fastjson/asm/ClassReader;->b:[B

    move v0, v3

    move v1, v3

    move v4, v3

    .line 269
    :goto_0
    if-lt p1, v7, :cond_0

    .line 296
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3, v3, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 270
    :cond_0
    add-int/lit8 v6, p1, 0x1

    aget-byte v5, v8, p1

    .line 271
    packed-switch v1, :pswitch_data_0

    :goto_1
    move p1, v6

    .line 293
    goto :goto_0

    .line 273
    :pswitch_0
    and-int/lit16 v9, v5, 0xff

    const/16 v5, 0x80

    .line 274
    if-lt v9, v5, :cond_2

    const/16 v0, 0xe0

    .line 276
    if-lt v9, v0, :cond_3

    .line 280
    :cond_1
    and-int/lit8 v0, v9, 0xf

    int-to-char v0, v0

    const/4 v1, 0x2

    .line 281
    goto :goto_1

    .line 275
    :cond_2
    add-int/lit8 v5, v4, 0x1

    int-to-char v9, v9

    int-to-char v9, v9

    aput-char v9, p3, v4

    move v4, v5

    goto :goto_1

    :cond_3
    const/16 v0, 0xbf

    .line 276
    if-le v9, v0, :cond_1

    .line 277
    and-int/lit8 v0, v9, 0x1f

    int-to-char v0, v0

    move v1, v2

    .line 278
    goto :goto_1

    .line 286
    :pswitch_1
    add-int/lit8 v1, v4, 0x1

    shl-int/lit8 v9, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v9

    int-to-char v5, v5

    int-to-char v5, v5

    aput-char v5, p3, v4

    move v4, v1

    move v1, v3

    .line 288
    goto :goto_1

    .line 291
    :pswitch_2
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v5, 0x3f

    or-int/2addr v0, v1

    int-to-char v0, v0

    move v1, v2

    .line 292
    goto :goto_1

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private readUTF8(I[C)Ljava/lang/String;
    .locals 4

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 254
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassReader;->strings:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 255
    if-nez v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassReader;->items:[I

    aget v1, v1, v0

    .line 259
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassReader;->strings:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x2

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    invoke-direct {p0, v3, v1, p2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF(II[C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    return-object v1

    .line 256
    :cond_0
    return-object v1
.end method

.method private readUnsignedShort(I)I
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassReader;->b:[B

    .line 243
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public accept(Lcom/alibaba/fastjson/asm/TypeCollector;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 83
    iget v1, p0, Lcom/alibaba/fastjson/asm/ClassReader;->maxStringLength:I

    new-array v4, v1, [C

    .line 92
    iget v1, p0, Lcom/alibaba/fastjson/asm/ClassReader;->header:I

    .line 93
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassReader;->items:[I

    add-int/lit8 v3, v1, 0x4

    invoke-direct {p0, v3}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aget v2, v2, v3

    .line 94
    add-int/lit8 v2, v1, 0x6

    invoke-direct {p0, v2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 96
    add-int/lit8 v1, v1, 0x8

    move v3, v1

    .line 97
    :goto_0
    if-lt v0, v2, :cond_0

    .line 101
    invoke-direct {p0, v3}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 102
    add-int/lit8 v1, v3, 0x2

    move v2, v0

    .line 103
    :goto_1
    if-gtz v2, :cond_1

    .line 110
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 111
    add-int/lit8 v1, v1, 0x2

    move v2, v0

    .line 112
    :goto_2
    if-gtz v2, :cond_3

    .line 120
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 121
    add-int/lit8 v1, v1, 0x2

    .line 122
    :goto_3
    if-gtz v0, :cond_5

    .line 129
    invoke-direct {p0, v3}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 130
    add-int/lit8 v1, v3, 0x2

    move v2, v0

    .line 131
    :goto_4
    if-gtz v2, :cond_6

    .line 140
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 141
    add-int/lit8 v1, v1, 0x2

    .line 142
    :goto_5
    if-gtz v0, :cond_8

    .line 146
    return-void

    .line 98
    :cond_0
    add-int/lit8 v1, v3, 0x2

    .line 97
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    goto :goto_0

    .line 104
    :cond_1
    add-int/lit8 v0, v1, 0x6

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 105
    add-int/lit8 v1, v1, 0x8

    .line 106
    :goto_6
    if-gtz v0, :cond_2

    .line 103
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 107
    :cond_2
    add-int/lit8 v5, v1, 0x2

    invoke-direct {p0, v5}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x6

    add-int/2addr v1, v5

    .line 106
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 113
    :cond_3
    add-int/lit8 v0, v1, 0x6

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 114
    add-int/lit8 v1, v1, 0x8

    .line 115
    :goto_7
    if-gtz v0, :cond_4

    .line 112
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    .line 116
    :cond_4
    add-int/lit8 v5, v1, 0x2

    invoke-direct {p0, v5}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x6

    add-int/2addr v1, v5

    .line 115
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 123
    :cond_5
    add-int/lit8 v2, v1, 0x2

    invoke-direct {p0, v2}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    add-int/2addr v1, v2

    .line 122
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 132
    :cond_6
    add-int/lit8 v0, v1, 0x6

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 133
    add-int/lit8 v1, v1, 0x8

    .line 134
    :goto_8
    if-gtz v0, :cond_7

    .line 131
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_4

    .line 135
    :cond_7
    add-int/lit8 v3, v1, 0x2

    invoke-direct {p0, v3}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    .line 134
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 144
    :cond_8
    invoke-direct {p0, p1, v4, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readMethod(Lcom/alibaba/fastjson/asm/TypeCollector;[CI)I

    move-result v1

    .line 142
    add-int/lit8 v0, v0, -0x1

    goto :goto_5
.end method
