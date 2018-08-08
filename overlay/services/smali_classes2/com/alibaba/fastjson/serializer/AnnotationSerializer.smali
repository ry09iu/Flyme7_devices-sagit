.class public Lcom/alibaba/fastjson/serializer/AnnotationSerializer;
.super Ljava/lang/Object;
.source "AnnotationSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/AnnotationSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->instance:Lcom/alibaba/fastjson/serializer/AnnotationSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 23
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 45
    :cond_0
    return-void

    .line 23
    :cond_1
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/Class;->isAnnotation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    aget-object v0, v0, v3

    .line 25
    invoke-static {v0}, Lsun/reflect/annotation/AnnotationType;->getInstance(Ljava/lang/Class;)Lsun/reflect/annotation/AnnotationType;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lsun/reflect/annotation/AnnotationType;->members()Ljava/util/Map;

    move-result-object v0

    .line 27
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v3, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(I)V

    .line 28
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v0, 0x0

    move-object v2, v0

    .line 31
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 42
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 43
    return-void

    .line 32
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 34
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, p2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    move-object v1, v2

    .line 40
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    goto :goto_0

    .line 39
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1
.end method
