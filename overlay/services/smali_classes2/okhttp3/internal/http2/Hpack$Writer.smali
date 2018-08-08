.class final Lokhttp3/internal/http2/Hpack$Writer;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# static fields
.field private static final SETTINGS_HEADER_TABLE_SIZE:I = 0x1000

.field private static final SETTINGS_HEADER_TABLE_SIZE_LIMIT:I = 0x4000


# instance fields
.field dynamicTable:[Lokhttp3/internal/http2/Header;

.field dynamicTableByteCount:I

.field private emitDynamicTableSizeUpdate:Z

.field headerCount:I

.field headerTableSizeSetting:I

.field maxDynamicTableByteCount:I

.field nextHeaderIndex:I

.field private final out:Lokio/Buffer;

.field private smallestHeaderTableSizeSetting:I

.field private final useCompression:Z


# direct methods
.method constructor <init>(IZLokio/Buffer;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 383
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    const/16 v0, 0x8

    .line 390
    new-array v0, v0, [Lokhttp3/internal/http2/Header;

    iput-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    .line 392
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 393
    iput v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    .line 394
    iput v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    .line 401
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerTableSizeSetting:I

    .line 402
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    .line 403
    iput-boolean p2, p0, Lokhttp3/internal/http2/Hpack$Writer;->useCompression:Z

    .line 404
    iput-object p3, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    .line 405
    return-void
.end method

.method constructor <init>(Lokio/Buffer;)V
    .locals 2

    .prologue
    const/16 v0, 0x1000

    .line 397
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lokhttp3/internal/http2/Hpack$Writer;-><init>(IZLokio/Buffer;)V

    .line 398
    return-void
.end method

.method private adjustDynamicTableByteCount()V
    .locals 2

    .prologue
    .line 581
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    if-lt v0, v1, :cond_0

    .line 588
    :goto_0
    return-void

    .line 582
    :cond_0
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-eqz v0, :cond_1

    .line 585
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lokhttp3/internal/http2/Hpack$Writer;->evictToRecoverBytes(I)I

    goto :goto_0

    .line 583
    :cond_1
    invoke-direct {p0}, Lokhttp3/internal/http2/Hpack$Writer;->clearDynamicTable()V

    goto :goto_0
.end method

.method private clearDynamicTable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 408
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 409
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 410
    iput v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    .line 411
    iput v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    .line 412
    return-void
.end method

.method private evictToRecoverBytes(I)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 417
    if-gtz p1, :cond_0

    .line 430
    :goto_0
    return v1

    .line 419
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v0, v0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    if-ge v0, v2, :cond_2

    .line 425
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    iget v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    iget v4, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    iget v5, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    iget v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 428
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    goto :goto_0

    .line 419
    :cond_2
    if-lez p1, :cond_1

    .line 420
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    aget-object v2, v2, v0

    iget v2, v2, Lokhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr p1, v2

    .line 421
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    iget-object v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    aget-object v3, v3, v0

    iget v3, v3, Lokhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    .line 422
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private insertIntoDynamicTable(Lokhttp3/internal/http2/Header;)V
    .locals 6

    .prologue
    .line 434
    iget v0, p1, Lokhttp3/internal/http2/Header;->hpackSize:I

    .line 437
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-gt v0, v1, :cond_0

    .line 443
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    add-int/2addr v1, v0

    iget v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    sub-int/2addr v1, v2

    .line 444
    invoke-direct {p0, v1}, Lokhttp3/internal/http2/Hpack$Writer;->evictToRecoverBytes(I)I

    .line 446
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v2, v2

    if-gt v1, v2, :cond_1

    .line 452
    :goto_0
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 453
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    aput-object p1, v2, v1

    .line 454
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    .line 455
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    .line 456
    return-void

    .line 438
    :cond_0
    invoke-direct {p0}, Lokhttp3/internal/http2/Hpack$Writer;->clearDynamicTable()V

    .line 439
    return-void

    .line 447
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lokhttp3/internal/http2/Header;

    .line 448
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    const/4 v3, 0x0

    iget-object v4, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v4, v4

    iget-object v5, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 450
    iput-object v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    goto :goto_0
.end method


# virtual methods
.method setHeaderTableSizeSetting(I)V
    .locals 2

    .prologue
    .line 565
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerTableSizeSetting:I

    const/16 v0, 0x4000

    .line 566
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 569
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-eq v1, v0, :cond_0

    .line 571
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-lt v0, v1, :cond_1

    .line 575
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    .line 576
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    .line 577
    invoke-direct {p0}, Lokhttp3/internal/http2/Hpack$Writer;->adjustDynamicTableByteCount()V

    .line 578
    return-void

    .line 569
    :cond_0
    return-void

    .line 572
    :cond_1
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    goto :goto_0
.end method

.method writeByteString(Lokio/ByteString;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x7f

    const/4 v2, 0x0

    .line 552
    iget-boolean v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->useCompression:Z

    if-nez v0, :cond_1

    .line 559
    :cond_0
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0, v3, v2}, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 560
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 562
    :goto_0
    return-void

    .line 552
    :cond_1
    invoke-static {}, Lokhttp3/internal/http2/Huffman;->get()Lokhttp3/internal/http2/Huffman;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Huffman;->encodedLength(Lokio/ByteString;)I

    move-result v0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 553
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 554
    invoke-static {}, Lokhttp3/internal/http2/Huffman;->get()Lokhttp3/internal/http2/Huffman;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lokhttp3/internal/http2/Huffman;->encode(Lokio/ByteString;Lokio/BufferedSink;)V

    .line 555
    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v0

    .line 556
    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v1

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v3, v2}, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 557
    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {v1, v0}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    goto :goto_0
.end method

.method writeHeaders(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x40

    const/16 v3, 0x20

    const/16 v2, 0x1f

    const/4 v4, -0x1

    const/4 v6, 0x0

    .line 461
    iget-boolean v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    if-nez v0, :cond_0

    .line 471
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    move v5, v6

    :goto_1
    if-lt v5, v7, :cond_2

    .line 528
    return-void

    .line 462
    :cond_0
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-lt v0, v1, :cond_1

    .line 466
    :goto_2
    iput-boolean v6, p0, Lokhttp3/internal/http2/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    const v0, 0x7fffffff

    .line 467
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    .line 468
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    invoke-virtual {p0, v0, v2, v3}, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    goto :goto_0

    .line 464
    :cond_1
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    invoke-virtual {p0, v0, v2, v3}, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    goto :goto_2

    .line 472
    :cond_2
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/http2/Header;

    .line 473
    iget-object v1, v0, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v8

    .line 474
    iget-object v9, v0, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    .line 478
    sget-object v1, Lokhttp3/internal/http2/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 479
    if-nez v1, :cond_5

    move v1, v4

    move v2, v4

    .line 494
    :goto_3
    if-eq v2, v4, :cond_a

    .line 507
    :cond_3
    :goto_4
    if-ne v2, v4, :cond_e

    .line 510
    if-eq v1, v4, :cond_f

    .line 516
    sget-object v2, Lokhttp3/internal/http2/Header;->PSEUDO_PREFIX:Lokio/ByteString;

    invoke-virtual {v8, v2}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_4
    const/16 v2, 0x3f

    .line 523
    invoke-virtual {p0, v1, v2, v12}, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 524
    invoke-virtual {p0, v9}, Lokhttp3/internal/http2/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    .line 525
    invoke-direct {p0, v0}, Lokhttp3/internal/http2/Hpack$Writer;->insertIntoDynamicTable(Lokhttp3/internal/http2/Header;)V

    .line 471
    :goto_5
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    .line 480
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    .line 481
    if-gt v1, v2, :cond_7

    :cond_6
    move v2, v4

    goto :goto_3

    :cond_7
    const/16 v2, 0x8

    if-ge v1, v2, :cond_6

    .line 486
    sget-object v2, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    invoke-static {v2, v9}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 488
    sget-object v2, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    aget-object v2, v2, v1

    iget-object v2, v2, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    invoke-static {v2, v9}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v4

    goto :goto_3

    :cond_8
    move v2, v1

    .line 487
    goto :goto_3

    .line 489
    :cond_9
    add-int/lit8 v2, v1, 0x1

    goto :goto_3

    .line 495
    :cond_a
    iget v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v3, v3, 0x1

    iget-object v10, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v10, v10

    :goto_6
    if-ge v3, v10, :cond_3

    .line 496
    iget-object v11, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    aget-object v11, v11, v3

    iget-object v11, v11, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    invoke-static {v11, v8}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 495
    :cond_b
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 497
    :cond_c
    iget-object v11, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    aget-object v11, v11, v3

    iget-object v11, v11, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    invoke-static {v11, v9}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 500
    if-ne v1, v4, :cond_b

    .line 501
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    sub-int v1, v3, v1

    sget-object v11, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    array-length v11, v11

    add-int/2addr v1, v11

    goto :goto_7

    .line 498
    :cond_d
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    sub-int v2, v3, v2

    sget-object v3, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    array-length v3, v3

    add-int/2addr v2, v3

    goto/16 :goto_4

    :cond_e
    const/16 v0, 0x7f

    const/16 v1, 0x80

    .line 509
    invoke-virtual {p0, v2, v0, v1}, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    goto :goto_5

    .line 512
    :cond_f
    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {v1, v12}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 513
    invoke-virtual {p0, v8}, Lokhttp3/internal/http2/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    .line 514
    invoke-virtual {p0, v9}, Lokhttp3/internal/http2/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    .line 515
    invoke-direct {p0, v0}, Lokhttp3/internal/http2/Hpack$Writer;->insertIntoDynamicTable(Lokhttp3/internal/http2/Header;)V

    goto/16 :goto_5

    .line 516
    :cond_10
    sget-object v2, Lokhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    invoke-virtual {v2, v8}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v0, 0xf

    .line 519
    invoke-virtual {p0, v1, v0, v6}, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 520
    invoke-virtual {p0, v9}, Lokhttp3/internal/http2/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    goto/16 :goto_5
.end method

.method writeInt(III)V
    .locals 3

    .prologue
    .line 533
    if-lt p1, p2, :cond_0

    .line 539
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    or-int v1, p3, p2

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 540
    sub-int v0, p1, p2

    :goto_0
    const/16 v1, 0x80

    .line 543
    if-ge v0, v1, :cond_1

    .line 548
    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {v1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 549
    return-void

    .line 534
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    or-int v1, p3, p1

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 535
    return-void

    .line 544
    :cond_1
    and-int/lit8 v1, v0, 0x7f

    .line 545
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v2, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 546
    ushr-int/lit8 v0, v0, 0x7

    goto :goto_0
.end method
