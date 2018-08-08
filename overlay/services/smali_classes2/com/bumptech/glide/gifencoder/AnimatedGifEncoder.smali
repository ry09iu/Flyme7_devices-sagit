.class public Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
.super Ljava/lang/Object;
.source "AnimatedGifEncoder.java"


# static fields
.field private static final MIN_TRANSPARENT_PERCENTAGE:D = 4.0

.field private static final TAG:Ljava/lang/String; = "AnimatedGifEncoder"


# instance fields
.field private closeStream:Z

.field private colorDepth:I

.field private colorTab:[B

.field private delay:I

.field private dispose:I

.field private firstFrame:Z

.field private hasTransparentPixels:Z

.field private height:I

.field private image:Landroid/graphics/Bitmap;

.field private indexedPixels:[B

.field private out:Ljava/io/OutputStream;

.field private palSize:I

.field private pixels:[B

.field private repeat:I

.field private sample:I

.field private sizeSet:Z

.field private started:Z

.field private transIndex:I

.field private transparent:Ljava/lang/Integer;

.field private usedEntry:[Z

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transparent:Ljava/lang/Integer;

    .line 52
    iput v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->repeat:I

    .line 54
    iput v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->delay:I

    .line 56
    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    const/16 v0, 0x100

    .line 70
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->usedEntry:[Z

    const/4 v0, 0x7

    .line 72
    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->palSize:I

    .line 74
    iput v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->dispose:I

    .line 76
    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->closeStream:Z

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    .line 80
    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->sizeSet:Z

    const/16 v0, 0xa

    .line 82
    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->sample:I

    return-void
.end method

.method private analyzePixels()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 311
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    array-length v0, v0

    .line 312
    div-int/lit8 v3, v0, 0x3

    .line 313
    new-array v2, v3, [B

    iput-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->indexedPixels:[B

    .line 314
    new-instance v4, Lcom/bumptech/glide/gifencoder/NeuQuant;

    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    iget v5, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->sample:I

    invoke-direct {v4, v2, v0, v5}, Lcom/bumptech/glide/gifencoder/NeuQuant;-><init>([BII)V

    .line 316
    invoke-virtual {v4}, Lcom/bumptech/glide/gifencoder/NeuQuant;->process()[B

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    move v0, v1

    .line 318
    :goto_0
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    array-length v2, v2

    if-lt v0, v2, :cond_0

    move v0, v1

    move v2, v1

    .line 326
    :goto_1
    if-lt v0, v3, :cond_1

    .line 331
    iput-object v9, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    const/16 v0, 0x8

    .line 332
    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorDepth:I

    const/4 v0, 0x7

    .line 333
    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->palSize:I

    .line 335
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transparent:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 337
    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->hasTransparentPixels:Z

    if-nez v0, :cond_3

    .line 340
    :goto_2
    return-void

    .line 319
    :cond_0
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    aget-byte v2, v2, v0

    .line 320
    iget-object v5, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    add-int/lit8 v7, v0, 0x2

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    .line 321
    iget-object v5, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    add-int/lit8 v6, v0, 0x2

    int-to-byte v2, v2

    aput-byte v2, v5, v6

    .line 322
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->usedEntry:[Z

    div-int/lit8 v5, v0, 0x3

    aput-boolean v1, v2, v5

    .line 318
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 327
    :cond_1
    iget-object v5, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, v5, v2

    and-int/lit16 v5, v2, 0xff

    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v2, v2, v6

    and-int/lit16 v6, v2, 0xff

    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v2, v7, 0x1

    aget-byte v7, v8, v7

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v4, v5, v6, v7}, Lcom/bumptech/glide/gifencoder/NeuQuant;->map(III)I

    move-result v5

    .line 328
    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->usedEntry:[Z

    const/4 v7, 0x1

    aput-boolean v7, v6, v5

    .line 329
    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->indexedPixels:[B

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v6, v0

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transparent:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->findClosest(I)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transIndex:I

    goto :goto_2

    .line 338
    :cond_3
    invoke-direct {p0, v1}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->findClosest(I)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transIndex:I

    goto :goto_2
.end method

.method private findClosest(I)I
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 347
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    if-eqz v1, :cond_0

    .line 349
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 350
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 351
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    const/high16 v1, 0x1000000

    .line 354
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    array-length v7, v2

    move v2, v0

    move v10, v1

    move v1, v0

    move v0, v10

    .line 355
    :goto_0
    if-lt v1, v7, :cond_1

    .line 367
    return v2

    :cond_0
    const/4 v0, -0x1

    .line 348
    return v0

    .line 356
    :cond_1
    iget-object v3, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    add-int/lit8 v8, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    sub-int v1, v4, v1

    .line 357
    iget-object v3, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    add-int/lit8 v9, v8, 0x1

    aget-byte v3, v3, v8

    and-int/lit16 v3, v3, 0xff

    sub-int v3, v5, v3

    .line 358
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    sub-int v8, v6, v8

    .line 359
    mul-int/2addr v1, v1

    mul-int/2addr v3, v3

    add-int/2addr v1, v3

    mul-int v3, v8, v8

    add-int/2addr v1, v3

    .line 360
    div-int/lit8 v3, v9, 0x3

    .line 361
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->usedEntry:[Z

    aget-boolean v8, v8, v3

    if-nez v8, :cond_3

    :cond_2
    move v1, v2

    .line 365
    :goto_1
    add-int/lit8 v2, v9, 0x1

    move v10, v2

    move v2, v1

    move v1, v10

    .line 366
    goto :goto_0

    .line 361
    :cond_3
    if-ge v1, v0, :cond_2

    move v0, v1

    move v1, v3

    .line 363
    goto :goto_1
.end method

.method private getImagePixels()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 374
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 375
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 377
    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    if-eq v3, v0, :cond_2

    .line 379
    :cond_0
    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    iget v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 380
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 381
    invoke-virtual {v1, v0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 382
    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    .line 384
    :goto_0
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 385
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 388
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    .line 391
    iput-boolean v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->hasTransparentPixels:Z

    .line 393
    array-length v5, v1

    move v3, v2

    move v0, v2

    move v4, v2

    :goto_1
    if-lt v3, v5, :cond_3

    .line 402
    mul-int/lit8 v0, v0, 0x64

    int-to-double v4, v0

    array-length v0, v1

    int-to-double v0, v0

    div-double v0, v4, v0

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    .line 405
    cmpl-double v3, v0, v4

    if-lez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->hasTransparentPixels:Z

    const-string/jumbo v2, "AnimatedGifEncoder"

    const/4 v3, 0x3

    .line 406
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 409
    :goto_2
    return-void

    .line 377
    :cond_2
    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    if-ne v7, v0, :cond_0

    goto :goto_0

    .line 393
    :cond_3
    aget v6, v1, v3

    .line 394
    if-eqz v6, :cond_4

    .line 397
    :goto_3
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v8, v4, 0x1

    and-int/lit16 v9, v6, 0xff

    int-to-byte v9, v9

    int-to-byte v9, v9

    aput-byte v9, v7, v4

    .line 398
    iget-object v4, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v7, v8, 0x1

    shr-int/lit8 v9, v6, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    int-to-byte v9, v9

    aput-byte v9, v4, v8

    .line 399
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v4, v7, 0x1

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, v8, v7

    .line 393
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 395
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    const-string/jumbo v2, "AnimatedGifEncoder"

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "got pixels for frame with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "% transparent pixels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private writeGraphicCtrlExt()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 415
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v2, 0x21

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 416
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v2, 0xf9

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 417
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 419
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transparent:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    const/4 v0, 0x2

    .line 426
    :goto_0
    iget v3, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->dispose:I

    if-gez v3, :cond_2

    .line 429
    :goto_1
    shl-int/lit8 v0, v0, 0x2

    .line 432
    iget-object v3, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    or-int/lit8 v0, v0, 0x0

    or-int/lit8 v0, v0, 0x0

    or-int/2addr v0, v2

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write(I)V

    .line 437
    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->delay:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 438
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transIndex:I

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 439
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 440
    return-void

    .line 419
    :cond_1
    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->hasTransparentPixels:Z

    if-nez v0, :cond_0

    move v0, v1

    move v2, v1

    .line 421
    goto :goto_0

    .line 427
    :cond_2
    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->dispose:I

    and-int/lit8 v0, v0, 0x7

    goto :goto_1
.end method

.method private writeImageDesc()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 446
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 447
    invoke-direct {p0, v2}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 448
    invoke-direct {p0, v2}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 449
    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 450
    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 452
    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->palSize:I

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 463
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method private writeLSD()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 470
    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 471
    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 473
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->palSize:I

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 478
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 479
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 480
    return-void
.end method

.method private writeNetscapeExt()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 486
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 487
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 488
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const-string/jumbo v0, "NETSCAPE2.0"

    .line 489
    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeString(Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 491
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 492
    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->repeat:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 493
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 494
    return-void
.end method

.method private writePalette()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 500
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    iget-object v3, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    array-length v3, v3

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 501
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    array-length v0, v0

    rsub-int v2, v0, 0x300

    move v0, v1

    .line 502
    :goto_0
    if-lt v0, v2, :cond_0

    .line 505
    return-void

    .line 503
    :cond_0
    iget-object v3, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write(I)V

    .line 502
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private writePixels()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 511
    new-instance v0, Lcom/bumptech/glide/gifencoder/LZWEncoder;

    iget v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    iget v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    iget-object v3, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->indexedPixels:[B

    iget v4, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorDepth:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/gifencoder/LZWEncoder;-><init>(II[BI)V

    .line 512
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->encode(Ljava/io/OutputStream;)V

    .line 513
    return-void
.end method

.method private writeShort(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 520
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 521
    return-void
.end method

.method private writeString(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 527
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 530
    return-void

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 527
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addFrame(Landroid/graphics/Bitmap;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 151
    if-nez p1, :cond_1

    .line 152
    :cond_0
    return v1

    .line 151
    :cond_1
    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x1

    .line 156
    :try_start_0
    iget-boolean v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->sizeSet:Z

    if-eqz v2, :cond_3

    .line 160
    :goto_0
    iput-object p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    .line 161
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->getImagePixels()V

    .line 162
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->analyzePixels()V

    .line 163
    iget-boolean v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    if-nez v2, :cond_4

    .line 171
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeGraphicCtrlExt()V

    .line 172
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeImageDesc()V

    .line 173
    iget-boolean v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    if-eqz v2, :cond_5

    .line 176
    :goto_2
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writePixels()V

    .line 177
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    .line 182
    :goto_3
    return v0

    .line 158
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->setSize(II)V

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    move v0, v1

    .line 179
    goto :goto_3

    .line 164
    :cond_4
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeLSD()V

    .line 165
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writePalette()V

    .line 166
    iget v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->repeat:I

    if-ltz v2, :cond_2

    .line 168
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeNetscapeExt()V

    goto :goto_1

    .line 174
    :cond_5
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writePalette()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method public finish()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 190
    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    if-eqz v0, :cond_0

    .line 193
    iput-boolean v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v3, 0x3b

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 196
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 197
    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->closeStream:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    :goto_0
    move v0, v1

    .line 205
    :goto_1
    iput v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transIndex:I

    .line 206
    iput-object v4, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    .line 207
    iput-object v4, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    .line 208
    iput-object v4, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    .line 209
    iput-object v4, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->indexedPixels:[B

    .line 210
    iput-object v4, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    .line 211
    iput-boolean v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->closeStream:Z

    .line 212
    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    .line 214
    return v0

    .line 191
    :cond_0
    return v2

    .line 198
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    move v0, v2

    .line 201
    goto :goto_1
.end method

.method public setDelay(I)V
    .locals 2

    .prologue
    .line 94
    int-to-float v0, p1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->delay:I

    .line 95
    return-void
.end method

.method public setDispose(I)V
    .locals 0

    .prologue
    .line 106
    if-gez p1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->dispose:I

    goto :goto_0
.end method

.method public setFrameRate(F)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 225
    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    .line 226
    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->delay:I

    .line 228
    :cond_0
    return-void
.end method

.method public setQuality(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 240
    if-lt p1, v0, :cond_0

    .line 242
    :goto_0
    iput p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->sample:I

    .line 243
    return-void

    :cond_0
    move p1, v0

    .line 241
    goto :goto_0
.end method

.method public setRepeat(I)V
    .locals 0

    .prologue
    .line 120
    if-gez p1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->repeat:I

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 255
    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    if-nez v0, :cond_1

    .line 257
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    .line 258
    iput p2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    .line 259
    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    if-lt v0, v1, :cond_2

    .line 261
    :goto_0
    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    if-lt v0, v1, :cond_3

    .line 263
    :goto_1
    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->sizeSet:Z

    .line 264
    return-void

    .line 255
    :cond_1
    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    if-nez v0, :cond_0

    .line 256
    return-void

    :cond_2
    const/16 v0, 0x140

    .line 260
    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    goto :goto_0

    :cond_3
    const/16 v0, 0xf0

    .line 262
    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    goto :goto_1
.end method

.method public setTransparent(I)V
    .locals 1

    .prologue
    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transparent:Ljava/lang/Integer;

    .line 137
    return-void
.end method

.method public start(Ljava/io/OutputStream;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 275
    if-eqz p1, :cond_0

    .line 277
    const/4 v0, 0x1

    .line 278
    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->closeStream:Z

    .line 279
    iput-object p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    :try_start_0
    const-string/jumbo v2, "GIF89a"

    .line 281
    invoke-direct {p0, v2}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    iput-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    return v0

    .line 276
    :cond_0
    return v1

    .line 284
    :catch_0
    move-exception v0

    move v0, v1

    .line 283
    goto :goto_0
.end method

.method public start(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 298
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    .line 299
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->start(Ljava/io/OutputStream;)Z

    move-result v0

    .line 300
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->closeStream:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    iput-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    return v0

    .line 303
    :catch_0
    move-exception v0

    .line 302
    const/4 v0, 0x0

    goto :goto_0
.end method
