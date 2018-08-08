.class public Lokhttp3/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field body:Lokhttp3/RequestBody;

.field headers:Lokhttp3/Headers$Builder;

.field method:Ljava/lang/String;

.field tag:Ljava/lang/Object;

.field url:Lokhttp3/HttpUrl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "GET"

    .line 108
    iput-object v0, p0, Lokhttp3/Request$Builder;->method:Ljava/lang/String;

    .line 109
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 110
    return-void
.end method

.method constructor <init>(Lokhttp3/Request;)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iget-object v0, p1, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    iput-object v0, p0, Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;

    .line 114
    iget-object v0, p1, Lokhttp3/Request;->method:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Request$Builder;->method:Ljava/lang/String;

    .line 115
    iget-object v0, p1, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    iput-object v0, p0, Lokhttp3/Request$Builder;->body:Lokhttp3/RequestBody;

    .line 116
    iget-object v0, p1, Lokhttp3/Request;->tag:Ljava/lang/Object;

    iput-object v0, p0, Lokhttp3/Request$Builder;->tag:Ljava/lang/Object;

    .line 117
    iget-object v0, p1, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    invoke-virtual {v0}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 118
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 178
    return-object p0
.end method

.method public build()Lokhttp3/Request;
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;

    if-eqz v0, :cond_0

    .line 257
    new-instance v0, Lokhttp3/Request;

    invoke-direct {v0, p0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    return-object v0

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p1}, Lokhttp3/CacheControl;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Cache-Control"

    .line 201
    invoke-virtual {p0, v1, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "Cache-Control"

    .line 200
    invoke-virtual {p0, v0}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public delete()Lokhttp3/Request$Builder;
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lokhttp3/internal/Util;->EMPTY_REQUEST:Lokhttp3/RequestBody;

    invoke-virtual {p0, v0}, Lokhttp3/Request$Builder;->delete(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 1
    .param p1    # Lokhttp3/RequestBody;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-string/jumbo v0, "DELETE"

    .line 217
    invoke-virtual {p0, v0, p1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public get()Lokhttp3/Request$Builder;
    .locals 2

    .prologue
    const-string/jumbo v0, "GET"

    const/4 v1, 0x0

    .line 205
    invoke-virtual {p0, v0, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public head()Lokhttp3/Request$Builder;
    .locals 2

    .prologue
    const-string/jumbo v0, "HEAD"

    const/4 v1, 0x0

    .line 209
    invoke-virtual {p0, v0, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 166
    return-object p0
.end method

.method public headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p1}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 190
    return-object p0
.end method

.method public method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 3
    .param p2    # Lokhttp3/RequestBody;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 233
    if-eqz p1, :cond_2

    .line 234
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 235
    if-nez p2, :cond_4

    .line 238
    :cond_0
    if-eqz p2, :cond_5

    .line 241
    :cond_1
    iput-object p1, p0, Lokhttp3/Request$Builder;->method:Ljava/lang/String;

    .line 242
    iput-object p2, p0, Lokhttp3/Request$Builder;->body:Lokhttp3/RequestBody;

    .line 243
    return-object p0

    .line 233
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_4
    invoke-static {p1}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must not have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_5
    invoke-static {p1}, Lokhttp3/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public patch(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 1

    .prologue
    const-string/jumbo v0, "PATCH"

    .line 229
    invoke-virtual {p0, v0, p1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 1

    .prologue
    const-string/jumbo v0, "POST"

    .line 213
    invoke-virtual {p0, v0, p1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 1

    .prologue
    const-string/jumbo v0, "PUT"

    .line 225
    invoke-virtual {p0, v0, p1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 184
    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lokhttp3/Request$Builder;->tag:Ljava/lang/Object;

    .line 252
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lokhttp3/Request$Builder;
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    if-eqz p1, :cond_0

    const-string/jumbo v3, "ws:"

    move-object v0, p1

    move v4, v2

    .line 136
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v3, "wss:"

    move-object v0, p1

    move v4, v2

    move v5, v6

    .line 138
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    :goto_0
    invoke-static {p1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_3

    .line 144
    invoke-virtual {p0, v0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 139
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 143
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public url(Ljava/net/URL;)Lokhttp3/Request$Builder;
    .locals 3

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 155
    invoke-static {p1}, Lokhttp3/HttpUrl;->get(Ljava/net/URL;)Lokhttp3/HttpUrl;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p0, v0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;
    .locals 2

    .prologue
    .line 121
    if-eqz p1, :cond_0

    .line 122
    iput-object p1, p0, Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;

    .line 123
    return-object p0

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
