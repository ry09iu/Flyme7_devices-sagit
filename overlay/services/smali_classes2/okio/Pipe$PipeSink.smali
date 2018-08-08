.class final Lokio/Pipe$PipeSink;
.super Ljava/lang/Object;
.source "Pipe.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Pipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PipeSink"
.end annotation


# instance fields
.field final synthetic this$0:Lokio/Pipe;

.field final timeout:Lokio/Timeout;


# direct methods
.method constructor <init>(Lokio/Pipe;)V
    .locals 1

    .prologue
    .line 59
    iput-object p1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lokio/Timeout;

    invoke-direct {v0}, Lokio/Timeout;-><init>()V

    iput-object v0, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 91
    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v2, v2, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v2

    .line 92
    :try_start_0
    iget-object v3, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v3, v3, Lokio/Pipe;->sinkClosed:Z

    if-nez v3, :cond_1

    .line 93
    iget-object v3, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v3, v3, Lokio/Pipe;->sourceClosed:Z

    if-nez v3, :cond_2

    .line 94
    :cond_0
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lokio/Pipe;->sinkClosed:Z

    .line 95
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v0, v0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 96
    monitor-exit v2

    .line 97
    return-void

    .line 92
    :cond_1
    monitor-exit v2

    return-void

    .line 93
    :cond_2
    iget-object v3, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v3, v3, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_3

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move v0, v1

    .line 93
    goto :goto_0
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v1, v1, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v2, v2, Lokio/Pipe;->sinkClosed:Z

    if-nez v2, :cond_1

    .line 86
    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v2, v2, Lokio/Pipe;->sourceClosed:Z

    if-nez v2, :cond_2

    .line 87
    :cond_0
    monitor-exit v1

    .line 88
    return-void

    .line 85
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "closed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 86
    :cond_2
    :try_start_1
    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v2, v2, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "source is closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/Timeout;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v2, v0, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v2

    .line 64
    :try_start_0
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v0, v0, Lokio/Pipe;->sinkClosed:Z

    if-nez v0, :cond_0

    .line 66
    :goto_0
    cmp-long v0, p2, v8

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    .line 67
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v0, v0, Lokio/Pipe;->sourceClosed:Z

    if-nez v0, :cond_2

    .line 69
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-wide v4, v0, Lokio/Pipe;->maxBufferSize:J

    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v0, v0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 70
    cmp-long v0, v4, v8

    if-nez v0, :cond_3

    .line 71
    iget-object v0, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/Timeout;

    iget-object v3, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v3, v3, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v0, v3}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 64
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_3
    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 76
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v0, v0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1, v4, v5}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 77
    sub-long/2addr p2, v4

    .line 78
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v0, v0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 80
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    return-void
.end method
