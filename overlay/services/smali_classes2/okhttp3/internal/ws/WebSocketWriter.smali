.class final Lokhttp3/internal/ws/WebSocketWriter;
.super Ljava/lang/Object;
.source "WebSocketWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/ws/WebSocketWriter$FrameSink;
    }
.end annotation


# instance fields
.field activeWriter:Z

.field final buffer:Lokio/Buffer;

.field final frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

.field final isClient:Z

.field private final maskCursor:Lokio/Buffer$UnsafeCursor;

.field private final maskKey:[B

.field final random:Ljava/util/Random;

.field final sink:Lokio/BufferedSink;

.field final sinkBuffer:Lokio/Buffer;

.field writerClosed:Z


# direct methods
.method constructor <init>(ZLokio/BufferedSink;Ljava/util/Random;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    .line 54
    new-instance v0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    invoke-direct {v0, p0}, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;-><init>(Lokhttp3/internal/ws/WebSocketWriter;)V

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    .line 62
    if-eqz p2, :cond_0

    .line 63
    if-eqz p3, :cond_1

    .line 64
    iput-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    .line 65
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    .line 66
    invoke-interface {p2}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    .line 67
    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    .line 70
    if-nez p1, :cond_2

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    .line 71
    if-nez p1, :cond_3

    :goto_1
    iput-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    .line 72
    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "random == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x4

    .line 70
    new-array v0, v0, [B

    goto :goto_0

    .line 71
    :cond_3
    new-instance v1, Lokio/Buffer$UnsafeCursor;

    invoke-direct {v1}, Lokio/Buffer$UnsafeCursor;-><init>()V

    goto :goto_1
.end method

.method private writeControlFrame(ILokio/ByteString;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 113
    iget-boolean v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    if-nez v1, :cond_1

    .line 115
    invoke-virtual {p2}, Lokio/ByteString;->size()I

    move-result v1

    .line 116
    int-to-long v2, v1

    const-wide/16 v4, 0x7d

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_2

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Payload size must be less than or equal to 125"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_2
    or-int/lit16 v0, p1, 0x80

    .line 122
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v2, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 125
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-nez v0, :cond_4

    .line 142
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 143
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v0, p2}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 146
    :cond_3
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 147
    return-void

    .line 126
    :cond_4
    or-int/lit16 v0, v1, 0x80

    .line 127
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v2, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 129
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextBytes([B)V

    .line 130
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v0, v2}, Lokio/Buffer;->write([B)Lokio/Buffer;

    .line 132
    if-lez v1, :cond_3

    .line 133
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    .line 134
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v2, p2}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 136
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v2, v3}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    .line 137
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    .line 138
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-static {v0, v1}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask(Lokio/Buffer$UnsafeCursor;[B)V

    .line 139
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v0}, Lokio/Buffer$UnsafeCursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method newMessageSink(IJ)Lokio/Sink;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 154
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    if-nez v0, :cond_0

    .line 157
    iput-boolean v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    .line 160
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    iput p1, v0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    .line 161
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    iput-wide p2, v0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    .line 162
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    iput-boolean v2, v0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    .line 163
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    iput-boolean v1, v0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    .line 165
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    return-object v0

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Another message writer is active. Did you call close()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method writeClose(ILokio/ByteString;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 92
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 93
    if-eqz p1, :cond_1

    .line 94
    :cond_0
    if-nez p1, :cond_2

    .line 97
    :goto_0
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 98
    invoke-virtual {v0, p1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    .line 99
    if-nez p2, :cond_3

    .line 102
    :goto_1
    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v0

    :goto_2
    const/16 v1, 0x8

    .line 106
    :try_start_0
    invoke-direct {p0, v1, v0}, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILokio/ByteString;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    iput-boolean v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    .line 110
    return-void

    .line 93
    :cond_1
    if-nez p2, :cond_0

    goto :goto_2

    .line 95
    :cond_2
    invoke-static {p1}, Lokhttp3/internal/ws/WebSocketProtocol;->validateCloseCode(I)V

    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {v0, p2}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    goto :goto_1

    .line 109
    :catchall_0
    move-exception v0

    .line 108
    iput-boolean v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    throw v0
.end method

.method writeMessageFrame(IJZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 170
    iget-boolean v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    if-nez v2, :cond_2

    .line 172
    if-nez p4, :cond_0

    move p1, v0

    .line 173
    :cond_0
    if-nez p5, :cond_3

    .line 176
    :goto_0
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v2, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 179
    iget-boolean v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-nez v2, :cond_4

    move v3, v0

    :goto_1
    const-wide/16 v4, 0x7d

    .line 182
    cmp-long v2, p2, v4

    if-lez v2, :cond_5

    move v2, v1

    :goto_2
    if-nez v2, :cond_6

    .line 183
    long-to-int v2, p2

    or-int/2addr v2, v3

    .line 184
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v3, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 195
    :goto_3
    iget-boolean v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-nez v2, :cond_9

    .line 209
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    invoke-virtual {v0, v1, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 212
    :cond_1
    :goto_4
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->emit()Lokio/BufferedSink;

    .line 213
    return-void

    .line 170
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_3
    or-int/lit16 p1, p1, 0x80

    goto :goto_0

    .line 180
    :cond_4
    const/16 v2, 0x80

    move v3, v2

    goto :goto_1

    :cond_5
    move v2, v0

    .line 182
    goto :goto_2

    :cond_6
    const-wide/32 v4, 0xffff

    .line 185
    cmp-long v2, p2, v4

    if-lez v2, :cond_7

    move v2, v1

    :goto_5
    if-nez v2, :cond_8

    .line 186
    or-int/lit8 v2, v3, 0x7e

    .line 187
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v3, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 188
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    long-to-int v3, p2

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    goto :goto_3

    :cond_7
    move v2, v0

    .line 185
    goto :goto_5

    .line 190
    :cond_8
    or-int/lit8 v2, v3, 0x7f

    .line 191
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v3, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 192
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v2, p2, p3}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    goto :goto_3

    .line 196
    :cond_9
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextBytes([B)V

    .line 197
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v2, v3}, Lokio/Buffer;->write([B)Lokio/Buffer;

    const-wide/16 v2, 0x0

    .line 199
    cmp-long v2, p2, v2

    if-gtz v2, :cond_a

    move v0, v1

    :cond_a
    if-nez v0, :cond_1

    .line 200
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    .line 201
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    invoke-virtual {v2, v3, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 203
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v2, v3}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    .line 204
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    .line 205
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-static {v0, v1}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask(Lokio/Buffer$UnsafeCursor;[B)V

    .line 206
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v0}, Lokio/Buffer$UnsafeCursor;->close()V

    goto :goto_4
.end method

.method writePing(Lokio/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x9

    .line 76
    invoke-direct {p0, v0, p1}, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILokio/ByteString;)V

    .line 77
    return-void
.end method

.method writePong(Lokio/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v0, 0xa

    .line 81
    invoke-direct {p0, v0, p1}, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILokio/ByteString;)V

    .line 82
    return-void
.end method
