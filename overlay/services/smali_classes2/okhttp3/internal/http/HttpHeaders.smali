.class public final Lokhttp3/internal/http/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# static fields
.field private static final PARAMETER:Ljava/util/regex/Pattern;

.field private static final QUOTED_STRING:Ljava/lang/String; = "\"([^\"]*)\""

.field private static final TOKEN:Ljava/lang/String; = "([^ \"=]*)"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, " +([^ \"=]*)=(:?\"([^\"]*)\"|([^ \"=]*)) *(:?,|$)"

    .line 44
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/HttpHeaders;->PARAMETER:Ljava/util/regex/Pattern;

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static contentLength(Lokhttp3/Headers;)J
    .locals 2

    .prologue
    const-string/jumbo v0, "Content-Length"

    .line 54
    invoke-virtual {p0, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->stringToLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static contentLength(Lokhttp3/Response;)J
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hasBody(Lokhttp3/Response;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 210
    invoke-virtual {p0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 214
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x64

    .line 215
    if-ge v0, v1, :cond_3

    :cond_0
    const/16 v1, 0xcc

    if-ne v0, v1, :cond_4

    .line 223
    :cond_1
    :goto_0
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Response;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const-string/jumbo v0, "chunked"

    const-string/jumbo v1, "Transfer-Encoding"

    .line 224
    invoke-virtual {p0, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 228
    return v4

    .line 211
    :cond_2
    return v4

    :cond_3
    const/16 v1, 0xc8

    .line 215
    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_4
    const/16 v1, 0x130

    if-eq v0, v1, :cond_1

    .line 218
    return v5

    .line 225
    :cond_5
    return v5
.end method

.method public static hasVaryAll(Lokhttp3/Headers;)Z
    .locals 2

    .prologue
    .line 89
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hasVaryAll(Lokhttp3/Response;)Z
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->hasVaryAll(Lokhttp3/Headers;)Z

    move-result v0

    return v0
.end method

.method public static parseChallenges(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Challenge;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x3

    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 156
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-virtual {p0, p1}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 158
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    return-object v9

    .line 158
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v2, 0x20

    .line 159
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    .line 160
    if-eq v2, v3, :cond_0

    .line 162
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 166
    sget-object v3, Lokhttp3/internal/http/HttpHeaders;->PARAMETER:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    move-object v6, v7

    move-object v8, v7

    .line 167
    :goto_1
    invoke-virtual {v12, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 180
    :goto_2
    if-eqz v8, :cond_0

    .line 182
    new-instance v0, Lokhttp3/Challenge;

    invoke-direct {v0, v11, v8}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    if-nez v6, :cond_7

    .line 193
    :goto_3
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {v12, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v2

    const-string/jumbo v3, "realm"

    const/4 v5, 0x5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_4

    .line 170
    invoke-virtual {v12, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v2

    const-string/jumbo v3, "charset"

    const/4 v5, 0x7

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_5

    move-object v3, v6

    move-object v5, v8

    .line 174
    :goto_4
    if-nez v5, :cond_6

    .line 167
    :cond_3
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    move-object v6, v3

    move-object v8, v5

    goto :goto_1

    .line 169
    :cond_4
    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    move-object v3, v6

    move-object v5, v8

    goto :goto_4

    .line 171
    :cond_5
    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    move-object v5, v8

    goto :goto_4

    .line 174
    :cond_6
    if-eqz v3, :cond_3

    move-object v6, v3

    move-object v8, v5

    .line 175
    goto :goto_2

    :cond_7
    const-string/jumbo v2, "UTF-8"

    .line 186
    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    sget-object v2, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Lokhttp3/Challenge;->withCharset(Ljava/nio/charset/Charset;)Lokhttp3/Challenge;

    move-result-object v0

    goto :goto_3
.end method

.method public static parseSeconds(Ljava/lang/String;I)I
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 264
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/32 v2, 0x7fffffff

    .line 265
    cmp-long v2, v4, v2

    if-gtz v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    const v0, 0x7fffffff

    .line 266
    return v0

    :cond_0
    move v2, v1

    .line 265
    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    .line 267
    cmp-long v2, v4, v2

    if-ltz v2, :cond_2

    :goto_1
    if-nez v0, :cond_3

    .line 268
    return v1

    :cond_2
    move v0, v1

    .line 267
    goto :goto_1

    .line 270
    :cond_3
    long-to-int v0, v4

    return v0

    :catch_0
    move-exception v0

    .line 273
    return p1
.end method

.method public static receiveHeaders(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V
    .locals 2

    .prologue
    .line 199
    sget-object v0, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar;

    if-eq p0, v0, :cond_0

    .line 201
    invoke-static {p1, p2}, Lokhttp3/Cookie;->parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;

    move-result-object v0

    .line 202
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    invoke-interface {p0, p1, v0}, Lokhttp3/CookieJar;->saveFromResponse(Lokhttp3/HttpUrl;Ljava/util/List;)V

    .line 205
    return-void

    .line 199
    :cond_0
    return-void

    .line 202
    :cond_1
    return-void
.end method

.method public static skipUntil(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2

    .prologue
    .line 236
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 241
    :cond_0
    return p1

    .line 237
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 236
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static skipWhitespace(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 249
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 255
    :cond_0
    return p1

    .line 250
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    .line 251
    if-ne v0, v1, :cond_2

    .line 249
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    .line 251
    if-ne v0, v1, :cond_0

    goto :goto_1
.end method

.method private static stringToLong(Ljava/lang/String;)J
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 58
    if-eqz p0, :cond_0

    .line 60
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 58
    :cond_0
    return-wide v2

    .line 60
    :catch_0
    move-exception v0

    .line 62
    return-wide v2
.end method

.method public static varyFields(Lokhttp3/Headers;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v4

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_0

    .line 112
    return-object v0

    :cond_0
    const-string/jumbo v1, "Vary"

    .line 102
    invoke-virtual {p0, v3}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {p0, v3}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    :goto_1
    const-string/jumbo v5, ","

    .line 108
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v1, v2

    :goto_2
    if-lt v1, v6, :cond_3

    .line 101
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 106
    :cond_2
    new-instance v0, Ljava/util/TreeSet;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    goto :goto_1

    .line 108
    :cond_3
    aget-object v7, v5, v1

    .line 109
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private static varyFields(Lokhttp3/Response;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static varyHeaders(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object v1

    .line 134
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    new-instance v2, Lokhttp3/Headers$Builder;

    invoke-direct {v2}, Lokhttp3/Headers$Builder;-><init>()V

    .line 137
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v3

    :goto_0
    if-lt v0, v3, :cond_1

    .line 143
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    return-object v0

    .line 134
    :cond_0
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    return-object v0

    .line 138
    :cond_1
    invoke-virtual {p0, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 137
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {p0, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_1
.end method

.method public static varyHeaders(Lokhttp3/Response;)Lokhttp3/Headers;
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    .line 125
    invoke-static {v0, v1}, Lokhttp3/internal/http/HttpHeaders;->varyHeaders(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public static varyMatches(Lokhttp3/Response;Lokhttp3/Headers;Lokhttp3/Request;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Response;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    const/4 v0, 0x1

    return v0

    .line 72
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v0}, Lokhttp3/Request;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v3
.end method
