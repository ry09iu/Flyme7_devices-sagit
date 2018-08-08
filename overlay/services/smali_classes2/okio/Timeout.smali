.class public Lokio/Timeout;
.super Ljava/lang/Object;
.source "Timeout.java"


# static fields
.field public static final NONE:Lokio/Timeout;


# instance fields
.field private deadlineNanoTime:J

.field private hasDeadline:Z

.field private timeoutNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lokio/Timeout$1;

    invoke-direct {v0}, Lokio/Timeout$1;-><init>()V

    sput-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method


# virtual methods
.method public clearDeadline()Lokio/Timeout;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z

    .line 135
    return-object p0
.end method

.method public clearTimeout()Lokio/Timeout;
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 128
    iput-wide v0, p0, Lokio/Timeout;->timeoutNanos:J

    .line 129
    return-object p0
.end method

.method public final deadline(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 121
    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "duration <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 122
    :cond_1
    if-eqz p3, :cond_2

    .line 123
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object v0

    return-object v0

    .line 122
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deadlineNanoTime()J
    .locals 2

    .prologue
    .line 104
    iget-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z

    if-eqz v0, :cond_0

    .line 105
    iget-wide v0, p0, Lokio/Timeout;->deadlineNanoTime:J

    return-wide v0

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No deadline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deadlineNanoTime(J)Lokio/Timeout;
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z

    .line 115
    iput-wide p1, p0, Lokio/Timeout;->deadlineNanoTime:J

    .line 116
    return-object p0
.end method

.method public hasDeadline()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z

    return v0
.end method

.method public throwIfReached()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    iget-boolean v1, p0, Lokio/Timeout;->hasDeadline:Z

    if-nez v1, :cond_2

    .line 151
    :cond_0
    return-void

    .line 145
    :cond_1
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string/jumbo v1, "thread interrupted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_2
    iget-wide v2, p0, Lokio/Timeout;->deadlineNanoTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string/jumbo v1, "deadline reached"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 81
    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeout < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 82
    :cond_1
    if-eqz p3, :cond_2

    .line 83
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lokio/Timeout;->timeoutNanos:J

    .line 84
    return-object p0

    .line 82
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeoutNanos()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lokio/Timeout;->timeoutNanos:J

    return-wide v0
.end method

.method public final waitUntilNotified(Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    const-wide/32 v10, 0xf4240

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    .line 191
    :try_start_0
    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v6

    .line 192
    invoke-virtual {p0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v0

    .line 194
    if-eqz v6, :cond_3

    .line 201
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 202
    if-nez v6, :cond_4

    .line 205
    :cond_1
    if-nez v6, :cond_5

    .line 213
    :goto_0
    cmp-long v6, v0, v2

    if-gtz v6, :cond_6

    move v6, v4

    :goto_1
    if-nez v6, :cond_2

    const-wide/32 v2, 0xf4240

    .line 214
    div-long v2, v0, v2

    .line 215
    mul-long v6, v2, v10

    sub-long v6, v0, v6

    long-to-int v6, v6

    invoke-virtual {p1, v2, v3, v6}, Ljava/lang/Object;->wait(JI)V

    .line 216
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v8

    .line 220
    :cond_2
    cmp-long v0, v2, v0

    if-gez v0, :cond_7

    move v0, v4

    :goto_2
    if-nez v0, :cond_8

    .line 221
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string/jumbo v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :catch_0
    move-exception v0

    .line 224
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string/jumbo v1, "interrupted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_3
    cmp-long v7, v0, v2

    if-nez v7, :cond_0

    .line 195
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    .line 196
    return-void

    .line 202
    :cond_4
    cmp-long v7, v0, v2

    if-eqz v7, :cond_1

    .line 203
    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v8

    .line 204
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 206
    :cond_5
    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    sub-long/2addr v0, v8

    goto :goto_0

    :cond_6
    move v6, v5

    .line 213
    goto :goto_1

    :cond_7
    move v0, v5

    .line 220
    goto :goto_2

    .line 226
    :cond_8
    return-void
.end method
