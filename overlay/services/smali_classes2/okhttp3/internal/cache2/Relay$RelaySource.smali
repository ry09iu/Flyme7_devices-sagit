.class Lokhttp3/internal/cache2/Relay$RelaySource;
.super Ljava/lang/Object;
.source "Relay.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache2/Relay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RelaySource"
.end annotation


# instance fields
.field private fileOperator:Lokhttp3/internal/cache2/FileOperator;

.field private sourcePos:J

.field final synthetic this$0:Lokhttp3/internal/cache2/Relay;

.field private final timeout:Lokio/Timeout;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache2/Relay;)V
    .locals 2

    .prologue
    .line 224
    iput-object p1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v0, Lokio/Timeout;

    invoke-direct {v0}, Lokio/Timeout;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:Lokio/Timeout;

    .line 228
    new-instance v0, Lokhttp3/internal/cache2/FileOperator;

    iget-object v1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v1, v1, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-direct {v0, v1}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    iput-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 344
    iget-object v1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    if-eqz v1, :cond_0

    .line 345
    iput-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    .line 348
    iget-object v1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v1

    .line 349
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget v3, v2, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    .line 350
    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget v2, v2, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    if-eqz v2, :cond_1

    .line 354
    :goto_0
    monitor-exit v1

    .line 356
    if-nez v0, :cond_2

    .line 359
    :goto_1
    return-void

    .line 344
    :cond_0
    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 352
    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    const/4 v3, 0x0

    iput-object v3, v2, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    goto :goto_0

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 357
    :cond_2
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1
.end method

.method public read(Lokio/Buffer;J)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    if-eqz v0, :cond_0

    .line 258
    iget-object v6, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v6

    .line 260
    :goto_0
    :try_start_0
    iget-wide v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v8, v2, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_3

    .line 262
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-boolean v0, v0, Lokhttp3/internal/cache2/Relay;->complete:Z

    if-nez v0, :cond_1

    .line 265
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    if-nez v0, :cond_2

    .line 271
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    const/4 v0, 0x1

    .line 273
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    const/4 v1, 0x2

    .line 292
    if-eq v0, v1, :cond_6

    .line 302
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->upstream:Lokio/Source;

    iget-object v1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v1, v1, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v2, v2, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v10

    const-wide/16 v0, -0x1

    .line 305
    cmp-long v0, v10, v0

    if-nez v0, :cond_7

    .line 306
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v0, v8, v9}, Lokhttp3/internal/cache2/Relay;->commit(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 332
    iget-object v1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v1

    .line 333
    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    const/4 v2, 0x0

    iput-object v2, v0, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 334
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 335
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v0, -0x1

    .line 307
    return-wide v0

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide/16 v0, -0x1

    .line 262
    :try_start_3
    monitor-exit v6

    return-wide v0

    .line 266
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:Lokio/Timeout;

    iget-object v1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v0, v1}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_0

    .line 288
    :catchall_0
    move-exception v0

    .line 289
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 276
    :cond_3
    :try_start_4
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    sub-long v2, v8, v0

    .line 279
    iget-wide v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_5

    const/4 v0, 0x2

    .line 281
    monitor-exit v6

    goto :goto_1

    .line 279
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 285
    :cond_5
    iget-wide v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    sub-long v0, v8, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 286
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    iget-wide v8, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    sub-long v2, v8, v2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 287
    iget-wide v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 288
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-wide v4

    .line 293
    :cond_6
    iget-wide v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    sub-long v0, v8, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 294
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    iget-wide v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    const-wide/16 v6, 0x20

    add-long v1, v6, v2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/cache2/FileOperator;->read(JLokio/Buffer;J)V

    .line 295
    iget-wide v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 296
    return-wide v4

    .line 335
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 311
    :cond_7
    :try_start_6
    invoke-static {v10, v11, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 312
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    const-wide/16 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 313
    iget-wide v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 316
    iget-object v6, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    const-wide/16 v0, 0x20

    add-long v7, v0, v8

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    .line 317
    invoke-virtual {v0}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v9

    .line 316
    invoke-virtual/range {v6 .. v11}, Lokhttp3/internal/cache2/FileOperator;->write(JLokio/Buffer;J)V

    .line 319
    iget-object v1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 321
    :try_start_7
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v2, v2, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    invoke-virtual {v0, v2, v10, v11}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 322
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v6, v0, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    cmp-long v0, v2, v6

    if-gtz v0, :cond_9

    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_8

    .line 323
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v2, v2, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    iget-object v6, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v6, v6, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    sub-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->skip(J)V

    .line 327
    :cond_8
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v2, v0, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    add-long/2addr v2, v10

    iput-wide v2, v0, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    .line 328
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 332
    iget-object v1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v1

    .line 333
    :try_start_8
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    const/4 v2, 0x0

    iput-object v2, v0, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 334
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 335
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 330
    return-wide v4

    .line 322
    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    .line 328
    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 330
    :catchall_3
    move-exception v0

    .line 332
    iget-object v1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v1

    .line 333
    :try_start_b
    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    const/4 v3, 0x0

    iput-object v3, v2, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 334
    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 335
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v0

    :catchall_4
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v0

    :catchall_5
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v0
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:Lokio/Timeout;

    return-object v0
.end method
