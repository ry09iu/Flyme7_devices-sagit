.class public Lcom/alibaba/fastjson/support/spring/FastJsonpResponseBodyAdvice;
.super Ljava/lang/Object;
.source "FastJsonpResponseBodyAdvice.java"

# interfaces
.implements Lorg/springframework/web/servlet/mvc/method/annotation/ResponseBodyAdvice;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/springframework/web/servlet/mvc/method/annotation/ResponseBodyAdvice",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Lorg/springframework/core/annotation/Order;
    value = -0x80000000
.end annotation

.annotation runtime Lorg/springframework/web/bind/annotation/ControllerAdvice;
.end annotation


# static fields
.field private static final CALLBACK_PARAM_PATTERN:Ljava/util/regex/Pattern;

.field public static final DEFAULT_JSONP_QUERY_PARAM_NAMES:[Ljava/lang/String;


# instance fields
.field private final jsonpQueryParamNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string/jumbo v0, "[0-9A-Za-z_\\.]*"

    .line 36
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/support/spring/FastJsonpResponseBodyAdvice;->CALLBACK_PARAM_PATTERN:Ljava/util/regex/Pattern;

    const/4 v0, 0x2

    .line 41
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "callback"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "jsonp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/fastjson/support/spring/FastJsonpResponseBodyAdvice;->DEFAULT_JSONP_QUERY_PARAM_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lcom/alibaba/fastjson/support/spring/FastJsonpResponseBodyAdvice;->DEFAULT_JSONP_QUERY_PARAM_NAMES:[Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpResponseBodyAdvice;->jsonpQueryParamNames:[Ljava/lang/String;

    .line 45
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Lorg/springframework/util/ObjectUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    const-string/jumbo v1, "At least one query param name is required"

    invoke-static {v0, v1}, Lorg/springframework/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 49
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpResponseBodyAdvice;->jsonpQueryParamNames:[Ljava/lang/String;

    .line 50
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 48
    goto :goto_0
.end method


# virtual methods
.method public beforeBodyWrite(Ljava/lang/Object;Lorg/springframework/core/MethodParameter;Lorg/springframework/http/MediaType;Ljava/lang/Class;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/springframework/core/MethodParameter;",
            "Lorg/springframework/http/MediaType;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/springframework/http/converter/HttpMessageConverter",
            "<*>;>;",
            "Lorg/springframework/http/server/ServerHttpRequest;",
            "Lorg/springframework/http/server/ServerHttpResponse;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/support/spring/FastJsonpResponseBodyAdvice;->getOrCreateContainer(Ljava/lang/Object;)Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;

    move-result-object v1

    move-object v0, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p5

    move-object v5, p6

    .line 60
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/support/spring/FastJsonpResponseBodyAdvice;->beforeBodyWriteInternal(Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;Lorg/springframework/http/MediaType;Lorg/springframework/core/MethodParameter;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)V

    .line 61
    return-object v1
.end method

.method public beforeBodyWriteInternal(Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;Lorg/springframework/http/MediaType;Lorg/springframework/core/MethodParameter;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 77
    check-cast p4, Lorg/springframework/http/server/ServletServerHttpRequest;

    invoke-virtual {p4}, Lorg/springframework/http/server/ServletServerHttpRequest;->getServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpResponseBodyAdvice;->jsonpQueryParamNames:[Ljava/lang/String;

    array-length v3, v2

    :goto_0
    if-lt v0, v3, :cond_0

    .line 90
    :goto_1
    return-void

    .line 78
    :cond_0
    aget-object v4, v2, v0

    .line 79
    invoke-interface {v1, v4}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 80
    if-nez v4, :cond_2

    .line 78
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/support/spring/FastJsonpResponseBodyAdvice;->isValidJsonpQueryParam(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 86
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->setJsonpFunction(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected getContentType(Lorg/springframework/http/MediaType;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)Lorg/springframework/http/MediaType;
    .locals 3

    .prologue
    .line 113
    new-instance v0, Lorg/springframework/http/MediaType;

    const-string/jumbo v1, "application"

    const-string/jumbo v2, "javascript"

    invoke-direct {v0, v1, v2}, Lorg/springframework/http/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getOrCreateContainer(Ljava/lang/Object;)Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;
    .locals 1

    .prologue
    .line 69
    instance-of v0, p1, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1

    :cond_0
    check-cast p1, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;

    goto :goto_0
.end method

.method protected isValidJsonpQueryParam(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/alibaba/fastjson/support/spring/FastJsonpResponseBodyAdvice;->CALLBACK_PARAM_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public supports(Lorg/springframework/core/MethodParameter;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/springframework/core/MethodParameter;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/springframework/http/converter/HttpMessageConverter",
            "<*>;>;)Z"
        }
    .end annotation

    .prologue
    const-class v0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;

    .line 53
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
