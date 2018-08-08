.class final Lokhttp3/internal/ws/WebSocketReader;
.super Ljava/lang/Object;
.source "WebSocketReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/ws/WebSocketReader$FrameCallback;
    }
.end annotation


# instance fields
.field closed:Z

.field private final controlFrameBuffer:Lokio/Buffer;

.field final frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

.field frameLength:J

.field final isClient:Z

.field isControlFrame:Z

.field isFinalFrame:Z

.field private final maskCursor:Lokio/Buffer$UnsafeCursor;

.field private final maskKey:[B

.field private final messageFrameBuffer:Lokio/Buffer;

.field opcode:I

.field final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(ZLokio/BufferedSource;Lokhttp3/internal/ws/WebSocketReader$FrameCallback;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    .line 73
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    .line 79
    if-eqz p2, :cond_1

    .line 80
    if-eqz p3, :cond_2

    .line 81
    iput-boolean p1, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    .line 82
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    .line 83
    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    .line 86
    if-nez p1, :cond_3

    const/4 v0, 0x4

    new-array v0, v0, [B

    :goto_0
    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    .line 87
    if-nez p1, :cond_0

    new-instance v1, Lokio/Buffer$UnsafeCursor;

    invoke-direct {v1}, Lokio/Buffer$UnsafeCursor;-><init>()V

    :cond_0
    iput-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    .line 88
    return-void

    .line 79
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "frameCallback == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v0, v1

    .line 86
    goto :goto_0
.end method

.method private readControlFrame()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const-wide/16 v8, 0x0

    .line 172
    iget-wide v4, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v1, v4, v8

    if-gtz v1, :cond_0

    move v0, v2

    :cond_0
    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    iget-wide v4, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    invoke-interface {v0, v1, v4, v5}, Lokio/BufferedSource;->readFully(Lokio/Buffer;J)V

    .line 175
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-eqz v0, :cond_2

    .line 183
    :cond_1
    :goto_0
    iget v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    packed-switch v0, :pswitch_data_0

    .line 206
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown control opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v0, v1}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    .line 177
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v0, v8, v9}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    .line 178
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    invoke-static {v0, v1}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask(Lokio/Buffer$UnsafeCursor;[B)V

    .line 179
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v0}, Lokio/Buffer$UnsafeCursor;->close()V

    goto :goto_0

    .line 185
    :pswitch_0
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadPing(Lokio/ByteString;)V

    .line 208
    :goto_1
    return-void

    .line 188
    :pswitch_1
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadPong(Lokio/ByteString;)V

    goto :goto_1

    :pswitch_2
    const/16 v1, 0x3ed

    const-string/jumbo v0, ""

    .line 193
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    .line 194
    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 195
    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "Malformed close payload length of 1."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_3
    cmp-long v3, v4, v8

    if-eqz v3, :cond_4

    .line 197
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readShort()S

    move-result v1

    .line 198
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v1}, Lokhttp3/internal/ws/WebSocketProtocol;->closeCodeExceptionMessage(I)Ljava/lang/String;

    move-result-object v3

    .line 200
    if-nez v3, :cond_5

    .line 202
    :cond_4
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    invoke-interface {v3, v1, v0}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadClose(ILjava/lang/String;)V

    .line 203
    iput-boolean v2, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    goto :goto_1

    .line 200
    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readHeader()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    if-nez v0, :cond_2

    .line 114
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v4

    .line 115
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    .line 117
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 119
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v3}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 122
    and-int/lit8 v0, v6, 0xf

    iput v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    .line 123
    and-int/lit16 v0, v6, 0x80

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    .line 124
    and-int/lit8 v0, v6, 0x8

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    .line 127
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-nez v0, :cond_5

    .line 131
    :cond_0
    and-int/lit8 v0, v6, 0x40

    if-nez v0, :cond_6

    move v0, v1

    .line 132
    :goto_2
    and-int/lit8 v3, v6, 0x20

    if-nez v3, :cond_7

    move v3, v1

    .line 133
    :goto_3
    and-int/lit8 v4, v6, 0x10

    if-nez v4, :cond_8

    move v4, v1

    .line 134
    :goto_4
    if-eqz v0, :cond_9

    .line 136
    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "Reserved flags are unsupported."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :catchall_0
    move-exception v0

    .line 119
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    throw v0

    :cond_3
    move v0, v2

    .line 123
    goto :goto_0

    :cond_4
    move v0, v2

    .line 124
    goto :goto_1

    .line 127
    :cond_5
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "Control frames must be final."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v0, v2

    .line 131
    goto :goto_2

    :cond_7
    move v3, v2

    .line 132
    goto :goto_3

    :cond_8
    move v4, v2

    .line 133
    goto :goto_4

    .line 134
    :cond_9
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    .line 139
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v3, v0, 0xff

    .line 141
    and-int/lit16 v0, v3, 0x80

    if-nez v0, :cond_c

    move v0, v1

    .line 142
    :goto_5
    iget-boolean v4, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-eq v0, v4, :cond_d

    .line 150
    and-int/lit8 v3, v3, 0x7f

    int-to-long v4, v3

    iput-wide v4, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 151
    iget-wide v4, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v6, 0x7e

    cmp-long v3, v4, v6

    if-nez v3, :cond_f

    .line 152
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readShort()S

    move-result v3

    int-to-long v4, v3

    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    iput-wide v4, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 161
    :cond_a
    iget-boolean v3, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-nez v3, :cond_11

    .line 165
    :cond_b
    if-nez v0, :cond_13

    .line 169
    :goto_6
    return-void

    :cond_c
    move v0, v2

    .line 141
    goto :goto_5

    .line 144
    :cond_d
    new-instance v1, Ljava/net/ProtocolException;

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-nez v0, :cond_e

    const-string/jumbo v0, "Client-sent frames must be masked."

    .line 146
    :goto_7
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    const-string/jumbo v0, "Server-sent frames must not be masked."

    goto :goto_7

    .line 153
    :cond_f
    iget-wide v4, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v6, 0x7f

    cmp-long v3, v4, v6

    if-nez v3, :cond_a

    .line 154
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 155
    iget-wide v4, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_10

    move v3, v2

    :goto_8
    if-nez v3, :cond_a

    .line 156
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Frame length 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 157
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " > 0x7FFFFFFFFFFFFFFF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move v3, v1

    .line 155
    goto :goto_8

    .line 161
    :cond_11
    iget-wide v4, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v6, 0x7d

    cmp-long v3, v4, v6

    if-gtz v3, :cond_12

    :goto_9
    if-nez v2, :cond_b

    .line 162
    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "Control frame must be less than 125B."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    move v2, v1

    .line 161
    goto :goto_9

    .line 167
    :cond_13
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    invoke-interface {v0, v1}, Lokio/BufferedSource;->readFully([B)V

    goto :goto_6
.end method

.method private readMessage()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 243
    :cond_0
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    if-nez v0, :cond_2

    .line 245
    iget-wide v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 246
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    iget-wide v4, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    invoke-interface {v0, v2, v4, v5}, Lokio/BufferedSource;->readFully(Lokio/Buffer;J)V

    .line 248
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-eqz v0, :cond_4

    .line 256
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    if-nez v0, :cond_5

    .line 258
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readUntilNonControlFrame()V

    .line 259
    iget v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected continuation opcode. Got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v1

    .line 245
    goto :goto_0

    .line 249
    :cond_4
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v0, v2}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    .line 250
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    iget-wide v4, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    .line 251
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    invoke-static {v0, v2}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask(Lokio/Buffer$UnsafeCursor;[B)V

    .line 252
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v0}, Lokio/Buffer$UnsafeCursor;->close()V

    goto :goto_1

    .line 263
    :cond_5
    return-void
.end method

.method private readMessageFrame()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 211
    iget v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    .line 212
    if-ne v0, v2, :cond_1

    .line 216
    :cond_0
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readMessage()V

    .line 218
    if-eq v0, v2, :cond_2

    .line 221
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadMessage(Lokio/ByteString;)V

    .line 223
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    .line 212
    if-eq v0, v1, :cond_0

    .line 213
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown opcode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readUntilNonControlFrame()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    :goto_0
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    if-eqz v0, :cond_1

    .line 234
    :cond_0
    return-void

    .line 228
    :cond_1
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readHeader()V

    .line 229
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v0, :cond_0

    .line 232
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readControlFrame()V

    goto :goto_0
.end method


# virtual methods
.method processNextFrame()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readHeader()V

    .line 102
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-nez v0, :cond_0

    .line 105
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readMessageFrame()V

    .line 107
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readControlFrame()V

    goto :goto_0
.end method
