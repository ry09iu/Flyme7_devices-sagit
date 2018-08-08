.class public final Lokhttp3/Cache;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Cache$CacheRequestImpl;,
        Lokhttp3/Cache$CacheResponseBody;,
        Lokhttp3/Cache$Entry;
    }
.end annotation


# static fields
.field private static final ENTRY_BODY:I = 0x1

.field private static final ENTRY_COUNT:I = 0x2

.field private static final ENTRY_METADATA:I = 0x0

.field private static final VERSION:I = 0x31191


# instance fields
.field final cache:Lokhttp3/internal/cache/DiskLruCache;

.field private hitCount:I

.field final internalCache:Lokhttp3/internal/cache/InternalCache;

.field private networkCount:I

.field private requestCount:I

.field writeAbortCount:I

.field writeSuccessCount:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 2

    .prologue
    .line 179
    sget-object v0, Lokhttp3/internal/io/FileSystem;->SYSTEM:Lokhttp3/internal/io/FileSystem;

    invoke-direct {p0, p1, p2, p3, v0}, Lokhttp3/Cache;-><init>(Ljava/io/File;JLokhttp3/internal/io/FileSystem;)V

    .line 180
    return-void
.end method

.method constructor <init>(Ljava/io/File;JLokhttp3/internal/io/FileSystem;)V
    .locals 6

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Lokhttp3/Cache$1;

    invoke-direct {v0, p0}, Lokhttp3/Cache$1;-><init>(Lokhttp3/Cache;)V

    iput-object v0, p0, Lokhttp3/Cache;->internalCache:Lokhttp3/internal/cache/InternalCache;

    const v2, 0x31191

    const/4 v3, 0x2

    move-object v0, p4

    move-object v1, p1

    move-wide v4, p2

    .line 183
    invoke-static/range {v0 .. v5}, Lokhttp3/internal/cache/DiskLruCache;->create(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJ)Lokhttp3/internal/cache/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    .line 184
    return-void
.end method

.method private abortQuietly(Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 1
    .param p1    # Lokhttp3/internal/cache/DiskLruCache$Editor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 280
    if-nez p1, :cond_0

    .line 285
    :goto_0
    return-void

    .line 281
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static key(Lokhttp3/HttpUrl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->md5()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static readInt(Lokio/BufferedSource;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 722
    :try_start_0
    invoke-interface {p0}, Lokio/BufferedSource;->readDecimalLong()J

    move-result-wide v4

    .line 723
    invoke-interface {p0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v6, 0x0

    .line 724
    cmp-long v2, v4, v6

    if-gez v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_2

    const-wide/32 v6, 0x7fffffff

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    :goto_1
    if-nez v0, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 727
    long-to-int v0, v4

    return v0

    :cond_0
    move v2, v1

    .line 724
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 725
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expected an int but was \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    :catch_0
    move-exception v0

    .line 729
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->close()V

    .line 392
    return-void
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->delete()V

    .line 308
    return-void
.end method

.method public directory()Ljava/io/File;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public evictAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->evictAll()V

    .line 316
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->flush()V

    .line 388
    return-void
.end method

.method get(Lokhttp3/Request;)Lokhttp3/Response;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 191
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/Cache;->key(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v0

    .line 195
    :try_start_0
    iget-object v1, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1, v0}, Lokhttp3/internal/cache/DiskLruCache;->get(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 196
    if-eqz v0, :cond_0

    .line 205
    :try_start_1
    new-instance v1, Lokhttp3/Cache$Entry;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lokio/Source;

    move-result-object v2

    invoke-direct {v1, v2}, Lokhttp3/Cache$Entry;-><init>(Lokio/Source;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 211
    invoke-virtual {v1, v0}, Lokhttp3/Cache$Entry;->response(Lokhttp3/internal/cache/DiskLruCache$Snapshot;)Lokhttp3/Response;

    move-result-object v0

    .line 213
    invoke-virtual {v1, p1, v0}, Lokhttp3/Cache$Entry;->matches(Lokhttp3/Request;Lokhttp3/Response;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    return-object v0

    .line 197
    :cond_0
    return-object v3

    .line 202
    :catch_0
    move-exception v0

    .line 201
    return-object v3

    .line 209
    :catch_1
    move-exception v1

    .line 207
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 208
    return-object v3

    .line 214
    :cond_1
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 215
    return-object v3
.end method

.method public declared-synchronized hitCount()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 423
    :try_start_0
    iget v0, p0, Lokhttp3/Cache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initialize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 300
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->isClosed()Z

    move-result v0

    return v0
.end method

.method public maxSize()J
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized networkCount()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 419
    :try_start_0
    iget v0, p0, Lokhttp3/Cache;->networkCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method put(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 222
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "GET"

    .line 232
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->hasVaryAll(Lokhttp3/Response;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 243
    new-instance v2, Lokhttp3/Cache$Entry;

    invoke-direct {v2, p1}, Lokhttp3/Cache$Entry;-><init>(Lokhttp3/Response;)V

    .line 246
    :try_start_0
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-static {v3}, Lokhttp3/Cache;->key(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lokhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 247
    if-eqz v0, :cond_3

    .line 250
    :try_start_1
    invoke-virtual {v2, v0}, Lokhttp3/Cache$Entry;->writeTo(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 251
    new-instance v2, Lokhttp3/Cache$CacheRequestImpl;

    invoke-direct {v2, p0, v0}, Lokhttp3/Cache$CacheRequestImpl;-><init>(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 226
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/Cache;->remove(Lokhttp3/Request;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 230
    :goto_0
    return-object v1

    .line 236
    :cond_1
    return-object v1

    .line 240
    :cond_2
    return-object v1

    .line 248
    :cond_3
    return-object v1

    .line 251
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 253
    :goto_1
    invoke-direct {p0, v0}, Lokhttp3/Cache;->abortQuietly(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 254
    return-object v1

    .line 251
    :catch_1
    move-exception v2

    goto :goto_1

    .line 229
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method remove(Lokhttp3/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/Cache;->key(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/internal/cache/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 260
    return-void
.end method

.method public declared-synchronized requestCount()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 427
    :try_start_0
    iget v0, p0, Lokhttp3/Cache;->requestCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method declared-synchronized trackConditionalCacheHit()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 415
    :try_start_0
    iget v0, p0, Lokhttp3/Cache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/Cache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 416
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized trackResponse(Lokhttp3/internal/cache/CacheStrategy;)V
    .locals 1

    .prologue
    monitor-enter p0

    .line 403
    :try_start_0
    iget v0, p0, Lokhttp3/Cache;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/Cache;->requestCount:I

    .line 405
    iget-object v0, p1, Lokhttp3/internal/cache/CacheStrategy;->networkRequest:Lokhttp3/Request;

    if-nez v0, :cond_0

    .line 408
    iget-object v0, p1, Lokhttp3/internal/cache/CacheStrategy;->cacheResponse:Lokhttp3/Response;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :goto_0
    monitor-exit p0

    .line 412
    return-void

    .line 407
    :cond_0
    :try_start_1
    iget v0, p0, Lokhttp3/Cache;->networkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/Cache;->networkCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 410
    :cond_1
    :try_start_2
    iget v0, p0, Lokhttp3/Cache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/Cache;->hitCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method update(Lokhttp3/Response;Lokhttp3/Response;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 263
    new-instance v2, Lokhttp3/Cache$Entry;

    invoke-direct {v2, p2}, Lokhttp3/Cache$Entry;-><init>(Lokhttp3/Response;)V

    .line 264
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    check-cast v0, Lokhttp3/Cache$CacheResponseBody;

    iget-object v0, v0, Lokhttp3/Cache$CacheResponseBody;->snapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 267
    :try_start_0
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->edit()Lokhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 268
    if-nez v0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 269
    :cond_0
    :try_start_1
    invoke-virtual {v2, v0}, Lokhttp3/Cache$Entry;->writeTo(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 270
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v1

    .line 273
    :goto_1
    invoke-direct {p0, v0}, Lokhttp3/Cache;->abortQuietly(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    goto :goto_0

    .line 274
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public urls()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    new-instance v0, Lokhttp3/Cache$2;

    invoke-direct {v0, p0}, Lokhttp3/Cache$2;-><init>(Lokhttp3/Cache;)V

    return-object v0
.end method

.method public declared-synchronized writeAbortCount()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 371
    :try_start_0
    iget v0, p0, Lokhttp3/Cache;->writeAbortCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeSuccessCount()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 375
    :try_start_0
    iget v0, p0, Lokhttp3/Cache;->writeSuccessCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
