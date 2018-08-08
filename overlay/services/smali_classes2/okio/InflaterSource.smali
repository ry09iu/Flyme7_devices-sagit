.class public final Lokio/InflaterSource;
.super Ljava/lang/Object;
.source "InflaterSource.java"

# interfaces
.implements Lokio/Source;


# instance fields
.field private bufferBytesHeldByInflater:I

.field private closed:Z

.field private final inflater:Ljava/util/zip/Inflater;

.field private final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-eqz p1, :cond_0

    .line 50
    if-eqz p2, :cond_1

    .line 51
    iput-object p1, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    .line 52
    iput-object p2, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    .line 53
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inflater == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lokio/Source;Ljava/util/zip/Inflater;)V
    .locals 1

    .prologue
    .line 40
    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lokio/InflaterSource;-><init>(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V

    .line 41
    return-void
.end method

.method private releaseInflatedBytes()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    iget v0, p0, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    if-eqz v0, :cond_0

    .line 114
    iget v0, p0, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    iget-object v1, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    sub-int/2addr v0, v1

    .line 115
    iget v1, p0, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    sub-int/2addr v1, v0

    iput v1, p0, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    .line 116
    iget-object v1, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->skip(J)V

    .line 117
    return-void

    .line 113
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-boolean v0, p0, Lokio/InflaterSource;->closed:Z

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/InflaterSource;->closed:Z

    .line 127
    iget-object v0, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    .line 128
    return-void

    .line 124
    :cond_0
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 57
    cmp-long v2, p2, v4

    if-ltz v2, :cond_0

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

    .line 58
    :cond_1
    iget-boolean v0, p0, Lokio/InflaterSource;->closed:Z

    if-nez v0, :cond_2

    .line 59
    cmp-long v0, p2, v4

    if-nez v0, :cond_4

    return-wide v4

    .line 58
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_3
    :try_start_0
    iget-object v2, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsDictionary()Z
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_5

    .line 83
    if-nez v0, :cond_8

    .line 62
    :cond_4
    invoke-virtual {p0}, Lokio/InflaterSource;->refill()Z

    move-result v0

    const/4 v1, 0x1

    .line 66
    :try_start_1
    invoke-virtual {p1, v1}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v1

    .line 67
    iget v2, v1, Lokio/Segment;->limit:I

    rsub-int v2, v2, 0x2000

    int-to-long v2, v2

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 68
    iget-object v3, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    iget-object v4, v1, Lokio/Segment;->data:[B

    iget v5, v1, Lokio/Segment;->limit:I

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v2

    .line 69
    if-gtz v2, :cond_6

    .line 74
    iget-object v2, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 75
    :cond_5
    invoke-direct {p0}, Lokio/InflaterSource;->releaseInflatedBytes()V

    .line 76
    iget v0, v1, Lokio/Segment;->pos:I

    iget v2, v1, Lokio/Segment;->limit:I

    if-eq v0, v2, :cond_7

    :goto_1
    const-wide/16 v0, -0x1

    .line 81
    return-wide v0

    .line 70
    :cond_6
    iget v0, v1, Lokio/Segment;->limit:I

    add-int/2addr v0, v2

    iput v0, v1, Lokio/Segment;->limit:I

    .line 71
    iget-wide v0, p1, Lokio/Buffer;->size:J

    int-to-long v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p1, Lokio/Buffer;->size:J

    .line 72
    int-to-long v0, v2

    return-wide v0

    .line 78
    :cond_7
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v0

    iput-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 79
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 86
    :catch_0
    move-exception v0

    .line 85
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 83
    :cond_8
    :try_start_2
    new-instance v0, Ljava/io/EOFException;

    const-string/jumbo v1, "source exhausted prematurely"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/util/zip/DataFormatException; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method public final refill()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 96
    iget-object v0, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Lokio/InflaterSource;->releaseInflatedBytes()V

    .line 99
    iget-object v0, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    iget-object v0, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v0

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 106
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    .line 107
    iget-object v1, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v0, v0, Lokio/Segment;->pos:I

    iget v3, p0, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    invoke-virtual {v1, v2, v0, v3}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 108
    return v4

    .line 96
    :cond_0
    return v4

    .line 99
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method
