.class public Lcom/alibaba/fastjson/serializer/SerializeConfig;
.super Ljava/lang/Object;
.source "SerializeConfig.java"


# static fields
.field private static awtError:Z

.field public static final globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

.field private static guavaError:Z

.field private static jdk8Error:Z

.field private static jsonnullError:Z

.field private static oracleJdbcError:Z

.field private static springfoxError:Z


# instance fields
.field private asm:Z

.field private asmFactory:Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

.field private final fieldBased:Z

.field public propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field private final serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/util/IdentityHashMap",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;",
            ">;"
        }
    .end annotation
.end field

.field protected typeKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    .line 54
    sput-boolean v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->awtError:Z

    .line 55
    sput-boolean v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jdk8Error:Z

    .line 56
    sput-boolean v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->oracleJdbcError:Z

    .line 57
    sput-boolean v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->springfoxError:Z

    .line 58
    sput-boolean v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->guavaError:Z

    .line 59
    sput-boolean v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jsonnullError:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x2000

    .line 251
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;-><init>(I)V

    .line 252
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;-><init>(IZ)V

    .line 260
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    .line 63
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    .line 263
    iput-boolean p2, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->fieldBased:Z

    .line 264
    new-instance v0, Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    .line 267
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    .line 274
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->initSerializers()V

    .line 275
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 61
    goto :goto_0

    .line 268
    :cond_1
    :try_start_1
    new-instance v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asmFactory:Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 272
    :catch_0
    move-exception v0

    .line 271
    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    goto :goto_1
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    const/16 v0, 0x2000

    .line 255
    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;-><init>(IZ)V

    .line 256
    return-void
.end method

.method private final createASMSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asmFactory:Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v2

    move v0, v1

    .line 81
    :goto_0
    iget-object v3, v2, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 92
    return-object v2

    .line 82
    :cond_0
    iget-object v3, v2, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v3, v3, v0

    .line 83
    iget-object v3, v3, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 84
    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-nez v4, :cond_2

    .line 81
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v3

    .line 86
    instance-of v3, v3, Lcom/alibaba/fastjson/serializer/EnumSerializer;

    if-nez v3, :cond_1

    .line 87
    iput-boolean v1, v2, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeDirect:Z

    goto :goto_1
.end method

.method public static getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .locals 1

    .prologue
    .line 247
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    return-object v0
.end method

.method private getObjectWriter(Ljava/lang/Class;Z)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 404
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .line 406
    if-eqz v0, :cond_2

    .line 426
    :goto_0
    if-eqz v0, :cond_5

    .line 449
    :cond_0
    :goto_1
    if-eqz v0, :cond_8

    .line 705
    :cond_1
    :goto_2
    return-object v0

    .line 408
    :cond_2
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    .line 409
    invoke-static {v1, v0}, Lcom/alibaba/fastjson/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_4

    .line 423
    :goto_3
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    goto :goto_0

    .line 409
    :cond_4
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 410
    instance-of v1, v0, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    if-eqz v1, :cond_3

    .line 414
    check-cast v0, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    .line 415
    invoke-interface {v0}, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;->getAutowiredFor()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    .line 416
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 421
    :catch_0
    move-exception v0

    goto :goto_3

    :cond_5
    const-class v1, Lcom/alibaba/fastjson/JSON;

    .line 427
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 428
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    if-eq v1, v4, :cond_0

    :try_start_2
    const-class v0, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    .line 430
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-nez v0, :cond_7

    .line 445
    :goto_5
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    goto :goto_1

    .line 430
    :cond_7
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 432
    instance-of v1, v0, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    if-eqz v1, :cond_6

    .line 436
    check-cast v0, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    .line 437
    invoke-interface {v0}, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;->getAutowiredFor()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    .line 438
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    .line 443
    :catch_1
    move-exception v0

    goto :goto_5

    .line 450
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-class v1, Ljava/util/Map;

    .line 453
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_c

    const-class v1, Ljava/util/List;

    .line 455
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_d

    const-class v1, Ljava/util/Collection;

    .line 457
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_e

    const-class v1, Ljava/util/Date;

    .line 459
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_f

    const-class v1, Lcom/alibaba/fastjson/JSONAware;

    .line 461
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_10

    const-class v1, Lcom/alibaba/fastjson/serializer/JSONSerializable;

    .line 463
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_11

    const-class v1, Lcom/alibaba/fastjson/JSONStreamAware;

    .line 465
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 467
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_13

    .line 474
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_16

    .line 481
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_19

    const-class v1, Ljava/lang/Throwable;

    .line 485
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-class v1, Ljava/util/TimeZone;

    .line 489
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 490
    :cond_a
    sget-object v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 701
    :cond_b
    :goto_7
    if-nez v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    goto/16 :goto_2

    .line 454
    :cond_c
    sget-object v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->instance:Lcom/alibaba/fastjson/serializer/MapSerializer;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_7

    .line 456
    :cond_d
    sget-object v0, Lcom/alibaba/fastjson/serializer/ListSerializer;->instance:Lcom/alibaba/fastjson/serializer/ListSerializer;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_7

    .line 458
    :cond_e
    sget-object v0, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_7

    .line 460
    :cond_f
    sget-object v0, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_7

    .line 462
    :cond_10
    sget-object v0, Lcom/alibaba/fastjson/serializer/JSONAwareSerializer;->instance:Lcom/alibaba/fastjson/serializer/JSONAwareSerializer;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_7

    .line 464
    :cond_11
    sget-object v0, Lcom/alibaba/fastjson/serializer/JSONSerializableSerializer;->instance:Lcom/alibaba/fastjson/serializer/JSONSerializableSerializer;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_7

    .line 466
    :cond_12
    sget-object v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_7

    :cond_13
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 468
    invoke-static {p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 469
    if-nez v0, :cond_15

    .line 472
    :cond_14
    sget-object v0, Lcom/alibaba/fastjson/serializer/EnumSerializer;->instance:Lcom/alibaba/fastjson/serializer/EnumSerializer;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_7

    .line 469
    :cond_15
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->serializeEnumAsJavaBean()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 470
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_7

    .line 474
    :cond_16
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    if-eqz v5, :cond_9

    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 475
    invoke-static {v1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 476
    if-nez v0, :cond_18

    .line 479
    :cond_17
    sget-object v0, Lcom/alibaba/fastjson/serializer/EnumSerializer;->instance:Lcom/alibaba/fastjson/serializer/EnumSerializer;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_7

    .line 476
    :cond_18
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->serializeEnumAsJavaBean()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 477
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_7

    .line 482
    :cond_19
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 483
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v2

    .line 484
    new-instance v0, Lcom/alibaba/fastjson/serializer/ArraySerializer;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/ArraySerializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)V

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_7

    .line 486
    :cond_1a
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-static {p1, v3, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v1

    .line 487
    iget v0, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v2

    iput v0, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    .line 488
    new-instance v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_7

    :cond_1b
    const-class v1, Ljava/util/Map$Entry;

    .line 489
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_a

    const-class v1, Ljava/lang/Appendable;

    .line 491
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-class v1, Ljava/nio/charset/Charset;

    .line 493
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-class v1, Ljava/util/Enumeration;

    .line 495
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-class v1, Ljava/util/Calendar;

    .line 497
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 499
    :cond_1c
    sget-object v0, Lcom/alibaba/fastjson/serializer/CalendarCodec;->instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_7

    .line 492
    :cond_1d
    sget-object v0, Lcom/alibaba/fastjson/serializer/AppendableSerializer;->instance:Lcom/alibaba/fastjson/serializer/AppendableSerializer;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_7

    .line 494
    :cond_1e
    sget-object v0, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_7

    .line 496
    :cond_1f
    sget-object v0, Lcom/alibaba/fastjson/serializer/EnumerationSerializer;->instance:Lcom/alibaba/fastjson/serializer/EnumerationSerializer;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_7

    :cond_20
    const-class v1, Ljavax/xml/datatype/XMLGregorianCalendar;

    .line 498
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-class v1, Ljava/sql/Clob;

    .line 500
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 502
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isPath(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-class v1, Ljava/util/Iterator;

    .line 504
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string/jumbo v1, "java.awt."

    .line 507
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 533
    :cond_21
    :goto_8
    sget-boolean v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jdk8Error:Z

    if-eqz v1, :cond_2e

    .line 593
    :cond_22
    :goto_9
    sget-boolean v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->oracleJdbcError:Z

    if-eqz v1, :cond_36

    .line 613
    :cond_23
    :goto_a
    sget-boolean v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->springfoxError:Z

    if-eqz v1, :cond_38

    .line 625
    :cond_24
    :goto_b
    sget-boolean v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->guavaError:Z

    if-eqz v1, :cond_39

    .line 647
    :cond_25
    :goto_c
    sget-boolean v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jsonnullError:Z

    if-eqz v1, :cond_3b

    .line 657
    :cond_26
    :goto_d
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    .line 658
    array-length v1, v5

    if-eq v1, v9, :cond_3c

    .line 662
    :cond_27
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isProxy(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 670
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 695
    :cond_28
    if-eqz p2, :cond_b

    .line 696
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    .line 697
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_7

    .line 501
    :cond_29
    sget-object v0, Lcom/alibaba/fastjson/serializer/ClobSeriliazer;->instance:Lcom/alibaba/fastjson/serializer/ClobSeriliazer;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_7

    .line 503
    :cond_2a
    sget-object v0, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_7

    .line 505
    :cond_2b
    sget-object v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_7

    .line 508
    :cond_2c
    invoke-static {p1}, Lcom/alibaba/fastjson/serializer/AwtCodec;->support(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 511
    sget-boolean v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->awtError:Z

    if-nez v1, :cond_21

    const/4 v1, 0x4

    .line 513
    :try_start_4
    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v6, "java.awt.Color"

    aput-object v6, v5, v1

    const/4 v1, 0x1

    const-string/jumbo v6, "java.awt.Font"

    aput-object v6, v5, v1

    const/4 v1, 0x2

    const-string/jumbo v6, "java.awt.Point"

    aput-object v6, v5, v1

    const/4 v1, 0x3

    const-string/jumbo v6, "java.awt.Rectangle"

    aput-object v6, v5, v1

    .line 519
    array-length v6, v5

    move v1, v2

    :goto_e
    if-ge v1, v6, :cond_21

    aget-object v7, v5, v1

    .line 520
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2d

    .line 519
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 521
    :cond_2d
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v0, Lcom/alibaba/fastjson/serializer/AwtCodec;->instance:Lcom/alibaba/fastjson/serializer/AwtCodec;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 522
    return-object v0

    .line 528
    :catch_2
    move-exception v1

    .line 526
    sput-boolean v9, Lcom/alibaba/fastjson/serializer/SerializeConfig;->awtError:Z

    goto/16 :goto_8

    :cond_2e
    const-string/jumbo v1, "java.time."

    .line 534
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    :cond_2f
    const/16 v1, 0xb

    .line 541
    :try_start_5
    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v6, "java.time.LocalDateTime"

    aput-object v6, v5, v1

    const/4 v1, 0x1

    const-string/jumbo v6, "java.time.LocalDate"

    aput-object v6, v5, v1

    const/4 v1, 0x2

    const-string/jumbo v6, "java.time.LocalTime"

    aput-object v6, v5, v1

    const/4 v1, 0x3

    const-string/jumbo v6, "java.time.ZonedDateTime"

    aput-object v6, v5, v1

    const/4 v1, 0x4

    const-string/jumbo v6, "java.time.OffsetDateTime"

    aput-object v6, v5, v1

    const/4 v1, 0x5

    const-string/jumbo v6, "java.time.OffsetTime"

    aput-object v6, v5, v1

    const/4 v1, 0x6

    const-string/jumbo v6, "java.time.ZoneOffset"

    aput-object v6, v5, v1

    const/4 v1, 0x7

    const-string/jumbo v6, "java.time.ZoneRegion"

    aput-object v6, v5, v1

    const/16 v1, 0x8

    const-string/jumbo v6, "java.time.Period"

    aput-object v6, v5, v1

    const/16 v1, 0x9

    const-string/jumbo v6, "java.time.Duration"

    aput-object v6, v5, v1

    const/16 v1, 0xa

    const-string/jumbo v6, "java.time.Instant"

    aput-object v6, v5, v1

    .line 554
    array-length v6, v5

    move v1, v2

    :goto_f
    if-lt v1, v6, :cond_31

    const/4 v1, 0x4

    .line 562
    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v6, "java.util.Optional"

    aput-object v6, v5, v1

    const/4 v1, 0x1

    const-string/jumbo v6, "java.util.OptionalDouble"

    aput-object v6, v5, v1

    const/4 v1, 0x2

    const-string/jumbo v6, "java.util.OptionalInt"

    aput-object v6, v5, v1

    const/4 v1, 0x3

    const-string/jumbo v6, "java.util.OptionalLong"

    aput-object v6, v5, v1

    .line 568
    array-length v6, v5

    move v1, v2

    :goto_10
    if-lt v1, v6, :cond_33

    const/4 v1, 0x2

    .line 576
    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v6, "java.util.concurrent.atomic.LongAdder"

    aput-object v6, v5, v1

    const/4 v1, 0x1

    const-string/jumbo v6, "java.util.concurrent.atomic.DoubleAdder"

    aput-object v6, v5, v1

    .line 580
    array-length v6, v5

    move v1, v2

    :goto_11
    if-ge v1, v6, :cond_22

    aget-object v7, v5, v1

    .line 581
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    move-result v8

    if-nez v8, :cond_35

    .line 580
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_30
    const-string/jumbo v1, "java.util.Optional"

    .line 535
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    const-string/jumbo v1, "java.util.concurrent.atomic.LongAdder"

    .line 536
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    const-string/jumbo v1, "java.util.concurrent.atomic.DoubleAdder"

    .line 537
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    goto/16 :goto_9

    .line 554
    :cond_31
    :try_start_6
    aget-object v7, v5, v1

    .line 555
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_32

    .line 554
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 556
    :cond_32
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 557
    return-object v0

    .line 568
    :cond_33
    aget-object v7, v5, v1

    .line 569
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_34

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 570
    :cond_34
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 571
    return-object v0

    .line 582
    :cond_35
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v0, Lcom/alibaba/fastjson/serializer/AdderSerializer;->instance:Lcom/alibaba/fastjson/serializer/AdderSerializer;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 583
    return-object v0

    .line 590
    :catch_3
    move-exception v1

    .line 589
    sput-boolean v9, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jdk8Error:Z

    goto/16 :goto_9

    :cond_36
    const-string/jumbo v1, "oracle.sql."

    .line 594
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v1, 0x2

    .line 596
    :try_start_7
    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v6, "oracle.sql.DATE"

    aput-object v6, v5, v1

    const/4 v1, 0x1

    const-string/jumbo v6, "oracle.sql.TIMESTAMP"

    aput-object v6, v5, v1

    .line 601
    array-length v6, v5

    move v1, v2

    :goto_12
    if-ge v1, v6, :cond_23

    aget-object v7, v5, v1

    .line 602
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_37

    .line 601
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 603
    :cond_37
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v0, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    .line 604
    return-object v0

    .line 610
    :catch_4
    move-exception v1

    .line 609
    sput-boolean v9, Lcom/alibaba/fastjson/serializer/SerializeConfig;->oracleJdbcError:Z

    goto/16 :goto_a

    :cond_38
    const-string/jumbo v1, "springfox.documentation.spring.web.json.Json"

    .line 614
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    :try_start_8
    const-string/jumbo v1, "springfox.documentation.spring.web.json.Json"

    .line 616
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v0, Lcom/alibaba/fastjson/support/springfox/SwaggerJsonSerializer;->instance:Lcom/alibaba/fastjson/support/springfox/SwaggerJsonSerializer;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_5

    .line 618
    return-object v0

    :catch_5
    move-exception v1

    .line 621
    sput-boolean v9, Lcom/alibaba/fastjson/serializer/SerializeConfig;->springfoxError:Z

    goto/16 :goto_b

    :cond_39
    const-string/jumbo v1, "com.google.common.collect."

    .line 626
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x4

    .line 628
    :try_start_9
    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v6, "com.google.common.collect.HashMultimap"

    aput-object v6, v5, v1

    const/4 v1, 0x1

    const-string/jumbo v6, "com.google.common.collect.LinkedListMultimap"

    aput-object v6, v5, v1

    const/4 v1, 0x2

    const-string/jumbo v6, "com.google.common.collect.ArrayListMultimap"

    aput-object v6, v5, v1

    const/4 v1, 0x3

    const-string/jumbo v6, "com.google.common.collect.TreeMultimap"

    aput-object v6, v5, v1

    .line 635
    array-length v6, v5

    move v1, v2

    :goto_13
    if-ge v1, v6, :cond_25

    aget-object v7, v5, v1

    .line 636
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3a

    .line 635
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 637
    :cond_3a
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v0, Lcom/alibaba/fastjson/serializer/GuavaCodec;->instance:Lcom/alibaba/fastjson/serializer/GuavaCodec;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_6

    .line 638
    return-object v0

    .line 644
    :catch_6
    move-exception v1

    .line 643
    sput-boolean v9, Lcom/alibaba/fastjson/serializer/SerializeConfig;->guavaError:Z

    goto/16 :goto_c

    :cond_3b
    const-string/jumbo v1, "net.sf.json.JSONNull"

    .line 647
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    :try_start_a
    const-string/jumbo v1, "net.sf.json.JSONNull"

    .line 649
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_7

    .line 650
    return-object v0

    :catch_7
    move-exception v1

    .line 653
    sput-boolean v9, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jsonnullError:Z

    goto/16 :goto_d

    .line 658
    :cond_3c
    aget-object v1, v5, v2

    invoke-virtual {v1}, Ljava/lang/Class;->isAnnotation()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 659
    sget-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->instance:Lcom/alibaba/fastjson/serializer/AnnotationSerializer;

    return-object v0

    .line 663
    :cond_3d
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 665
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    .line 666
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 667
    return-object v0

    .line 673
    :cond_3e
    array-length v1, v5

    if-eq v1, v10, :cond_3f

    .line 676
    array-length v6, v5

    move v4, v2

    move-object v2, v3

    :goto_14
    if-lt v4, v6, :cond_40

    .line 688
    :goto_15
    if-eqz v2, :cond_28

    .line 689
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    .line 690
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 691
    return-object v0

    .line 674
    :cond_3f
    aget-object v2, v5, v9

    goto :goto_15

    .line 676
    :cond_40
    aget-object v1, v5, v4

    .line 677
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "org.springframework.aop."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_41

    .line 680
    if-nez v2, :cond_42

    .line 676
    :goto_16
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v1

    goto :goto_14

    :cond_41
    move-object v1, v2

    .line 678
    goto :goto_16

    :cond_42
    move-object v2, v3

    .line 682
    goto :goto_15
.end method

.method private initSerializers()V
    .locals 2

    .prologue
    const-class v0, Ljava/lang/Boolean;

    .line 278
    sget-object v1, Lcom/alibaba/fastjson/serializer/BooleanCodec;->instance:Lcom/alibaba/fastjson/serializer/BooleanCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/lang/Character;

    .line 279
    sget-object v1, Lcom/alibaba/fastjson/serializer/CharacterCodec;->instance:Lcom/alibaba/fastjson/serializer/CharacterCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/lang/Byte;

    .line 280
    sget-object v1, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/lang/Short;

    .line 281
    sget-object v1, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/lang/Integer;

    .line 282
    sget-object v1, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/lang/Long;

    .line 283
    sget-object v1, Lcom/alibaba/fastjson/serializer/LongCodec;->instance:Lcom/alibaba/fastjson/serializer/LongCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/lang/Float;

    .line 284
    sget-object v1, Lcom/alibaba/fastjson/serializer/FloatCodec;->instance:Lcom/alibaba/fastjson/serializer/FloatCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/lang/Double;

    .line 285
    sget-object v1, Lcom/alibaba/fastjson/serializer/DoubleSerializer;->instance:Lcom/alibaba/fastjson/serializer/DoubleSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/math/BigDecimal;

    .line 286
    sget-object v1, Lcom/alibaba/fastjson/serializer/BigDecimalCodec;->instance:Lcom/alibaba/fastjson/serializer/BigDecimalCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/math/BigInteger;

    .line 287
    sget-object v1, Lcom/alibaba/fastjson/serializer/BigIntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/BigIntegerCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/lang/String;

    .line 288
    sget-object v1, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, [B

    .line 289
    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, [S

    .line 290
    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, [I

    .line 291
    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, [J

    .line 292
    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, [F

    .line 293
    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, [D

    .line 294
    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, [Z

    .line 295
    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, [C

    .line 296
    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, [Ljava/lang/Object;

    .line 297
    sget-object v1, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;->instance:Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/lang/Class;

    .line 298
    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/text/SimpleDateFormat;

    .line 300
    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/util/Currency;

    .line 301
    new-instance v1, Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-direct {v1}, Lcom/alibaba/fastjson/serializer/MiscCodec;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/util/TimeZone;

    .line 302
    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/net/InetAddress;

    .line 303
    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/net/Inet4Address;

    .line 304
    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/net/Inet6Address;

    .line 305
    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/net/InetSocketAddress;

    .line 306
    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/io/File;

    .line 307
    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/lang/Appendable;

    .line 308
    sget-object v1, Lcom/alibaba/fastjson/serializer/AppendableSerializer;->instance:Lcom/alibaba/fastjson/serializer/AppendableSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/lang/StringBuffer;

    .line 309
    sget-object v1, Lcom/alibaba/fastjson/serializer/AppendableSerializer;->instance:Lcom/alibaba/fastjson/serializer/AppendableSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/lang/StringBuilder;

    .line 310
    sget-object v1, Lcom/alibaba/fastjson/serializer/AppendableSerializer;->instance:Lcom/alibaba/fastjson/serializer/AppendableSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/nio/charset/Charset;

    .line 311
    sget-object v1, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/util/regex/Pattern;

    .line 312
    sget-object v1, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/util/Locale;

    .line 313
    sget-object v1, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/net/URI;

    .line 314
    sget-object v1, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/net/URL;

    .line 315
    sget-object v1, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/util/UUID;

    .line 316
    sget-object v1, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 319
    sget-object v1, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 320
    sget-object v1, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 321
    sget-object v1, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 322
    sget-object v1, Lcom/alibaba/fastjson/serializer/ReferenceCodec;->instance:Lcom/alibaba/fastjson/serializer/ReferenceCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 323
    sget-object v1, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 324
    sget-object v1, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/lang/ref/WeakReference;

    .line 326
    sget-object v1, Lcom/alibaba/fastjson/serializer/ReferenceCodec;->instance:Lcom/alibaba/fastjson/serializer/ReferenceCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/lang/ref/SoftReference;

    .line 327
    sget-object v1, Lcom/alibaba/fastjson/serializer/ReferenceCodec;->instance:Lcom/alibaba/fastjson/serializer/ReferenceCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    const-class v0, Ljava/util/LinkedList;

    .line 329
    sget-object v1, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 330
    return-void
.end method


# virtual methods
.method public addFilter(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/SerializeFilter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/serializer/SerializeFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 337
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    .line 339
    instance-of v1, v0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;

    if-nez v1, :cond_0

    .line 353
    :goto_0
    return-void

    .line 340
    :cond_0
    check-cast v0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;

    .line 342
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    if-ne p0, v1, :cond_2

    .line 351
    :cond_1
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->addFilter(Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    goto :goto_0

    .line 343
    :cond_2
    sget-object v1, Lcom/alibaba/fastjson/serializer/MapSerializer;->instance:Lcom/alibaba/fastjson/serializer/MapSerializer;

    if-ne v0, v1, :cond_1

    .line 344
    new-instance v0, Lcom/alibaba/fastjson/serializer/MapSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/MapSerializer;-><init>()V

    .line 345
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 346
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/serializer/MapSerializer;->addFilter(Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    .line 347
    return-void
.end method

.method public clearSerializers()V
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/IdentityHashMap;->clear()V

    .line 740
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->initSerializers()V

    .line 741
    return-void
.end method

.method public config(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/serializer/SerializerFeature;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 359
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;Z)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v1

    .line 361
    if-eqz v1, :cond_1

    .line 376
    instance-of v0, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-nez v0, :cond_3

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-static {p1, v2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v0

    .line 364
    if-nez p3, :cond_2

    .line 367
    iget v1, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    iget v2, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    .line 370
    :goto_1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    .line 372
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 373
    return-void

    .line 365
    :cond_2
    iget v1, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    iget v2, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 377
    check-cast v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 378
    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    .line 380
    iget v2, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    .line 381
    if-nez p3, :cond_4

    .line 384
    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    iget v4, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    .line 387
    :goto_2
    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    if-eq v2, v3, :cond_5

    .line 391
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 392
    if-eq v1, v2, :cond_0

    .line 393
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    .line 394
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_0

    .line 382
    :cond_4
    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    iget v4, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v3, v4

    iput v3, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    goto :goto_2

    .line 388
    :cond_5
    return-void
.end method

.method public varargs configEnumAsJavaBean([Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 725
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 728
    return-void

    .line 725
    :cond_0
    aget-object v2, p1, v0

    .line 726
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 725
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 13

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 105
    iget-object v4, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    .line 107
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    if-nez v0, :cond_8

    :cond_0
    move v1, v3

    .line 109
    :goto_0
    if-nez v4, :cond_9

    .line 137
    :cond_1
    :goto_1
    iget-object v5, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    .line 138
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 144
    if-nez v1, :cond_10

    :cond_2
    const-class v0, Ljava/io/Serializable;

    if-ne v5, v0, :cond_11

    :cond_3
    :goto_2
    move v0, v3

    .line 149
    :goto_3
    if-nez v0, :cond_12

    .line 153
    :cond_4
    :goto_4
    if-nez v0, :cond_13

    .line 157
    :cond_5
    :goto_5
    if-nez v0, :cond_14

    move v3, v0

    .line 214
    :cond_6
    :goto_6
    if-nez v3, :cond_20

    .line 232
    :cond_7
    :goto_7
    new-instance v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V

    return-object v0

    .line 107
    :cond_8
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->fieldBased:Z

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 110
    :cond_9
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONType;->serializer()Ljava/lang/Class;

    move-result-object v0

    const-class v5, Ljava/lang/Void;

    .line 111
    if-ne v0, v5, :cond_c

    .line 122
    :cond_a
    :goto_8
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONType;->asm()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 126
    :goto_9
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    array-length v5, v4

    move v0, v3

    :goto_a
    if-ge v0, v5, :cond_1

    aget-object v6, v4, v0

    .line 127
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v7, v6, :cond_e

    :cond_b
    move v1, v3

    .line 132
    goto :goto_1

    .line 113
    :cond_c
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 114
    instance-of v5, v0, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    if-eqz v5, :cond_a

    .line 115
    check-cast v0, Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    return-object v0

    :cond_d
    move v1, v3

    .line 123
    goto :goto_9

    .line 127
    :cond_e
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v7, v6, :cond_b

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v7, v6, :cond_b

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v7, v6, :cond_b

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 139
    :cond_f
    new-instance v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V

    return-object v0

    .line 144
    :cond_10
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asmFactory:Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/util/ASMClassLoader;->isExternalClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_11
    const-class v0, Ljava/lang/Object;

    if-eq v5, v0, :cond_3

    move v0, v1

    goto :goto_3

    .line 149
    :cond_12
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->checkName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    move v0, v3

    .line 150
    goto :goto_4

    .line 153
    :cond_13
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_5

    move v0, v3

    .line 154
    goto :goto_5

    .line 158
    :cond_14
    iget-object v6, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v7, v6

    move v4, v3

    :goto_b
    if-lt v4, v7, :cond_15

    move v3, v0

    goto :goto_6

    :cond_15
    aget-object v1, v6, v4

    .line 159
    iget-object v8, v1, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 160
    if-nez v8, :cond_18

    .line 165
    :goto_c
    iget-object v8, v1, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 166
    if-nez v8, :cond_19

    .line 171
    :goto_d
    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v9

    .line 173
    if-eqz v9, :cond_1f

    .line 177
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v10

    .line 178
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1a

    .line 187
    :cond_16
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->checkName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 188
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->jsonDirect()Z

    move-result v1

    if-nez v1, :cond_6

    .line 189
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->serializeUsing()Ljava/lang/Class;

    move-result-object v1

    const-class v10, Ljava/lang/Void;

    if-ne v1, v10, :cond_6

    .line 190
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->unwrapped()Z

    move-result v1

    if-nez v1, :cond_6

    .line 196
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v9

    array-length v10, v9

    move v1, v3

    :goto_e
    if-lt v1, v10, :cond_1b

    .line 207
    :goto_f
    invoke-static {v8}, Lcom/alibaba/fastjson/util/TypeUtils;->isAnnotationPresentOneToMany(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_17
    move v3, v2

    .line 209
    goto/16 :goto_6

    .line 160
    :cond_18
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    iget-object v9, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_c

    .line 166
    :cond_19
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    iget-object v10, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_d

    .line 179
    :cond_1a
    iget-object v1, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    if-ne v1, v11, :cond_6

    const-string/jumbo v1, "trim"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_6

    .line 196
    :cond_1b
    aget-object v11, v9, v1

    .line 197
    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v12, v11, :cond_1d

    :cond_1c
    move v0, v3

    .line 203
    goto :goto_f

    .line 197
    :cond_1d
    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v12, v11, :cond_1c

    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v12, v11, :cond_1c

    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v12, v11, :cond_1c

    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v12, v11, :cond_1c

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 207
    :cond_1e
    invoke-static {v8}, Lcom/alibaba/fastjson/util/TypeUtils;->isAnnotationPresentManyToMany(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 158
    :cond_1f
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_b

    .line 216
    :cond_20
    :try_start_1
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createASMSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassFormatError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 217
    if-eqz v0, :cond_7

    .line 218
    return-object v0

    .line 229
    :catch_0
    move-exception v0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_7

    :catch_2
    move-exception v0

    goto/16 :goto_7

    :catch_3
    move-exception v0

    .line 227
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "create asm serializer error, class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 119
    :catch_4
    move-exception v0

    goto/16 :goto_8
.end method

.method public final createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->fieldBased:Z

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Z)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v0

    .line 97
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v1, v1

    if-eqz v1, :cond_1

    .line 101
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    return-object v0

    :cond_1
    const-class v1, Ljava/lang/Iterable;

    .line 97
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    sget-object v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    return-object v0
.end method

.method public final get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    return-object v0
.end method

.method public getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    .prologue
    .line 400
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;Z)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    return-object v0
.end method

.method public getTypeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    return-object v0
.end method

.method public isAsmEnable()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 713
    check-cast p1, Ljava/lang/reflect/Type;

    check-cast p2, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAsmEnable(Z)V
    .locals 1

    .prologue
    .line 240
    sget-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-nez v0, :cond_0

    .line 243
    iput-boolean p1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    .line 244
    return-void

    .line 241
    :cond_0
    return-void
.end method

.method public setPropertyNamingStrategy(Lcom/alibaba/fastjson/PropertyNamingStrategy;)V
    .locals 0

    .prologue
    .line 735
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 736
    return-void
.end method

.method public setTypeKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    .line 76
    return-void
.end method
