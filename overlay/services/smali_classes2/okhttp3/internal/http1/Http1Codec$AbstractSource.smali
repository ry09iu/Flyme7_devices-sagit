.class abstract Lokhttp3/internal/http1/Http1Codec$AbstractSource;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractSource"
.end annotation


# instance fields
.field protected bytesRead:J

.field protected closed:Z

.field final synthetic this$0:Lokhttp3/internal/http1/Http1Codec;

.field protected final timeout:Lokio/ForwardingTimeout;


# direct methods
.method private constructor <init>(Lokhttp3/internal/http1/Http1Codec;)V
    .locals 2

    .prologue
    .line 352
    iput-object p1, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    new-instance v0, Lokio/ForwardingTimeout;

    iget-object v1, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v1, v1, Lokhttp3/internal/http1/Http1Codec;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ForwardingTimeout;-><init>(Lokio/Timeout;)V

    iput-object v0, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->timeout:Lokio/ForwardingTimeout;

    const-wide/16 v0, 0x0

    .line 355
    iput-wide v0, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->bytesRead:J

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/http1/Http1Codec;Lokhttp3/internal/http1/Http1Codec$1;)V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lokhttp3/internal/http1/Http1Codec$AbstractSource;-><init>(Lokhttp3/internal/http1/Http1Codec;)V

    return-void
.end method


# virtual methods
.method protected final endOfInput(ZLjava/io/IOException;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 379
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget v0, v0, Lokhttp3/internal/http1/Http1Codec;->state:I

    if-eq v0, v3, :cond_0

    .line 380
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget v0, v0, Lokhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 382
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v1, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->timeout:Lokio/ForwardingTimeout;

    invoke-virtual {v0, v1}, Lokhttp3/internal/http1/Http1Codec;->detachTimeout(Lokio/ForwardingTimeout;)V

    .line 384
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iput v3, v0, Lokhttp3/internal/http1/Http1Codec;->state:I

    .line 385
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    if-nez v0, :cond_2

    .line 388
    :goto_0
    return-void

    .line 379
    :cond_0
    return-void

    .line 380
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget v2, v2, Lokhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v1, v0, Lokhttp3/internal/http1/Http1Codec;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    if-eqz p1, :cond_3

    :goto_1
    iget-object v3, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-wide v4, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->bytesRead:J

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lokhttp3/internal/connection/StreamAllocation;->streamFinished(ZLokhttp3/internal/http/HttpCodec;JLjava/io/IOException;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public read(Lokio/Buffer;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 363
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Lokhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lokhttp3/internal/http1/Http1Codec;->source:Lokio/BufferedSource;

    invoke-interface {v0, p1, p2, p3}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    .line 364
    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    .line 365
    iget-wide v4, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->bytesRead:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->bytesRead:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :cond_0
    return-wide v2

    :cond_1
    move v0, v1

    .line 364
    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 369
    invoke-virtual {p0, v1, v0}, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->endOfInput(ZLjava/io/IOException;)V

    .line 370
    throw v0
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lokhttp3/internal/http1/Http1Codec$AbstractSource;->timeout:Lokio/ForwardingTimeout;

    return-object v0
.end method
