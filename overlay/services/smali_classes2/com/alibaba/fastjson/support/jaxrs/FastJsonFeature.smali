.class public Lcom/alibaba/fastjson/support/jaxrs/FastJsonFeature;
.super Ljava/lang/Object;
.source "FastJsonFeature.java"

# interfaces
.implements Ljavax/ws/rs/core/Feature;


# static fields
.field private static final JSON_FEATURE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonFeature;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonFeature;->JSON_FEATURE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Ljavax/ws/rs/core/FeatureContext;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 28
    invoke-interface {p1}, Ljavax/ws/rs/core/FeatureContext;->getConfiguration()Ljavax/ws/rs/core/Configuration;

    move-result-object v1

    .line 30
    invoke-interface {v1}, Ljavax/ws/rs/core/Configuration;->getProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1}, Ljavax/ws/rs/core/Configuration;->getRuntimeType()Ljavax/ws/rs/RuntimeType;

    move-result-object v2

    const-string/jumbo v3, "jersey.config.jsonFeature"

    sget-object v4, Lcom/alibaba/fastjson/support/jaxrs/FastJsonFeature;->JSON_FEATURE:Ljava/lang/String;

    const-class v5, Ljava/lang/String;

    invoke-static {v0, v2, v3, v4, v5}, Lorg/glassfish/jersey/CommonProperties;->getValue(Ljava/util/Map;Ljavax/ws/rs/RuntimeType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 34
    sget-object v2, Lcom/alibaba/fastjson/support/jaxrs/FastJsonFeature;->JSON_FEATURE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "jersey.config.jsonFeature"

    .line 39
    invoke-interface {v1}, Ljavax/ws/rs/core/Configuration;->getRuntimeType()Ljavax/ws/rs/RuntimeType;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/glassfish/jersey/internal/util/PropertiesHelper;->getPropertyNameForRuntime(Ljava/lang/String;Ljavax/ws/rs/RuntimeType;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/alibaba/fastjson/support/jaxrs/FastJsonFeature;->JSON_FEATURE:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Ljavax/ws/rs/core/FeatureContext;->property(Ljava/lang/String;Ljava/lang/Object;)Ljavax/ws/rs/core/Configurable;

    const-class v0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;

    .line 42
    invoke-interface {v1, v0}, Ljavax/ws/rs/core/Configuration;->isRegistered(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    :goto_0
    return v7

    .line 36
    :cond_0
    return v6

    :cond_1
    const-class v0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;

    const/4 v1, 0x2

    .line 44
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljavax/ws/rs/ext/MessageBodyReader;

    aput-object v2, v1, v6

    const-class v2, Ljavax/ws/rs/ext/MessageBodyWriter;

    aput-object v2, v1, v7

    invoke-interface {p1, v0, v1}, Ljavax/ws/rs/core/FeatureContext;->register(Ljava/lang/Class;[Ljava/lang/Class;)Ljavax/ws/rs/core/Configurable;

    goto :goto_0
.end method
