.class final Lokhttp3/internal/http2/Http2Writer;
.super Ljava/lang/Object;
.source "Http2Writer.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final client:Z

.field private closed:Z

.field private final hpackBuffer:Lokio/Buffer;

.field final hpackWriter:Lokhttp3/internal/http2/Hpack$Writer;

.field private maxFrameSize:I

.field private final sink:Lokio/BufferedSink;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lokhttp3/internal/http2/Http2;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lokio/BufferedSink;Z)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    .line 59
    iput-boolean p2, p0, Lokhttp3/internal/http2/Http2Writer;->client:Z

    .line 60
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;

    .line 61
    new-instance v0, Lokhttp3/internal/http2/Hpack$Writer;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/Hpack$Writer;-><init>(Lokio/Buffer;)V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->hpackWriter:Lokhttp3/internal/http2/Hpack$Writer;

    const/16 v0, 0x4000

    .line 62
    iput v0, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    .line 63
    return-void
.end method

.method private writeContinuationFrames(IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 289
    :goto_0
    cmp-long v0, p2, v6

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 290
    iget v0, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    int-to-long v2, v0

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 291
    int-to-long v4, v2

    sub-long/2addr p2, v4

    .line 292
    cmp-long v0, p2, v6

    if-nez v0, :cond_1

    const/4 v0, 0x4

    :goto_2
    const/16 v3, 0x9

    invoke-virtual {p0, p1, v2, v3, v0}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 293
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;

    int-to-long v4, v2

    invoke-interface {v0, v3, v4, v5}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 289
    goto :goto_1

    :cond_1
    move v0, v1

    .line 292
    goto :goto_2

    .line 295
    :cond_2
    return-void
.end method

.method private static writeMedium(Lokio/BufferedSink;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 284
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 285
    and-int/lit16 v0, p1, 0xff

    invoke-interface {p0, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 286
    return-void
.end method


# virtual methods
.method public declared-synchronized applyAndAckSettings(Lokhttp3/internal/http2/Settings;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 77
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_0

    .line 78
    iget v0, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/Settings;->getMaxFrameSize(I)I

    move-result v0

    iput v0, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    .line 79
    invoke-virtual {p1}, Lokhttp3/internal/http2/Settings;->getHeaderTableSize()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 86
    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 87
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 88
    return-void

    .line 77
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 80
    :cond_1
    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->hpackWriter:Lokhttp3/internal/http2/Hpack$Writer;

    invoke-virtual {p1}, Lokhttp3/internal/http2/Settings;->getHeaderTableSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Hpack$Writer;->setHeaderTableSizeSetting(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 278
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    .line 279
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 280
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectionPreface()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 66
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_0

    .line 67
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->client:Z

    if-eqz v0, :cond_1

    .line 68
    sget-object v0, Lokhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    sget-object v1, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 72
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 73
    return-void

    .line 66
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    monitor-exit p0

    .line 67
    return-void

    .line 69
    :cond_2
    :try_start_2
    sget-object v0, Lokhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;

    const-string/jumbo v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized data(ZILokio/Buffer;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 170
    :try_start_0
    iget-boolean v1, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v1, :cond_0

    .line 172
    if-nez p1, :cond_1

    .line 173
    :goto_0
    invoke-virtual {p0, p2, v0, p3, p4}, Lokhttp3/internal/http2/Http2Writer;->dataFrame(IBLokio/Buffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 174
    return-void

    .line 170
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 172
    :cond_1
    const/4 v0, 0x1

    int-to-byte v0, v0

    goto :goto_0
.end method

.method dataFrame(IBLokio/Buffer;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, p1, p4, v0, p2}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 179
    if-gtz p4, :cond_0

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    int-to-long v2, p4

    invoke-interface {v0, p3, v2, v3}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    goto :goto_0
.end method

.method public declared-synchronized flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 120
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 122
    return-void

    .line 120
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public frameHeader(IIBB)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 266
    sget-object v0, Lokhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    :goto_0
    iget v0, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    if-gt p2, v0, :cond_1

    const/high16 v0, -0x80000000

    .line 270
    and-int/2addr v0, p1

    if-nez v0, :cond_2

    .line 271
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-static {v0, p2}, Lokhttp3/internal/http2/Http2Writer;->writeMedium(Lokio/BufferedSink;I)V

    .line 272
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v1, p3, 0xff

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 273
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v1, p4, 0xff

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 274
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 275
    return-void

    .line 266
    :cond_0
    sget-object v0, Lokhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;

    invoke-static {v3, p1, p2, p3, p4}, Lokhttp3/internal/http2/Http2;->frameLog(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "FRAME_SIZE_ERROR length > %d: %d"

    const/4 v1, 0x2

    .line 268
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_2
    const-string/jumbo v0, "reserved bit set: %s"

    .line 270
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public declared-synchronized goAway(ILokhttp3/internal/http2/ErrorCode;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 232
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_0

    .line 233
    iget v0, p2, Lokhttp3/internal/http2/ErrorCode;->httpCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 234
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    .line 238
    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 239
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 240
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    iget v1, p2, Lokhttp3/internal/http2/ErrorCode;->httpCode:I

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 241
    array-length v0, p3

    if-gtz v0, :cond_2

    .line 244
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 245
    return-void

    .line 232
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    const-string/jumbo v0, "errorCode.httpCode == -1"

    const/4 v1, 0x0

    .line 233
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 242
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0, p3}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized headers(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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
    monitor-enter p0

    .line 138
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lokhttp3/internal/http2/Http2Writer;->headers(ZILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 140
    return-void

    .line 138
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method headers(ZILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
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
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 298
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_2

    .line 299
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->hpackWriter:Lokhttp3/internal/http2/Hpack$Writer;

    invoke-virtual {v0, p3}, Lokhttp3/internal/http2/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    .line 301
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    .line 302
    iget v0, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    int-to-long v6, v0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v3, v6

    .line 304
    int-to-long v6, v3

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 305
    :goto_0
    if-nez p1, :cond_4

    .line 306
    :goto_1
    invoke-virtual {p0, p2, v3, v2, v0}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 307
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    iget-object v6, p0, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;

    int-to-long v8, v3

    invoke-interface {v0, v6, v8, v9}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 309
    int-to-long v6, v3

    cmp-long v0, v4, v6

    if-gtz v0, :cond_0

    move v1, v2

    :cond_0
    if-nez v1, :cond_1

    int-to-long v0, v3

    sub-long v0, v4, v0

    invoke-direct {p0, p2, v0, v1}, Lokhttp3/internal/http2/Http2Writer;->writeContinuationFrames(IJ)V

    .line 310
    :cond_1
    return-void

    .line 298
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v1

    .line 304
    goto :goto_0

    .line 305
    :cond_4
    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1
.end method

.method public maxDataLength()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    return v0
.end method

.method public declared-synchronized ping(ZII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 211
    :try_start_0
    iget-boolean v1, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v1, :cond_0

    .line 214
    if-nez p1, :cond_1

    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 216
    const/4 v3, 0x6

    invoke-virtual {p0, v1, v2, v3, v0}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 217
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 218
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0, p3}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 219
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 220
    return-void

    .line 211
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const/4 v0, 0x1

    .line 214
    goto :goto_0
.end method

.method public declared-synchronized pushPromise(IILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
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
    const/4 v1, 0x0

    monitor-enter p0

    .line 105
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->hpackWriter:Lokhttp3/internal/http2/Hpack$Writer;

    invoke-virtual {v0, p3}, Lokhttp3/internal/http2/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    .line 108
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    .line 109
    iget v0, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    add-int/lit8 v0, v0, -0x4

    int-to-long v4, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 111
    int-to-long v6, v4

    cmp-long v0, v2, v6

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 112
    :goto_0
    add-int/lit8 v5, v4, 0x4

    const/4 v6, 0x5

    invoke-virtual {p0, p1, v5, v6, v0}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 113
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    const v5, 0x7fffffff

    and-int/2addr v5, p2

    invoke-interface {v0, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 114
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    iget-object v5, p0, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;

    int-to-long v6, v4

    invoke-interface {v0, v5, v6, v7}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 116
    int-to-long v6, v4

    cmp-long v0, v2, v6

    if-gtz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    int-to-long v0, v4

    sub-long v0, v2, v0

    invoke-direct {p0, p1, v0, v1}, Lokhttp3/internal/http2/Http2Writer;->writeContinuationFrames(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 117
    return-void

    .line 105
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v0, v1

    .line 111
    goto :goto_0
.end method

.method public declared-synchronized rstStream(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 144
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_0

    .line 145
    iget v0, p2, Lokhttp3/internal/http2/ErrorCode;->httpCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x4

    .line 150
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 151
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    iget v1, p2, Lokhttp3/internal/http2/ErrorCode;->httpCode:I

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 152
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 153
    return-void

    .line 144
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 145
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized settings(Lokhttp3/internal/http2/Settings;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    monitor-enter p0

    .line 186
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p1}, Lokhttp3/internal/http2/Settings;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    const/4 v3, 0x0

    .line 191
    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v0, v4, v5}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    :goto_0
    const/16 v0, 0xa

    .line 192
    if-lt v1, v0, :cond_1

    .line 203
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 204
    return-void

    .line 186
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 193
    :cond_1
    :try_start_2
    invoke-virtual {p1, v1}, Lokhttp3/internal/http2/Settings;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    if-eq v1, v2, :cond_3

    const/4 v0, 0x7

    .line 197
    if-eq v1, v0, :cond_4

    move v0, v1

    .line 200
    :goto_1
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v3, v0}, Lokio/BufferedSink;->writeShort(I)Lokio/BufferedSink;

    .line 201
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-virtual {p1, v1}, Lokhttp3/internal/http2/Settings;->get(I)I

    move-result v3

    invoke-interface {v0, v3}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    .line 196
    goto :goto_1

    :cond_4
    move v0, v2

    .line 198
    goto :goto_1
.end method

.method public declared-synchronized synReply(ZILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
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
    monitor-enter p0

    .line 132
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p0, p1, p2, p3}, Lokhttp3/internal/http2/Http2Writer;->headers(ZILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 134
    return-void

    .line 132
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized synStream(ZIILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
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
    monitor-enter p0

    .line 126
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p0, p1, p2, p4}, Lokhttp3/internal/http2/Http2Writer;->headers(ZILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 128
    return-void

    .line 126
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized windowUpdate(IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    .line 252
    :try_start_0
    iget-boolean v2, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    .line 253
    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p2, v2

    if-gtz v2, :cond_2

    :goto_0
    if-nez v0, :cond_3

    :cond_0
    const-string/jumbo v0, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v1, 0x1

    .line 254
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 255
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 254
    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 252
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v1

    .line 253
    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    .line 260
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 261
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    long-to-int v1, p2

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 262
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 263
    return-void
.end method
