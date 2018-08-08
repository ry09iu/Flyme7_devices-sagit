.class public Lcom/alibaba/fastjson/support/jaxrs/FastJsonAutoDiscoverable;
.super Ljava/lang/Object;
.source "FastJsonAutoDiscoverable.java"

# interfaces
.implements Lorg/glassfish/jersey/internal/spi/AutoDiscoverable;


# annotations
.annotation runtime Ljavax/annotation/Priority;
    value = 0x7cf
.end annotation


# static fields
.field public static volatile autoDiscover:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonAutoDiscoverable;->autoDiscover:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Ljavax/ws/rs/core/FeatureContext;)V
    .locals 2

    .prologue
    .line 25
    invoke-interface {p1}, Ljavax/ws/rs/core/FeatureContext;->getConfiguration()Ljavax/ws/rs/core/Configuration;

    move-result-object v0

    const-class v1, Lcom/alibaba/fastjson/support/jaxrs/FastJsonFeature;

    .line 28
    invoke-interface {v0, v1}, Ljavax/ws/rs/core/Configuration;->isRegistered(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    sget-boolean v0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonAutoDiscoverable;->autoDiscover:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonFeature;

    .line 30
    invoke-interface {p1, v0}, Ljavax/ws/rs/core/FeatureContext;->register(Ljava/lang/Class;)Ljavax/ws/rs/core/Configurable;

    goto :goto_0
.end method
