.class public Lcom/bumptech/glide/load/engine/Engine;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/EngineJobListener;
.implements Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;
.implements Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;,
        Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;,
        Lcom/bumptech/glide/load/engine/Engine$LoadStatus;,
        Lcom/bumptech/glide/load/engine/Engine$RefQueueIdleHandler;,
        Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Engine"


# instance fields
.field private final activeResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final cache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field private final diskCacheProvider:Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

.field private final engineJobFactory:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

.field private final jobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/EngineJob;",
            ">;"
        }
    .end annotation
.end field

.field private final keyFactory:Lcom/bumptech/glide/load/engine/EngineKeyFactory;

.field private final resourceRecycler:Lcom/bumptech/glide/load/engine/ResourceRecycler;

.field private resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    .line 63
    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/load/engine/Engine;-><init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Map;Lcom/bumptech/glide/load/engine/EngineKeyFactory;Ljava/util/Map;Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;Lcom/bumptech/glide/load/engine/ResourceRecycler;)V

    .line 64
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Map;Lcom/bumptech/glide/load/engine/EngineKeyFactory;Ljava/util/Map;Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;Lcom/bumptech/glide/load/engine/ResourceRecycler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/cache/MemoryCache;",
            "Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/EngineJob;",
            ">;",
            "Lcom/bumptech/glide/load/engine/EngineKeyFactory;",
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;>;>;",
            "Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;",
            "Lcom/bumptech/glide/load/engine/ResourceRecycler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine;->cache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 72
    new-instance v0, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;-><init>(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->diskCacheProvider:Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    .line 74
    if-eqz p7, :cond_0

    .line 77
    :goto_0
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    .line 79
    if-eqz p6, :cond_1

    .line 82
    :goto_1
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/Engine;->keyFactory:Lcom/bumptech/glide/load/engine/EngineKeyFactory;

    .line 84
    if-eqz p5, :cond_2

    .line 87
    :goto_2
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    .line 89
    if-eqz p8, :cond_3

    .line 92
    :goto_3
    iput-object p8, p0, Lcom/bumptech/glide/load/engine/Engine;->engineJobFactory:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    .line 94
    if-eqz p9, :cond_4

    .line 97
    :goto_4
    iput-object p9, p0, Lcom/bumptech/glide/load/engine/Engine;->resourceRecycler:Lcom/bumptech/glide/load/engine/ResourceRecycler;

    .line 99
    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->setResourceRemovedListener(Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;)V

    .line 100
    return-void

    .line 75
    :cond_0
    new-instance p7, Ljava/util/HashMap;

    invoke-direct {p7}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 80
    :cond_1
    new-instance p6, Lcom/bumptech/glide/load/engine/EngineKeyFactory;

    invoke-direct {p6}, Lcom/bumptech/glide/load/engine/EngineKeyFactory;-><init>()V

    goto :goto_1

    .line 85
    :cond_2
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    goto :goto_2

    .line 90
    :cond_3
    new-instance p8, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    invoke-direct {p8, p3, p4, p0}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/bumptech/glide/load/engine/EngineJobListener;)V

    goto :goto_3

    .line 95
    :cond_4
    new-instance p9, Lcom/bumptech/glide/load/engine/ResourceRecycler;

    invoke-direct {p9}, Lcom/bumptech/glide/load/engine/ResourceRecycler;-><init>()V

    goto :goto_4
.end method

.method private getEngineResourceFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/EngineResource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 232
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->cache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->remove(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_0

    .line 237
    instance-of v1, v0, Lcom/bumptech/glide/load/engine/EngineResource;

    if-nez v1, :cond_1

    .line 241
    new-instance v1, Lcom/bumptech/glide/load/engine/EngineResource;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/load/engine/EngineResource;-><init>(Lcom/bumptech/glide/load/engine/Resource;Z)V

    move-object v0, v1

    .line 243
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 236
    goto :goto_0

    .line 239
    :cond_1
    check-cast v0, Lcom/bumptech/glide/load/engine/EngineResource;

    goto :goto_0
.end method

.method private getReferenceQueue()Ljava/lang/ref/ReferenceQueue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    if-eqz v0, :cond_0

    .line 307
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 304
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 305
    new-instance v1, Lcom/bumptech/glide/load/engine/Engine$RefQueueIdleHandler;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/Engine;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/engine/Engine$RefQueueIdleHandler;-><init>(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_0
.end method

.method private loadFromActiveResources(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineResource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Z)",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 199
    if-eqz p2, :cond_0

    .line 204
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 205
    if-nez v0, :cond_1

    move-object v0, v1

    .line 214
    :goto_0
    return-object v0

    .line 200
    :cond_0
    return-object v1

    .line 206
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/EngineResource;

    .line 207
    if-nez v0, :cond_2

    .line 210
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 208
    :cond_2
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/EngineResource;->acquire()V

    goto :goto_0
.end method

.method private loadFromCache(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineResource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Z)",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 218
    if-eqz p2, :cond_0

    .line 222
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/Engine;->getEngineResourceFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/EngineResource;

    move-result-object v0

    .line 223
    if-nez v0, :cond_1

    .line 227
    :goto_0
    return-object v0

    .line 219
    :cond_0
    return-object v0

    .line 224
    :cond_1
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/EngineResource;->acquire()V

    .line 225
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    new-instance v2, Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/Engine;->getReferenceQueue()Ljava/lang/ref/ReferenceQueue;

    move-result-object v3

    invoke-direct {v2, p1, v0, v3}, Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V
    .locals 5

    .prologue
    const-string/jumbo v0, "Engine"

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method


# virtual methods
.method public clearDiskCache()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->diskCacheProvider:Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->clear()V

    .line 299
    return-void
.end method

.method public load(Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/Priority;ZLcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/request/ResourceCallback;)Lcom/bumptech/glide/load/engine/Engine$LoadStatus;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Key;",
            "II",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<TT;>;",
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<TT;TZ;>;",
            "Lcom/bumptech/glide/load/Transformation",
            "<TZ;>;",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TZ;TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Z",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Lcom/bumptech/glide/request/ResourceCallback;",
            ")",
            "Lcom/bumptech/glide/load/engine/Engine$LoadStatus;"
        }
    .end annotation

    .prologue
    .line 145
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 146
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v14

    .line 148
    invoke-interface/range {p4 .. p4}, Lcom/bumptech/glide/load/data/DataFetcher;->getId()Ljava/lang/String;

    move-result-object v3

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/Engine;->keyFactory:Lcom/bumptech/glide/load/engine/EngineKeyFactory;

    invoke-interface/range {p5 .. p5}, Lcom/bumptech/glide/provider/DataLoadProvider;->getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v7

    invoke-interface/range {p5 .. p5}, Lcom/bumptech/glide/provider/DataLoadProvider;->getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v8

    invoke-interface/range {p5 .. p5}, Lcom/bumptech/glide/provider/DataLoadProvider;->getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v10

    invoke-interface/range {p5 .. p5}, Lcom/bumptech/glide/provider/DataLoadProvider;->getSourceEncoder()Lcom/bumptech/glide/load/Encoder;

    move-result-object v12

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v9, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v12}, Lcom/bumptech/glide/load/engine/EngineKeyFactory;->buildKey(Ljava/lang/String;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/load/engine/EngineKey;

    move-result-object v3

    .line 153
    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-direct {v0, v3, v1}, Lcom/bumptech/glide/load/engine/Engine;->loadFromCache(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineResource;

    move-result-object v2

    .line 154
    if-nez v2, :cond_0

    .line 162
    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-direct {v0, v3, v1}, Lcom/bumptech/glide/load/engine/Engine;->loadFromActiveResources(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineResource;

    move-result-object v2

    .line 163
    if-nez v2, :cond_2

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/engine/EngineJob;

    .line 172
    if-nez v2, :cond_4

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/Engine;->engineJobFactory:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    move/from16 v0, p9

    invoke-virtual {v2, v3, v0}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->build(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineJob;

    move-result-object v13

    .line 181
    new-instance v2, Lcom/bumptech/glide/load/engine/DecodeJob;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bumptech/glide/load/engine/Engine;->diskCacheProvider:Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v11, p10

    move-object/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Lcom/bumptech/glide/load/engine/DecodeJob;-><init>(Lcom/bumptech/glide/load/engine/EngineKey;IILcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;)V

    .line 183
    new-instance v4, Lcom/bumptech/glide/load/engine/EngineRunnable;

    move-object/from16 v0, p8

    invoke-direct {v4, v13, v2, v0}, Lcom/bumptech/glide/load/engine/EngineRunnable;-><init>(Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/Priority;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    invoke-interface {v2, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    move-object/from16 v0, p11

    invoke-virtual {v13, v0}, Lcom/bumptech/glide/load/engine/EngineJob;->addCallback(Lcom/bumptech/glide/request/ResourceCallback;)V

    .line 186
    invoke-virtual {v13, v4}, Lcom/bumptech/glide/load/engine/EngineJob;->start(Lcom/bumptech/glide/load/engine/EngineRunnable;)V

    const-string/jumbo v2, "Engine"

    const/4 v4, 0x2

    .line 188
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 191
    :goto_0
    new-instance v2, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    move-object/from16 v0, p11

    invoke-direct {v2, v0, v13}, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;-><init>(Lcom/bumptech/glide/request/ResourceCallback;Lcom/bumptech/glide/load/engine/EngineJob;)V

    return-object v2

    .line 155
    :cond_0
    move-object/from16 v0, p11

    invoke-interface {v0, v2}, Lcom/bumptech/glide/request/ResourceCallback;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;)V

    const-string/jumbo v2, "Engine"

    const/4 v4, 0x2

    .line 156
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    const/4 v2, 0x0

    .line 159
    return-object v2

    :cond_1
    const-string/jumbo v2, "Loaded resource from cache"

    .line 157
    invoke-static {v2, v14, v15, v3}, Lcom/bumptech/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V

    goto :goto_1

    .line 164
    :cond_2
    move-object/from16 v0, p11

    invoke-interface {v0, v2}, Lcom/bumptech/glide/request/ResourceCallback;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;)V

    const-string/jumbo v2, "Engine"

    const/4 v4, 0x2

    .line 165
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_2
    const/4 v2, 0x0

    .line 168
    return-object v2

    :cond_3
    const-string/jumbo v2, "Loaded resource from active resources"

    .line 166
    invoke-static {v2, v14, v15, v3}, Lcom/bumptech/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V

    goto :goto_2

    .line 173
    :cond_4
    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/load/engine/EngineJob;->addCallback(Lcom/bumptech/glide/request/ResourceCallback;)V

    const-string/jumbo v4, "Engine"

    const/4 v5, 0x2

    .line 174
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 177
    :goto_3
    new-instance v3, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    move-object/from16 v0, p11

    invoke-direct {v3, v0, v2}, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;-><init>(Lcom/bumptech/glide/request/ResourceCallback;Lcom/bumptech/glide/load/engine/EngineJob;)V

    return-object v3

    :cond_5
    const-string/jumbo v4, "Added to existing load"

    .line 175
    invoke-static {v4, v14, v15, v3}, Lcom/bumptech/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V

    goto :goto_3

    :cond_6
    const-string/jumbo v2, "Started new load"

    .line 189
    invoke-static {v2, v14, v15, v3}, Lcom/bumptech/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V

    goto :goto_0
.end method

.method public onEngineJobCancelled(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/load/Key;)V
    .locals 1

    .prologue
    .line 273
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 274
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/EngineJob;

    .line 275
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onEngineJobComplete(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 258
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 260
    if-nez p2, :cond_1

    .line 268
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    return-void

    .line 261
    :cond_1
    invoke-virtual {p2, p1, p0}, Lcom/bumptech/glide/load/engine/EngineResource;->setResourceListener(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;)V

    .line 263
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/EngineResource;->isCacheable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    new-instance v1, Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/Engine;->getReferenceQueue()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onResourceReleased(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V
    .locals 1

    .prologue
    .line 288
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 289
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/EngineResource;->isCacheable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->resourceRecycler:Lcom/bumptech/glide/load/engine/ResourceRecycler;

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/load/engine/ResourceRecycler;->recycle(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 295
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->cache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    goto :goto_0
.end method

.method public onResourceRemoved(Lcom/bumptech/glide/load/engine/Resource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 282
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 283
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->resourceRecycler:Lcom/bumptech/glide/load/engine/ResourceRecycler;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/ResourceRecycler;->recycle(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 284
    return-void
.end method

.method public release(Lcom/bumptech/glide/load/engine/Resource;)V
    .locals 2

    .prologue
    .line 247
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 248
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/EngineResource;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot release anything but an EngineResource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    check-cast p1, Lcom/bumptech/glide/load/engine/EngineResource;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/EngineResource;->release()V

    .line 253
    return-void
.end method
