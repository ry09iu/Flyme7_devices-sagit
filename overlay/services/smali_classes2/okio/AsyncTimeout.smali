.class public Lokio/AsyncTimeout;
.super Lokio/Timeout;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/AsyncTimeout$Watchdog;
    }
.end annotation


# static fields
.field private static final IDLE_TIMEOUT_MILLIS:J

.field private static final IDLE_TIMEOUT_NANOS:J

.field private static final TIMEOUT_WRITE_SIZE:I = 0x10000

.field static head:Lokio/AsyncTimeout;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private inQueue:Z

.field private next:Lokio/AsyncTimeout;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private timeoutAt:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    .line 51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v2, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lokio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lokio/Timeout;-><init>()V

    return-void
.end method

.method static awaitTimeout()Lokio/AsyncTimeout;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const-wide/32 v8, 0xf4240

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 342
    sget-object v3, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    iget-object v3, v3, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 345
    if-eqz v3, :cond_0

    .line 353
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    .line 356
    cmp-long v6, v4, v6

    if-gtz v6, :cond_4

    :goto_0
    if-nez v1, :cond_5

    .line 359
    div-long v2, v4, v8

    .line 360
    mul-long v6, v2, v8

    sub-long/2addr v4, v6

    const-class v1, Lokio/AsyncTimeout;

    .line 361
    long-to-int v4, v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/lang/Object;->wait(JI)V

    .line 362
    return-object v0

    .line 346
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-class v3, Lokio/AsyncTimeout;

    .line 347
    sget-wide v6, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 348
    sget-object v3, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    iget-object v3, v3, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-eqz v3, :cond_2

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v4, v6, v4

    sget-wide v6, Lokio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_3

    :goto_2
    if-nez v1, :cond_1

    .line 349
    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    goto :goto_1

    :cond_3
    move v1, v2

    .line 348
    goto :goto_2

    :cond_4
    move v1, v2

    .line 356
    goto :goto_0

    .line 366
    :cond_5
    sget-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    iget-object v2, v3, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v2, v1, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 367
    iput-object v0, v3, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 368
    return-object v3
.end method

.method private static declared-synchronized cancelScheduledTimeout(Lokio/AsyncTimeout;)Z
    .locals 3

    .prologue
    const-class v1, Lokio/AsyncTimeout;

    monitor-enter v1

    .line 128
    :try_start_0
    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 129
    :cond_0
    :try_start_1
    iget-object v2, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-eq v2, p0, :cond_1

    .line 128
    iget-object v0, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    goto :goto_0

    .line 130
    :cond_1
    iget-object v2, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v2, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private remainingNanos(J)J
    .locals 3

    .prologue
    .line 145
    iget-wide v0, p0, Lokio/AsyncTimeout;->timeoutAt:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private static declared-synchronized scheduleTimeout(Lokio/AsyncTimeout;JZ)V
    .locals 11

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lokio/AsyncTimeout;

    monitor-enter v3

    .line 86
    :try_start_0
    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    if-eqz v0, :cond_2

    .line 91
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 92
    cmp-long v0, p1, v6

    if-eqz v0, :cond_0

    if-nez p3, :cond_3

    .line 96
    :cond_0
    cmp-long v0, p1, v6

    if-eqz v0, :cond_4

    .line 97
    add-long v6, v4, p1

    iput-wide v6, p0, Lokio/AsyncTimeout;->timeoutAt:J

    .line 105
    :goto_1
    invoke-direct {p0, v4, v5}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v6

    .line 106
    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    :goto_2
    move-object v2, v0

    .line 107
    iget-object v0, v2, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-nez v0, :cond_6

    .line 108
    :cond_1
    iget-object v0, v2, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v0, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 109
    iput-object p0, v2, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 110
    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v0, :cond_8

    :goto_3
    monitor-exit v3

    .line 116
    return-void

    .line 87
    :cond_2
    :try_start_1
    new-instance v0, Lokio/AsyncTimeout;

    invoke-direct {v0}, Lokio/AsyncTimeout;-><init>()V

    sput-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    .line 88
    new-instance v0, Lokio/AsyncTimeout$Watchdog;

    invoke-direct {v0}, Lokio/AsyncTimeout$Watchdog;-><init>()V

    invoke-virtual {v0}, Lokio/AsyncTimeout$Watchdog;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 95
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lokio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {p1, p2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    add-long/2addr v6, v4

    iput-wide v6, p0, Lokio/AsyncTimeout;->timeoutAt:J

    goto :goto_1

    .line 98
    :cond_4
    if-nez p3, :cond_5

    .line 101
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 99
    :cond_5
    invoke-virtual {p0}, Lokio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Lokio/AsyncTimeout;->timeoutAt:J

    goto :goto_1

    .line 107
    :cond_6
    iget-object v0, v2, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    invoke-direct {v0, v4, v5}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-ltz v0, :cond_7

    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_1

    .line 106
    iget-object v0, v2, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    goto :goto_2

    :cond_7
    move v0, v1

    .line 107
    goto :goto_4

    :cond_8
    const-class v0, Lokio/AsyncTimeout;

    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method


# virtual methods
.method public final enter()V
    .locals 6

    .prologue
    .line 73
    iget-boolean v0, p0, Lokio/AsyncTimeout;->inQueue:Z

    if-nez v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lokio/AsyncTimeout;->timeoutNanos()J

    move-result-wide v0

    .line 75
    invoke-virtual {p0}, Lokio/AsyncTimeout;->hasDeadline()Z

    move-result v2

    const-wide/16 v4, 0x0

    .line 76
    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    if-eqz v2, :cond_2

    .line 79
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lokio/AsyncTimeout;->inQueue:Z

    .line 80
    invoke-static {p0, v0, v1, v2}, Lokio/AsyncTimeout;->scheduleTimeout(Lokio/AsyncTimeout;JZ)V

    .line 81
    return-void

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_2
    return-void
.end method

.method final exit(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0, p1}, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    return-object v0

    .line 284
    :cond_0
    return-object p1
.end method

.method final exit(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    .line 275
    if-nez v0, :cond_1

    .line 276
    :cond_0
    return-void

    .line 275
    :cond_1
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final exit()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-boolean v0, p0, Lokio/AsyncTimeout;->inQueue:Z

    if-eqz v0, :cond_0

    .line 121
    iput-boolean v1, p0, Lokio/AsyncTimeout;->inQueue:Z

    .line 122
    invoke-static {p0}, Lokio/AsyncTimeout;->cancelScheduledTimeout(Lokio/AsyncTimeout;)Z

    move-result v0

    return v0

    .line 120
    :cond_0
    return v1
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 294
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string/jumbo v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 295
    if-nez p1, :cond_0

    .line 298
    :goto_0
    return-object v0

    .line 296
    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public final sink(Lokio/Sink;)Lokio/Sink;
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lokio/AsyncTimeout$1;

    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$1;-><init>(Lokio/AsyncTimeout;Lokio/Sink;)V

    return-object v0
.end method

.method public final source(Lokio/Source;)Lokio/Source;
    .locals 1

    .prologue
    .line 232
    new-instance v0, Lokio/AsyncTimeout$2;

    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$2;-><init>(Lokio/AsyncTimeout;Lokio/Source;)V

    return-object v0
.end method

.method protected timedOut()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method
