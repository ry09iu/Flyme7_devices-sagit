.class public final Lokhttp3/internal/http/CallServerInterceptor;
.super Ljava/lang/Object;
.source "CallServerInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http/CallServerInterceptor$CountingSink;
    }
.end annotation


# instance fields
.field private final forWebSocket:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean p1, p0, Lokhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    .line 38
    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 41
    check-cast p1, Lokhttp3/internal/http/RealInterceptorChain;

    .line 42
    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->httpStream()Lokhttp3/internal/http/HttpCodec;

    move-result-object v4

    .line 43
    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->streamAllocation()Lokhttp3/internal/connection/StreamAllocation;

    move-result-object v5

    .line 44
    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->connection()Lokhttp3/Connection;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/RealConnection;

    .line 45
    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->request()Lokhttp3/Request;

    move-result-object v6

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 49
    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->eventListener()Lokhttp3/EventListener;

    move-result-object v7

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->call()Lokhttp3/Call;

    move-result-object v10

    invoke-virtual {v7, v10}, Lokhttp3/EventListener;->requestHeadersStart(Lokhttp3/Call;)V

    .line 50
    invoke-interface {v4, v6}, Lokhttp3/internal/http/HttpCodec;->writeRequestHeaders(Lokhttp3/Request;)V

    .line 51
    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->eventListener()Lokhttp3/EventListener;

    move-result-object v7

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->call()Lokhttp3/Call;

    move-result-object v10

    invoke-virtual {v7, v10, v6}, Lokhttp3/EventListener;->requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V

    .line 54
    invoke-virtual {v6}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_0
    move-object v0, v1

    .line 84
    :goto_0
    invoke-interface {v4}, Lokhttp3/internal/http/HttpCodec;->finishRequest()V

    .line 86
    if-eqz v0, :cond_8

    .line 92
    :goto_1
    invoke-virtual {v0, v6}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v5}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->handshake()Lokhttp3/Handshake;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v8, v9}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v7, 0x64

    .line 99
    if-eq v0, v7, :cond_9

    .line 114
    :goto_2
    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->eventListener()Lokhttp3/EventListener;

    move-result-object v6

    .line 115
    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->call()Lokhttp3/Call;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Lokhttp3/EventListener;->responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V

    .line 117
    iget-boolean v6, p0, Lokhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    if-nez v6, :cond_a

    .line 123
    :cond_1
    invoke-virtual {v1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v6

    .line 124
    invoke-interface {v4, v1}, Lokhttp3/internal/http/HttpCodec;->openResponseBody(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v6, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v1

    :goto_3
    const-string/jumbo v4, "close"

    .line 128
    invoke-virtual {v1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v6

    const-string/jumbo v7, "Connection"

    invoke-virtual {v6, v7}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 130
    :cond_2
    invoke-virtual {v5}, Lokhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    :goto_4
    const/16 v4, 0xcc

    .line 133
    if-ne v0, v4, :cond_c

    :cond_3
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_e

    :goto_5
    if-nez v2, :cond_d

    .line 134
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HTTP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " had non-zero Content-Length: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_4
    invoke-virtual {v6}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "100-continue"

    const-string/jumbo v10, "Expect"

    .line 58
    invoke-virtual {v6, v10}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 64
    :goto_6
    if-eqz v1, :cond_6

    .line 76
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_7
    move-object v0, v1

    goto/16 :goto_0

    .line 59
    :cond_5
    invoke-interface {v4}, Lokhttp3/internal/http/HttpCodec;->flushRequest()V

    .line 60
    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->eventListener()Lokhttp3/EventListener;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->call()Lokhttp3/Call;

    move-result-object v7

    invoke-virtual {v1, v7}, Lokhttp3/EventListener;->responseHeadersStart(Lokhttp3/Call;)V

    .line 61
    invoke-interface {v4, v2}, Lokhttp3/internal/http/HttpCodec;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v1

    goto :goto_6

    .line 66
    :cond_6
    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->eventListener()Lokhttp3/EventListener;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->call()Lokhttp3/Call;

    move-result-object v7

    invoke-virtual {v0, v7}, Lokhttp3/EventListener;->requestBodyStart(Lokhttp3/Call;)V

    .line 67
    invoke-virtual {v6}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v10

    .line 68
    new-instance v0, Lokhttp3/internal/http/CallServerInterceptor$CountingSink;

    .line 69
    invoke-interface {v4, v6, v10, v11}, Lokhttp3/internal/http/HttpCodec;->createRequestBody(Lokhttp3/Request;J)Lokio/Sink;

    move-result-object v7

    invoke-direct {v0, v7}, Lokhttp3/internal/http/CallServerInterceptor$CountingSink;-><init>(Lokio/Sink;)V

    .line 70
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v7

    .line 72
    invoke-virtual {v6}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v10

    invoke-virtual {v10, v7}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 73
    invoke-interface {v7}, Lokio/BufferedSink;->close()V

    .line 74
    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->eventListener()Lokhttp3/EventListener;

    move-result-object v7

    .line 75
    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->call()Lokhttp3/Call;

    move-result-object v10

    iget-wide v12, v0, Lokhttp3/internal/http/CallServerInterceptor$CountingSink;->successfulCount:J

    invoke-virtual {v7, v10, v12, v13}, Lokhttp3/EventListener;->requestBodyEnd(Lokhttp3/Call;J)V

    goto :goto_7

    .line 80
    :cond_7
    invoke-virtual {v5}, Lokhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    move-object v0, v1

    goto/16 :goto_0

    .line 87
    :cond_8
    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->eventListener()Lokhttp3/EventListener;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->call()Lokhttp3/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/EventListener;->responseHeadersStart(Lokhttp3/Call;)V

    .line 88
    invoke-interface {v4, v3}, Lokhttp3/internal/http/HttpCodec;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v0

    goto/16 :goto_1

    .line 102
    :cond_9
    invoke-interface {v4, v3}, Lokhttp3/internal/http/HttpCodec;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0, v6}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v5}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->handshake()Lokhttp3/Handshake;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0, v8, v9}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v0

    goto/16 :goto_2

    :cond_a
    const/16 v6, 0x65

    .line 117
    if-ne v0, v6, :cond_1

    .line 119
    invoke-virtual {v1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v1

    sget-object v4, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/ResponseBody;

    .line 120
    invoke-virtual {v1, v4}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v1

    goto/16 :goto_3

    :cond_b
    const-string/jumbo v4, "close"

    const-string/jumbo v6, "Connection"

    .line 129
    invoke-virtual {v1, v6}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_4

    :cond_c
    const/16 v4, 0xcd

    .line 133
    if-eq v0, v4, :cond_3

    .line 138
    :cond_d
    return-object v1

    :cond_e
    move v2, v3

    .line 133
    goto/16 :goto_5
.end method
