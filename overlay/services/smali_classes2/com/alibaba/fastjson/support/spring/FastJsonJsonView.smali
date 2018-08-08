.class public Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;
.super Lorg/springframework/web/servlet/view/AbstractView;
.source "FastJsonJsonView.java"


# static fields
.field private static final CALLBACK_PARAM_PATTERN:Ljava/util/regex/Pattern;

.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "application/json;charset=UTF-8"

.field public static final DEFAULT_JSONP_CONTENT_TYPE:Ljava/lang/String; = "application/javascript"


# instance fields
.field protected charset:Ljava/nio/charset/Charset;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected dateFormat:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private disableCaching:Z

.field private extractValueFromSingleKeyModel:Z

.field private fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

.field protected features:[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected filters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private jsonpParameterNames:[Ljava/lang/String;

.field private renderedAttributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private updateContentLength:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "[0-9A-Za-z_\\.]*"

    .line 48
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->CALLBACK_PARAM_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Lorg/springframework/web/servlet/view/AbstractView;-><init>()V

    const-string/jumbo v0, "UTF-8"

    .line 51
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->charset:Ljava/nio/charset/Charset;

    .line 53
    new-array v0, v2, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iput-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->features:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 56
    new-array v0, v2, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    iput-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->filters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    .line 70
    iput-boolean v3, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->disableCaching:Z

    .line 75
    iput-boolean v3, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->updateContentLength:Z

    .line 80
    iput-boolean v2, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->extractValueFromSingleKeyModel:Z

    .line 85
    new-instance v0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    const/4 v0, 0x2

    .line 90
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "jsonp"

    aput-object v1, v0, v2

    const-string/jumbo v1, "callback"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->jsonpParameterNames:[Ljava/lang/String;

    const-string/jumbo v0, "application/json;charset=UTF-8"

    .line 97
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->setContentType(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->setExposePathVariables(Z)V

    .line 99
    return-void
.end method

.method private getJsonpParameterValue(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 205
    iget-object v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->jsonpParameterNames:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 218
    :cond_0
    return-object v7

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->jsonpParameterNames:[Ljava/lang/String;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 207
    invoke-interface {p1, v3}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 209
    invoke-static {v3}, Lcom/alibaba/fastjson/util/IOUtils;->isValidJsonpQueryParam(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 213
    iget-object v4, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 206
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_2
    return-object v3

    .line 214
    :cond_3
    iget-object v4, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->logger:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ignoring invalid jsonp parameter value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method protected filterModel(Ljava/util/Map;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 304
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 305
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->renderedAttributes:Ljava/util/Set;

    invoke-static {v0}, Lorg/springframework/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 307
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    move-object v1, v0

    .line 309
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 315
    iget-boolean v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->extractValueFromSingleKeyModel:Z

    if-nez v0, :cond_4

    .line 322
    :cond_1
    return-object v2

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->renderedAttributes:Ljava/util/Set;

    move-object v1, v0

    goto :goto_0

    .line 309
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 310
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/springframework/validation/BindingResult;

    if-nez v4, :cond_0

    .line 311
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 312
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 316
    :cond_4
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 317
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 318
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public getDateFormat()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getDateFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFastJsonConfig()Lcom/alibaba/fastjson/support/config/FastJsonConfig;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    return-object v0
.end method

.method public getFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializerFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    return-object v0
.end method

.method public getFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    move-result-object v0

    return-object v0
.end method

.method public isExtractValueFromSingleKeyModel()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->extractValueFromSingleKeyModel:Z

    return v0
.end method

.method protected prepareResponse(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 4

    .prologue
    .line 262
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->setResponseContentType(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 263
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->setCharacterEncoding(Ljava/lang/String;)V

    .line 264
    iget-boolean v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->disableCaching:Z

    if-nez v0, :cond_0

    .line 269
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "Pragma"

    const-string/jumbo v1, "no-cache"

    .line 265
    invoke-interface {p2, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Cache-Control"

    const-string/jumbo v1, "no-cache, no-store, max-age=0"

    .line 266
    invoke-interface {p2, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Expires"

    const-wide/16 v2, 0x1

    .line 267
    invoke-interface {p2, v0, v2, v3}, Ljavax/servlet/http/HttpServletResponse;->addDateHeader(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method protected renderMergedOutputModel(Ljava/util/Map;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljavax/servlet/http/HttpServletRequest;",
            "Ljavax/servlet/http/HttpServletResponse;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->filterModel(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    .line 228
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->getJsonpParameterValue(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v1

    .line 229
    if-nez v1, :cond_0

    .line 235
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 237
    iget-object v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 238
    invoke-virtual {v1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 240
    invoke-virtual {v3}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeConfig()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 241
    invoke-virtual {v4}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 242
    invoke-virtual {v5}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getDateFormat()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    iget-object v7, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 244
    invoke-virtual {v7}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializerFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v7

    .line 237
    invoke-static/range {v0 .. v7}, Lcom/alibaba/fastjson/JSON;->writeJSONString(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v1

    .line 246
    iget-boolean v2, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->updateContentLength:Z

    if-nez v2, :cond_1

    .line 252
    :goto_1
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v1

    .line 253
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 254
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 255
    invoke-virtual {v1}, Ljavax/servlet/ServletOutputStream;->flush()V

    .line 256
    return-void

    .line 230
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONPObject;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPObject;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPObject;->addParameter(Ljava/lang/Object;)V

    move-object v2, v0

    .line 232
    goto :goto_0

    .line 248
    :cond_1
    invoke-interface {p3, v1}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    goto :goto_1
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setCharset(Ljava/nio/charset/Charset;)V

    .line 130
    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setDateFormat(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public setDisableCaching(Z)V
    .locals 0

    .prologue
    .line 278
    iput-boolean p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->disableCaching:Z

    .line 279
    return-void
.end method

.method public setExtractValueFromSingleKeyModel(Z)V
    .locals 0

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->extractValueFromSingleKeyModel:Z

    .line 188
    return-void
.end method

.method public setFastJsonConfig(Lcom/alibaba/fastjson/support/config/FastJsonConfig;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 115
    return-void
.end method

.method public varargs setFeatures([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setSerializerFeatures([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 150
    return-void
.end method

.method public varargs setFilters([Lcom/alibaba/fastjson/serializer/SerializeFilter;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setSerializeFilters([Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    .line 160
    return-void
.end method

.method public setJsonpParameterNames(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "jsonpParameterName cannot be empty"

    .line 199
    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)V

    .line 200
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->jsonpParameterNames:[Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setRenderedAttributes(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->renderedAttributes:Ljava/util/Set;

    .line 169
    return-void
.end method

.method protected setResponseContentType(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->getJsonpParameterValue(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 331
    invoke-super {p0, p1, p2}, Lorg/springframework/web/servlet/view/AbstractView;->setResponseContentType(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 333
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "application/javascript"

    .line 328
    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public varargs setSerializerFeature([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setSerializerFeatures([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 120
    return-void
.end method

.method public setUpdateContentLength(Z)V
    .locals 0

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->updateContentLength:Z

    .line 290
    return-void
.end method
