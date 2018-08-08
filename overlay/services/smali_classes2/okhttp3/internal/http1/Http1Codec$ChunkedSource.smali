.class Lokhttp3/internal/http1/Http1Codec$ChunkedSource;
.super Lokhttp3/internal/http1/Http1Codec$AbstractSource;
.source "Http1Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChunkedSource"
.end annotation


# static fields
.field private static final NO_CHUNK_YET:J = -0x1L


# instance fields
.field private bytesRemainingInChunk:J

.field private hasMoreChunks:Z

.field final synthetic this$0:Lokhttp3/internal/http1/Http1Codec;

.field private final url:Lokhttp3/HttpUrl;


# direct methods
.method constructor <init>(Lokhttp3/internal/http1/Http1Codec;Lokhttp3/HttpUrl;)V
    .locals 2

    .prologue
    .line 439
    iput-object p1, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/http1/Http1Codec$AbstractSource;-><init>(Lokhttp3/internal/http1/Http1Codec;Lokhttp3/internal/http1/Http1Codec$1;)V

    const-wide/16 v0, -0x1

    .line 436
    iput-wide v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->hasMoreChunks:Z

    .line 440
    iput-object p2, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->url:Lokhttp3/HttpUrl;

    .line 441
    return-void
.end method

.method private readChunkSize()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 465
    iget-wide v4, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    .line 469
    :cond_0
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readHexadecimalUnsignedLong()J

    move-result-wide v4

    iput-wide v4, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    .line 470
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 471
    iget-wide v4, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    cmp-long v0, v4, v8

    if-gez v0, :cond_3

    move v0, v1

    :goto_0
    if-nez v0, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_4

    .line 478
    :cond_1
    iget-wide v4, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    cmp-long v0, v4, v8

    if-nez v0, :cond_2

    .line 479
    iput-boolean v2, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->hasMoreChunks:Z

    .line 480
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    move-result-object v0

    iget-object v2, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->url:Lokhttp3/HttpUrl;

    iget-object v3, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    invoke-virtual {v3}, Lokhttp3/internal/http1/Http1Codec;->readHeaders()Lokhttp3/Headers;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lokhttp3/internal/http/HttpHeaders;->receiveHeaders(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V

    const/4 v0, 0x0

    .line 481
    invoke-virtual {p0, v1, v0}, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->endOfInput(ZLjava/io/IOException;)V

    .line 483
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 471
    goto :goto_0

    :cond_4
    :try_start_1
    const-string/jumbo v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 472
    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expected chunk size and optional extensions but was \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 477
    :catch_0
    move-exception v0

    .line 476
    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 486
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->closed:Z

    if-nez v0, :cond_1

    .line 487
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->hasMoreChunks:Z

    if-nez v0, :cond_2

    .line 490
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->closed:Z

    .line 491
    return-void

    .line 486
    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x64

    .line 487
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lokhttp3/internal/Util;->discard(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 488
    invoke-virtual {p0, v2, v0}, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->endOfInput(ZLjava/io/IOException;)V

    goto :goto_0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    .line 444
    cmp-long v0, p2, v6

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 445
    :cond_1
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->closed:Z

    if-nez v0, :cond_4

    .line 446
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->hasMoreChunks:Z

    if-eqz v0, :cond_5

    .line 448
    iget-wide v2, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 449
    :cond_2
    invoke-direct {p0}, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->readChunkSize()V

    .line 450
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->hasMoreChunks:Z

    if-eqz v0, :cond_6

    .line 453
    :cond_3
    iget-wide v2, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-super {p0, p1, v2, v3}, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->read(Lokio/Buffer;J)J

    move-result-wide v2

    .line 454
    cmp-long v0, v2, v4

    if-nez v0, :cond_7

    .line 455
    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v2, "unexpected end of stream"

    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0, v1, v0}, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->endOfInput(ZLjava/io/IOException;)V

    .line 457
    throw v0

    .line 445
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_5
    return-wide v4

    .line 450
    :cond_6
    return-wide v4

    .line 459
    :cond_7
    iget-wide v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lokhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    .line 460
    return-wide v2
.end method
