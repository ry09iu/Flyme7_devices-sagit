.class public final Lokhttp3/internal/cache/CacheInterceptor;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field final cache:Lokhttp3/internal/cache/InternalCache;


# direct methods
.method public constructor <init>(Lokhttp3/internal/cache/InternalCache;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    .line 50
    return-void
.end method

.method private cacheWritingResponse(Lokhttp3/internal/cache/CacheRequest;Lokhttp3/Response;)Lokhttp3/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    if-eqz p1, :cond_0

    .line 162
    invoke-interface {p1}, Lokhttp3/internal/cache/CacheRequest;->body()Lokio/Sink;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    .line 166
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    .line 168
    new-instance v2, Lokhttp3/internal/cache/CacheInterceptor$1;

    invoke-direct {v2, p0, v1, p1, v0}, Lokhttp3/internal/cache/CacheInterceptor$1;-><init>(Lokhttp3/internal/cache/CacheInterceptor;Lokio/BufferedSource;Lokhttp3/internal/cache/CacheRequest;Lokio/BufferedSink;)V

    const-string/jumbo v0, "Content-Type"

    .line 210
    invoke-virtual {p2, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    .line 212
    invoke-virtual {p2}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v1

    new-instance v3, Lokhttp3/internal/http/RealResponseBody;

    .line 213
    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v2

    invoke-direct {v3, v0, v4, v5, v2}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    invoke-virtual {v1, v3}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    .line 212
    return-object v0

    .line 161
    :cond_0
    return-object p2

    .line 163
    :cond_1
    return-object p2
.end method

.method private static combine(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 219
    new-instance v2, Lokhttp3/Headers$Builder;

    invoke-direct {v2}, Lokhttp3/Headers$Builder;-><init>()V

    .line 221
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 233
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result v1

    :goto_1
    if-lt v0, v1, :cond_5

    .line 240
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    return-object v0

    .line 222
    :cond_0
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    .line 223
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Warning"

    .line 224
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 227
    :goto_2
    invoke-static {v4}, Lokhttp3/internal/cache/CacheInterceptor;->isContentSpecificHeader(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 229
    :cond_1
    sget-object v6, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {v6, v2, v4, v5}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "1"

    .line 224
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    .line 227
    :cond_4
    invoke-static {v4}, Lokhttp3/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 228
    invoke-virtual {p1, v4}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    goto :goto_3

    .line 234
    :cond_5
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 235
    invoke-static {v3}, Lokhttp3/internal/cache/CacheInterceptor;->isContentSpecificHeader(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 233
    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 235
    :cond_7
    invoke-static {v3}, Lokhttp3/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 236
    sget-object v4, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v3, v5}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method static isContentSpecificHeader(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, "Content-Length"

    .line 263
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "Content-Encoding"

    .line 264
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Content-Type"

    .line 265
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method static isEndToEnd(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, "Connection"

    .line 248
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "Keep-Alive"

    .line 249
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Proxy-Authenticate"

    .line 250
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Proxy-Authorization"

    .line 251
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "TE"

    .line 252
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Trailers"

    .line 253
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Transfer-Encoding"

    .line 254
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Upgrade"

    .line 255
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static stripBody(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    if-nez v0, :cond_4

    move-object v0, v1

    .line 57
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 59
    new-instance v4, Lokhttp3/internal/cache/CacheStrategy$Factory;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v5

    invoke-direct {v4, v2, v3, v5, v0}, Lokhttp3/internal/cache/CacheStrategy$Factory;-><init>(JLokhttp3/Request;Lokhttp3/Response;)V

    invoke-virtual {v4}, Lokhttp3/internal/cache/CacheStrategy$Factory;->get()Lokhttp3/internal/cache/CacheStrategy;

    move-result-object v2

    .line 60
    iget-object v3, v2, Lokhttp3/internal/cache/CacheStrategy;->networkRequest:Lokhttp3/Request;

    .line 61
    iget-object v4, v2, Lokhttp3/internal/cache/CacheStrategy;->cacheResponse:Lokhttp3/Response;

    .line 63
    iget-object v5, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    if-nez v5, :cond_5

    .line 67
    :goto_1
    if-nez v0, :cond_6

    .line 72
    :cond_0
    :goto_2
    if-eqz v3, :cond_7

    .line 85
    :cond_1
    if-eqz v3, :cond_8

    .line 93
    :try_start_0
    invoke-interface {p1, v3}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 96
    if-eqz v1, :cond_9

    .line 102
    :cond_2
    :goto_3
    if-nez v4, :cond_c

    .line 123
    :goto_4
    invoke-virtual {v1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    .line 124
    invoke-static {v4}, Lokhttp3/internal/cache/CacheInterceptor;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/Response$Builder;->cacheResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 125
    invoke-static {v1}, Lokhttp3/internal/cache/CacheInterceptor;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->networkResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    if-nez v1, :cond_e

    .line 144
    :cond_3
    :goto_5
    return-object v0

    .line 54
    :cond_4
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-interface {v0, v2}, Lokhttp3/internal/cache/InternalCache;->get(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_5
    iget-object v5, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    invoke-interface {v5, v2}, Lokhttp3/internal/cache/InternalCache;->trackResponse(Lokhttp3/internal/cache/CacheStrategy;)V

    goto :goto_1

    .line 67
    :cond_6
    if-nez v4, :cond_0

    .line 68
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    .line 72
    :cond_7
    if-nez v4, :cond_1

    .line 73
    new-instance v0, Lokhttp3/Response$Builder;

    invoke-direct {v0}, Lokhttp3/Response$Builder;-><init>()V

    .line 74
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v0

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 75
    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v0

    const/16 v1, 0x1f8

    .line 76
    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v0

    const-string/jumbo v1, "Unsatisfiable Request (only-if-cached)"

    .line 77
    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v0

    sget-object v1, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/ResponseBody;

    .line 78
    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v0

    const-wide/16 v2, -0x1

    .line 79
    invoke-virtual {v0, v2, v3}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    .line 73
    return-object v0

    .line 86
    :cond_8
    invoke-virtual {v4}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    .line 87
    invoke-static {v4}, Lokhttp3/internal/cache/CacheInterceptor;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->cacheResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    .line 86
    return-object v0

    .line 96
    :cond_9
    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    .line 96
    if-eqz v1, :cond_b

    .line 97
    :cond_a
    :goto_6
    throw v2

    .line 96
    :cond_b
    if-eqz v0, :cond_a

    .line 97
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_6

    .line 103
    :cond_c
    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v2, 0x130

    if-eq v0, v2, :cond_d

    .line 119
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_4

    .line 104
    :cond_d
    invoke-virtual {v4}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v4}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-static {v2, v3}, Lokhttp3/internal/cache/CacheInterceptor;->combine(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v1}, Lokhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v1}, Lokhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 108
    invoke-static {v4}, Lokhttp3/internal/cache/CacheInterceptor;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/Response$Builder;->cacheResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 109
    invoke-static {v1}, Lokhttp3/internal/cache/CacheInterceptor;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/Response$Builder;->networkResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    .line 111
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->close()V

    .line 115
    iget-object v1, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    invoke-interface {v1}, Lokhttp3/internal/cache/InternalCache;->trackConditionalCacheHit()V

    .line 116
    iget-object v1, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    invoke-interface {v1, v4, v0}, Lokhttp3/internal/cache/InternalCache;->update(Lokhttp3/Response;Lokhttp3/Response;)V

    .line 117
    return-object v0

    .line 129
    :cond_e
    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 135
    :cond_f
    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    :try_start_1
    iget-object v1, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    invoke-interface {v1, v3}, Lokhttp3/internal/cache/InternalCache;->remove(Lokhttp3/Request;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 140
    :catch_0
    move-exception v1

    goto/16 :goto_5

    .line 129
    :cond_10
    invoke-static {v0, v3}, Lokhttp3/internal/cache/CacheStrategy;->isCacheable(Lokhttp3/Response;Lokhttp3/Request;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 131
    iget-object v1, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    invoke-interface {v1, v0}, Lokhttp3/internal/cache/InternalCache;->put(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;

    move-result-object v1

    .line 132
    invoke-direct {p0, v1, v0}, Lokhttp3/internal/cache/CacheInterceptor;->cacheWritingResponse(Lokhttp3/internal/cache/CacheRequest;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method
