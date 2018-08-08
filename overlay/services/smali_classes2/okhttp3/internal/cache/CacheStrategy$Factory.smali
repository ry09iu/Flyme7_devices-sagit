.class public Lokhttp3/internal/cache/CacheStrategy$Factory;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/CacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private ageSeconds:I

.field final cacheResponse:Lokhttp3/Response;

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private lastModified:Ljava/util/Date;

.field private lastModifiedString:Ljava/lang/String;

.field final nowMillis:J

.field private receivedResponseMillis:J

.field final request:Lokhttp3/Request;

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private servedDateString:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLokhttp3/Request;Lokhttp3/Response;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput v6, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    .line 141
    iput-wide p1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->nowMillis:J

    .line 142
    iput-object p3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    .line 143
    iput-object p4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    .line 145
    if-nez p4, :cond_1

    .line 167
    :cond_0
    return-void

    .line 146
    :cond_1
    invoke-virtual {p4}, Lokhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    .line 147
    invoke-virtual {p4}, Lokhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    .line 148
    invoke-virtual {p4}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 150
    invoke-virtual {v1, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-virtual {v1, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Date"

    .line 152
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "Expires"

    .line 155
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "Last-Modified"

    .line 157
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "ETag"

    .line 160
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "Age"

    .line 162
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 149
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_2
    invoke-static {v4}, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 154
    iput-object v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    goto :goto_1

    .line 156
    :cond_3
    invoke-static {v4}, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    goto :goto_1

    .line 158
    :cond_4
    invoke-static {v4}, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    .line 159
    iput-object v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    goto :goto_1

    .line 161
    :cond_5
    iput-object v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    goto :goto_1

    .line 163
    :cond_6
    invoke-static {v4, v6}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    goto :goto_1
.end method

.method private cacheResponseAge()J
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    .line 301
    iget-object v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-nez v2, :cond_0

    .line 304
    :goto_0
    iget v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 307
    :goto_1
    iget-wide v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-wide v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    sub-long/2addr v2, v4

    .line 308
    iget-wide v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->nowMillis:J

    iget-wide v6, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    sub-long/2addr v4, v6

    .line 309
    add-long/2addr v0, v2

    add-long/2addr v0, v4

    return-wide v0

    .line 302
    :cond_0
    iget-wide v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-object v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 305
    :cond_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_1
.end method

.method private computeFreshnessLifetime()J
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    .line 272
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_1

    .line 275
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-nez v0, :cond_2

    .line 281
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-nez v0, :cond_6

    .line 293
    :cond_0
    return-wide v2

    .line 274
    :cond_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    .line 276
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-nez v0, :cond_3

    .line 278
    iget-wide v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    .line 279
    :goto_0
    iget-object v6, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v0, v6, v0

    .line 280
    cmp-long v6, v0, v2

    if-gtz v6, :cond_4

    :goto_1
    if-nez v4, :cond_5

    :goto_2
    return-wide v0

    .line 277
    :cond_3
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0

    :cond_4
    move v4, v5

    .line 280
    goto :goto_1

    :cond_5
    move-wide v0, v2

    goto :goto_2

    .line 281
    :cond_6
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    .line 282
    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->query()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-nez v0, :cond_8

    .line 289
    iget-wide v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    .line 290
    :goto_3
    iget-object v6, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v6, v0, v6

    .line 291
    cmp-long v0, v6, v2

    if-gtz v0, :cond_9

    move v0, v4

    :goto_4
    if-nez v0, :cond_7

    const-wide/16 v0, 0xa

    div-long v2, v6, v0

    :cond_7
    return-wide v2

    .line 288
    :cond_8
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_3

    :cond_9
    move v0, v5

    .line 291
    goto :goto_4
.end method

.method private getCandidate()Lokhttp3/internal/cache/CacheStrategy;
    .locals 12

    .prologue
    .line 186
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->isHttps()Z

    move-result v0

    if-nez v0, :cond_3

    .line 198
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    iget-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    invoke-static {v0, v1}, Lokhttp3/internal/cache/CacheStrategy;->isCacheable(Lokhttp3/Response;Lokhttp3/Request;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 202
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v6

    .line 203
    invoke-virtual {v6}, Lokhttp3/CacheControl;->noCache()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 204
    :cond_1
    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    return-object v0

    .line 187
    :cond_2
    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    return-object v0

    .line 191
    :cond_3
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->handshake()Lokhttp3/Handshake;

    move-result-object v0

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    return-object v0

    .line 199
    :cond_4
    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    return-object v0

    .line 203
    :cond_5
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    invoke-static {v0}, Lokhttp3/internal/cache/CacheStrategy$Factory;->hasConditions(Lokhttp3/Request;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v7

    .line 208
    invoke-virtual {v7}, Lokhttp3/CacheControl;->immutable()Z

    move-result v0

    if-nez v0, :cond_8

    .line 212
    invoke-direct {p0}, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponseAge()J

    move-result-wide v8

    .line 213
    invoke-direct {p0}, Lokhttp3/internal/cache/CacheStrategy$Factory;->computeFreshnessLifetime()J

    move-result-wide v0

    .line 215
    invoke-virtual {v6}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    :goto_0
    const-wide/16 v2, 0x0

    .line 220
    invoke-virtual {v6}, Lokhttp3/CacheControl;->minFreshSeconds()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_a

    :goto_1
    const-wide/16 v4, 0x0

    .line 225
    invoke-virtual {v7}, Lokhttp3/CacheControl;->mustRevalidate()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 229
    :cond_6
    :goto_2
    invoke-virtual {v7}, Lokhttp3/CacheControl;->noCache()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 245
    :cond_7
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 248
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-nez v0, :cond_14

    .line 251
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-nez v0, :cond_15

    .line 255
    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    return-object v0

    .line 209
    :cond_8
    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    return-object v0

    .line 216
    :cond_9
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 221
    :cond_a
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lokhttp3/CacheControl;->minFreshSeconds()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    goto :goto_1

    .line 225
    :cond_b
    invoke-virtual {v6}, Lokhttp3/CacheControl;->maxStaleSeconds()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_6

    .line 226
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lokhttp3/CacheControl;->maxStaleSeconds()I

    move-result v5

    int-to-long v10, v5

    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    goto :goto_2

    .line 229
    :cond_c
    add-long v6, v8, v2

    add-long/2addr v4, v0

    cmp-long v4, v6, v4

    if-ltz v4, :cond_f

    const/4 v4, 0x1

    :goto_3
    if-nez v4, :cond_7

    .line 230
    iget-object v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v4}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v4

    .line 231
    add-long/2addr v2, v8

    cmp-long v0, v2, v0

    if-gez v0, :cond_10

    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_d

    const-string/jumbo v0, "Warning"

    const-string/jumbo v1, "110 HttpURLConnection \"Response is stale\""

    .line 232
    invoke-virtual {v4, v0, v1}, Lokhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    :cond_d
    const-wide/32 v0, 0x5265c00

    .line 235
    cmp-long v0, v8, v0

    if-gtz v0, :cond_11

    const/4 v0, 0x1

    :goto_5
    if-nez v0, :cond_e

    invoke-direct {p0}, Lokhttp3/internal/cache/CacheStrategy$Factory;->isFreshnessLifetimeHeuristic()Z

    move-result v0

    if-nez v0, :cond_12

    .line 238
    :cond_e
    :goto_6
    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;

    invoke-virtual {v4}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    return-object v0

    .line 229
    :cond_f
    const/4 v4, 0x0

    goto :goto_3

    .line 231
    :cond_10
    const/4 v0, 0x0

    goto :goto_4

    .line 235
    :cond_11
    const/4 v0, 0x0

    goto :goto_5

    :cond_12
    const-string/jumbo v0, "Warning"

    const-string/jumbo v1, "113 HttpURLConnection \"Heuristic expiration\""

    .line 236
    invoke-virtual {v4, v0, v1}, Lokhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    goto :goto_6

    :cond_13
    const-string/jumbo v1, "If-None-Match"

    .line 247
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    .line 258
    :goto_7
    iget-object v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    invoke-virtual {v2}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v2

    .line 259
    sget-object v3, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {v3, v2, v1, v0}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 262
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 264
    new-instance v1, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    invoke-direct {v1, v0, v2}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    return-object v1

    :cond_14
    const-string/jumbo v1, "If-Modified-Since"

    .line 250
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    goto :goto_7

    :cond_15
    const-string/jumbo v1, "If-Modified-Since"

    .line 253
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    goto :goto_7
.end method

.method private static hasConditions(Lokhttp3/Request;)Z
    .locals 1

    .prologue
    const-string/jumbo v0, "If-Modified-Since"

    .line 326
    invoke-virtual {p0, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFreshnessLifetimeHeuristic()Z
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public get()Lokhttp3/internal/cache/CacheStrategy;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-direct {p0}, Lokhttp3/internal/cache/CacheStrategy$Factory;->getCandidate()Lokhttp3/internal/cache/CacheStrategy;

    move-result-object v0

    .line 175
    iget-object v1, v0, Lokhttp3/internal/cache/CacheStrategy;->networkRequest:Lokhttp3/Request;

    if-nez v1, :cond_1

    .line 180
    :cond_0
    return-object v0

    .line 175
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/Request;

    invoke-virtual {v1}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/CacheControl;->onlyIfCached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;

    invoke-direct {v0, v2, v2}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    return-object v0
.end method
