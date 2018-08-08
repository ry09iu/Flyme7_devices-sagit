.class public Lcom/alibaba/fastjson/support/spring/JSONPResponseBodyAdvice;
.super Ljava/lang/Object;
.source "JSONPResponseBodyAdvice.java"

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

.annotation runtime Lorg/springframework/core/annotation/Order;
    value = -0x80000000
.end annotation

.annotation runtime Lorg/springframework/web/bind/annotation/ControllerAdvice;
.end annotation


# instance fields
.field public final logger:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/support/spring/JSONPResponseBodyAdvice;->logger:Lorg/apache/commons/logging/Log;

    .line 45
    return-void
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
    const/4 v2, 0x0

    const-class v0, Lcom/alibaba/fastjson/support/spring/annotation/ResponseJSONP;

    .line 60
    invoke-virtual {p2, v0}, Lorg/springframework/core/MethodParameter;->getMethodAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/support/spring/annotation/ResponseJSONP;

    .line 61
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    move-object v0, p5

    .line 65
    check-cast v0, Lorg/springframework/http/server/ServletServerHttpRequest;

    invoke-virtual {v0}, Lorg/springframework/http/server/ServletServerHttpRequest;->getServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    .line 66
    invoke-interface {v1}, Lcom/alibaba/fastjson/support/spring/annotation/ResponseJSONP;->callback()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->isValidJsonpQueryParam(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    :goto_1
    new-instance v1, Lcom/alibaba/fastjson/JSONPObject;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONPObject;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONPObject;->addParameter(Ljava/lang/Object;)V

    move-object v0, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p5

    move-object v5, p6

    .line 77
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/support/spring/JSONPResponseBodyAdvice;->beforeBodyWriteInternal(Lcom/alibaba/fastjson/JSONPObject;Lorg/springframework/http/MediaType;Lorg/springframework/core/MethodParameter;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)V

    .line 78
    return-object v1

    .line 62
    :cond_0
    invoke-virtual {p2}, Lorg/springframework/core/MethodParameter;->getContainingClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/alibaba/fastjson/support/spring/annotation/ResponseJSONP;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/support/spring/annotation/ResponseJSONP;

    move-object v1, v0

    goto :goto_0

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/support/spring/JSONPResponseBodyAdvice;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_2
    move-object v0, v2

    .line 72
    goto :goto_1

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson/support/spring/JSONPResponseBodyAdvice;->logger:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid jsonp parameter value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public beforeBodyWriteInternal(Lcom/alibaba/fastjson/JSONPObject;Lorg/springframework/http/MediaType;Lorg/springframework/core/MethodParameter;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method protected getContentType(Lorg/springframework/http/MediaType;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)Lorg/springframework/http/MediaType;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->APPLICATION_JAVASCRIPT:Lorg/springframework/http/MediaType;

    return-object v0
.end method

.method public supports(Lorg/springframework/core/MethodParameter;Ljava/lang/Class;)Z
    .locals 3
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
    const/4 v0, 0x0

    const-class v1, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;

    .line 51
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    .line 53
    :cond_0
    invoke-virtual {p1}, Lorg/springframework/core/MethodParameter;->getContainingClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/alibaba/fastjson/support/spring/annotation/ResponseJSONP;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-class v1, Lcom/alibaba/fastjson/support/spring/annotation/ResponseJSONP;

    invoke-virtual {p1, v1}, Lorg/springframework/core/MethodParameter;->hasMethodAnnotation(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0
.end method
