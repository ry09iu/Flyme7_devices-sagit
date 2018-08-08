.class public final Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static final MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field private callStackTrace:Ljava/lang/Object;

.field private volatile canceled:Z

.field private final client:Lokhttp3/OkHttpClient;

.field private final forWebSocket:Z

.field private volatile streamAllocation:Lokhttp3/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;Z)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 75
    iput-boolean p2, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    .line 76
    return-void
.end method

.method private createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;
    .locals 13

    .prologue
    const/4 v7, 0x0

    .line 198
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v6, v7

    move-object v5, v7

    .line 204
    :goto_0
    new-instance v0, Lokhttp3/Address;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->port()I

    move-result v2

    iget-object v3, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->dns()Lokhttp3/Dns;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v4

    iget-object v8, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 205
    invoke-virtual {v8}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v8

    iget-object v9, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 206
    invoke-virtual {v9}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v9

    iget-object v10, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v10}, Lokhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v10

    iget-object v11, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v11}, Lokhttp3/OkHttpClient;->connectionSpecs()Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v12}, Lokhttp3/OkHttpClient;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lokhttp3/Address;-><init>(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 204
    return-object v0

    .line 199
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    .line 200
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v6

    .line 201
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->certificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v7

    goto :goto_0
.end method

.method private followUpRequest(Lokhttp3/Response;Lokhttp3/Route;)Lokhttp3/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 273
    if-eqz p1, :cond_0

    .line 274
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v1

    .line 276
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    .line 277
    sparse-switch v1, :sswitch_data_0

    .line 382
    return-object v0

    .line 273
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 279
    :sswitch_0
    if-nez p2, :cond_1

    .line 281
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v0

    .line 282
    :goto_0
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_2

    .line 285
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v0

    return-object v0

    .line 280
    :cond_1
    invoke-virtual {p2}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    goto :goto_0

    .line 283
    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :sswitch_1
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->authenticator()Lokhttp3/Authenticator;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v0

    return-object v0

    :sswitch_2
    const-string/jumbo v1, "GET"

    .line 294
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 303
    :cond_3
    :sswitch_3
    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->followRedirects()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "Location"

    .line 305
    invoke-virtual {p1, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 306
    if-eqz v1, :cond_8

    .line 307
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3, v1}, Lokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    .line 310
    if-eqz v1, :cond_9

    .line 313
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 314
    if-eqz v3, :cond_a

    .line 317
    :cond_4
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v3

    .line 318
    invoke-static {v2}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 336
    :cond_5
    :goto_1
    invoke-direct {p0, p1, v1}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lokhttp3/Response;Lokhttp3/HttpUrl;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 340
    :goto_2
    invoke-virtual {v3, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    return-object v0

    :cond_6
    const-string/jumbo v1, "HEAD"

    .line 294
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 295
    return-object v0

    .line 303
    :cond_7
    return-object v0

    .line 306
    :cond_8
    return-object v0

    .line 310
    :cond_9
    return-object v0

    .line 314
    :cond_a
    iget-object v3, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->followSslRedirects()Z

    move-result v3

    if-nez v3, :cond_4

    return-object v0

    .line 319
    :cond_b
    invoke-static {v2}, Lokhttp3/internal/http/HttpMethod;->redirectsWithBody(Ljava/lang/String;)Z

    move-result v4

    .line 320
    invoke-static {v2}, Lokhttp3/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 323
    if-nez v4, :cond_d

    .line 324
    :goto_3
    invoke-virtual {v3, v2, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 326
    :goto_4
    if-nez v4, :cond_5

    const-string/jumbo v0, "Transfer-Encoding"

    .line 327
    invoke-virtual {v3, v0}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string/jumbo v0, "Content-Length"

    .line 328
    invoke-virtual {v3, v0}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string/jumbo v0, "Content-Type"

    .line 329
    invoke-virtual {v3, v0}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_1

    :cond_c
    const-string/jumbo v2, "GET"

    .line 321
    invoke-virtual {v3, v2, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_4

    .line 323
    :cond_d
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    goto :goto_3

    :cond_e
    const-string/jumbo v0, "Authorization"

    .line 337
    invoke-virtual {v3, v0}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_2

    .line 346
    :sswitch_4
    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 351
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    instance-of v1, v1, Lokhttp3/internal/http/UnrepeatableRequestBody;

    if-nez v1, :cond_11

    .line 355
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v1

    if-nez v1, :cond_12

    .line 361
    :cond_f
    invoke-direct {p0, p1, v3}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lokhttp3/Response;I)I

    move-result v1

    if-gtz v1, :cond_13

    .line 365
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    return-object v0

    .line 348
    :cond_10
    return-object v0

    .line 352
    :cond_11
    return-object v0

    .line 356
    :cond_12
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0x198

    if-ne v1, v2, :cond_f

    .line 358
    return-object v0

    .line 362
    :cond_13
    return-object v0

    .line 368
    :sswitch_5
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v1

    if-nez v1, :cond_15

    :cond_14
    const v1, 0x7fffffff

    .line 374
    invoke-direct {p0, p1, v1}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lokhttp3/Response;I)I

    move-result v1

    if-eqz v1, :cond_16

    .line 379
    return-object v0

    .line 369
    :cond_15
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0x1f7

    if-ne v1, v2, :cond_14

    .line 371
    return-object v0

    .line 376
    :cond_16
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    return-object v0

    .line 277
    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_3
        0x12d -> :sswitch_3
        0x12e -> :sswitch_3
        0x12f -> :sswitch_3
        0x133 -> :sswitch_2
        0x134 -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
        0x198 -> :sswitch_4
        0x1f7 -> :sswitch_5
    .end sparse-switch
.end method

.method private isRecoverable(Ljava/io/IOException;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 237
    instance-of v2, p1, Ljava/net/ProtocolException;

    if-nez v2, :cond_1

    .line 243
    instance-of v2, p1, Ljava/io/InterruptedIOException;

    if-nez v2, :cond_2

    .line 249
    instance-of v2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v2, :cond_5

    .line 256
    :cond_0
    instance-of v2, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v2, :cond_6

    .line 264
    return v0

    .line 238
    :cond_1
    return v1

    .line 244
    :cond_2
    instance-of v2, p1, Ljava/net/SocketTimeoutException;

    if-nez v2, :cond_4

    :goto_0
    move v0, v1

    :cond_3
    return v0

    :cond_4
    if-eqz p2, :cond_3

    goto :goto_0

    .line 252
    :cond_5
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-eqz v2, :cond_0

    .line 253
    return v1

    .line 258
    :cond_6
    return v1
.end method

.method private recover(Ljava/io/IOException;Lokhttp3/internal/connection/StreamAllocation;ZLokhttp3/Request;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 217
    invoke-virtual {p2, p1}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 220
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    if-nez p3, :cond_2

    .line 226
    :cond_0
    invoke-direct {p0, p1, p3}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->isRecoverable(Ljava/io/IOException;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    invoke-virtual {p2}, Lokhttp3/internal/connection/StreamAllocation;->hasMoreRoutes()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 232
    const/4 v0, 0x1

    return v0

    .line 220
    :cond_1
    return v1

    .line 223
    :cond_2
    invoke-virtual {p4}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    instance-of v0, v0, Lokhttp3/internal/http/UnrepeatableRequestBody;

    if-eqz v0, :cond_0

    return v1

    .line 226
    :cond_3
    return v1

    .line 229
    :cond_4
    return v1
.end method

.method private retryAfter(Lokhttp3/Response;I)I
    .locals 2

    .prologue
    const-string/jumbo v0, "Retry-After"

    .line 387
    invoke-virtual {p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    if-eqz v0, :cond_0

    const-string/jumbo v1, "\\d+"

    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const v0, 0x7fffffff

    .line 399
    return v0

    .line 390
    :cond_0
    return p2

    .line 396
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private sameConnection(Lokhttp3/Response;Lokhttp3/HttpUrl;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 407
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    .line 408
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 409
    :cond_1
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->port()I

    move-result v2

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->port()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 410
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    .line 89
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    .line 90
    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->cancel()V

    goto :goto_0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 106
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v7

    .line 107
    check-cast p1, Lokhttp3/internal/http/RealInterceptorChain;

    .line 108
    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->call()Lokhttp3/Call;

    move-result-object v3

    .line 109
    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->eventListener()Lokhttp3/EventListener;

    move-result-object v4

    .line 111
    new-instance v0, Lokhttp3/internal/connection/StreamAllocation;

    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v1

    .line 112
    invoke-virtual {v7}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-direct {p0, v2}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;

    move-result-object v2

    iget-object v5, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/connection/StreamAllocation;-><init>(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/Call;Lokhttp3/EventListener;Ljava/lang/Object;)V

    .line 113
    iput-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    move v1, v8

    move-object v2, v0

    move-object v5, v7

    move-object v0, v6

    .line 118
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    if-nez v7, :cond_1

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 126
    :try_start_0
    invoke-virtual {p1, v5, v2, v7, v9}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http/HttpCodec;Lokhttp3/internal/connection/RealConnection;)Lokhttp3/Response;
    :try_end_0
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 150
    if-nez v0, :cond_3

    .line 158
    :goto_1
    invoke-virtual {v2}, Lokhttp3/internal/connection/StreamAllocation;->route()Lokhttp3/Route;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->followUpRequest(Lokhttp3/Response;Lokhttp3/Route;)Lokhttp3/Request;

    move-result-object v10

    .line 160
    if-eqz v10, :cond_4

    .line 167
    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 169
    add-int/lit8 v9, v1, 0x1

    const/16 v0, 0x14

    if-gt v9, v0, :cond_6

    .line 174
    invoke-virtual {v10}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    instance-of v0, v0, Lokhttp3/internal/http/UnrepeatableRequestBody;

    if-nez v0, :cond_7

    .line 179
    invoke-virtual {v10}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lokhttp3/Response;Lokhttp3/HttpUrl;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 184
    invoke-virtual {v2}, Lokhttp3/internal/connection/StreamAllocation;->codec()Lokhttp3/internal/http/HttpCodec;

    move-result-object v0

    if-nez v0, :cond_9

    move-object v0, v2

    :goto_2
    move v1, v9

    move-object v2, v0

    move-object v5, v10

    move-object v0, v7

    .line 191
    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {v2}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 120
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :catch_0
    move-exception v7

    .line 130
    :try_start_1
    invoke-virtual {v7}, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {p0, v9, v2, v10, v5}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lokhttp3/internal/connection/StreamAllocation;ZLokhttp3/Request;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 131
    invoke-virtual {v7}, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :catchall_0
    move-exception v0

    .line 144
    invoke-virtual {v2, v6}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 145
    invoke-virtual {v2}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    throw v0

    :catch_1
    move-exception v9

    .line 137
    :try_start_2
    instance-of v7, v9, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-eqz v7, :cond_2

    move v7, v8

    .line 138
    :goto_3
    invoke-direct {p0, v9, v2, v7, v5}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lokhttp3/internal/connection/StreamAllocation;ZLokhttp3/Request;)Z

    move-result v7

    if-nez v7, :cond_0

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    move v7, v11

    .line 137
    goto :goto_3

    .line 151
    :cond_3
    invoke-virtual {v7}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v5

    .line 152
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0, v6}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    .line 152
    invoke-virtual {v5, v0}, Lokhttp3/Response$Builder;->priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v7

    goto/16 :goto_1

    .line 161
    :cond_4
    iget-boolean v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    if-eqz v0, :cond_5

    .line 164
    :goto_4
    return-object v7

    .line 162
    :cond_5
    invoke-virtual {v2}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    goto :goto_4

    .line 170
    :cond_6
    invoke-virtual {v2}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 171
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Too many follow-up requests: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_7
    invoke-virtual {v2}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 176
    new-instance v0, Ljava/net/HttpRetryException;

    const-string/jumbo v1, "Cannot retry streamed HTTP body"

    invoke-virtual {v7}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 180
    :cond_8
    invoke-virtual {v2}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 181
    new-instance v0, Lokhttp3/internal/connection/StreamAllocation;

    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v1

    .line 182
    invoke-virtual {v10}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-direct {p0, v2}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;

    move-result-object v2

    iget-object v5, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/connection/StreamAllocation;-><init>(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/Call;Lokhttp3/EventListener;Ljava/lang/Object;)V

    .line 183
    iput-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    goto/16 :goto_2

    .line 185
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Closing the body of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    return v0
.end method

.method public setCallStackTrace(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public streamAllocation()Lokhttp3/internal/connection/StreamAllocation;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    return-object v0
.end method
