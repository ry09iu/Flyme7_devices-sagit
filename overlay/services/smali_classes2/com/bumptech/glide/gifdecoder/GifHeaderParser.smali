.class public Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
.super Ljava/lang/Object;
.source "GifHeaderParser.java"


# static fields
.field static final DEFAULT_FRAME_DELAY:I = 0xa

.field private static final MAX_BLOCK_SIZE:I = 0x100

.field static final MIN_FRAME_DELAY:I = 0x3

.field public static final TAG:Ljava/lang/String; = "GifHeaderParser"


# instance fields
.field private final block:[B

.field private blockSize:I

.field private header:Lcom/bumptech/glide/gifdecoder/GifHeader;

.field private rawData:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 26
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    return-void
.end method

.method private err()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 372
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private read()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 356
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 360
    :goto_0
    return v0

    .line 359
    :catch_0
    move-exception v1

    .line 358
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v2, 0x1

    iput v2, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    goto :goto_0
.end method

.method private readBitmap()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readShort()I

    move-result v3

    iput v3, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->ix:I

    .line 178
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readShort()I

    move-result v3

    iput v3, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->iy:I

    .line 179
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readShort()I

    move-result v3

    iput v3, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    .line 180
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readShort()I

    move-result v3

    iput v3, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    .line 182
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v3

    .line 184
    and-int/lit16 v0, v3, 0x80

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 185
    and-int/lit8 v6, v3, 0x7

    add-int/lit8 v6, v6, 0x1

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    .line 189
    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_1

    :goto_1
    iput-boolean v1, v5, Lcom/bumptech/glide/gifdecoder/GifFrame;->interlace:Z

    .line 190
    if-nez v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    .line 199
    :goto_2
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->bufferFrameStart:I

    .line 202
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->skipImageData()V

    .line 204
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v0

    if-nez v0, :cond_3

    .line 208
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    .line 210
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    return-void

    :cond_0
    move v0, v2

    .line 184
    goto :goto_0

    :cond_1
    move v1, v2

    .line 189
    goto :goto_1

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    invoke-direct {p0, v4}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readColorTable(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    goto :goto_2

    .line 205
    :cond_3
    return-void
.end method

.method private readBlock()I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 329
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v1

    iput v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    .line 331
    iget v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    if-gtz v1, :cond_1

    move v1, v0

    .line 347
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v0

    .line 334
    :goto_1
    :try_start_0
    iget v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    if-ge v1, v2, :cond_0

    .line 335
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    sub-int/2addr v0, v1

    .line 336
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    invoke-virtual {v2, v3, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    add-int/2addr v1, v0

    goto :goto_1

    .line 345
    :catch_0
    move-exception v2

    move-object v6, v2

    move v2, v0

    move-object v0, v6

    const-string/jumbo v3, "GifHeaderParser"

    const/4 v4, 0x3

    .line 341
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 344
    :goto_2
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v2, 0x1

    iput v2, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "GifHeaderParser"

    .line 342
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error Reading Block n: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " blockSize: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private readColorTable(I)[I
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v0, 0x0

    .line 274
    mul-int/lit8 v2, p1, 0x3

    const/4 v1, 0x0

    .line 276
    new-array v4, v2, [B

    .line 279
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x100

    .line 283
    new-array v1, v2, [I

    move v2, v0

    .line 286
    :goto_0
    if-lt v2, p1, :cond_0

    .line 299
    :goto_1
    return-object v1

    .line 287
    :cond_0
    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v5, v0, 0xff

    .line 288
    add-int/lit8 v6, v3, 0x1

    aget-byte v0, v4, v3

    and-int/lit16 v7, v0, 0xff

    .line 289
    add-int/lit8 v0, v6, 0x1

    aget-byte v3, v4, v6

    and-int/lit16 v6, v3, 0xff

    .line 290
    add-int/lit8 v3, v2, 0x1

    shl-int/lit8 v5, v5, 0x10

    const/high16 v8, -0x1000000

    or-int/2addr v5, v8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    or-int/2addr v5, v6

    aput v5, v1, v2
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 291
    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    const-string/jumbo v2, "GifHeaderParser"

    .line 293
    invoke-static {v2, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 296
    :goto_2
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v2, 0x1

    iput v2, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "GifHeaderParser"

    const-string/jumbo v3, "Format Error Reading Color Table"

    .line 294
    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private readContents()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    move v0, v3

    .line 82
    :goto_0
    if-eqz v0, :cond_1

    .line 142
    :cond_0
    return-void

    .line 82
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v2

    .line 84
    sparse-switch v2, :sswitch_data_0

    .line 139
    :sswitch_0
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iput v1, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    goto :goto_0

    .line 90
    :sswitch_1
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    if-eqz v2, :cond_2

    .line 93
    :goto_1
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readBitmap()V

    goto :goto_0

    .line 91
    :cond_2
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    new-instance v4, Lcom/bumptech/glide/gifdecoder/GifFrame;

    invoke-direct {v4}, Lcom/bumptech/glide/gifdecoder/GifFrame;-><init>()V

    iput-object v4, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    goto :goto_1

    .line 97
    :sswitch_2
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v2

    .line 98
    sparse-switch v2, :sswitch_data_1

    .line 129
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->skip()V

    goto :goto_0

    .line 102
    :sswitch_3
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    new-instance v4, Lcom/bumptech/glide/gifdecoder/GifFrame;

    invoke-direct {v4}, Lcom/bumptech/glide/gifdecoder/GifFrame;-><init>()V

    iput-object v4, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 103
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readGraphicControlExt()V

    goto :goto_0

    .line 107
    :sswitch_4
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readBlock()I

    const-string/jumbo v2, ""

    move-object v4, v2

    move v2, v3

    :goto_2
    const/16 v5, 0xb

    .line 109
    if-lt v2, v5, :cond_3

    const-string/jumbo v2, "NETSCAPE2.0"

    .line 112
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 116
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->skip()V

    goto :goto_0

    .line 110
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    aget-byte v5, v5, v2

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 113
    :cond_4
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readNetscapeExt()V

    goto :goto_0

    .line 121
    :sswitch_5
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->skip()V

    goto :goto_0

    .line 125
    :sswitch_6
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->skip()V

    goto :goto_0

    :sswitch_7
    move v0, v1

    .line 135
    goto :goto_0

    .line 84
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_2
        0x2c -> :sswitch_1
        0x3b -> :sswitch_7
    .end sparse-switch

    .line 98
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_6
        0xf9 -> :sswitch_3
        0xfe -> :sswitch_5
        0xff -> :sswitch_4
    .end sparse-switch
.end method

.method private readGraphicControlExt()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    .line 151
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v2

    .line 153
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    and-int/lit8 v4, v2, 0x1c

    shr-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    .line 154
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    iget v3, v3, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-eqz v3, :cond_0

    .line 158
    :goto_0
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    :goto_1
    iput-boolean v0, v3, Lcom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    .line 160
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readShort()I

    move-result v0

    const/4 v1, 0x3

    .line 162
    if-lt v0, v1, :cond_2

    .line 165
    :goto_2
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    mul-int/lit8 v0, v0, 0xa

    iput v0, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->delay:I

    .line 167
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    .line 169
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    .line 170
    return-void

    .line 156
    :cond_0
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

    iput v1, v3, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 158
    goto :goto_1

    :cond_2
    const/16 v0, 0xa

    .line 163
    goto :goto_2
.end method

.method private readHeader()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, ""

    :goto_0
    const/4 v2, 0x6

    .line 233
    if-lt v0, v2, :cond_1

    const-string/jumbo v0, "GIF"

    .line 236
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readLSD()V

    .line 241
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-boolean v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->gctFlag:Z

    if-nez v0, :cond_3

    .line 245
    :cond_0
    :goto_1
    return-void

    .line 234
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v1, 0x1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    .line 238
    return-void

    .line 241
    :cond_3
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->gctSize:I

    invoke-direct {p0, v1}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readColorTable(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->gct:[I

    .line 243
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->gct:[I

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgIndex:I

    aget v1, v1, v2

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgColor:I

    goto :goto_1
.end method

.method private readLSD()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 251
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readShort()I

    move-result v2

    iput v2, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    .line 252
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readShort()I

    move-result v2

    iput v2, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    .line 254
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v1

    .line 256
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    and-int/lit16 v3, v1, 0x80

    if-nez v3, :cond_0

    :goto_0
    iput-boolean v0, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->gctFlag:Z

    .line 260
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x2

    shl-int v1, v2, v1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->gctSize:I

    .line 262
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgIndex:I

    .line 264
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->pixelAspect:I

    .line 265
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 256
    goto :goto_0
.end method

.method private readNetscapeExt()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 217
    :goto_0
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readBlock()I

    .line 218
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    aget-byte v0, v0, v3

    if-eq v0, v4, :cond_1

    .line 224
    :goto_1
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    if-gtz v0, :cond_2

    .line 225
    :cond_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    .line 221
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 222
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    goto :goto_1

    .line 224
    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method private readShort()I
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 52
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->block:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 53
    new-instance v0, Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {v0}, Lcom/bumptech/glide/gifdecoder/GifHeader;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 54
    iput v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->blockSize:I

    .line 55
    return-void
.end method

.method private skip()V
    .locals 3

    .prologue
    .line 318
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    move-result v0

    .line 319
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 320
    if-gtz v0, :cond_0

    .line 321
    return-void
.end method

.method private skipImageData()V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->read()I

    .line 309
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->skip()V

    .line 310
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 47
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 48
    return-void
.end method

.method public parseHeader()Lcom/bumptech/glide/gifdecoder/GifHeader;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 61
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readHeader()V

    .line 66
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->err()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    return-object v0

    .line 59
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You must call setData() before parseHeader()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    return-object v0

    .line 67
    :cond_3
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->readContents()V

    .line 68
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-gez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v1, 0x1

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    goto :goto_0
.end method

.method public setData([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->reset()V

    .line 34
    if-nez p1, :cond_0

    .line 39
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 40
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v1, 0x2

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    .line 42
    :goto_0
    return-object p0

    .line 35
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 37
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method
