.class public final Lokhttp3/internal/http2/Http2Connection;
.super Ljava/lang/Object;
.source "Http2Connection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Http2Connection$Builder;,
        Lokhttp3/internal/http2/Http2Connection$Listener;,
        Lokhttp3/internal/http2/Http2Connection$PingRunnable;,
        Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final OKHTTP_CLIENT_WINDOW_SIZE:I = 0x1000000

.field private static final listenerExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private awaitingPong:Z

.field bytesLeftInWriteWindow:J

.field final client:Z

.field final currentPushRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final hostname:Ljava/lang/String;

.field lastGoodStreamId:I

.field final listener:Lokhttp3/internal/http2/Http2Connection$Listener;

.field nextStreamId:I

.field okHttpSettings:Lokhttp3/internal/http2/Settings;

.field final peerSettings:Lokhttp3/internal/http2/Settings;

.field private final pushExecutor:Ljava/util/concurrent/ExecutorService;

.field final pushObserver:Lokhttp3/internal/http2/PushObserver;

.field final readerRunnable:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

.field receivedInitialPeerSettings:Z

.field shutdown:Z

.field final socket:Ljava/net/Socket;

.field final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lokhttp3/internal/http2/Http2Stream;",
            ">;"
        }
    .end annotation
.end field

.field unacknowledgedBytesRead:J

.field final writer:Lokhttp3/internal/http2/Http2Writer;

.field private final writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    const-class v0, Lokhttp3/internal/http2/Http2Connection;

    .line 60
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lokhttp3/internal/http2/Http2Connection;->$assertionsDisabled:Z

    .line 80
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string/jumbo v0, "OkHttp Http2Connection"

    .line 82
    invoke-static {v0, v8}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lokhttp3/internal/http2/Http2Connection;->listenerExecutor:Ljava/util/concurrent/ExecutorService;

    .line 80
    return-void

    :cond_0
    move v0, v8

    .line 60
    goto :goto_0
.end method

.method constructor <init>(Lokhttp3/internal/http2/Http2Connection$Builder;)V
    .locals 12

    .prologue
    const/4 v11, 0x7

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 115
    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    .line 124
    new-instance v0, Lokhttp3/internal/http2/Settings;

    invoke-direct {v0}, Lokhttp3/internal/http2/Settings;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    .line 128
    new-instance v0, Lokhttp3/internal/http2/Settings;

    invoke-direct {v0}, Lokhttp3/internal/http2/Settings;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    .line 130
    iput-boolean v10, p0, Lokhttp3/internal/http2/Http2Connection;->receivedInitialPeerSettings:Z

    .line 828
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    .line 138
    iget-object v0, p1, Lokhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lokhttp3/internal/http2/PushObserver;

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->pushObserver:Lokhttp3/internal/http2/PushObserver;

    .line 139
    iget-boolean v0, p1, Lokhttp3/internal/http2/Http2Connection$Builder;->client:Z

    iput-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->client:Z

    .line 140
    iget-object v0, p1, Lokhttp3/internal/http2/Http2Connection$Builder;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    .line 142
    iget-boolean v0, p1, Lokhttp3/internal/http2/Http2Connection$Builder;->client:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 143
    iget-boolean v0, p1, Lokhttp3/internal/http2/Http2Connection$Builder;->client:Z

    if-nez v0, :cond_1

    .line 151
    :goto_1
    iget-boolean v0, p1, Lokhttp3/internal/http2/Http2Connection$Builder;->client:Z

    if-nez v0, :cond_2

    .line 155
    :goto_2
    iget-object v0, p1, Lokhttp3/internal/http2/Http2Connection$Builder;->hostname:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    .line 157
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string/jumbo v1, "OkHttp %s Writer"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v3, v2, v10

    .line 158
    invoke-static {v1, v2}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-direct {v0, v9, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 159
    iget v0, p1, Lokhttp3/internal/http2/Http2Connection$Builder;->pingIntervalMillis:I

    if-nez v0, :cond_3

    .line 165
    :goto_3
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string/jumbo v0, "OkHttp %s Push Observer"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v3, v2, v10

    .line 167
    invoke-static {v0, v2}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move v2, v10

    move v3, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    .line 168
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    const v1, 0xffff

    invoke-virtual {v0, v11, v1}, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;

    .line 169
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    const/4 v1, 0x5

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;

    .line 170
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    .line 171
    iget-object v0, p1, Lokhttp3/internal/http2/Http2Connection$Builder;->socket:Ljava/net/Socket;

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    .line 172
    new-instance v0, Lokhttp3/internal/http2/Http2Writer;

    iget-object v1, p1, Lokhttp3/internal/http2/Http2Connection$Builder;->sink:Lokio/BufferedSink;

    iget-boolean v2, p0, Lokhttp3/internal/http2/Http2Connection;->client:Z

    invoke-direct {v0, v1, v2}, Lokhttp3/internal/http2/Http2Writer;-><init>(Lokio/BufferedSink;Z)V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    .line 174
    new-instance v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    new-instance v1, Lokhttp3/internal/http2/Http2Reader;

    iget-object v2, p1, Lokhttp3/internal/http2/Http2Connection$Builder;->source:Lokio/BufferedSource;

    iget-boolean v3, p0, Lokhttp3/internal/http2/Http2Connection;->client:Z

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/http2/Http2Reader;-><init>(Lokio/BufferedSource;Z)V

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->readerRunnable:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 175
    return-void

    :cond_0
    move v0, v9

    .line 142
    goto/16 :goto_0

    .line 144
    :cond_1
    iget v0, p0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    goto/16 :goto_1

    .line 152
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v11, v1}, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;

    goto/16 :goto_2

    .line 160
    :cond_3
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lokhttp3/internal/http2/Http2Connection$PingRunnable;

    invoke-direct {v1, p0, v10, v10, v10}, Lokhttp3/internal/http2/Http2Connection$PingRunnable;-><init>(Lokhttp3/internal/http2/Http2Connection;ZII)V

    iget v2, p1, Lokhttp3/internal/http2/Http2Connection$Builder;->pingIntervalMillis:I

    int-to-long v2, v2

    iget v4, p1, Lokhttp3/internal/http2/Http2Connection$Builder;->pingIntervalMillis:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto/16 :goto_3
.end method

.method static synthetic access$000(Lokhttp3/internal/http2/Http2Connection;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lokhttp3/internal/http2/Http2Connection;->failConnection()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lokhttp3/internal/http2/Http2Connection;->listenerExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$200(Lokhttp3/internal/http2/Http2Connection;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$302(Lokhttp3/internal/http2/Http2Connection;Z)Z
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lokhttp3/internal/http2/Http2Connection;->awaitingPong:Z

    return p1
.end method

.method private failConnection()V
    .locals 2

    .prologue
    .line 493
    :try_start_0
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/http2/Http2Connection;->close(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :goto_0
    return-void

    .line 495
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private newStream(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;Z)",
            "Lokhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 227
    if-eqz p3, :cond_2

    move v3, v6

    .line 233
    :goto_0
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    monitor-enter v8

    .line 234
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 235
    :try_start_1
    iget v0, p0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    const v1, 0x3fffffff    # 1.9999999f

    if-gt v0, v1, :cond_3

    .line 238
    :goto_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-nez v0, :cond_4

    .line 241
    iget v1, p0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 242
    iget v0, p0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 243
    new-instance v0, Lokhttp3/internal/http2/Http2Stream;

    .line 228
    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p2

    .line 243
    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/http2/Http2Stream;-><init>(ILokhttp3/internal/http2/Http2Connection;ZZLjava/util/List;)V

    .line 244
    if-nez p3, :cond_5

    :cond_0
    :goto_2
    move v6, v7

    .line 245
    :cond_1
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v2

    if-nez v2, :cond_6

    .line 248
    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    if-eqz p1, :cond_7

    .line 251
    :try_start_2
    iget-boolean v2, p0, Lokhttp3/internal/http2/Http2Connection;->client:Z

    if-nez v2, :cond_8

    .line 254
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v2, p1, v1, p2}, Lokhttp3/internal/http2/Http2Writer;->pushPromise(IILjava/util/List;)V

    .line 256
    :goto_4
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 258
    if-nez v6, :cond_9

    .line 262
    :goto_5
    return-object v0

    :cond_2
    move v3, v7

    .line 227
    goto :goto_0

    .line 236
    :cond_3
    :try_start_3
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0}, Lokhttp3/internal/http2/Http2Connection;->shutdown(Lokhttp3/internal/http2/ErrorCode;)V

    goto :goto_1

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 256
    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 239
    :cond_4
    :try_start_5
    new-instance v0, Lokhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {v0}, Lokhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw v0

    .line 244
    :cond_5
    iget-wide v4, p0, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    cmp-long v2, v4, v10

    if-eqz v2, :cond_0

    iget-wide v4, v0, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    cmp-long v2, v4, v10

    if-nez v2, :cond_1

    goto :goto_2

    .line 246
    :cond_6
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 250
    :cond_7
    :try_start_6
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v2, v3, v1, p1, p2}, Lokhttp3/internal/http2/Http2Writer;->synStream(ZIILjava/util/List;)V

    goto :goto_4

    .line 252
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 259
    :cond_9
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Writer;->flush()V

    goto :goto_5
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .locals 3

    .prologue
    .line 319
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    const-wide/16 v0, 0x0

    .line 320
    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 321
    :cond_0
    return-void

    .line 320
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized awaitPong()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 405
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->awaitingPong:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    .line 408
    return-void

    .line 406
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 440
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/http2/Http2Connection;->close(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V

    .line 441
    return-void
.end method

.method close(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 444
    sget-boolean v1, Lokhttp3/internal/http2/Http2Connection;->$assertionsDisabled:Z

    if-eqz v1, :cond_2

    .line 447
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lokhttp3/internal/http2/Http2Connection;->shutdown(Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 453
    :goto_0
    monitor-enter p0

    .line 454
    :try_start_1
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v0

    .line 458
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    if-nez v3, :cond_4

    .line 472
    :goto_2
    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Writer;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .line 479
    :cond_1
    :goto_3
    :try_start_3
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 485
    :goto_4
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 486
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 488
    if-nez v0, :cond_7

    .line 489
    return-void

    .line 444
    :cond_2
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 450
    :catch_0
    move-exception v1

    goto :goto_0

    .line 455
    :cond_3
    :try_start_4
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Lokhttp3/internal/http2/Http2Stream;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/http2/Http2Stream;

    .line 456
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    move-object v3, v0

    goto :goto_1

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 461
    :cond_4
    array-length v4, v3

    move-object v0, v1

    :goto_5
    if-lt v2, v4, :cond_5

    move-object v1, v0

    goto :goto_2

    :cond_5
    aget-object v1, v3, v2

    .line 463
    :try_start_5
    invoke-virtual {v1, p2}, Lokhttp3/internal/http2/Http2Stream;->close(Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 461
    :cond_6
    :goto_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    .line 466
    :catch_1
    move-exception v1

    .line 465
    if-eqz v0, :cond_6

    move-object v0, v1

    goto :goto_6

    .line 475
    :catch_2
    move-exception v0

    .line 474
    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_3

    .line 488
    :cond_7
    throw v0

    .line 482
    :catch_3
    move-exception v0

    goto :goto_4
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Writer;->flush()V

    .line 412
    return-void
.end method

.method public getProtocol()Lokhttp3/Protocol;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    return-object v0
.end method

.method declared-synchronized getStream(I)Lokhttp3/internal/http2/Http2Stream;
    .locals 2

    .prologue
    monitor-enter p0

    .line 190
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/http2/Http2Stream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isShutdown()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 536
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized maxConcurrentStreams()I
    .locals 2

    .prologue
    monitor-enter p0

    .line 200
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Settings;->getMaxConcurrentStreams(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newStream(Ljava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;Z)",
            "Lokhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 222
    invoke-direct {p0, v0, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->newStream(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized openStreamCount()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method pushDataLater(ILokio/BufferedSource;IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 886
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    .line 887
    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lokio/BufferedSource;->require(J)V

    .line 888
    int-to-long v0, p3

    invoke-interface {p2, v5, v0, v1}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    .line 889
    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v0

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 890
    :cond_0
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/http2/Http2Connection$5;

    const-string/jumbo v2, "OkHttp %s Push Data[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lokhttp3/internal/http2/Http2Connection$5;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILokio/Buffer;IZ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 904
    return-void
.end method

.method pushHeadersLater(ILjava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 861
    :try_start_0
    iget-object v7, p0, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/http2/Http2Connection$4;

    const-string/jumbo v2, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lokhttp3/internal/http2/Http2Connection$4;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    :goto_0
    return-void

    .line 877
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method pushRequestLater(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 831
    monitor-enter p0

    .line 832
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 836
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 837
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    :try_start_1
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/http2/Http2Connection$3;

    const-string/jumbo v2, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/http2/Http2Connection$3;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 856
    :goto_0
    return-void

    .line 833
    :cond_0
    :try_start_2
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, p1, v0}, Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILokhttp3/internal/http2/ErrorCode;)V

    .line 834
    monitor-exit p0

    return-void

    .line 837
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 855
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method pushResetLater(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 7

    .prologue
    .line 907
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/http2/Http2Connection$6;

    const-string/jumbo v2, "OkHttp %s Push Reset[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/http2/Http2Connection$6;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/http2/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 915
    return-void
.end method

.method public pushStream(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/Header;",
            ">;Z)",
            "Lokhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->client:Z

    if-nez v0, :cond_0

    .line 213
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/http2/Http2Connection;->newStream(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v0

    return-object v0

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Client cannot push requests."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method pushedStream(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 824
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method declared-synchronized removeStream(I)Lokhttp3/internal/http2/Http2Stream;
    .locals 2

    .prologue
    monitor-enter p0

    .line 194
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/http2/Http2Stream;

    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 196
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSettings(Lokhttp3/internal/http2/Settings;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    monitor-enter v1

    .line 525
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 526
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-nez v0, :cond_0

    .line 529
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Settings;->merge(Lokhttp3/internal/http2/Settings;)V

    .line 530
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 531
    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Http2Writer;->settings(Lokhttp3/internal/http2/Settings;)V

    .line 532
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 533
    return-void

    .line 527
    :cond_0
    :try_start_3
    new-instance v0, Lokhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {v0}, Lokhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw v0

    .line 530
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 532
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public shutdown(Lokhttp3/internal/http2/ErrorCode;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 420
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    monitor-enter v1

    .line 422
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 423
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-nez v0, :cond_0

    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z

    .line 427
    iget v0, p0, Lokhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    .line 428
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    :try_start_2
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    sget-object v3, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v2, v0, p1, v3}, Lokhttp3/internal/http2/Http2Writer;->goAway(ILokhttp3/internal/http2/ErrorCode;[B)V

    .line 432
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 433
    return-void

    .line 424
    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    .line 428
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 432
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokhttp3/internal/http2/Http2Connection;->start(Z)V

    .line 504
    return-void
.end method

.method start(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v2, 0xffff

    const/4 v4, 0x0

    .line 511
    if-nez p1, :cond_1

    .line 519
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->readerRunnable:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 520
    return-void

    .line 512
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Writer;->connectionPreface()V

    .line 513
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Http2Writer;->settings(Lokhttp3/internal/http2/Settings;)V

    .line 514
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v0

    .line 515
    if-eq v0, v2, :cond_0

    .line 516
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    sub-int/2addr v0, v2

    int-to-long v2, v0

    invoke-virtual {v1, v4, v2, v3}, Lokhttp3/internal/http2/Http2Writer;->windowUpdate(IJ)V

    goto :goto_0
.end method

.method public writeData(IZLokio/Buffer;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    .line 284
    cmp-long v0, p4, v8

    if-nez v0, :cond_1

    .line 285
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p2, p1, p3, v2}, Lokhttp3/internal/http2/Http2Writer;->data(ZILokio/Buffer;I)V

    .line 286
    return-void

    .line 311
    :cond_0
    cmp-long v0, p4, v8

    if-nez v0, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0, p1, p3, v3}, Lokhttp3/internal/http2/Http2Writer;->data(ZILokio/Buffer;I)V

    .line 289
    :cond_1
    cmp-long v0, p4, v8

    if-gtz v0, :cond_2

    move v0, v1

    :goto_1
    if-nez v0, :cond_7

    .line 291
    monitor-enter p0

    .line 293
    :goto_2
    :try_start_0
    iget-wide v4, p0, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    cmp-long v0, v4, v8

    if-lez v0, :cond_3

    move v0, v1

    :goto_3
    if-nez v0, :cond_5

    .line 296
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 299
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 303
    :catch_0
    move-exception v0

    .line 302
    :try_start_1
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v0, v2

    .line 289
    goto :goto_1

    :cond_3
    move v0, v2

    .line 293
    goto :goto_3

    .line 297
    :cond_4
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 305
    :cond_5
    :try_start_3
    iget-wide v4, p0, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    .line 306
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v3}, Lokhttp3/internal/http2/Http2Writer;->maxDataLength()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 307
    iget-wide v4, p0, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    .line 308
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 310
    int-to-long v4, v3

    sub-long/2addr p4, v4

    .line 311
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    if-nez p2, :cond_0

    :cond_6
    move v0, v2

    goto :goto_0

    .line 313
    :cond_7
    return-void
.end method

.method writePing(ZII)V
    .locals 2

    .prologue
    .line 378
    if-eqz p1, :cond_1

    .line 391
    :cond_0
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p1, p2, p3}, Lokhttp3/internal/http2/Http2Writer;->ping(ZII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    return-void

    .line 380
    :cond_1
    monitor-enter p0

    .line 381
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->awaitingPong:Z

    .line 382
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/internal/http2/Http2Connection;->awaitingPong:Z

    .line 383
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    if-eqz v0, :cond_0

    .line 385
    invoke-direct {p0}, Lokhttp3/internal/http2/Http2Connection;->failConnection()V

    .line 386
    return-void

    .line 383
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 394
    :catch_0
    move-exception v0

    .line 393
    invoke-direct {p0}, Lokhttp3/internal/http2/Http2Connection;->failConnection()V

    goto :goto_0
.end method

.method writePingAndAwaitPong()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const v0, 0x4f4b6f6b

    const v1, -0xf607257

    .line 399
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lokhttp3/internal/http2/Http2Connection;->writePing(ZII)V

    .line 400
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Connection;->awaitPong()V

    .line 401
    return-void
.end method

.method writeSynReply(IZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
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
    .line 267
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p2, p1, p3}, Lokhttp3/internal/http2/Http2Writer;->synReply(ZILjava/util/List;)V

    .line 268
    return-void
.end method

.method writeSynReset(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/Http2Writer;->rstStream(ILokhttp3/internal/http2/ErrorCode;)V

    .line 341
    return-void
.end method

.method writeSynResetLater(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 7

    .prologue
    .line 325
    :try_start_0
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lokhttp3/internal/http2/Http2Connection$1;

    const-string/jumbo v2, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/http2/Http2Connection$1;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/http2/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method writeWindowUpdateLater(IJ)V
    .locals 8

    .prologue
    .line 345
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lokhttp3/internal/http2/Http2Connection$2;

    const-string/jumbo v3, "OkHttp Window Update %s stream %d"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x1

    .line 346
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lokhttp3/internal/http2/Http2Connection$2;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    .line 345
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v0

    goto :goto_0
.end method
