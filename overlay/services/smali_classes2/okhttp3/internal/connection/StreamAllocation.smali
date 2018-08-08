.class public final Lokhttp3/internal/connection/StreamAllocation;
.super Ljava/lang/Object;
.source "StreamAllocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final address:Lokhttp3/Address;

.field public final call:Lokhttp3/Call;

.field private final callStackTrace:Ljava/lang/Object;

.field private canceled:Z

.field private codec:Lokhttp3/internal/http/HttpCodec;

.field private connection:Lokhttp3/internal/connection/RealConnection;

.field private final connectionPool:Lokhttp3/ConnectionPool;

.field public final eventListener:Lokhttp3/EventListener;

.field private refusedStreamCount:I

.field private released:Z

.field private reportedAcquired:Z

.field private route:Lokhttp3/Route;

.field private routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

.field private final routeSelector:Lokhttp3/internal/connection/RouteSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-class v1, Lokhttp3/internal/connection/StreamAllocation;

    .line 77
    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lokhttp3/internal/connection/StreamAllocation;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/Call;Lokhttp3/EventListener;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    .line 98
    iput-object p2, p0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    .line 99
    iput-object p3, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    .line 100
    iput-object p4, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    .line 101
    new-instance v0, Lokhttp3/internal/connection/RouteSelector;

    invoke-direct {p0}, Lokhttp3/internal/connection/StreamAllocation;->routeDatabase()Lokhttp3/internal/connection/RouteDatabase;

    move-result-object v1

    invoke-direct {v0, p2, v1, p3, p4}, Lokhttp3/internal/connection/RouteSelector;-><init>(Lokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;Lokhttp3/Call;Lokhttp3/EventListener;)V

    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    .line 102
    iput-object p5, p0, Lokhttp3/internal/connection/StreamAllocation;->callStackTrace:Ljava/lang/Object;

    .line 103
    return-void
.end method

.method private deallocate(ZZZ)Ljava/net/Socket;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 381
    sget-boolean v0, Lokhttp3/internal/connection/StreamAllocation;->$assertionsDisabled:Z

    if-eqz v0, :cond_2

    .line 383
    :cond_0
    if-nez p3, :cond_3

    .line 386
    :goto_0
    if-nez p2, :cond_4

    .line 390
    :goto_1
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-nez v0, :cond_5

    .line 405
    :cond_1
    :goto_2
    return-object v1

    .line 381
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 384
    :cond_3
    iput-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    goto :goto_0

    .line 387
    :cond_4
    iput-boolean v2, p0, Lokhttp3/internal/connection/StreamAllocation;->released:Z

    goto :goto_1

    .line 391
    :cond_5
    if-nez p1, :cond_7

    .line 394
    :goto_3
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lokhttp3/internal/connection/StreamAllocation;->released:Z

    if-eqz v0, :cond_8

    .line 395
    :cond_6
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-direct {p0, v0}, Lokhttp3/internal/connection/StreamAllocation;->release(Lokhttp3/internal/connection/RealConnection;)V

    .line 396
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v0, v0, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    move-object v0, v1

    .line 402
    :goto_4
    iput-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    move-object v1, v0

    goto :goto_2

    .line 392
    :cond_7
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iput-boolean v2, v0, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    goto :goto_3

    .line 394
    :cond_8
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-boolean v0, v0, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-nez v0, :cond_6

    goto :goto_2

    .line 397
    :cond_9
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v0, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    .line 398
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v0, v2, v3}, Lokhttp3/internal/Internal;->connectionBecameIdle(Lokhttp3/ConnectionPool;Lokhttp3/internal/connection/RealConnection;)Z

    move-result v0

    if-nez v0, :cond_a

    move-object v0, v1

    goto :goto_4

    .line 399
    :cond_a
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v0

    goto :goto_4
.end method

.method private findConnection(IIIIZ)Lokhttp3/internal/connection/RealConnection;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 167
    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v4

    .line 168
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/connection/StreamAllocation;->released:Z

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    if-nez v0, :cond_1

    .line 170
    iget-boolean v0, p0, Lokhttp3/internal/connection/StreamAllocation;->canceled:Z

    if-nez v0, :cond_2

    .line 174
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 175
    invoke-direct {p0}, Lokhttp3/internal/connection/StreamAllocation;->releaseIfNoNewStreams()Ljava/net/Socket;

    move-result-object v5

    .line 176
    iget-object v6, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-nez v6, :cond_3

    .line 181
    :goto_0
    iget-boolean v6, p0, Lokhttp3/internal/connection/StreamAllocation;->reportedAcquired:Z

    if-eqz v6, :cond_4

    .line 186
    :goto_1
    if-eqz v2, :cond_5

    .line 196
    :goto_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-static {v5}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 199
    if-nez v0, :cond_7

    .line 202
    :goto_3
    if-nez v3, :cond_8

    .line 205
    :goto_4
    if-nez v2, :cond_9

    .line 211
    const/4 v0, 0x0

    .line 212
    if-eqz v1, :cond_a

    .line 217
    :goto_5
    iget-object v5, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v5

    .line 218
    :try_start_1
    iget-boolean v4, p0, Lokhttp3/internal/connection/StreamAllocation;->canceled:Z

    if-nez v4, :cond_d

    .line 220
    if-nez v0, :cond_e

    move-object v0, v2

    move v2, v3

    .line 236
    :goto_6
    if-eqz v2, :cond_11

    .line 248
    :goto_7
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 251
    if-nez v2, :cond_13

    .line 257
    iget-object v6, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    iget-object v7, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v7}, Lokhttp3/internal/connection/RealConnection;->connect(IIIIZLokhttp3/Call;Lokhttp3/EventListener;)V

    .line 259
    invoke-direct {p0}, Lokhttp3/internal/connection/StreamAllocation;->routeDatabase()Lokhttp3/internal/connection/RouteDatabase;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/internal/connection/RouteDatabase;->connected(Lokhttp3/Route;)V

    const/4 v1, 0x0

    .line 262
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v2

    .line 263
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Lokhttp3/internal/connection/StreamAllocation;->reportedAcquired:Z

    .line 266
    sget-object v3, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    invoke-virtual {v3, v4, v0}, Lokhttp3/internal/Internal;->put(Lokhttp3/ConnectionPool;Lokhttp3/internal/connection/RealConnection;)V

    .line 270
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v3

    if-nez v3, :cond_14

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    .line 274
    :goto_8
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 275
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 277
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v0, v2, v1}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 278
    return-object v1

    .line 168
    :cond_0
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 169
    :cond_1
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "codec != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_3
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    const/4 v0, 0x0

    .line 179
    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 183
    goto :goto_1

    .line 188
    :cond_5
    sget-object v6, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v7, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    iget-object v8, p0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, p0, v9}, Lokhttp3/internal/Internal;->get(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/Route;)Lokhttp3/internal/connection/RealConnection;

    .line 189
    iget-object v6, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-nez v6, :cond_6

    .line 193
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    goto/16 :goto_2

    .line 190
    :cond_6
    const/4 v3, 0x1

    .line 191
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 200
    :cond_7
    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v5, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v4, v5, v0}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    goto/16 :goto_3

    .line 203
    :cond_8
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v0, v4, v2}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    goto/16 :goto_4

    .line 207
    :cond_9
    return-object v2

    .line 212
    :cond_a
    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    if-nez v4, :cond_c

    .line 213
    :cond_b
    const/4 v0, 0x1

    .line 214
    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    invoke-virtual {v4}, Lokhttp3/internal/connection/RouteSelector;->next()Lokhttp3/internal/connection/RouteSelector$Selection;

    move-result-object v4

    iput-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    goto/16 :goto_5

    .line 212
    :cond_c
    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    invoke-virtual {v4}, Lokhttp3/internal/connection/RouteSelector$Selection;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    goto/16 :goto_5

    .line 218
    :cond_d
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 223
    :cond_e
    :try_start_6
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector$Selection;->getAll()Ljava/util/List;

    move-result-object v6

    const/4 v0, 0x0

    .line 224
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v4, v0

    :goto_9
    if-lt v4, v7, :cond_f

    move-object v0, v2

    move v2, v3

    goto/16 :goto_6

    .line 225
    :cond_f
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Route;

    .line 226
    sget-object v8, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v9, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    iget-object v10, p0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    invoke-virtual {v8, v9, v10, p0, v0}, Lokhttp3/internal/Internal;->get(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/Route;)Lokhttp3/internal/connection/RealConnection;

    .line 227
    iget-object v8, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-nez v8, :cond_10

    .line 224
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_9

    .line 228
    :cond_10
    const/4 v3, 0x1

    .line 229
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 230
    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    move-object v0, v2

    move v2, v3

    .line 231
    goto/16 :goto_6

    .line 237
    :cond_11
    if-eqz v1, :cond_12

    .line 243
    :goto_a
    iput-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    const/4 v0, 0x0

    .line 244
    iput v0, p0, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    .line 245
    new-instance v0, Lokhttp3/internal/connection/RealConnection;

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    invoke-direct {v0, v3, v1}, Lokhttp3/internal/connection/RealConnection;-><init>(Lokhttp3/ConnectionPool;Lokhttp3/Route;)V

    .line 246
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/connection/StreamAllocation;->acquire(Lokhttp3/internal/connection/RealConnection;Z)V

    goto/16 :goto_7

    .line 238
    :cond_12
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector$Selection;->next()Lokhttp3/Route;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v0

    move-object v1, v0

    goto :goto_a

    .line 252
    :cond_13
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v1, v2, v0}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 253
    return-object v0

    .line 271
    :cond_14
    :try_start_7
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    invoke-virtual {v0, v1, v3, p0}, Lokhttp3/internal/Internal;->deduplicate(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    goto/16 :goto_8

    .line 274
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0
.end method

.method private findHealthyConnection(IIIIZZ)Lokhttp3/internal/connection/RealConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    :goto_0
    invoke-direct/range {p0 .. p5}, Lokhttp3/internal/connection/StreamAllocation;->findConnection(IIIIZ)Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v1

    .line 140
    :try_start_0
    iget v2, v0, Lokhttp3/internal/connection/RealConnection;->successCount:I

    if-eqz v2, :cond_0

    .line 143
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    invoke-virtual {v0, p6}, Lokhttp3/internal/connection/RealConnection;->isHealthy(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    return-object v0

    .line 141
    :cond_0
    :try_start_1
    monitor-exit v1

    return-object v0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 148
    :cond_1
    invoke-virtual {p0}, Lokhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    goto :goto_0
.end method

.method private release(Lokhttp3/internal/connection/RealConnection;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 478
    iget-object v1, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 485
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 479
    :cond_0
    iget-object v0, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 480
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 478
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 481
    :cond_1
    iget-object v0, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 482
    return-void
.end method

.method private releaseIfNoNewStreams()Ljava/net/Socket;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 288
    sget-boolean v0, Lokhttp3/internal/connection/StreamAllocation;->$assertionsDisabled:Z

    if-eqz v0, :cond_2

    .line 289
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 290
    if-nez v0, :cond_3

    .line 293
    :cond_1
    return-object v2

    .line 288
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 290
    :cond_3
    iget-boolean v0, v0, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-eqz v0, :cond_1

    .line 291
    const/4 v0, 0x1

    invoke-direct {p0, v1, v1, v0}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method private routeDatabase()Lokhttp3/internal/connection/RouteDatabase;
    .locals 2

    .prologue
    .line 333
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    invoke-virtual {v0, v1}, Lokhttp3/internal/Internal;->routeDatabase(Lokhttp3/ConnectionPool;)Lokhttp3/internal/connection/RouteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public acquire(Lokhttp3/internal/connection/RealConnection;Z)V
    .locals 3

    .prologue
    .line 468
    sget-boolean v0, Lokhttp3/internal/connection/StreamAllocation;->$assertionsDisabled:Z

    if-eqz v0, :cond_1

    .line 469
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-nez v0, :cond_2

    .line 471
    iput-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 472
    iput-boolean p2, p0, Lokhttp3/internal/connection/StreamAllocation;->reportedAcquired:Z

    .line 473
    iget-object v0, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    new-instance v1, Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->callStackTrace:Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;-><init>(Lokhttp3/internal/connection/StreamAllocation;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    return-void

    .line 468
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 469
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public cancel()V
    .locals 3

    .prologue
    .line 411
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v1

    .line 412
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lokhttp3/internal/connection/StreamAllocation;->canceled:Z

    .line 413
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    .line 414
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 415
    monitor-exit v1

    .line 416
    if-nez v0, :cond_0

    .line 418
    if-nez v2, :cond_1

    .line 421
    :goto_0
    return-void

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 417
    :cond_0
    invoke-interface {v0}, Lokhttp3/internal/http/HttpCodec;->cancel()V

    goto :goto_0

    .line 419
    :cond_1
    invoke-virtual {v2}, Lokhttp3/internal/connection/RealConnection;->cancel()V

    goto :goto_0
.end method

.method public codec()Lokhttp3/internal/http/HttpCodec;
    .locals 2

    .prologue
    .line 327
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v1

    .line 328
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 329
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized connection()Lokhttp3/internal/connection/RealConnection;
    .locals 1

    .prologue
    monitor-enter p0

    .line 341
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasMoreRoutes()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 512
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    if-nez v1, :cond_3

    .line 513
    :cond_2
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    .line 514
    invoke-virtual {v1}, Lokhttp3/internal/connection/RouteSelector;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 512
    :cond_3
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    .line 513
    invoke-virtual {v1}, Lokhttp3/internal/connection/RouteSelector$Selection;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method public newStream(Lokhttp3/OkHttpClient;Lokhttp3/Interceptor$Chain;Z)Lokhttp3/internal/http/HttpCodec;
    .locals 7

    .prologue
    .line 107
    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->connectTimeoutMillis()I

    move-result v1

    .line 108
    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v2

    .line 109
    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->writeTimeoutMillis()I

    move-result v3

    .line 110
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->pingIntervalMillis()I

    move-result v4

    .line 111
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v5

    move-object v0, p0

    move v6, p3

    .line 114
    :try_start_0
    invoke-direct/range {v0 .. v6}, Lokhttp3/internal/connection/StreamAllocation;->findHealthyConnection(IIIIZZ)Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p1, p2, p0}, Lokhttp3/internal/connection/RealConnection;->newCodec(Lokhttp3/OkHttpClient;Lokhttp3/Interceptor$Chain;Lokhttp3/internal/connection/StreamAllocation;)Lokhttp3/internal/http/HttpCodec;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :try_start_1
    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    .line 120
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 121
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 123
    new-instance v1, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v1, v0}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public noNewStreams()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 362
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v2

    .line 363
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 364
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v3

    .line 365
    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-nez v4, :cond_0

    .line 366
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 368
    if-nez v0, :cond_1

    .line 371
    :goto_1
    return-void

    :cond_0
    move-object v0, v1

    .line 365
    goto :goto_0

    .line 366
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 369
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v1, v2, v0}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    goto :goto_1
.end method

.method public release()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 347
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v2

    .line 348
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 349
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v3

    .line 350
    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-nez v4, :cond_0

    .line 351
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 353
    if-nez v0, :cond_1

    .line 356
    :goto_1
    return-void

    :cond_0
    move-object v0, v1

    .line 350
    goto :goto_0

    .line 351
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 354
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v1, v2, v0}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    goto :goto_1
.end method

.method public releaseAndAcquire(Lokhttp3/internal/connection/RealConnection;)Ljava/net/Socket;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 497
    sget-boolean v0, Lokhttp3/internal/connection/StreamAllocation;->$assertionsDisabled:Z

    if-eqz v0, :cond_2

    .line 498
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    if-eqz v0, :cond_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 497
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 498
    :cond_3
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v0, v0, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 501
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v0, v0, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 502
    invoke-direct {p0, v2, v1, v1}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 505
    iput-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 506
    iget-object v2, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    return-object v1
.end method

.method public route()Lokhttp3/Route;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    return-object v0
.end method

.method public streamFailed(Ljava/io/IOException;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 428
    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v3

    .line 429
    :try_start_0
    instance-of v4, p1, Lokhttp3/internal/http2/StreamResetException;

    if-nez v4, :cond_2

    .line 440
    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-nez v4, :cond_6

    :goto_0
    move v1, v0

    .line 452
    :cond_0
    :goto_1
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 453
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v1, v4, v5}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 454
    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v4, :cond_b

    :cond_1
    move-object v0, v2

    .line 455
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 458
    if-nez v0, :cond_c

    .line 461
    :goto_3
    return-void

    .line 430
    :cond_2
    :try_start_1
    check-cast p1, Lokhttp3/internal/http2/StreamResetException;

    .line 431
    iget-object v4, p1, Lokhttp3/internal/http2/StreamResetException;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    sget-object v5, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    if-eq v4, v5, :cond_4

    .line 436
    :goto_4
    iget-object v4, p1, Lokhttp3/internal/http2/StreamResetException;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    sget-object v5, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    if-eq v4, v5, :cond_5

    :cond_3
    const/4 v0, 0x0

    .line 438
    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    move v0, v1

    goto :goto_0

    .line 432
    :cond_4
    iget v4, p0, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    goto :goto_4

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 436
    :cond_5
    :try_start_2
    iget v4, p0, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    if-gt v4, v1, :cond_3

    goto :goto_0

    .line 440
    :cond_6
    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 441
    invoke-virtual {v4}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v4

    if-nez v4, :cond_9

    .line 445
    :cond_7
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget v0, v0, Lokhttp3/internal/connection/RealConnection;->successCount:I

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    if-nez v0, :cond_a

    :cond_8
    :goto_5
    const/4 v0, 0x0

    .line 449
    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    goto :goto_1

    .line 441
    :cond_9
    instance-of v4, p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-nez v4, :cond_7

    move v1, v0

    goto :goto_1

    .line 446
    :cond_a
    if-eqz p1, :cond_8

    .line 447
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    invoke-virtual {v0, v4, p1}, Lokhttp3/internal/connection/RouteSelector;->connectFailed(Lokhttp3/Route;Ljava/io/IOException;)V

    goto :goto_5

    .line 454
    :cond_b
    iget-boolean v4, p0, Lokhttp3/internal/connection/StreamAllocation;->reportedAcquired:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_1

    goto :goto_2

    .line 459
    :cond_c
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v1, v2, v0}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    goto :goto_3
.end method

.method public streamFinished(ZLokhttp3/internal/http/HttpCodec;JLjava/io/IOException;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 297
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v0, v2, p3, p4}, Lokhttp3/EventListener;->responseBodyEnd(Lokhttp3/Call;J)V

    .line 302
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v2

    .line 303
    if-nez p2, :cond_1

    .line 304
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "expected "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " but was "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 303
    :cond_1
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    if-ne p2, v0, :cond_0

    .line 306
    if-eqz p1, :cond_2

    .line 309
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 310
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, p1, v3, v4}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v3

    .line 311
    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-nez v4, :cond_3

    .line 312
    :goto_1
    iget-boolean v1, p0, Lokhttp3/internal/connection/StreamAllocation;->released:Z

    .line 313
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 315
    if-nez v0, :cond_4

    .line 319
    :goto_2
    if-nez p5, :cond_5

    .line 321
    if-nez v1, :cond_6

    .line 324
    :goto_3
    return-void

    .line 307
    :cond_2
    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget v3, v0, Lokhttp3/internal/connection/RealConnection;->successCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lokhttp3/internal/connection/RealConnection;->successCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 311
    goto :goto_1

    .line 316
    :cond_4
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v2, v3, v0}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    goto :goto_2

    .line 320
    :cond_5
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v0, v1, p5}, Lokhttp3/EventListener;->callFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    goto :goto_3

    .line 322
    :cond_6
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v0, v1}, Lokhttp3/EventListener;->callEnd(Lokhttp3/Call;)V

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    .line 519
    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    invoke-virtual {v0}, Lokhttp3/Address;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
