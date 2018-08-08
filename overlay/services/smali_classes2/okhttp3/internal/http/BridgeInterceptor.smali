.class public final Lokhttp3/internal/http/BridgeInterceptor;
.super Ljava/lang/Object;
.source "BridgeInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private final cookieJar:Lokhttp3/CookieJar;


# direct methods
.method public constructor <init>(Lokhttp3/CookieJar;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Lokhttp3/CookieJar;

    .line 45
    return-void
.end method

.method private cookieHeader(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 120
    :cond_0
    if-gtz v1, :cond_1

    .line 123
    :goto_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Cookie;

    .line 124
    invoke-virtual {v0}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lokhttp3/Cookie;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "; "

    .line 121
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    const/4 v0, 0x0

    .line 48
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v2

    .line 51
    invoke-virtual {v1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v3

    .line 52
    if-nez v3, :cond_2

    :goto_0
    const-string/jumbo v3, "Host"

    .line 68
    invoke-virtual {v1, v3}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    :goto_1
    const-string/jumbo v3, "Connection"

    .line 72
    invoke-virtual {v1, v3}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    :goto_2
    const-string/jumbo v3, "Accept-Encoding"

    .line 79
    invoke-virtual {v1, v3}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 84
    :cond_0
    :goto_3
    iget-object v3, p0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Lokhttp3/CookieJar;

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-interface {v3, v4}, Lokhttp3/CookieJar;->loadForRequest(Lokhttp3/HttpUrl;)Ljava/util/List;

    move-result-object v3

    .line 85
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    :goto_4
    const-string/jumbo v3, "User-Agent"

    .line 89
    invoke-virtual {v1, v3}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 93
    :goto_5
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    invoke-interface {p1, v2}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v2

    .line 95
    iget-object v3, p0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Lokhttp3/CookieJar;

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lokhttp3/internal/http/HttpHeaders;->receiveHeaders(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V

    .line 97
    invoke-virtual {v2}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v3

    .line 98
    invoke-virtual {v3, v1}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v1

    .line 100
    if-nez v0, :cond_a

    .line 113
    :cond_1
    :goto_6
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    return-object v0

    .line 53
    :cond_2
    invoke-virtual {v3}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v4

    .line 54
    if-nez v4, :cond_3

    .line 58
    :goto_7
    invoke-virtual {v3}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v4

    .line 59
    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    const-string/jumbo v3, "Content-Length"

    .line 60
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string/jumbo v3, "Transfer-Encoding"

    .line 61
    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "Content-Type"

    .line 55
    invoke-virtual {v4}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_7

    :cond_4
    const-string/jumbo v3, "Transfer-Encoding"

    const-string/jumbo v4, "chunked"

    .line 63
    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string/jumbo v3, "Content-Length"

    .line 64
    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v3, "Host"

    .line 69
    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-static {v4, v0}, Lokhttp3/internal/Util;->hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v3, "Connection"

    const-string/jumbo v4, "Keep-Alive"

    .line 73
    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v3, "Range"

    .line 79
    invoke-virtual {v1, v3}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 80
    const/4 v0, 0x1

    const-string/jumbo v3, "Accept-Encoding"

    const-string/jumbo v4, "gzip"

    .line 81
    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto/16 :goto_3

    :cond_8
    const-string/jumbo v4, "Cookie"

    .line 86
    invoke-direct {p0, v3}, Lokhttp3/internal/http/BridgeInterceptor;->cookieHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto/16 :goto_4

    :cond_9
    const-string/jumbo v3, "User-Agent"

    .line 90
    invoke-static {}, Lokhttp3/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto/16 :goto_5

    :cond_a
    const-string/jumbo v0, "gzip"

    const-string/jumbo v3, "Content-Encoding"

    .line 101
    invoke-virtual {v2, v3}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-static {v2}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    new-instance v0, Lokio/GzipSource;

    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v3

    invoke-direct {v0, v3}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    .line 104
    invoke-virtual {v2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v3

    const-string/jumbo v4, "Content-Encoding"

    .line 105
    invoke-virtual {v3, v4}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v3

    const-string/jumbo v4, "Content-Length"

    .line 106
    invoke-virtual {v3, v4}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v3

    .line 107
    invoke-virtual {v3}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v3

    .line 108
    invoke-virtual {v1, v3}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    const-string/jumbo v3, "Content-Type"

    .line 109
    invoke-virtual {v2, v3}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    new-instance v3, Lokhttp3/internal/http/RealResponseBody;

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {v3, v2, v6, v7, v0}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    invoke-virtual {v1, v3}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    goto/16 :goto_6
.end method
