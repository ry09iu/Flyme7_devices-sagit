.class Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;
.super Lokhttp3/internal/http1/Http1Codec$AbstractSource;
.source "Http1Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixedLengthSource"
.end annotation


# instance fields
.field private bytesRemaining:J

.field final synthetic this$0:Lokhttp3/internal/http1/Http1Codec;


# direct methods
.method constructor <init>(Lokhttp3/internal/http1/Http1Codec;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 395
    iput-object p1, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    invoke-direct {p0, p1, v4}, Lokhttp3/internal/http1/Http1Codec$AbstractSource;-><init>(Lokhttp3/internal/http1/Http1Codec;Lokhttp3/internal/http1/Http1Codec$1;)V

    .line 396
    iput-wide p2, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    .line 397
    iget-wide v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 398
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v4}, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->endOfInput(ZLjava/io/IOException;)V

    .line 400
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 422
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->closed:Z

    if-nez v0, :cond_1

    .line 424
    iget-wide v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lokhttp3/internal/Util;->discard(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->closed:Z

    .line 429
    return-void

    .line 422
    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 425
    invoke-virtual {p0, v4, v0}, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->endOfInput(ZLjava/io/IOException;)V

    goto :goto_0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    const/4 v1, 0x1

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 403
    cmp-long v0, p2, v6

    if-ltz v0, :cond_0

    move v0, v1

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
    move v0, v2

    goto :goto_0

    .line 404
    :cond_1
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->closed:Z

    if-nez v0, :cond_2

    .line 405
    iget-wide v4, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    return-wide v8

    .line 404
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_3
    iget-wide v4, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-super {p0, p1, v4, v5}, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->read(Lokio/Buffer;J)J

    move-result-wide v4

    .line 408
    cmp-long v0, v4, v8

    if-nez v0, :cond_4

    .line 409
    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0, v2, v0}, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->endOfInput(ZLjava/io/IOException;)V

    .line 411
    throw v0

    .line 414
    :cond_4
    iget-wide v2, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    .line 415
    iget-wide v2, p0, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    cmp-long v0, v2, v6

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 416
    invoke-virtual {p0, v1, v0}, Lokhttp3/internal/http1/Http1Codec$FixedLengthSource;->endOfInput(ZLjava/io/IOException;)V

    .line 418
    :cond_5
    return-wide v4
.end method
