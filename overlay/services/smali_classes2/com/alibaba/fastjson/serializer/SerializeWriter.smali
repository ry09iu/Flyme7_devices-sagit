.class public final Lcom/alibaba/fastjson/serializer/SerializeWriter;
.super Ljava/io/Writer;
.source "SerializeWriter.java"


# static fields
.field private static final bufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field

.field private static final bytesBufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[B>;"
        }
    .end annotation
.end field

.field static final nonDirectFeatures:I


# instance fields
.field protected beanToArray:Z

.field protected browserSecure:Z

.field protected buf:[C

.field protected count:I

.field protected disableCircularReferenceDetect:Z

.field protected features:I

.field protected keySeperator:C

.field protected maxBufSize:I

.field protected notWriteDefaultValue:Z

.field protected quoteFieldNames:Z

.field protected sepcialBits:J

.field protected sortField:Z

.field protected useSingleQuotes:Z

.field protected writeDirect:Z

.field protected writeEnumUsingName:Z

.field protected writeEnumUsingToString:Z

.field protected writeNonStringValueAsString:Z

.field private final writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    .line 37
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    .line 157
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/lit8 v0, v0, 0x0

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreErrorGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sput v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->nonDirectFeatures:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    check-cast v0, Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;)V

    .line 70
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    .prologue
    .line 73
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->EMPTY:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 3

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    .line 131
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 133
    if-lez p2, :cond_0

    .line 136
    new-array v0, p2, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 138
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->computeFeatures()V

    .line 139
    return-void

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Negative initial size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs constructor <init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    .line 91
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 93
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 95
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    if-nez v0, :cond_0

    const/16 v0, 0x800

    .line 98
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 102
    :goto_0
    array-length v1, p3

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v1, :cond_1

    .line 105
    iput p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 107
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->computeFeatures()V

    .line 108
    return-void

    .line 96
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    :cond_1
    aget-object v2, p3, v0

    .line 103
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v2

    or-int/2addr p2, v2

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public varargs constructor <init>(Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 82
    return-void
.end method

.method public varargs constructor <init>([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 78
    return-void
.end method

.method private encodeToUTF8(Ljava/io/OutputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 424
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, v2

    double-to-int v1, v0

    .line 425
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 427
    if-eqz v0, :cond_0

    .line 432
    :goto_0
    array-length v2, v0

    if-lt v2, v1, :cond_1

    .line 436
    :goto_1
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v1, v4, v2, v0}, Lcom/alibaba/fastjson/util/IOUtils;->encodeUTF8([CII[B)I

    move-result v1

    .line 437
    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 438
    return v1

    :cond_0
    const/16 v0, 0x2000

    .line 428
    new-array v0, v0, [B

    .line 429
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 433
    :cond_1
    new-array v0, v1, [B

    goto :goto_1
.end method

.method private encodeToUTF8Bytes()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 442
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, v2

    double-to-int v1, v0

    .line 443
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 445
    if-eqz v0, :cond_0

    .line 450
    :goto_0
    array-length v2, v0

    if-lt v2, v1, :cond_1

    .line 454
    :goto_1
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v1, v4, v2, v0}, Lcom/alibaba/fastjson/util/IOUtils;->encodeUTF8([CII[B)I

    move-result v1

    .line 455
    new-array v2, v1, [B

    .line 456
    invoke-static {v0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    return-object v2

    :cond_0
    const/16 v0, 0x2000

    .line 446
    new-array v0, v0, [B

    .line 447
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 451
    :cond_1
    new-array v0, v1, [B

    goto :goto_1
.end method

.method private writeEnumFieldValue(CLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2083
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-nez v0, :cond_0

    .line 2086
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;)V

    .line 2088
    :goto_0
    return-void

    .line 2084
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 2334
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    .line 2336
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 2337
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, v6

    add-int/lit8 v3, v0, 0x1

    .line 2338
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-gt v3, v0, :cond_0

    .line 2378
    :goto_0
    if-eqz v6, :cond_b

    .line 2389
    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2390
    add-int v2, v4, v6

    const/4 v0, 0x0

    .line 2392
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v0, v6, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 2393
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2395
    const/4 v1, 0x0

    move v0, v4

    .line 2397
    :goto_1
    if-lt v0, v2, :cond_d

    .line 2431
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v3, -0x1

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    .line 2432
    return-void

    .line 2339
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_1

    .line 2375
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0

    .line 2340
    :cond_1
    if-eqz v6, :cond_2

    .line 2347
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2348
    :goto_2
    if-lt v1, v6, :cond_3

    move v1, v0

    .line 2356
    :goto_3
    if-nez v1, :cond_6

    :goto_4
    const/4 v0, 0x0

    .line 2359
    :goto_5
    if-lt v0, v6, :cond_7

    .line 2368
    if-nez v1, :cond_a

    :goto_6
    const/16 v0, 0x3a

    .line 2371
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2372
    return-void

    :cond_2
    const/16 v0, 0x27

    .line 2341
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 v0, 0x27

    .line 2342
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 v0, 0x3a

    .line 2343
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2344
    return-void

    .line 2349
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2350
    array-length v3, v5

    if-lt v2, v3, :cond_5

    .line 2348
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2350
    :cond_5
    aget-byte v2, v5, v2

    if-eqz v2, :cond_4

    .line 2351
    const/4 v0, 0x1

    move v1, v0

    .line 2352
    goto :goto_3

    :cond_6
    const/16 v0, 0x27

    .line 2357
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_4

    .line 2360
    :cond_7
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2361
    array-length v3, v5

    if-lt v2, v3, :cond_9

    .line 2365
    :cond_8
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2359
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2361
    :cond_9
    aget-byte v3, v5, v2

    if-eqz v3, :cond_8

    const/16 v3, 0x5c

    .line 2362
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2363
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v2, v3, v2

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_7

    :cond_a
    const/16 v0, 0x27

    .line 2369
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_6

    .line 2379
    :cond_b
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0x3

    .line 2380
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-gt v0, v1, :cond_c

    .line 2383
    :goto_8
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v2, 0x27

    aput-char v2, v0, v1

    .line 2384
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v2, 0x27

    aput-char v2, v0, v1

    .line 2385
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    .line 2386
    return-void

    .line 2381
    :cond_c
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_8

    .line 2398
    :cond_d
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v6, v6, v0

    .line 2399
    array-length v7, v5

    if-lt v6, v7, :cond_f

    .line 2397
    :cond_e
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 2399
    :cond_f
    aget-byte v7, v5, v6

    if-eqz v7, :cond_e

    .line 2400
    if-eqz v1, :cond_10

    .line 2417
    add-int/lit8 v3, v3, 0x1

    .line 2418
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v7, v7

    if-gt v3, v7, :cond_12

    .line 2421
    :goto_a
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2423
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v0, 0x1

    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v0, 0x2

    sub-int v11, v2, v0

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2424
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v8, 0x5c

    aput-char v8, v7, v0

    .line 2425
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v0, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v6, v8, v6

    int-to-char v6, v6

    aput-char v6, v7, v0

    .line 2426
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2401
    :cond_10
    add-int/lit8 v3, v3, 0x3

    .line 2402
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-gt v3, v1, :cond_11

    .line 2405
    :goto_b
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2407
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v0, 0x1

    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v0, 0x3

    sub-int v10, v2, v0

    add-int/lit8 v10, v10, -0x1

    invoke-static {v1, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2408
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v9, 0x1

    invoke-static {v1, v7, v8, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2409
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v7, 0x27

    aput-char v7, v1, v4

    .line 2410
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v0, 0x1

    const/16 v7, 0x5c

    aput-char v7, v1, v0

    .line 2411
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v0, 0x1

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v6, v7, v6

    int-to-char v6, v6

    aput-char v6, v1, v0

    .line 2412
    add-int/lit8 v2, v2, 0x2

    .line 2413
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v6, -0x2

    const/16 v7, 0x27

    aput-char v7, v1, v6

    .line 2415
    const/4 v1, 0x1

    goto :goto_9

    .line 2403
    :cond_11
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_b

    .line 2419
    :cond_12
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_a
.end method


# virtual methods
.method public append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 0

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 309
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 3

    .prologue
    .line 296
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 297
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    .line 298
    return-object p0

    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 3

    .prologue
    .line 302
    if-eqz p1, :cond_0

    :goto_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 303
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    .line 304
    return-object p0

    :cond_0
    const-string/jumbo p1, "null"

    goto :goto_0
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 473
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_1

    .line 476
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    const/high16 v1, 0x20000

    if-le v0, v1, :cond_2

    .line 480
    :goto_1
    iput-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 481
    return-void

    .line 473
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-lez v0, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    goto :goto_0

    .line 477
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected computeFeatures()V
    .locals 10

    .prologue
    const-wide v8, 0x50000304ffffffffL    # 2.3175490007226655E77

    const-wide v6, 0x8004ffffffffL

    const-wide v4, 0x4ffffffffL

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 169
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    .line 170
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    .line 171
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sortField:Z

    .line 172
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->disableCircularReferenceDetect:Z

    .line 173
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-nez v0, :cond_5

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->beanToArray:Z

    .line 174
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-nez v0, :cond_6

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNonStringValueAsString:Z

    .line 175
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-nez v0, :cond_7

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->notWriteDefaultValue:Z

    .line 176
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-nez v0, :cond_8

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    .line 177
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-nez v0, :cond_9

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    .line 179
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-nez v0, :cond_a

    :cond_0
    :goto_9
    move v0, v1

    :goto_a
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeDirect:Z

    .line 184
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-nez v0, :cond_d

    const/16 v0, 0x22

    :goto_b
    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    .line 186
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-nez v0, :cond_e

    :goto_c
    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->browserSecure:Z

    .line 203
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->browserSecure:Z

    if-nez v0, :cond_f

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-nez v0, :cond_10

    move-wide v0, v4

    :goto_d
    iput-wide v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sepcialBits:J

    .line 206
    return-void

    :cond_1
    move v0, v2

    .line 169
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 170
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 171
    goto :goto_2

    :cond_4
    move v0, v2

    .line 172
    goto :goto_3

    :cond_5
    move v0, v2

    .line 173
    goto :goto_4

    :cond_6
    move v0, v2

    .line 174
    goto :goto_5

    :cond_7
    move v0, v2

    .line 175
    goto :goto_6

    :cond_8
    move v0, v2

    .line 176
    goto :goto_7

    :cond_9
    move v0, v2

    .line 177
    goto :goto_8

    .line 179
    :cond_a
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->nonDirectFeatures:I

    and-int/2addr v0, v3

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->beanToArray:Z

    if-eqz v0, :cond_c

    :cond_b
    move v0, v2

    goto :goto_a

    :cond_c
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    if-nez v0, :cond_b

    goto :goto_9

    :cond_d
    const/16 v0, 0x27

    .line 184
    goto :goto_b

    :cond_e
    move v1, v2

    .line 186
    goto :goto_c

    :cond_f
    move-wide v0, v8

    .line 203
    goto :goto_d

    :cond_10
    move-wide v0, v6

    goto :goto_d
.end method

.method public config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 2

    .prologue
    .line 142
    if-nez p2, :cond_1

    .line 151
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 154
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->computeFeatures()V

    .line 155
    return-void

    .line 143
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 145
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq p1, v0, :cond_2

    .line 147
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne p1, v0, :cond_0

    .line 148
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    goto :goto_0

    .line 146
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    goto :goto_0
.end method

.method public expandCapacity(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 281
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 287
    if-lt v0, p1, :cond_1

    move p1, v0

    .line 290
    :cond_1
    new-array v0, p1, [C

    .line 291
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 293
    return-void

    .line 281
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    if-lt p1, v0, :cond_0

    .line 282
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "serialize exceeded MAX_OUTPUT_LENGTH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", minimumCapacity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2435
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 2440
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Writer;->write([CII)V

    .line 2441
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2445
    iput v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2446
    return-void

    .line 2436
    :cond_0
    return-void

    .line 2444
    :catch_0
    move-exception v0

    .line 2443
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBufferLength()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    return v0
.end method

.method public getMaxBufSize()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 221
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 217
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    iget v2, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNotWriteDefaultValue()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->notWriteDefaultValue:Z

    return v0
.end method

.method public isSortField()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sortField:Z

    return v0
.end method

.method public setMaxBufSize(I)V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 119
    iput p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    .line 120
    return-void

    .line 116
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "must > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return v0
.end method

.method public toBytes(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 405
    if-nez p1, :cond_1

    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0
.end method

.method public toBytes(Ljava/nio/charset/Charset;)[B
    .locals 4

    .prologue
    .line 411
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 415
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    if-eq p1, v0, :cond_1

    .line 418
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0

    .line 412
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->encodeToUTF8Bytes()[B

    move-result-object v0

    return-object v0
.end method

.method public toCharArray()[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 381
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 385
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    new-array v0, v0, [C

    .line 386
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    return-object v0

    .line 382
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toCharArrayForSpringWebSocket()[C
    .locals 5

    .prologue
    .line 395
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 399
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [C

    .line 400
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v4, v4, -0x2

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    return-object v0

    .line 396
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 465
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public write(I)V
    .locals 4

    .prologue
    .line 228
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0x1

    .line 229
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 237
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-char v3, p1

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 238
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 239
    return-void

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v1, :cond_1

    .line 233
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    const/4 v0, 0x1

    .line 234
    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 484
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 489
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    .line 490
    return-void

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 486
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 5

    .prologue
    .line 320
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, p3

    .line 321
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-gt v0, v1, :cond_0

    move v4, v0

    move v0, p3

    move p3, v4

    .line 336
    :goto_0
    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, p2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 337
    iput p3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 338
    return-void

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v1, :cond_2

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v0, v1

    .line 327
    add-int v1, p2, v0

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, p2, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 328
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 329
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 330
    sub-int/2addr p3, v0

    .line 331
    add-int/2addr p2, v0

    .line 332
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-gt p3, v0, :cond_1

    move v0, p3

    .line 333
    goto :goto_0

    .line 323
    :cond_2
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    move v4, v0

    move v0, p3

    move p3, v4

    goto :goto_0
.end method

.method public write(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v13, 0x5b

    const/16 v12, 0x2c

    const/4 v3, 0x1

    const/16 v11, 0x22

    const/4 v2, 0x0

    .line 1552
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1557
    iget v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1559
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    move v5, v2

    move v6, v7

    :goto_0
    if-lt v5, v8, :cond_1

    .line 1615
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v6, 0x1

    const/16 v2, 0x5d

    aput-char v2, v0, v6

    .line 1616
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1617
    return-void

    :cond_0
    const-string/jumbo v0, "[]"

    .line 1553
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 1554
    return-void

    .line 1560
    :cond_1
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1563
    if-eqz v0, :cond_3

    .line 1566
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    move v4, v2

    move v1, v2

    :goto_1
    if-lt v4, v9, :cond_4

    .line 1577
    :cond_2
    :goto_2
    if-nez v1, :cond_7

    .line 1596
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v6

    add-int/lit8 v1, v1, 0x3

    .line 1597
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v5, v4, :cond_b

    .line 1600
    :goto_3
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v4, v4

    if-gt v1, v4, :cond_c

    .line 1605
    :goto_4
    if-eqz v5, :cond_d

    .line 1608
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v6, 0x1

    aput-char v12, v4, v6

    .line 1610
    :goto_5
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v1, 0x1

    aput-char v11, v4, v1

    .line 1611
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {v0, v2, v1, v4, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 1612
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v6

    .line 1613
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v0, 0x1

    aput-char v11, v4, v0

    .line 1559
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v6, v1

    goto :goto_0

    :cond_3
    move v1, v3

    .line 1564
    goto :goto_2

    .line 1567
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v10, 0x20

    .line 1568
    if-ge v1, v10, :cond_6

    :cond_5
    move v1, v3

    :goto_6
    if-nez v1, :cond_2

    .line 1566
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    const/16 v10, 0x7e

    .line 1568
    if-gt v1, v10, :cond_5

    if-eq v1, v11, :cond_5

    const/16 v10, 0x5c

    if-eq v1, v10, :cond_5

    move v1, v2

    goto :goto_6

    .line 1578
    :cond_7
    iput v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1579
    invoke-virtual {p0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    move v1, v2

    .line 1580
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_8

    const/16 v0, 0x5d

    .line 1592
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1593
    return-void

    .line 1581
    :cond_8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1582
    if-nez v1, :cond_9

    .line 1586
    :goto_8
    if-eqz v0, :cond_a

    .line 1589
    invoke-virtual {p0, v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1580
    :goto_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 1583
    :cond_9
    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_8

    :cond_a
    const-string/jumbo v0, "null"

    .line 1587
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_9

    .line 1598
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1601
    :cond_c
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1602
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_4

    .line 1606
    :cond_d
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v6, 0x1

    aput-char v13, v4, v6

    goto :goto_5
.end method

.method public write(Z)V
    .locals 1

    .prologue
    .line 1673
    if-nez p1, :cond_0

    const-string/jumbo v0, "false"

    .line 1676
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 1678
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "true"

    .line 1674
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public write([CII)V
    .locals 4

    .prologue
    .line 249
    if-gez p2, :cond_1

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 249
    :cond_1
    array-length v0, p1

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    add-int v0, p2, p3

    if-ltz v0, :cond_0

    .line 255
    if-eqz p3, :cond_2

    .line 259
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, p3

    .line 260
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-gt v0, v1, :cond_3

    move v3, v0

    move v0, p3

    move p3, v3

    .line 275
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    iput p3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 278
    return-void

    .line 256
    :cond_2
    return-void

    .line 261
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v1, :cond_5

    .line 265
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v0, v1

    .line 266
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 268
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 269
    sub-int/2addr p3, v0

    .line 270
    add-int/2addr p2, v0

    .line 271
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-gt p3, v0, :cond_4

    move v0, p3

    .line 272
    goto :goto_0

    .line 262
    :cond_5
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    move v3, v0

    move v0, p3

    move p3, v3

    goto :goto_0
.end method

.method public writeByteArray([B)V
    .locals 14

    .prologue
    const/16 v2, 0x3d

    const/4 v13, 0x2

    const/4 v1, 0x0

    .line 518
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    array-length v5, p1

    .line 524
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-nez v0, :cond_1

    const/16 v0, 0x22

    .line 525
    :goto_0
    if-eqz v5, :cond_2

    .line 531
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    .line 533
    div-int/lit8 v3, v5, 0x3

    mul-int/lit8 v7, v3, 0x3

    .line 534
    add-int/lit8 v3, v5, -0x1

    div-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v3, v3, 0x2

    .line 536
    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 537
    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v3, v8

    add-int/lit8 v8, v3, 0x2

    .line 538
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-gt v8, v3, :cond_4

    .line 571
    :goto_1
    iput v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 572
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v4, 0x1

    int-to-char v10, v0

    aput-char v10, v9, v4

    move v4, v1

    .line 575
    :goto_2
    if-lt v4, v7, :cond_a

    .line 587
    sub-int v3, v5, v7

    .line 588
    if-gtz v3, :cond_b

    .line 598
    :goto_3
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v8, -0x1

    int-to-char v0, v0

    aput-char v0, v1, v2

    .line 599
    return-void

    .line 519
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeHex([B)V

    .line 520
    return-void

    :cond_1
    const/16 v0, 0x27

    .line 524
    goto :goto_0

    .line 526
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-nez v0, :cond_3

    const-string/jumbo v0, "\"\""

    .line 527
    :goto_4
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 528
    return-void

    :cond_3
    const-string/jumbo v0, "\'\'"

    goto :goto_4

    .line 539
    :cond_4
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v3, :cond_5

    .line 569
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_1

    .line 540
    :cond_5
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    move v3, v1

    .line 542
    :goto_5
    if-lt v3, v7, :cond_6

    .line 554
    sub-int v3, v5, v7

    .line 555
    if-gtz v3, :cond_7

    .line 566
    :goto_6
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 567
    return-void

    .line 544
    :cond_6
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v8, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v3

    add-int/lit8 v3, v8, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v4, v8

    .line 547
    ushr-int/lit8 v8, v4, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-char v8, v6, v8

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 548
    ushr-int/lit8 v8, v4, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-char v8, v6, v8

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 549
    ushr-int/lit8 v8, v4, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-char v8, v6, v8

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 550
    and-int/lit8 v4, v4, 0x3f

    aget-char v4, v6, v4

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_5

    .line 557
    :cond_7
    aget-byte v4, p1, v7

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xa

    if-eq v3, v13, :cond_8

    :goto_7
    or-int/2addr v1, v4

    .line 560
    shr-int/lit8 v4, v1, 0xc

    aget-char v4, v6, v4

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 561
    ushr-int/lit8 v4, v1, 0x6

    and-int/lit8 v4, v4, 0x3f

    aget-char v4, v6, v4

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 562
    if-eq v3, v13, :cond_9

    move v1, v2

    :goto_8
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 563
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_6

    .line 557
    :cond_8
    add-int/lit8 v1, v5, -0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x2

    goto :goto_7

    .line 562
    :cond_9
    and-int/lit8 v1, v1, 0x3f

    aget-char v1, v6, v1

    goto :goto_8

    .line 577
    :cond_a
    add-int/lit8 v9, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v9, v4

    add-int/lit8 v4, v10, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    .line 580
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v3, 0x1

    ushr-int/lit8 v12, v9, 0x12

    and-int/lit8 v12, v12, 0x3f

    aget-char v12, v6, v12

    int-to-char v12, v12

    aput-char v12, v10, v3

    .line 581
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v11, 0x1

    ushr-int/lit8 v12, v9, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-char v12, v6, v12

    int-to-char v12, v12

    aput-char v12, v3, v11

    .line 582
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v10, 0x1

    ushr-int/lit8 v12, v9, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-char v12, v6, v12

    int-to-char v12, v12

    aput-char v12, v3, v10

    .line 583
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v11, 0x1

    and-int/lit8 v9, v9, 0x3f

    aget-char v9, v6, v9

    int-to-char v9, v9

    aput-char v9, v10, v11

    goto/16 :goto_2

    .line 590
    :cond_b
    aget-byte v4, p1, v7

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xa

    if-eq v3, v13, :cond_c

    :goto_9
    or-int/2addr v1, v4

    .line 593
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v8, -0x5

    shr-int/lit8 v7, v1, 0xc

    aget-char v7, v6, v7

    int-to-char v7, v7

    aput-char v7, v4, v5

    .line 594
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v8, -0x4

    ushr-int/lit8 v7, v1, 0x6

    and-int/lit8 v7, v7, 0x3f

    aget-char v7, v6, v7

    int-to-char v7, v7

    aput-char v7, v4, v5

    .line 595
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v8, -0x3

    if-eq v3, v13, :cond_d

    move v1, v2

    :goto_a
    int-to-char v1, v1

    aput-char v1, v4, v5

    .line 596
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v8, -0x2

    aput-char v2, v1, v3

    goto/16 :goto_3

    .line 590
    :cond_c
    add-int/lit8 v1, v5, -0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x2

    goto :goto_9

    .line 595
    :cond_d
    and-int/lit8 v1, v1, 0x3f

    aget-char v1, v6, v1

    goto :goto_a
.end method

.method public writeDouble(DZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 665
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 667
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 680
    :cond_1
    :goto_0
    return-void

    .line 666
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 669
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 670
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 674
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 676
    if-eqz p3, :cond_1

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x44

    .line 677
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, ".0"

    .line 670
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 671
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public writeEnum(Ljava/lang/Enum;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 683
    if-eqz p1, :cond_1

    .line 689
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    if-nez v1, :cond_2

    .line 691
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-nez v1, :cond_3

    move-object v1, v0

    .line 695
    :goto_0
    if-nez v1, :cond_4

    .line 701
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 703
    :goto_1
    return-void

    .line 684
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 685
    return-void

    .line 689
    :cond_2
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-nez v1, :cond_0

    .line 690
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 692
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 696
    :cond_4
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x22

    .line 697
    :goto_2
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 698
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_1

    :cond_5
    const/16 v0, 0x27

    .line 696
    goto :goto_2
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2294
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 2295
    return-void
.end method

.method public writeFieldName(Ljava/lang/String;Z)V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/16 v10, 0x3a

    const/4 v1, 0x0

    .line 2298
    if-eqz p1, :cond_0

    .line 2303
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-nez v0, :cond_1

    .line 2311
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-nez v0, :cond_3

    .line 2314
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    move v3, v1

    .line 2315
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_5

    .line 2323
    :goto_2
    if-nez v0, :cond_a

    .line 2326
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 2327
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2331
    :goto_3
    return-void

    :cond_0
    const-string/jumbo v0, "null:"

    .line 2299
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 2300
    return-void

    .line 2304
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-nez v0, :cond_2

    .line 2308
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V

    goto :goto_3

    .line 2305
    :cond_2
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 2306
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_3

    .line 2312
    :cond_3
    invoke-virtual {p0, p1, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_3

    :cond_4
    move v0, v2

    .line 2314
    goto :goto_0

    .line 2316
    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x40

    .line 2317
    if-lt v4, v5, :cond_7

    :cond_6
    const/16 v5, 0x5c

    if-eq v4, v5, :cond_8

    move v4, v1

    .line 2318
    :goto_4
    if-nez v4, :cond_9

    .line 2315
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2317
    :cond_7
    iget-wide v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sepcialBits:J

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v4

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_6

    :cond_8
    move v4, v2

    goto :goto_4

    :cond_9
    move v0, v2

    .line 2320
    goto :goto_2

    .line 2324
    :cond_a
    invoke-virtual {p0, p1, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_3
.end method

.method public writeFieldNameDirect(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/16 v5, 0x22

    .line 1534
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1535
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x3

    .line 1537
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 1541
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v2, 0x1

    .line 1543
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v5, v3, v4

    const/4 v3, 0x0

    .line 1544
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v3, v0, v4, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1546
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1547
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x2

    aput-char v5, v0, v1

    .line 1548
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    .line 1549
    return-void

    .line 1538
    :cond_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;C)V
    .locals 1

    .prologue
    .line 1621
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1622
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1623
    if-eqz p3, :cond_0

    .line 1626
    invoke-static {p3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 1628
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "\u0000"

    .line 1624
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;D)V
    .locals 1

    .prologue
    .line 1765
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1766
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1767
    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeDouble(DZ)V

    .line 1768
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;F)V
    .locals 1

    .prologue
    .line 1759
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1760
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1761
    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFloat(FZ)V

    .line 1762
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v0, -0x80000000

    .line 1681
    if-ne p3, v0, :cond_1

    .line 1682
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1683
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1684
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 1685
    return-void

    .line 1681
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v0, :cond_0

    .line 1688
    if-ltz p3, :cond_2

    invoke-static {p3}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    .line 1690
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 1691
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    .line 1692
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-gt v0, v2, :cond_3

    .line 1702
    :goto_1
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1703
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1705
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    int-to-char v3, p1

    aput-char v3, v0, v2

    .line 1707
    add-int v0, v2, v1

    add-int/lit8 v0, v0, 0x1

    .line 1709
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v2, 0x1

    iget-char v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    int-to-char v5, v5

    aput-char v5, v3, v4

    .line 1711
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p2, v6, v1, v3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1713
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v0, 0x1

    iget-char v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 1714
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v0, 0x2

    const/16 v2, 0x3a

    aput-char v2, v1, v0

    .line 1716
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p3, v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 1717
    return-void

    .line 1688
    :cond_2
    neg-int v0, p3

    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1693
    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v2, :cond_4

    .line 1699
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_1

    .line 1694
    :cond_4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1695
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1696
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 1697
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;J)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    .line 1720
    cmp-long v0, p3, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    .line 1727
    cmp-long v0, p3, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    neg-long v2, p3

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1729
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1730
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    .line 1731
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-gt v0, v3, :cond_3

    .line 1741
    :goto_2
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1742
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1744
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    int-to-char v4, p1

    aput-char v4, v0, v3

    .line 1746
    add-int v0, v3, v2

    add-int/lit8 v0, v0, 0x1

    .line 1748
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v3, 0x1

    iget-char v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    int-to-char v6, v6

    aput-char v6, v4, v5

    .line 1750
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p2, v1, v2, v4, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1752
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v0, 0x1

    iget-char v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 1753
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v0, 0x2

    const/16 v2, 0x3a

    aput-char v2, v1, v0

    .line 1755
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p3, p4, v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 1756
    return-void

    .line 1721
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1722
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1723
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 1724
    return-void

    :cond_1
    move v0, v1

    .line 1727
    goto :goto_0

    :cond_2
    invoke-static {p3, p4}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    goto :goto_1

    .line 1732
    :cond_3
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v3, :cond_4

    .line 1738
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_2

    .line 1733
    :cond_4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1734
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1735
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 1736
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/lang/Enum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/lang/String;",
            "Ljava/lang/Enum",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2066
    if-eqz p3, :cond_1

    .line 2073
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    if-nez v0, :cond_2

    .line 2075
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-nez v0, :cond_3

    .line 2078
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 2080
    :goto_0
    return-void

    .line 2067
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2068
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 2069
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 2070
    return-void

    .line 2073
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-nez v0, :cond_0

    .line 2074
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2076
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1771
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-nez v0, :cond_0

    .line 1790
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1791
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1792
    if-eqz p3, :cond_4

    .line 1795
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 1798
    :goto_0
    return-void

    .line 1772
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-nez v0, :cond_1

    .line 1781
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1786
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuoteCheck(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1773
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1774
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1775
    if-eqz p3, :cond_2

    .line 1778
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1776
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 1782
    :cond_3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1783
    const/16 v0, 0x3a

    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1784
    invoke-virtual {p0, p3, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_0

    .line 1793
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/math/BigDecimal;)V
    .locals 1

    .prologue
    .line 2091
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2092
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 2093
    if-eqz p3, :cond_0

    .line 2096
    invoke-virtual {p3}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 2098
    :goto_0
    return-void

    .line 2094
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;Z)V
    .locals 8

    .prologue
    const/4 v1, 0x5

    const/4 v7, 0x0

    .line 1631
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v0, :cond_0

    .line 1637
    if-nez p3, :cond_1

    move v0, v1

    .line 1639
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1640
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    .line 1641
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-gt v0, v3, :cond_2

    .line 1652
    :goto_1
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1653
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1655
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    int-to-char v4, p1

    aput-char v4, v0, v3

    .line 1657
    add-int v0, v3, v2

    add-int/lit8 v0, v0, 0x1

    .line 1659
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v3, 0x1

    iget-char v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    int-to-char v6, v6

    aput-char v6, v4, v5

    .line 1661
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p2, v7, v2, v4, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1663
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v0, 0x1

    iget-char v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 1665
    if-nez p3, :cond_4

    const-string/jumbo v1, ":false"

    .line 1668
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v0, 0x2

    const/4 v3, 0x6

    invoke-static {v1, v7, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1670
    :goto_2
    return-void

    .line 1632
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1633
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1634
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    .line 1635
    return-void

    :cond_1
    const/4 v0, 0x4

    .line 1637
    goto :goto_0

    .line 1642
    :cond_2
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v3, :cond_3

    .line 1649
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_1

    .line 1643
    :cond_3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1644
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    const/16 v0, 0x3a

    .line 1645
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1646
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    .line 1647
    return-void

    :cond_4
    const-string/jumbo v2, ":true"

    .line 1666
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v0, 0x2

    invoke-static {v2, v7, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/16 v9, 0x3a

    const/4 v8, 0x0

    const/16 v7, 0x22

    .line 2024
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2027
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2029
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 2030
    add-int v3, v0, v2

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    .line 2032
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-gt v1, v3, :cond_0

    .line 2042
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-char v5, p1

    aput-char v5, v3, v4

    .line 2044
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v3, 0x2

    .line 2045
    add-int v4, v3, v0

    .line 2047
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v6, 0x1

    aput-char v7, v5, v6

    .line 2048
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p2, v8, v0, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 2050
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2052
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v7, v0, v4

    .line 2054
    add-int/lit8 v0, v4, 0x1

    .line 2055
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v0, 0x1

    aput-char v9, v1, v0

    .line 2056
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v3, 0x1

    aput-char v7, v0, v3

    .line 2059
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p3, v8, v2, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 2060
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x1

    aput-char v7, v0, v1

    .line 2061
    return-void

    .line 2033
    :cond_0
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v3, :cond_1

    .line 2039
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0

    .line 2034
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2035
    invoke-virtual {p0, p2, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 2036
    invoke-virtual {p0, p3, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 2037
    return-void
.end method

.method public writeFieldValueStringWithDoubleQuoteCheck(CLjava/lang/String;Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 1801
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 1804
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1806
    if-eqz p3, :cond_1

    .line 1810
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 1811
    add-int v5, v4, v2

    add-int/lit8 v5, v5, 0x6

    add-int/2addr v3, v5

    .line 1814
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    if-gt v3, v5, :cond_2

    .line 1824
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v0, p1

    int-to-char v7, v0

    aput-char v7, v5, v6

    .line 1826
    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v5, v5, 0x2

    .line 1827
    add-int v6, v5, v4

    .line 1829
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x22

    aput-char v9, v7, v8

    const/4 v7, 0x0

    .line 1830
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v4, v8, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 1832
    move-object/from16 v0, p0

    iput v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1834
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v5, 0x22

    aput-char v5, v4, v6

    .line 1836
    add-int/lit8 v4, v6, 0x1

    .line 1837
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v4, 0x1

    const/16 v7, 0x3a

    aput-char v7, v5, v4

    .line 1839
    if-eqz p3, :cond_4

    .line 1847
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v6, 0x1

    const/16 v5, 0x22

    aput-char v5, v4, v6

    .line 1850
    add-int v10, v11, v2

    const/4 v4, 0x0

    .line 1852
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v2, v5, v11}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v2, -0x1

    .line 1857
    const/4 v5, 0x0

    move v9, v3

    move v3, v11

    .line 1859
    :goto_2
    if-lt v3, v10, :cond_5

    .line 1901
    if-gtz v8, :cond_13

    .line 2020
    :cond_0
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x22

    aput-char v4, v2, v3

    .line 2021
    return-void

    :cond_1
    const/4 v2, 0x4

    .line 1808
    add-int/lit8 v5, v4, 0x8

    add-int/2addr v3, v5

    goto/16 :goto_0

    .line 1815
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v5, :cond_3

    .line 1821
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto/16 :goto_1

    .line 1816
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1817
    const/16 v2, 0x3a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1818
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1819
    return-void

    .line 1840
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v6, 0x1

    const/16 v4, 0x6e

    aput-char v4, v2, v6

    .line 1841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x75

    aput-char v5, v2, v3

    .line 1842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x6c

    aput-char v5, v2, v4

    .line 1843
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v3, 0x1

    const/16 v4, 0x6c

    aput-char v4, v2, v3

    .line 1844
    return-void

    .line 1860
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v6, v4, v3

    const/16 v4, 0x5d

    .line 1862
    if-ge v6, v4, :cond_7

    const/16 v4, 0x40

    .line 1879
    if-lt v6, v4, :cond_c

    :cond_6
    const/16 v4, 0x5c

    if-eq v6, v4, :cond_d

    const/4 v4, 0x0

    .line 1880
    :goto_4
    if-nez v4, :cond_e

    move v4, v2

    move v6, v8

    move v2, v5

    move v5, v7

    move v7, v9

    .line 1859
    :goto_5
    add-int/lit8 v3, v3, 0x1

    move v8, v6

    move v9, v7

    move v7, v5

    move v5, v2

    move v2, v4

    goto/16 :goto_2

    :cond_7
    const/16 v4, 0x7f

    .line 1863
    if-ge v6, v4, :cond_8

    :goto_6
    move v4, v2

    move v6, v8

    move v2, v5

    move v5, v7

    move v7, v9

    goto :goto_5

    :cond_8
    const/16 v4, 0x2028

    if-ne v6, v4, :cond_a

    :cond_9
    const/4 v4, -0x1

    .line 1867
    if-eq v2, v4, :cond_b

    .line 1871
    :goto_7
    add-int/lit8 v4, v8, 0x1

    .line 1874
    add-int/lit8 v5, v9, 0x4

    move v7, v5

    move v5, v3

    move/from16 v16, v2

    move v2, v6

    move v6, v4

    move/from16 v4, v16

    goto :goto_5

    :cond_a
    const/16 v4, 0x2029

    .line 1863
    if-eq v6, v4, :cond_9

    const/16 v4, 0xa0

    if-lt v6, v4, :cond_9

    goto :goto_6

    :cond_b
    move v2, v3

    .line 1868
    goto :goto_7

    .line 1879
    :cond_c
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sepcialBits:J

    const-wide/16 v14, 0x1

    shl-long/2addr v14, v6

    and-long/2addr v12, v14

    const-wide/16 v14, 0x0

    cmp-long v4, v12, v14

    if-eqz v4, :cond_6

    :cond_d
    const/4 v4, 0x1

    goto :goto_4

    .line 1881
    :cond_e
    add-int/lit8 v4, v8, 0x1

    const/16 v5, 0x28

    .line 1885
    if-ne v6, v5, :cond_10

    .line 1892
    :cond_f
    add-int/lit8 v9, v9, 0x4

    move v5, v9

    :goto_8
    const/4 v7, -0x1

    .line 1895
    if-eq v2, v7, :cond_12

    move v7, v5

    move v5, v3

    move/from16 v16, v2

    move v2, v6

    move v6, v4

    move/from16 v4, v16

    goto :goto_5

    :cond_10
    const/16 v5, 0x29

    .line 1885
    if-eq v6, v5, :cond_f

    const/16 v5, 0x3c

    if-eq v6, v5, :cond_f

    const/16 v5, 0x3e

    if-eq v6, v5, :cond_f

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v5, v5

    if-lt v6, v5, :cond_11

    :goto_9
    move v5, v9

    goto :goto_8

    :cond_11
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v5, v5, v6

    const/4 v7, 0x4

    if-eq v5, v7, :cond_f

    goto :goto_9

    :cond_12
    move v2, v6

    move v7, v5

    move v5, v3

    move v6, v4

    move v4, v3

    .line 1896
    goto :goto_5

    .line 1902
    :cond_13
    add-int v3, v9, v8

    .line 1903
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v4, v4

    if-gt v3, v4, :cond_16

    .line 1906
    :goto_a
    move-object/from16 v0, p0

    iput v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v3, 0x1

    .line 1908
    if-eq v8, v3, :cond_17

    const/4 v3, 0x1

    .line 1970
    if-le v8, v3, :cond_0

    .line 1971
    sub-int v3, v2, v11

    move v4, v10

    move/from16 v16, v2

    move v2, v3

    move/from16 v3, v16

    .line 1973
    :goto_b
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 1974
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1976
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->browserSecure:Z

    if-nez v5, :cond_1e

    .line 1987
    :goto_c
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v5, v5

    if-lt v6, v5, :cond_21

    :cond_14
    const/16 v5, 0x2f

    if-eq v6, v5, :cond_23

    :goto_d
    const/16 v5, 0x2028

    .line 2003
    if-ne v6, v5, :cond_25

    .line 2004
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v3, 0x1

    const/16 v8, 0x5c

    aput-char v8, v5, v3

    .line 2005
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v7, 0x1

    const/16 v8, 0x75

    aput-char v8, v3, v7

    .line 2006
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v5, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v6, 0xc

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    int-to-char v8, v8

    aput-char v8, v3, v5

    .line 2007
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v7, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v6, 0x8

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    int-to-char v8, v8

    aput-char v8, v3, v7

    .line 2008
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v5, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v6, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    int-to-char v8, v8

    aput-char v8, v3, v5

    .line 2009
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v7, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v8, v6

    int-to-char v6, v6

    aput-char v6, v5, v7

    .line 2010
    add-int/lit8 v4, v4, 0x5

    .line 1973
    :goto_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1904
    :cond_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto/16 :goto_a

    :cond_17
    const/16 v2, 0x2028

    .line 1909
    if-eq v5, v2, :cond_19

    const/16 v2, 0x2029

    .line 1920
    if-eq v5, v2, :cond_1a

    const/16 v2, 0x28

    .line 1931
    if-ne v5, v2, :cond_1b

    .line 1933
    :cond_18
    add-int/lit8 v2, v7, 0x1

    .line 1934
    add-int/lit8 v3, v7, 0x6

    .line 1935
    sub-int v4, v10, v7

    add-int/lit8 v4, v4, -0x1

    .line 1936
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v6, v2, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v7, 0x1

    const/16 v4, 0x5c

    aput-char v4, v2, v7

    .line 1940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v3, 0x1

    const/16 v6, 0x75

    aput-char v6, v2, v3

    .line 1941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v4, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v5, 0xc

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v4

    .line 1942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v3, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v5, 0x8

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v3

    .line 1943
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v4, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v5, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v4

    .line 1944
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v3, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v3

    goto/16 :goto_3

    .line 1910
    :cond_19
    add-int/lit8 v2, v7, 0x1

    .line 1911
    add-int/lit8 v3, v7, 0x6

    .line 1912
    sub-int v4, v10, v7

    add-int/lit8 v4, v4, -0x1

    .line 1913
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v5, v2, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1914
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v3, 0x5c

    aput-char v3, v2, v7

    .line 1915
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v7, 0x1

    const/16 v4, 0x75

    aput-char v4, v2, v3

    .line 1916
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x32

    aput-char v4, v2, v3

    .line 1917
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x30

    aput-char v4, v2, v3

    .line 1918
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x32

    aput-char v4, v2, v3

    .line 1919
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x38

    aput-char v4, v2, v3

    goto/16 :goto_3

    .line 1921
    :cond_1a
    add-int/lit8 v2, v7, 0x1

    .line 1922
    add-int/lit8 v3, v7, 0x6

    .line 1923
    sub-int v4, v10, v7

    add-int/lit8 v4, v4, -0x1

    .line 1924
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v5, v2, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1925
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v3, 0x5c

    aput-char v3, v2, v7

    .line 1926
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v7, 0x1

    const/16 v4, 0x75

    aput-char v4, v2, v3

    .line 1927
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x32

    aput-char v4, v2, v3

    .line 1928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x30

    aput-char v4, v2, v3

    .line 1929
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x32

    aput-char v4, v2, v3

    .line 1930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x39

    aput-char v4, v2, v3

    goto/16 :goto_3

    :cond_1b
    const/16 v2, 0x29

    .line 1931
    if-eq v5, v2, :cond_18

    const/16 v2, 0x3c

    if-eq v5, v2, :cond_18

    const/16 v2, 0x3e

    if-eq v5, v2, :cond_18

    .line 1947
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v2, v2

    if-lt v5, v2, :cond_1d

    .line 1962
    :cond_1c
    add-int/lit8 v2, v7, 0x1

    .line 1963
    add-int/lit8 v3, v7, 0x2

    .line 1964
    sub-int v4, v10, v7

    add-int/lit8 v4, v4, -0x1

    .line 1965
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v6, v2, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1966
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v3, 0x5c

    aput-char v3, v2, v7

    .line 1967
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v7, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v3

    goto/16 :goto_3

    .line 1947
    :cond_1d
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v2, v2, v5

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1c

    .line 1949
    add-int/lit8 v2, v7, 0x1

    .line 1950
    add-int/lit8 v3, v7, 0x6

    .line 1951
    sub-int v4, v10, v7

    add-int/lit8 v4, v4, -0x1

    .line 1952
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v6, v2, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1955
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v7, 0x1

    const/16 v4, 0x5c

    aput-char v4, v2, v7

    .line 1956
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v3, 0x1

    const/16 v6, 0x75

    aput-char v6, v2, v3

    .line 1957
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v4, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v5, 0xc

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v4

    .line 1958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v3, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v5, 0x8

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v3

    .line 1959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v4, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v5, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v4

    .line 1960
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v3, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v3

    goto/16 :goto_3

    :cond_1e
    const/16 v5, 0x28

    .line 1976
    if-ne v6, v5, :cond_20

    .line 1980
    :cond_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v3, 0x1

    const/16 v8, 0x5c

    aput-char v8, v5, v3

    .line 1981
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v7, 0x1

    const/16 v8, 0x75

    aput-char v8, v3, v7

    .line 1982
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v5, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v6, 0xc

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    int-to-char v8, v8

    aput-char v8, v3, v5

    .line 1983
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v7, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v6, 0x8

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    int-to-char v8, v8

    aput-char v8, v3, v7

    .line 1984
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v5, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v6, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    int-to-char v8, v8

    aput-char v8, v3, v5

    .line 1985
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v7, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v8, v6

    int-to-char v6, v6

    aput-char v6, v5, v7

    .line 1986
    add-int/lit8 v4, v4, 0x5

    goto/16 :goto_e

    :cond_20
    const/16 v5, 0x29

    .line 1976
    if-eq v6, v5, :cond_1f

    const/16 v5, 0x3c

    if-eq v6, v5, :cond_1f

    const/16 v5, 0x3e

    if-eq v6, v5, :cond_1f

    goto/16 :goto_c

    .line 1987
    :cond_21
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v5, v5, v6

    if-eqz v5, :cond_14

    .line 1990
    :cond_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v3, 0x1

    const/16 v8, 0x5c

    aput-char v8, v5, v3

    .line 1991
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v3, v3, v6

    const/4 v5, 0x4

    if-eq v3, v5, :cond_24

    .line 1999
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v7, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v6, v8, v6

    int-to-char v6, v6

    aput-char v6, v5, v7

    .line 2000
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_e

    .line 1987
    :cond_23
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1989
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-nez v5, :cond_22

    goto/16 :goto_d

    .line 1992
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v7, 0x1

    const/16 v8, 0x75

    aput-char v8, v3, v7

    .line 1993
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v5, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v6, 0xc

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    int-to-char v8, v8

    aput-char v8, v3, v5

    .line 1994
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v7, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v6, 0x8

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    int-to-char v8, v8

    aput-char v8, v3, v7

    .line 1995
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v5, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v6, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    int-to-char v8, v8

    aput-char v8, v3, v5

    .line 1996
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v7, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v8, v6

    int-to-char v6, v6

    aput-char v6, v5, v7

    .line 1997
    add-int/lit8 v4, v4, 0x5

    goto/16 :goto_e

    :cond_25
    const/16 v5, 0x2029

    .line 2003
    if-eq v6, v5, :cond_15

    .line 2012
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v3, 0x1

    int-to-char v6, v6

    aput-char v6, v7, v3

    move v3, v5

    goto/16 :goto_e
.end method

.method public writeFloat(FZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 648
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 650
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 662
    :cond_1
    :goto_0
    return-void

    .line 649
    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 652
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 653
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 656
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 658
    if-eqz p2, :cond_1

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x46

    .line 659
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, ".0"

    .line 653
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 654
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public writeHex([B)V
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x37

    const/16 v4, 0x30

    const/16 v10, 0x27

    const/16 v9, 0xa

    .line 602
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x3

    .line 603
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 631
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v5, 0x78

    aput-char v5, v1, v2

    .line 632
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v10, v1, v2

    .line 634
    :goto_1
    array-length v1, p1

    if-lt v0, v1, :cond_5

    .line 644
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v10, v0, v1

    .line 645
    return-void

    .line 604
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v2, :cond_1

    .line 628
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0

    .line 605
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, 0x3

    new-array v5, v1, [C

    .line 607
    const/4 v2, 0x1

    const/16 v1, 0x78

    aput-char v1, v5, v0

    .line 608
    const/4 v1, 0x2

    aput-char v10, v5, v2

    .line 610
    :goto_2
    array-length v2, p1

    if-lt v0, v2, :cond_2

    .line 620
    add-int/lit8 v0, v1, 0x1

    aput-char v10, v5, v1

    .line 622
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, v5}, Ljava/io/Writer;->write([C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    return-void

    .line 611
    :cond_2
    aget-byte v2, p1, v0

    .line 613
    and-int/lit16 v2, v2, 0xff

    .line 614
    shr-int/lit8 v6, v2, 0x4

    .line 615
    and-int/lit8 v7, v2, 0xf

    .line 617
    add-int/lit8 v8, v1, 0x1

    if-lt v6, v9, :cond_3

    move v2, v3

    :goto_3
    add-int/2addr v2, v6

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v5, v1

    .line 618
    add-int/lit8 v1, v8, 0x1

    if-lt v7, v9, :cond_4

    move v2, v3

    :goto_4
    add-int/2addr v2, v7

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v5, v8

    .line 610
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v2, v4

    .line 617
    goto :goto_3

    :cond_4
    move v2, v4

    .line 618
    goto :goto_4

    .line 625
    :catch_0
    move-exception v0

    .line 624
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "writeBytes error."

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 635
    :cond_5
    aget-byte v1, p1, v0

    .line 637
    and-int/lit16 v1, v1, 0xff

    .line 638
    shr-int/lit8 v2, v1, 0x4

    .line 639
    and-int/lit8 v5, v1, 0xf

    .line 641
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v7, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-lt v2, v9, :cond_6

    move v1, v3

    :goto_5
    add-int/2addr v1, v2

    int-to-char v1, v1

    int-to-char v1, v1

    aput-char v1, v6, v7

    .line 642
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v6, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-lt v5, v9, :cond_7

    move v1, v3

    :goto_6
    add-int/2addr v1, v5

    int-to-char v1, v1

    int-to-char v1, v1

    aput-char v1, v2, v6

    .line 634
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_6
    move v1, v4

    .line 641
    goto :goto_5

    :cond_7
    move v1, v4

    .line 642
    goto :goto_6
.end method

.method public writeInt(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v0, -0x80000000

    .line 493
    if-eq p1, v0, :cond_0

    .line 498
    if-ltz p1, :cond_1

    invoke-static {p1}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    .line 500
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v1, v0

    .line 501
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-gt v1, v2, :cond_2

    .line 512
    :goto_1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, v1, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 514
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 515
    return-void

    :cond_0
    const-string/jumbo v0, "-2147483648"

    .line 494
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 495
    return-void

    .line 498
    :cond_1
    neg-int v0, p1

    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 502
    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v2, :cond_3

    .line 505
    new-array v1, v0, [C

    .line 506
    invoke-static {p1, v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 507
    array-length v0, v1

    invoke-virtual {p0, v1, v3, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    .line 508
    return-void

    .line 503
    :cond_3
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_1
.end method

.method public writeLong(J)V
    .locals 7

    .prologue
    const/16 v6, 0x22

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 706
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    const-wide/high16 v4, -0x8000000000000000L

    .line 710
    cmp-long v3, p1, v4

    if-nez v3, :cond_6

    .line 711
    if-nez v0, :cond_5

    const-string/jumbo v0, "-9223372036854775808"

    .line 712
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 713
    :goto_1
    return-void

    .line 706
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 707
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v4, 0x1fffffffffffffL

    cmp-long v0, p1, v4

    if-lez v0, :cond_3

    move v0, v1

    :goto_2
    if-nez v0, :cond_2

    const-wide v4, -0x1fffffffffffffL

    cmp-long v0, p1, v4

    if-ltz v0, :cond_4

    move v0, v1

    :goto_3
    if-nez v0, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    const-string/jumbo v0, "\"-9223372036854775808\""

    .line 711
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-wide/16 v4, 0x0

    .line 716
    cmp-long v3, p1, v4

    if-ltz v3, :cond_7

    :goto_4
    if-nez v1, :cond_8

    neg-long v4, p1

    invoke-static {v4, v5}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 718
    :goto_5
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v3, v1

    .line 719
    if-nez v0, :cond_9

    .line 720
    :goto_6
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v4, v4

    if-gt v3, v4, :cond_a

    .line 737
    :goto_7
    if-nez v0, :cond_d

    .line 742
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, p2, v3, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 745
    :goto_8
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 746
    return-void

    :cond_7
    move v1, v2

    .line 716
    goto :goto_4

    :cond_8
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v1

    goto :goto_5

    .line 719
    :cond_9
    add-int/lit8 v3, v3, 0x2

    goto :goto_6

    .line 721
    :cond_a
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v4, :cond_b

    .line 724
    new-array v3, v1, [C

    .line 725
    invoke-static {p1, p2, v1, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 726
    if-nez v0, :cond_c

    .line 731
    array-length v0, v3

    invoke-virtual {p0, v3, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    .line 733
    :goto_9
    return-void

    .line 722
    :cond_b
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_7

    .line 727
    :cond_c
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 728
    array-length v0, v3

    invoke-virtual {p0, v3, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    .line 729
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_9

    .line 738
    :cond_d
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v6, v0, v1

    .line 739
    add-int/lit8 v0, v3, -0x1

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, p2, v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 740
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v3, -0x1

    aput-char v6, v0, v1

    goto :goto_8
.end method

.method public writeNull()V
    .locals 1

    .prologue
    const-string/jumbo v0, "null"

    .line 749
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 750
    return-void
.end method

.method public writeNull(II)V
    .locals 1

    .prologue
    .line 757
    and-int v0, p1, p2

    if-eqz v0, :cond_1

    .line 763
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-eq p2, v0, :cond_2

    .line 765
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-eq p2, v0, :cond_3

    .line 767
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-eq p2, v0, :cond_4

    .line 769
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-eq p2, v0, :cond_5

    .line 772
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 774
    :goto_0
    return-void

    .line 757
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 759
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 760
    return-void

    :cond_2
    const-string/jumbo v0, "[]"

    .line 764
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, ""

    .line 766
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "false"

    .line 768
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/16 v0, 0x30

    .line 770
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0
.end method

.method public writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 753
    iget v1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(II)V

    .line 754
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2110
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-nez v0, :cond_0

    .line 2113
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 2115
    :goto_0
    return-void

    .line 2111
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;C)V
    .locals 1

    .prologue
    .line 2101
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-nez v0, :cond_0

    .line 2105
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 2107
    :goto_0
    return-void

    .line 2102
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 2103
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0
.end method

.method public writeString([C)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2118
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-nez v0, :cond_0

    .line 2121
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    .line 2122
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 2124
    :goto_0
    return-void

    .line 2119
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote([C)V

    goto :goto_0
.end method

.method public writeStringWithDoubleQuote(Ljava/lang/String;C)V
    .locals 17

    .prologue
    .line 777
    if-eqz p1, :cond_1

    .line 785
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 786
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    .line 787
    if-nez p2, :cond_3

    .line 791
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v4, v4

    if-gt v2, v4, :cond_4

    .line 873
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v11, v4, 0x1

    .line 874
    add-int v10, v11, v3

    .line 876
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v6, 0x22

    aput-char v6, v4, v5

    const/4 v4, 0x0

    .line 877
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v3, v5, v11}, Ljava/lang/String;->getChars(II[CI)V

    .line 879
    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 881
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-nez v3, :cond_15

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v4, -0x1

    .line 985
    const/4 v5, 0x0

    move v3, v11

    move v9, v2

    move v2, v4

    .line 987
    :goto_2
    if-lt v3, v10, :cond_26

    .line 1029
    if-gtz v8, :cond_34

    .line 1146
    :cond_0
    :goto_3
    if-nez p2, :cond_47

    .line 1150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x22

    aput-char v4, v2, v3

    .line 1152
    :goto_4
    return-void

    .line 778
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 779
    if-nez p2, :cond_2

    .line 782
    :goto_5
    return-void

    .line 780
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_5

    .line 788
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 792
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v4, :cond_5

    .line 870
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_1

    :cond_5
    const/16 v2, 0x22

    .line 793
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v2, 0x0

    .line 795
    :goto_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_6

    const/16 v2, 0x22

    .line 864
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 865
    if-nez p2, :cond_14

    .line 868
    :goto_7
    return-void

    .line 796
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 798
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 810
    :goto_8
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 844
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v4, v4

    if-lt v3, v4, :cond_10

    :cond_7
    const/16 v4, 0x2f

    if-eq v3, v4, :cond_12

    .line 861
    :cond_8
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 795
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    const/16 v4, 0x28

    .line 799
    if-ne v3, v4, :cond_b

    :cond_a
    const/16 v4, 0x5c

    .line 800
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 v4, 0x75

    .line 801
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 802
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 803
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0x8

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 804
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 805
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v4, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_a

    :cond_b
    const/16 v4, 0x29

    .line 799
    if-eq v3, v4, :cond_a

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_a

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_a

    goto :goto_8

    :cond_c
    const/16 v4, 0x8

    .line 811
    if-ne v3, v4, :cond_e

    :cond_d
    const/16 v4, 0x5c

    .line 819
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 820
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v3, v4, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_a

    :cond_e
    const/16 v4, 0xc

    .line 811
    if-eq v3, v4, :cond_d

    const/16 v4, 0xa

    if-eq v3, v4, :cond_d

    const/16 v4, 0xd

    if-eq v3, v4, :cond_d

    const/16 v4, 0x9

    if-eq v3, v4, :cond_d

    const/16 v4, 0x22

    if-eq v3, v4, :cond_d

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_d

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_d

    const/16 v4, 0x20

    .line 824
    if-lt v3, v4, :cond_f

    const/16 v4, 0x7f

    .line 834
    if-lt v3, v4, :cond_8

    const/16 v4, 0x5c

    .line 835
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 v4, 0x75

    .line 836
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 837
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 838
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0x8

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 839
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 840
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v4, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_a

    :cond_f
    const/16 v4, 0x5c

    .line 825
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 v4, 0x75

    .line 826
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 v4, 0x30

    .line 827
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 v4, 0x30

    .line 828
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 829
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v5, v3, 0x2

    aget-char v4, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 830
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-char v3, v4, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_a

    .line 844
    :cond_10
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v4, v4, v3

    if-eqz v4, :cond_7

    :cond_11
    const/16 v4, 0x5c

    .line 847
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 848
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v4, v4, v3

    const/4 v5, 0x4

    if-eq v4, v5, :cond_13

    .line 855
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v3, v4, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_a

    .line 844
    :cond_12
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 846
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-nez v4, :cond_11

    goto/16 :goto_9

    :cond_13
    const/16 v4, 0x75

    .line 849
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 850
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 851
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0x8

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 852
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 853
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v4, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_a

    .line 866
    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_7

    :cond_15
    const/4 v3, -0x1

    move v4, v2

    move v2, v3

    move v3, v11

    .line 884
    :goto_b
    if-lt v3, v10, :cond_16

    .line 918
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-gt v4, v3, :cond_1d

    .line 921
    :goto_c
    move-object/from16 v0, p0

    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move v3, v2

    move v2, v10

    .line 923
    :goto_d
    if-ge v3, v11, :cond_1e

    .line 972
    if-nez p2, :cond_25

    .line 976
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x22

    aput-char v4, v2, v3

    .line 979
    :goto_e
    return-void

    .line 885
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v5, v5, v3

    const/16 v6, 0x22

    .line 887
    if-ne v5, v6, :cond_19

    .line 891
    :cond_17
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v3

    .line 884
    :cond_18
    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_19
    const/16 v6, 0x2f

    .line 887
    if-eq v5, v6, :cond_17

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_17

    const/16 v6, 0x8

    .line 895
    if-ne v5, v6, :cond_1b

    .line 901
    :cond_1a
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v3

    .line 902
    goto :goto_f

    :cond_1b
    const/16 v6, 0xc

    .line 895
    if-eq v5, v6, :cond_1a

    const/16 v6, 0xa

    if-eq v5, v6, :cond_1a

    const/16 v6, 0xd

    if-eq v5, v6, :cond_1a

    const/16 v6, 0x9

    if-eq v5, v6, :cond_1a

    const/16 v6, 0x20

    .line 905
    if-lt v5, v6, :cond_1c

    const/16 v6, 0x7f

    .line 911
    if-lt v5, v6, :cond_18

    .line 913
    add-int/lit8 v2, v4, 0x5

    move v4, v2

    move v2, v3

    .line 914
    goto :goto_f

    .line 907
    :cond_1c
    add-int/lit8 v2, v4, 0x5

    move v4, v2

    move v2, v3

    .line 908
    goto :goto_f

    .line 919
    :cond_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_c

    .line 924
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v4, v4, v3

    const/16 v5, 0x8

    .line 926
    if-ne v4, v5, :cond_21

    .line 931
    :cond_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v3, 0x2

    sub-int v9, v2, v3

    add-int/lit8 v9, v9, -0x1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 932
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v6, 0x5c

    aput-char v6, v5, v3

    .line 933
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x1

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v7, v4

    int-to-char v4, v4

    aput-char v4, v5, v6

    .line 934
    add-int/lit8 v2, v2, 0x1

    .line 923
    :cond_20
    :goto_10
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_d

    :cond_21
    const/16 v5, 0xc

    .line 926
    if-eq v4, v5, :cond_1f

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1f

    const/16 v5, 0xd

    if-eq v4, v5, :cond_1f

    const/16 v5, 0x9

    if-eq v4, v5, :cond_1f

    const/16 v5, 0x22

    .line 938
    if-ne v4, v5, :cond_23

    .line 941
    :cond_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v3, 0x2

    sub-int v9, v2, v3

    add-int/lit8 v9, v9, -0x1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 942
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v6, 0x5c

    aput-char v6, v5, v3

    .line 943
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x1

    int-to-char v4, v4

    aput-char v4, v5, v6

    .line 944
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_23
    const/16 v5, 0x2f

    .line 938
    if-eq v4, v5, :cond_22

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_22

    const/16 v5, 0x20

    .line 948
    if-lt v4, v5, :cond_24

    const/16 v5, 0x7f

    .line 960
    if-lt v4, v5, :cond_20

    .line 961
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v3, 0x6

    sub-int v9, v2, v3

    add-int/lit8 v9, v9, -0x1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 962
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v6, 0x5c

    aput-char v6, v5, v3

    .line 963
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x1

    const/16 v7, 0x75

    aput-char v7, v5, v6

    .line 964
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x2

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v8, v4, 0xc

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    int-to-char v7, v7

    aput-char v7, v5, v6

    .line 965
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x3

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v8, v4, 0x8

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    int-to-char v7, v7

    aput-char v7, v5, v6

    .line 966
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x4

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v8, v4, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    int-to-char v7, v7

    aput-char v7, v5, v6

    .line 967
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x5

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v7, v4

    int-to-char v4, v4

    aput-char v4, v5, v6

    .line 968
    add-int/lit8 v2, v2, 0x5

    goto/16 :goto_10

    .line 949
    :cond_24
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v3, 0x6

    sub-int v9, v2, v3

    add-int/lit8 v9, v9, -0x1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 950
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v6, 0x5c

    aput-char v6, v5, v3

    .line 951
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x1

    const/16 v7, 0x75

    aput-char v7, v5, v6

    .line 952
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x2

    const/16 v7, 0x30

    aput-char v7, v5, v6

    .line 953
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x3

    const/16 v7, 0x30

    aput-char v7, v5, v6

    .line 954
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x4

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v8, v4, 0x2

    aget-char v7, v7, v8

    int-to-char v7, v7

    aput-char v7, v5, v6

    .line 955
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x5

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-char v4, v7, v4

    int-to-char v4, v4

    aput-char v4, v5, v6

    .line 956
    add-int/lit8 v2, v2, 0x5

    goto/16 :goto_10

    .line 973
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v3, -0x2

    const/16 v4, 0x22

    aput-char v4, v2, v3

    .line 974
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p2

    int-to-char v4, v0

    aput-char v4, v2, v3

    goto/16 :goto_e

    .line 988
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v6, v4, v3

    const/16 v4, 0x5d

    .line 990
    if-ge v6, v4, :cond_28

    const/16 v4, 0x40

    .line 1007
    if-lt v6, v4, :cond_2d

    :cond_27
    const/16 v4, 0x5c

    if-eq v6, v4, :cond_2e

    const/4 v4, 0x0

    .line 1008
    :goto_11
    if-nez v4, :cond_2f

    move v4, v2

    move v6, v8

    move v2, v5

    move v5, v7

    move v7, v9

    .line 987
    :goto_12
    add-int/lit8 v3, v3, 0x1

    move v8, v6

    move v9, v7

    move v7, v5

    move v5, v2

    move v2, v4

    goto/16 :goto_2

    :cond_28
    const/16 v4, 0x7f

    .line 991
    if-ge v6, v4, :cond_29

    :goto_13
    move v4, v2

    move v6, v8

    move v2, v5

    move v5, v7

    move v7, v9

    goto :goto_12

    :cond_29
    const/16 v4, 0x2028

    if-ne v6, v4, :cond_2b

    :cond_2a
    const/4 v4, -0x1

    .line 995
    if-eq v2, v4, :cond_2c

    .line 999
    :goto_14
    add-int/lit8 v4, v8, 0x1

    .line 1002
    add-int/lit8 v5, v9, 0x4

    move v7, v5

    move v5, v3

    move/from16 v16, v2

    move v2, v6

    move v6, v4

    move/from16 v4, v16

    goto :goto_12

    :cond_2b
    const/16 v4, 0x2029

    .line 991
    if-eq v6, v4, :cond_2a

    const/16 v4, 0xa0

    if-lt v6, v4, :cond_2a

    goto :goto_13

    :cond_2c
    move v2, v3

    .line 996
    goto :goto_14

    .line 1007
    :cond_2d
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sepcialBits:J

    const-wide/16 v14, 0x1

    shl-long/2addr v14, v6

    and-long/2addr v12, v14

    const-wide/16 v14, 0x0

    cmp-long v4, v12, v14

    if-eqz v4, :cond_27

    :cond_2e
    const/4 v4, 0x1

    goto :goto_11

    .line 1009
    :cond_2f
    add-int/lit8 v4, v8, 0x1

    const/16 v5, 0x28

    .line 1013
    if-ne v6, v5, :cond_31

    .line 1020
    :cond_30
    add-int/lit8 v9, v9, 0x4

    move v5, v9

    :goto_15
    const/4 v7, -0x1

    .line 1023
    if-eq v2, v7, :cond_33

    move v7, v5

    move v5, v3

    move/from16 v16, v2

    move v2, v6

    move v6, v4

    move/from16 v4, v16

    goto :goto_12

    :cond_31
    const/16 v5, 0x29

    .line 1013
    if-eq v6, v5, :cond_30

    const/16 v5, 0x3c

    if-eq v6, v5, :cond_30

    const/16 v5, 0x3e

    if-eq v6, v5, :cond_30

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v5, v5

    if-lt v6, v5, :cond_32

    :goto_16
    move v5, v9

    goto :goto_15

    :cond_32
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v5, v5, v6

    const/4 v7, 0x4

    if-eq v5, v7, :cond_30

    goto :goto_16

    :cond_33
    move v2, v6

    move v7, v5

    move v5, v3

    move v6, v4

    move v4, v3

    .line 1024
    goto :goto_12

    .line 1030
    :cond_34
    add-int v3, v9, v8

    .line 1031
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v4, v4

    if-gt v3, v4, :cond_37

    .line 1034
    :goto_17
    move-object/from16 v0, p0

    iput v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v3, 0x1

    .line 1036
    if-eq v8, v3, :cond_38

    const/4 v3, 0x1

    .line 1097
    if-le v8, v3, :cond_0

    .line 1098
    sub-int v3, v2, v11

    move v4, v10

    move/from16 v16, v2

    move v2, v3

    move/from16 v3, v16

    .line 1100
    :goto_18
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 1101
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1103
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->browserSecure:Z

    if-nez v5, :cond_3f

    .line 1114
    :goto_19
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v5, v5

    if-lt v6, v5, :cond_42

    :cond_35
    const/16 v5, 0x2f

    if-eq v6, v5, :cond_44

    :goto_1a
    const/16 v5, 0x2028

    .line 1130
    if-ne v6, v5, :cond_46

    .line 1131
    :cond_36
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v3, 0x1

    const/16 v8, 0x5c

    aput-char v8, v5, v3

    .line 1132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v7, 0x1

    const/16 v8, 0x75

    aput-char v8, v3, v7

    .line 1133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v5, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v6, 0xc

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    int-to-char v8, v8

    aput-char v8, v3, v5

    .line 1134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v7, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v6, 0x8

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    int-to-char v8, v8

    aput-char v8, v3, v7

    .line 1135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v5, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v6, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    int-to-char v8, v8

    aput-char v8, v3, v5

    .line 1136
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v7, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v8, v6

    int-to-char v6, v6

    aput-char v6, v5, v7

    .line 1137
    add-int/lit8 v4, v4, 0x5

    .line 1100
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 1032
    :cond_37
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto/16 :goto_17

    :cond_38
    const/16 v2, 0x2028

    .line 1037
    if-eq v5, v2, :cond_3a

    const/16 v2, 0x2029

    .line 1048
    if-eq v5, v2, :cond_3b

    const/16 v2, 0x28

    .line 1059
    if-ne v5, v2, :cond_3c

    .line 1060
    :cond_39
    add-int/lit8 v2, v7, 0x1

    .line 1061
    add-int/lit8 v3, v7, 0x6

    .line 1062
    sub-int v4, v10, v7

    add-int/lit8 v4, v4, -0x1

    .line 1063
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v6, v2, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v3, 0x5c

    aput-char v3, v2, v7

    .line 1065
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v7, 0x1

    const/16 v4, 0x75

    aput-char v4, v2, v3

    .line 1068
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v5, 0xc

    and-int/lit8 v6, v6, 0xf

    aget-char v4, v4, v6

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 1069
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v5, 0x8

    and-int/lit8 v6, v6, 0xf

    aget-char v4, v4, v6

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 1070
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v4, v4, v6

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 1071
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v3

    goto/16 :goto_3

    .line 1038
    :cond_3a
    add-int/lit8 v2, v7, 0x1

    .line 1039
    add-int/lit8 v3, v7, 0x6

    .line 1040
    sub-int v4, v10, v7

    add-int/lit8 v4, v4, -0x1

    .line 1041
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v5, v2, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v3, 0x5c

    aput-char v3, v2, v7

    .line 1043
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v7, 0x1

    const/16 v4, 0x75

    aput-char v4, v2, v3

    .line 1044
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x32

    aput-char v4, v2, v3

    .line 1045
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x30

    aput-char v4, v2, v3

    .line 1046
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x32

    aput-char v4, v2, v3

    .line 1047
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x38

    aput-char v4, v2, v3

    goto/16 :goto_3

    .line 1049
    :cond_3b
    add-int/lit8 v2, v7, 0x1

    .line 1050
    add-int/lit8 v3, v7, 0x6

    .line 1051
    sub-int v4, v10, v7

    add-int/lit8 v4, v4, -0x1

    .line 1052
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v5, v2, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1053
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v3, 0x5c

    aput-char v3, v2, v7

    .line 1054
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v7, 0x1

    const/16 v4, 0x75

    aput-char v4, v2, v3

    .line 1055
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x32

    aput-char v4, v2, v3

    .line 1056
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x30

    aput-char v4, v2, v3

    .line 1057
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x32

    aput-char v4, v2, v3

    .line 1058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x39

    aput-char v4, v2, v3

    goto/16 :goto_3

    :cond_3c
    const/16 v2, 0x29

    .line 1059
    if-eq v5, v2, :cond_39

    const/16 v2, 0x3c

    if-eq v5, v2, :cond_39

    const/16 v2, 0x3e

    if-eq v5, v2, :cond_39

    .line 1074
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v2, v2

    if-lt v5, v2, :cond_3e

    .line 1089
    :cond_3d
    add-int/lit8 v2, v7, 0x1

    .line 1090
    add-int/lit8 v3, v7, 0x2

    .line 1091
    sub-int v4, v10, v7

    add-int/lit8 v4, v4, -0x1

    .line 1092
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v6, v2, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v3, 0x5c

    aput-char v3, v2, v7

    .line 1094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v7, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v3

    goto/16 :goto_3

    .line 1074
    :cond_3e
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v2, v2, v5

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3d

    .line 1076
    add-int/lit8 v2, v7, 0x1

    .line 1077
    add-int/lit8 v3, v7, 0x6

    .line 1078
    sub-int v4, v10, v7

    add-int/lit8 v4, v4, -0x1

    .line 1079
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v6, v2, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v7, 0x1

    const/16 v4, 0x5c

    aput-char v4, v2, v7

    .line 1083
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v3, 0x1

    const/16 v6, 0x75

    aput-char v6, v2, v3

    .line 1084
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v4, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v5, 0xc

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v4

    .line 1085
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v3, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v5, 0x8

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v3

    .line 1086
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v4, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v5, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v4

    .line 1087
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v3, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v3

    goto/16 :goto_3

    :cond_3f
    const/16 v5, 0x28

    .line 1103
    if-ne v6, v5, :cond_41

    .line 1107
    :cond_40
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v3, 0x1

    const/16 v8, 0x5c

    aput-char v8, v5, v3

    .line 1108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v7, 0x1

    const/16 v8, 0x75

    aput-char v8, v3, v7

    .line 1109
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v5, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v6, 0xc

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    int-to-char v8, v8

    aput-char v8, v3, v5

    .line 1110
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v7, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v6, 0x8

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    int-to-char v8, v8

    aput-char v8, v3, v7

    .line 1111
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v5, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v6, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    int-to-char v8, v8

    aput-char v8, v3, v5

    .line 1112
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v7, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v8, v6

    int-to-char v6, v6

    aput-char v6, v5, v7

    .line 1113
    add-int/lit8 v4, v4, 0x5

    goto/16 :goto_1b

    :cond_41
    const/16 v5, 0x29

    .line 1103
    if-eq v6, v5, :cond_40

    const/16 v5, 0x3c

    if-eq v6, v5, :cond_40

    const/16 v5, 0x3e

    if-eq v6, v5, :cond_40

    goto/16 :goto_19

    .line 1114
    :cond_42
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v5, v5, v6

    if-eqz v5, :cond_35

    .line 1117
    :cond_43
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v3, 0x1

    const/16 v8, 0x5c

    aput-char v8, v5, v3

    .line 1118
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v3, v3, v6

    const/4 v5, 0x4

    if-eq v3, v5, :cond_45

    .line 1126
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v7, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v6, v8, v6

    int-to-char v6, v6

    aput-char v6, v5, v7

    .line 1127
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1b

    .line 1114
    :cond_44
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1116
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-nez v5, :cond_43

    goto/16 :goto_1a

    .line 1119
    :cond_45
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v7, 0x1

    const/16 v8, 0x75

    aput-char v8, v3, v7

    .line 1120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v5, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v6, 0xc

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    int-to-char v8, v8

    aput-char v8, v3, v5

    .line 1121
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v7, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v6, 0x8

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    int-to-char v8, v8

    aput-char v8, v3, v7

    .line 1122
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v5, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v6, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    int-to-char v8, v8

    aput-char v8, v3, v5

    .line 1123
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v7, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v8, v6

    int-to-char v6, v6

    aput-char v6, v5, v7

    .line 1124
    add-int/lit8 v4, v4, 0x5

    goto/16 :goto_1b

    :cond_46
    const/16 v5, 0x2029

    .line 1130
    if-eq v6, v5, :cond_36

    .line 1139
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v3, 0x1

    int-to-char v6, v6

    aput-char v6, v7, v3

    move v3, v5

    goto/16 :goto_1b

    .line 1147
    :cond_47
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v3, -0x2

    const/16 v4, 0x22

    aput-char v4, v2, v3

    .line 1148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p2

    int-to-char v4, v0

    aput-char v4, v2, v3

    goto/16 :goto_4
.end method

.method public writeStringWithDoubleQuote([CC)V
    .locals 17

    .prologue
    .line 1155
    if-eqz p1, :cond_1

    .line 1163
    move-object/from16 v0, p1

    array-length v3, v0

    .line 1164
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    .line 1165
    if-nez p2, :cond_3

    .line 1169
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v4, v4

    if-gt v2, v4, :cond_4

    .line 1251
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v11, v4, 0x1

    .line 1252
    add-int v10, v11, v3

    .line 1254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v5, 0x22

    aput-char v5, v3, v4

    const/4 v3, 0x0

    .line 1256
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p1

    array-length v5, v0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1258
    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1260
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-nez v3, :cond_15

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v4, -0x1

    .line 1364
    const/4 v5, 0x0

    move v3, v11

    move v9, v2

    move v2, v4

    .line 1366
    :goto_2
    if-lt v3, v10, :cond_26

    .line 1408
    if-gtz v8, :cond_34

    .line 1525
    :cond_0
    :goto_3
    if-nez p2, :cond_47

    .line 1529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x22

    aput-char v4, v2, v3

    .line 1531
    :goto_4
    return-void

    .line 1156
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 1157
    if-nez p2, :cond_2

    .line 1160
    :goto_5
    return-void

    .line 1158
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_5

    .line 1166
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1170
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v4, :cond_5

    .line 1248
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_1

    :cond_5
    const/16 v2, 0x22

    .line 1171
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v2, 0x0

    .line 1173
    :goto_6
    move-object/from16 v0, p1

    array-length v3, v0

    if-lt v2, v3, :cond_6

    const/16 v2, 0x22

    .line 1242
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1243
    if-nez p2, :cond_14

    .line 1246
    :goto_7
    return-void

    .line 1174
    :cond_6
    aget-char v3, p1, v2

    .line 1176
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1188
    :goto_8
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1222
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v4, v4

    if-lt v3, v4, :cond_10

    :cond_7
    const/16 v4, 0x2f

    if-eq v3, v4, :cond_12

    .line 1239
    :cond_8
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1173
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    const/16 v4, 0x28

    .line 1177
    if-ne v3, v4, :cond_b

    :cond_a
    const/16 v4, 0x5c

    .line 1178
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 v4, 0x75

    .line 1179
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1180
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1181
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0x8

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1182
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1183
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v4, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_a

    :cond_b
    const/16 v4, 0x29

    .line 1177
    if-eq v3, v4, :cond_a

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_a

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_a

    goto :goto_8

    :cond_c
    const/16 v4, 0x8

    .line 1189
    if-ne v3, v4, :cond_e

    :cond_d
    const/16 v4, 0x5c

    .line 1197
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1198
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v3, v4, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_a

    :cond_e
    const/16 v4, 0xc

    .line 1189
    if-eq v3, v4, :cond_d

    const/16 v4, 0xa

    if-eq v3, v4, :cond_d

    const/16 v4, 0xd

    if-eq v3, v4, :cond_d

    const/16 v4, 0x9

    if-eq v3, v4, :cond_d

    const/16 v4, 0x22

    if-eq v3, v4, :cond_d

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_d

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_d

    const/16 v4, 0x20

    .line 1202
    if-lt v3, v4, :cond_f

    const/16 v4, 0x7f

    .line 1212
    if-lt v3, v4, :cond_8

    const/16 v4, 0x5c

    .line 1213
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 v4, 0x75

    .line 1214
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1215
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1216
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0x8

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1217
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1218
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v4, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_a

    :cond_f
    const/16 v4, 0x5c

    .line 1203
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 v4, 0x75

    .line 1204
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 v4, 0x30

    .line 1205
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 v4, 0x30

    .line 1206
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1207
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v5, v3, 0x2

    aget-char v4, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1208
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-char v3, v4, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_a

    .line 1222
    :cond_10
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v4, v4, v3

    if-eqz v4, :cond_7

    :cond_11
    const/16 v4, 0x5c

    .line 1225
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1226
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v4, v4, v3

    const/4 v5, 0x4

    if-eq v4, v5, :cond_13

    .line 1233
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v3, v4, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_a

    .line 1222
    :cond_12
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1224
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-nez v4, :cond_11

    goto/16 :goto_9

    :cond_13
    const/16 v4, 0x75

    .line 1227
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1228
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1229
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0x8

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1230
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1231
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v4, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_a

    .line 1244
    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_7

    :cond_15
    const/4 v3, -0x1

    move v4, v2

    move v2, v3

    move v3, v11

    .line 1263
    :goto_b
    if-lt v3, v10, :cond_16

    .line 1297
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-gt v4, v3, :cond_1d

    .line 1300
    :goto_c
    move-object/from16 v0, p0

    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move v3, v2

    move v2, v10

    .line 1302
    :goto_d
    if-ge v3, v11, :cond_1e

    .line 1351
    if-nez p2, :cond_25

    .line 1355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x22

    aput-char v4, v2, v3

    .line 1358
    :goto_e
    return-void

    .line 1264
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v5, v5, v3

    const/16 v6, 0x22

    .line 1266
    if-ne v5, v6, :cond_19

    .line 1270
    :cond_17
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v3

    .line 1263
    :cond_18
    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_19
    const/16 v6, 0x2f

    .line 1266
    if-eq v5, v6, :cond_17

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_17

    const/16 v6, 0x8

    .line 1274
    if-ne v5, v6, :cond_1b

    .line 1280
    :cond_1a
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v3

    .line 1281
    goto :goto_f

    :cond_1b
    const/16 v6, 0xc

    .line 1274
    if-eq v5, v6, :cond_1a

    const/16 v6, 0xa

    if-eq v5, v6, :cond_1a

    const/16 v6, 0xd

    if-eq v5, v6, :cond_1a

    const/16 v6, 0x9

    if-eq v5, v6, :cond_1a

    const/16 v6, 0x20

    .line 1284
    if-lt v5, v6, :cond_1c

    const/16 v6, 0x7f

    .line 1290
    if-lt v5, v6, :cond_18

    .line 1292
    add-int/lit8 v2, v4, 0x5

    move v4, v2

    move v2, v3

    .line 1293
    goto :goto_f

    .line 1286
    :cond_1c
    add-int/lit8 v2, v4, 0x5

    move v4, v2

    move v2, v3

    .line 1287
    goto :goto_f

    .line 1298
    :cond_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_c

    .line 1303
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v4, v4, v3

    const/16 v5, 0x8

    .line 1305
    if-ne v4, v5, :cond_21

    .line 1310
    :cond_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v3, 0x2

    sub-int v9, v2, v3

    add-int/lit8 v9, v9, -0x1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1311
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v6, 0x5c

    aput-char v6, v5, v3

    .line 1312
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x1

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v7, v4

    int-to-char v4, v4

    aput-char v4, v5, v6

    .line 1313
    add-int/lit8 v2, v2, 0x1

    .line 1302
    :cond_20
    :goto_10
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_d

    :cond_21
    const/16 v5, 0xc

    .line 1305
    if-eq v4, v5, :cond_1f

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1f

    const/16 v5, 0xd

    if-eq v4, v5, :cond_1f

    const/16 v5, 0x9

    if-eq v4, v5, :cond_1f

    const/16 v5, 0x22

    .line 1317
    if-ne v4, v5, :cond_23

    .line 1320
    :cond_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v3, 0x2

    sub-int v9, v2, v3

    add-int/lit8 v9, v9, -0x1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1321
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v6, 0x5c

    aput-char v6, v5, v3

    .line 1322
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x1

    int-to-char v4, v4

    aput-char v4, v5, v6

    .line 1323
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_23
    const/16 v5, 0x2f

    .line 1317
    if-eq v4, v5, :cond_22

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_22

    const/16 v5, 0x20

    .line 1327
    if-lt v4, v5, :cond_24

    const/16 v5, 0x7f

    .line 1339
    if-lt v4, v5, :cond_20

    .line 1340
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v3, 0x6

    sub-int v9, v2, v3

    add-int/lit8 v9, v9, -0x1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1341
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v6, 0x5c

    aput-char v6, v5, v3

    .line 1342
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x1

    const/16 v7, 0x75

    aput-char v7, v5, v6

    .line 1343
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x2

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v8, v4, 0xc

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    int-to-char v7, v7

    aput-char v7, v5, v6

    .line 1344
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x3

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v8, v4, 0x8

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    int-to-char v7, v7

    aput-char v7, v5, v6

    .line 1345
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x4

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v8, v4, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    int-to-char v7, v7

    aput-char v7, v5, v6

    .line 1346
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x5

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v7, v4

    int-to-char v4, v4

    aput-char v4, v5, v6

    .line 1347
    add-int/lit8 v2, v2, 0x5

    goto/16 :goto_10

    .line 1328
    :cond_24
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v3, 0x6

    sub-int v9, v2, v3

    add-int/lit8 v9, v9, -0x1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1329
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v6, 0x5c

    aput-char v6, v5, v3

    .line 1330
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x1

    const/16 v7, 0x75

    aput-char v7, v5, v6

    .line 1331
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x2

    const/16 v7, 0x30

    aput-char v7, v5, v6

    .line 1332
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x3

    const/16 v7, 0x30

    aput-char v7, v5, v6

    .line 1333
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x4

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v8, v4, 0x2

    aget-char v7, v7, v8

    int-to-char v7, v7

    aput-char v7, v5, v6

    .line 1334
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x5

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-char v4, v7, v4

    int-to-char v4, v4

    aput-char v4, v5, v6

    .line 1335
    add-int/lit8 v2, v2, 0x5

    goto/16 :goto_10

    .line 1352
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v3, -0x2

    const/16 v4, 0x22

    aput-char v4, v2, v3

    .line 1353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p2

    int-to-char v4, v0

    aput-char v4, v2, v3

    goto/16 :goto_e

    .line 1367
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v6, v4, v3

    const/16 v4, 0x5d

    .line 1369
    if-ge v6, v4, :cond_28

    const/16 v4, 0x40

    .line 1386
    if-lt v6, v4, :cond_2d

    :cond_27
    const/16 v4, 0x5c

    if-eq v6, v4, :cond_2e

    const/4 v4, 0x0

    .line 1387
    :goto_11
    if-nez v4, :cond_2f

    move v4, v2

    move v6, v8

    move v2, v5

    move v5, v7

    move v7, v9

    .line 1366
    :goto_12
    add-int/lit8 v3, v3, 0x1

    move v8, v6

    move v9, v7

    move v7, v5

    move v5, v2

    move v2, v4

    goto/16 :goto_2

    :cond_28
    const/16 v4, 0x7f

    .line 1370
    if-ge v6, v4, :cond_29

    :goto_13
    move v4, v2

    move v6, v8

    move v2, v5

    move v5, v7

    move v7, v9

    goto :goto_12

    :cond_29
    const/16 v4, 0x2028

    if-ne v6, v4, :cond_2b

    :cond_2a
    const/4 v4, -0x1

    .line 1374
    if-eq v2, v4, :cond_2c

    .line 1378
    :goto_14
    add-int/lit8 v4, v8, 0x1

    .line 1381
    add-int/lit8 v5, v9, 0x4

    move v7, v5

    move v5, v3

    move/from16 v16, v2

    move v2, v6

    move v6, v4

    move/from16 v4, v16

    goto :goto_12

    :cond_2b
    const/16 v4, 0x2029

    .line 1370
    if-eq v6, v4, :cond_2a

    const/16 v4, 0xa0

    if-lt v6, v4, :cond_2a

    goto :goto_13

    :cond_2c
    move v2, v3

    .line 1375
    goto :goto_14

    .line 1386
    :cond_2d
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sepcialBits:J

    const-wide/16 v14, 0x1

    shl-long/2addr v14, v6

    and-long/2addr v12, v14

    const-wide/16 v14, 0x0

    cmp-long v4, v12, v14

    if-eqz v4, :cond_27

    :cond_2e
    const/4 v4, 0x1

    goto :goto_11

    .line 1388
    :cond_2f
    add-int/lit8 v4, v8, 0x1

    const/16 v5, 0x28

    .line 1392
    if-ne v6, v5, :cond_31

    .line 1399
    :cond_30
    add-int/lit8 v9, v9, 0x4

    move v5, v9

    :goto_15
    const/4 v7, -0x1

    .line 1402
    if-eq v2, v7, :cond_33

    move v7, v5

    move v5, v3

    move/from16 v16, v2

    move v2, v6

    move v6, v4

    move/from16 v4, v16

    goto :goto_12

    :cond_31
    const/16 v5, 0x29

    .line 1392
    if-eq v6, v5, :cond_30

    const/16 v5, 0x3c

    if-eq v6, v5, :cond_30

    const/16 v5, 0x3e

    if-eq v6, v5, :cond_30

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v5, v5

    if-lt v6, v5, :cond_32

    :goto_16
    move v5, v9

    goto :goto_15

    :cond_32
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v5, v5, v6

    const/4 v7, 0x4

    if-eq v5, v7, :cond_30

    goto :goto_16

    :cond_33
    move v2, v6

    move v7, v5

    move v5, v3

    move v6, v4

    move v4, v3

    .line 1403
    goto :goto_12

    .line 1409
    :cond_34
    add-int v3, v9, v8

    .line 1410
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v4, v4

    if-gt v3, v4, :cond_37

    .line 1413
    :goto_17
    move-object/from16 v0, p0

    iput v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v3, 0x1

    .line 1415
    if-eq v8, v3, :cond_38

    const/4 v3, 0x1

    .line 1476
    if-le v8, v3, :cond_0

    .line 1477
    sub-int v3, v2, v11

    move v4, v10

    move/from16 v16, v2

    move v2, v3

    move/from16 v3, v16

    .line 1479
    :goto_18
    move-object/from16 v0, p1

    array-length v5, v0

    if-ge v2, v5, :cond_0

    .line 1480
    aget-char v6, p1, v2

    .line 1482
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->browserSecure:Z

    if-nez v5, :cond_3f

    .line 1493
    :goto_19
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v5, v5

    if-lt v6, v5, :cond_42

    :cond_35
    const/16 v5, 0x2f

    if-eq v6, v5, :cond_44

    :goto_1a
    const/16 v5, 0x2028

    .line 1509
    if-ne v6, v5, :cond_46

    .line 1510
    :cond_36
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v3, 0x1

    const/16 v8, 0x5c

    aput-char v8, v5, v3

    .line 1511
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v7, 0x1

    const/16 v8, 0x75

    aput-char v8, v3, v7

    .line 1512
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v5, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v6, 0xc

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    int-to-char v8, v8

    aput-char v8, v3, v5

    .line 1513
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v7, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v6, 0x8

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    int-to-char v8, v8

    aput-char v8, v3, v7

    .line 1514
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v5, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v6, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    int-to-char v8, v8

    aput-char v8, v3, v5

    .line 1515
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v7, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v8, v6

    int-to-char v6, v6

    aput-char v6, v5, v7

    .line 1516
    add-int/lit8 v4, v4, 0x5

    .line 1479
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 1411
    :cond_37
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto/16 :goto_17

    :cond_38
    const/16 v2, 0x2028

    .line 1416
    if-eq v5, v2, :cond_3a

    const/16 v2, 0x2029

    .line 1427
    if-eq v5, v2, :cond_3b

    const/16 v2, 0x28

    .line 1438
    if-ne v5, v2, :cond_3c

    .line 1439
    :cond_39
    add-int/lit8 v2, v7, 0x1

    .line 1440
    add-int/lit8 v3, v7, 0x6

    .line 1441
    sub-int v4, v10, v7

    add-int/lit8 v4, v4, -0x1

    .line 1442
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v6, v2, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v3, 0x5c

    aput-char v3, v2, v7

    .line 1444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v7, 0x1

    const/16 v4, 0x75

    aput-char v4, v2, v3

    .line 1447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v5, 0xc

    and-int/lit8 v6, v6, 0xf

    aget-char v4, v4, v6

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 1448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v5, 0x8

    and-int/lit8 v6, v6, 0xf

    aget-char v4, v4, v6

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 1449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v4, v4, v6

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 1450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v3

    goto/16 :goto_3

    .line 1417
    :cond_3a
    add-int/lit8 v2, v7, 0x1

    .line 1418
    add-int/lit8 v3, v7, 0x6

    .line 1419
    sub-int v4, v10, v7

    add-int/lit8 v4, v4, -0x1

    .line 1420
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v5, v2, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v3, 0x5c

    aput-char v3, v2, v7

    .line 1422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v7, 0x1

    const/16 v4, 0x75

    aput-char v4, v2, v3

    .line 1423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x32

    aput-char v4, v2, v3

    .line 1424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x30

    aput-char v4, v2, v3

    .line 1425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x32

    aput-char v4, v2, v3

    .line 1426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x38

    aput-char v4, v2, v3

    goto/16 :goto_3

    .line 1428
    :cond_3b
    add-int/lit8 v2, v7, 0x1

    .line 1429
    add-int/lit8 v3, v7, 0x6

    .line 1430
    sub-int v4, v10, v7

    add-int/lit8 v4, v4, -0x1

    .line 1431
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v5, v2, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v3, 0x5c

    aput-char v3, v2, v7

    .line 1433
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v7, 0x1

    const/16 v4, 0x75

    aput-char v4, v2, v3

    .line 1434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x32

    aput-char v4, v2, v3

    .line 1435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x30

    aput-char v4, v2, v3

    .line 1436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x32

    aput-char v4, v2, v3

    .line 1437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x39

    aput-char v4, v2, v3

    goto/16 :goto_3

    :cond_3c
    const/16 v2, 0x29

    .line 1438
    if-eq v5, v2, :cond_39

    const/16 v2, 0x3c

    if-eq v5, v2, :cond_39

    const/16 v2, 0x3e

    if-eq v5, v2, :cond_39

    .line 1453
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v2, v2

    if-lt v5, v2, :cond_3e

    .line 1468
    :cond_3d
    add-int/lit8 v2, v7, 0x1

    .line 1469
    add-int/lit8 v3, v7, 0x2

    .line 1470
    sub-int v4, v10, v7

    add-int/lit8 v4, v4, -0x1

    .line 1471
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v6, v2, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v3, 0x5c

    aput-char v3, v2, v7

    .line 1473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v7, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v4, v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v3

    goto/16 :goto_3

    .line 1453
    :cond_3e
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v2, v2, v5

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3d

    .line 1455
    add-int/lit8 v2, v7, 0x1

    .line 1456
    add-int/lit8 v3, v7, 0x6

    .line 1457
    sub-int v4, v10, v7

    add-int/lit8 v4, v4, -0x1

    .line 1458
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v6, v2, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v7, 0x1

    const/16 v4, 0x5c

    aput-char v4, v2, v7

    .line 1462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v3, 0x1

    const/16 v6, 0x75

    aput-char v6, v2, v3

    .line 1463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v4, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v5, 0xc

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v4

    .line 1464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v3, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v5, 0x8

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v3

    .line 1465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v4, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v7, v5, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v4

    .line 1466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v3, 0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v3

    goto/16 :goto_3

    :cond_3f
    const/16 v5, 0x28

    .line 1482
    if-ne v6, v5, :cond_41

    .line 1486
    :cond_40
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v3, 0x1

    const/16 v8, 0x5c

    aput-char v8, v5, v3

    .line 1487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v7, 0x1

    const/16 v8, 0x75

    aput-char v8, v3, v7

    .line 1488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v5, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v6, 0xc

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    int-to-char v8, v8

    aput-char v8, v3, v5

    .line 1489
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v7, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v6, 0x8

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    int-to-char v8, v8

    aput-char v8, v3, v7

    .line 1490
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v5, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v6, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    int-to-char v8, v8

    aput-char v8, v3, v5

    .line 1491
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v7, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v8, v6

    int-to-char v6, v6

    aput-char v6, v5, v7

    .line 1492
    add-int/lit8 v4, v4, 0x5

    goto/16 :goto_1b

    :cond_41
    const/16 v5, 0x29

    .line 1482
    if-eq v6, v5, :cond_40

    const/16 v5, 0x3c

    if-eq v6, v5, :cond_40

    const/16 v5, 0x3e

    if-eq v6, v5, :cond_40

    goto/16 :goto_19

    .line 1493
    :cond_42
    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v5, v5, v6

    if-eqz v5, :cond_35

    .line 1496
    :cond_43
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v3, 0x1

    const/16 v8, 0x5c

    aput-char v8, v5, v3

    .line 1497
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v3, v3, v6

    const/4 v5, 0x4

    if-eq v3, v5, :cond_45

    .line 1505
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v7, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v6, v8, v6

    int-to-char v6, v6

    aput-char v6, v5, v7

    .line 1506
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1b

    .line 1493
    :cond_44
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1495
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-nez v5, :cond_43

    goto/16 :goto_1a

    .line 1498
    :cond_45
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v7, 0x1

    const/16 v8, 0x75

    aput-char v8, v3, v7

    .line 1499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v5, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v6, 0xc

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    int-to-char v8, v8

    aput-char v8, v3, v5

    .line 1500
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v7, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v6, 0x8

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    int-to-char v8, v8

    aput-char v8, v3, v7

    .line 1501
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v5, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v6, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    int-to-char v8, v8

    aput-char v8, v3, v5

    .line 1502
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v7, 0x1

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v8, v6

    int-to-char v6, v6

    aput-char v6, v5, v7

    .line 1503
    add-int/lit8 v4, v4, 0x5

    goto/16 :goto_1b

    :cond_46
    const/16 v5, 0x2029

    .line 1509
    if-eq v6, v5, :cond_36

    .line 1518
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v3, 0x1

    int-to-char v6, v6

    aput-char v6, v7, v3

    move v3, v5

    goto/16 :goto_1b

    .line 1526
    :cond_47
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v3, -0x2

    const/16 v4, 0x22

    aput-char v4, v2, v3

    .line 1527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p2

    int-to-char v4, v0

    aput-char v4, v2, v3

    goto/16 :goto_4
.end method

.method protected writeStringWithSingleQuote(Ljava/lang/String;)V
    .locals 14

    .prologue
    const/16 v12, 0x2f

    const/16 v11, 0xd

    const/16 v10, 0x5c

    const/16 v9, 0x27

    const/4 v0, 0x0

    .line 2127
    if-eqz p1, :cond_1

    .line 2137
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2138
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v2, v1

    add-int/lit8 v6, v2, 0x2

    .line 2139
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-gt v6, v2, :cond_3

    .line 2158
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v5, v2, 0x1

    .line 2159
    add-int v7, v5, v1

    .line 2161
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v9, v2, v3

    .line 2162
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v0, v1, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 2163
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v2, -0x1

    move v3, v5

    move v4, v0

    .line 2168
    :goto_1
    if-lt v3, v7, :cond_9

    .line 2178
    add-int v1, v6, v4

    .line 2179
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-gt v1, v3, :cond_d

    .line 2182
    :goto_2
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v1, 0x1

    .line 2184
    if-eq v4, v1, :cond_e

    const/4 v1, 0x1

    .line 2188
    if-gt v4, v1, :cond_f

    .line 2206
    :cond_0
    :goto_3
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x1

    aput-char v9, v0, v1

    .line 2207
    return-void

    .line 2128
    :cond_1
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, 0x4

    .line 2129
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-gt v1, v2, :cond_2

    :goto_4
    const-string/jumbo v2, "null"

    const/4 v3, 0x4

    .line 2132
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {v2, v0, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 2133
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2134
    return-void

    .line 2130
    :cond_2
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_4

    .line 2140
    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v2, :cond_4

    .line 2155
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0

    .line 2141
    :cond_4
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2142
    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 2152
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2153
    return-void

    .line 2143
    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2144
    if-gt v1, v11, :cond_7

    .line 2146
    :cond_6
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2147
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2142
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2144
    :cond_7
    if-eq v1, v10, :cond_6

    if-eq v1, v9, :cond_6

    if-eq v1, v12, :cond_8

    .line 2149
    :goto_7
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_6

    .line 2144
    :cond_8
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2145
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_7

    .line 2169
    :cond_9
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v1, v1, v3

    .line 2170
    if-gt v1, v11, :cond_b

    .line 2172
    :cond_a
    add-int/lit8 v0, v4, 0x1

    move v2, v0

    move v0, v1

    move v1, v3

    .line 2168
    :goto_8
    add-int/lit8 v3, v3, 0x1

    move v4, v2

    move v2, v1

    goto :goto_1

    .line 2170
    :cond_b
    if-eq v1, v10, :cond_a

    if-eq v1, v9, :cond_a

    if-eq v1, v12, :cond_c

    move v1, v2

    move v2, v4

    goto :goto_8

    :cond_c
    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2171
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v8

    if-nez v8, :cond_a

    move v1, v2

    move v2, v4

    goto :goto_8

    .line 2180
    :cond_d
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto/16 :goto_2

    .line 2185
    :cond_e
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v2, 0x2

    sub-int v6, v7, v2

    add-int/lit8 v6, v6, -0x1

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2186
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v10, v1, v2

    .line 2187
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v0, v3, v0

    int-to-char v0, v0

    aput-char v0, v1, v2

    goto/16 :goto_3

    .line 2189
    :cond_f
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v2, 0x2

    sub-int v8, v7, v2

    add-int/lit8 v8, v8, -0x1

    invoke-static {v1, v3, v4, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2190
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v10, v1, v2

    .line 2191
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v0, v3, v0

    int-to-char v0, v0

    aput-char v0, v1, v2

    .line 2192
    add-int/lit8 v1, v7, 0x1

    .line 2193
    add-int/lit8 v0, v2, -0x2

    move v13, v0

    move v0, v1

    move v1, v13

    :goto_9
    if-lt v1, v5, :cond_0

    .line 2194
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v2, v2, v1

    .line 2196
    if-gt v2, v11, :cond_12

    .line 2198
    :cond_10
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v1, 0x2

    sub-int v8, v0, v1

    add-int/lit8 v8, v8, -0x1

    invoke-static {v3, v4, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2199
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v10, v3, v1

    .line 2200
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v2, v6, v2

    int-to-char v2, v2

    aput-char v2, v3, v4

    .line 2201
    add-int/lit8 v0, v0, 0x1

    .line 2193
    :cond_11
    :goto_a
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 2196
    :cond_12
    if-eq v2, v10, :cond_10

    if-eq v2, v9, :cond_10

    if-ne v2, v12, :cond_11

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2197
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_a
.end method

.method protected writeStringWithSingleQuote([C)V
    .locals 14

    .prologue
    const/16 v12, 0x2f

    const/16 v11, 0xd

    const/16 v10, 0x5c

    const/16 v9, 0x27

    const/4 v0, 0x0

    .line 2210
    if-eqz p1, :cond_1

    .line 2220
    array-length v1, p1

    .line 2221
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v2, v1

    add-int/lit8 v6, v2, 0x2

    .line 2222
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-gt v6, v2, :cond_3

    .line 2241
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v5, v2, 0x1

    .line 2242
    add-int v7, v5, v1

    .line 2244
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v9, v1, v2

    .line 2246
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, p1

    invoke-static {p1, v0, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2247
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v2, -0x1

    move v3, v5

    move v4, v0

    .line 2252
    :goto_1
    if-lt v3, v7, :cond_9

    .line 2262
    add-int v1, v6, v4

    .line 2263
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-gt v1, v3, :cond_d

    .line 2266
    :goto_2
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v1, 0x1

    .line 2268
    if-eq v4, v1, :cond_e

    const/4 v1, 0x1

    .line 2272
    if-gt v4, v1, :cond_f

    .line 2290
    :cond_0
    :goto_3
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, -0x1

    aput-char v9, v0, v1

    .line 2291
    return-void

    .line 2211
    :cond_1
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v1, 0x4

    .line 2212
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-gt v1, v2, :cond_2

    :goto_4
    const-string/jumbo v2, "null"

    const/4 v3, 0x4

    .line 2215
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {v2, v0, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 2216
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2217
    return-void

    .line 2213
    :cond_2
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_4

    .line 2223
    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v2, :cond_4

    .line 2238
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0

    .line 2224
    :cond_4
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2225
    :goto_5
    array-length v1, p1

    if-lt v0, v1, :cond_5

    .line 2235
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2236
    return-void

    .line 2226
    :cond_5
    aget-char v1, p1, v0

    .line 2227
    if-gt v1, v11, :cond_7

    .line 2229
    :cond_6
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2230
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2225
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2227
    :cond_7
    if-eq v1, v10, :cond_6

    if-eq v1, v9, :cond_6

    if-eq v1, v12, :cond_8

    .line 2232
    :goto_7
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_6

    .line 2227
    :cond_8
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2228
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_7

    .line 2253
    :cond_9
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v1, v1, v3

    .line 2254
    if-gt v1, v11, :cond_b

    .line 2256
    :cond_a
    add-int/lit8 v0, v4, 0x1

    move v2, v0

    move v0, v1

    move v1, v3

    .line 2252
    :goto_8
    add-int/lit8 v3, v3, 0x1

    move v4, v2

    move v2, v1

    goto :goto_1

    .line 2254
    :cond_b
    if-eq v1, v10, :cond_a

    if-eq v1, v9, :cond_a

    if-eq v1, v12, :cond_c

    move v1, v2

    move v2, v4

    goto :goto_8

    :cond_c
    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2255
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v8

    if-nez v8, :cond_a

    move v1, v2

    move v2, v4

    goto :goto_8

    .line 2264
    :cond_d
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto/16 :goto_2

    .line 2269
    :cond_e
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v2, 0x2

    sub-int v6, v7, v2

    add-int/lit8 v6, v6, -0x1

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2270
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v10, v1, v2

    .line 2271
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v0, v3, v0

    int-to-char v0, v0

    aput-char v0, v1, v2

    goto/16 :goto_3

    .line 2273
    :cond_f
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v2, 0x2

    sub-int v8, v7, v2

    add-int/lit8 v8, v8, -0x1

    invoke-static {v1, v3, v4, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2274
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v10, v1, v2

    .line 2275
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v0, v3, v0

    int-to-char v0, v0

    aput-char v0, v1, v2

    .line 2276
    add-int/lit8 v1, v7, 0x1

    .line 2277
    add-int/lit8 v0, v2, -0x2

    move v13, v0

    move v0, v1

    move v1, v13

    :goto_9
    if-lt v1, v5, :cond_0

    .line 2278
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v2, v2, v1

    .line 2280
    if-gt v2, v11, :cond_12

    .line 2282
    :cond_10
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v1, 0x2

    sub-int v8, v0, v1

    add-int/lit8 v8, v8, -0x1

    invoke-static {v3, v4, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2283
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v10, v3, v1

    .line 2284
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v1, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v2, v6, v2

    int-to-char v2, v2

    aput-char v2, v3, v4

    .line 2285
    add-int/lit8 v0, v0, 0x1

    .line 2277
    :cond_11
    :goto_a
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 2280
    :cond_12
    if-eq v2, v10, :cond_10

    if-eq v2, v9, :cond_10

    if-ne v2, v12, :cond_11

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2281
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_a
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 355
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeToEx(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I

    .line 359
    return-void
.end method

.method public writeTo(Ljava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v1, 0x0

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Writer;->write([CII)V

    .line 351
    return-void

    .line 348
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToEx(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 366
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    if-eq p2, v0, :cond_1

    .line 369
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 370
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 371
    array-length v0, v0

    return v0

    .line 363
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->encodeToUTF8(Ljava/io/OutputStream;)I

    move-result v0

    return v0
.end method
