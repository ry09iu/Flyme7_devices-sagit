.class final Lokhttp3/internal/http2/Http2Reader$ContinuationSource;
.super Ljava/lang/Object;
.source "Http2Reader.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContinuationSource"
.end annotation


# instance fields
.field flags:B

.field left:I

.field length:I

.field padding:S

.field private final source:Lokio/BufferedSource;

.field streamId:I


# direct methods
.method constructor <init>(Lokio/BufferedSource;)V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Lokio/BufferedSource;

    .line 361
    return-void
.end method

.method private readContinuationHeader()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 386
    iget v0, p0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->streamId:I

    .line 388
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-static {v1}, Lokhttp3/internal/http2/Http2Reader;->readMedium(Lokio/BufferedSource;)I

    move-result v1

    iput v1, p0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->left:I

    iput v1, p0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->length:I

    .line 389
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 390
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->flags:B

    .line 391
    sget-object v2, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 392
    :goto_0
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, p0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->streamId:I

    const/16 v2, 0x9

    .line 393
    if-ne v1, v2, :cond_1

    .line 394
    iget v1, p0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->streamId:I

    if-ne v1, v0, :cond_2

    .line 395
    return-void

    .line 391
    :cond_0
    sget-object v2, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    iget v3, p0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->streamId:I

    iget v4, p0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->length:I

    iget-byte v5, p0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->flags:B

    invoke-static {v7, v3, v4, v1, v5}, Lokhttp3/internal/http2/Http2;->frameLog(ZIIBB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "%s != TYPE_CONTINUATION"

    .line 393
    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-static {v0, v2}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_2
    const-string/jumbo v0, "TYPE_CONTINUATION streamId changed"

    .line 394
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    .line 364
    :goto_0
    iget v0, p0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->left:I

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Lokio/BufferedSource;

    iget v1, p0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->left:I

    int-to-long v2, v1

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 373
    cmp-long v2, v0, v6

    if-nez v2, :cond_2

    return-wide v6

    .line 365
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Lokio/BufferedSource;

    iget-short v1, p0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->padding:S

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->skip(J)V

    .line 366
    iput-short v4, p0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->padding:S

    .line 367
    iget-byte v0, p0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->flags:B

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 368
    invoke-direct {p0}, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->readContinuationHeader()V

    goto :goto_0

    .line 367
    :cond_1
    return-wide v6

    .line 374
    :cond_2
    iget v2, p0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->left:I

    int-to-long v2, v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->left:I

    .line 375
    return-wide v0
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method
