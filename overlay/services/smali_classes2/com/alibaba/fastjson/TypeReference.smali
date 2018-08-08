.class public Lcom/alibaba/fastjson/TypeReference;
.super Ljava/lang/Object;
.source "TypeReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final LIST_STRING:Ljava/lang/reflect/Type;

.field static classTypeCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final type:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    .line 100
    new-instance v0, Lcom/alibaba/fastjson/TypeReference$1;

    invoke-direct {v0}, Lcom/alibaba/fastjson/TypeReference$1;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/fastjson/TypeReference$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/TypeReference;->LIST_STRING:Ljava/lang/reflect/Type;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 48
    sget-object v0, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 49
    if-eqz v0, :cond_0

    .line 54
    :goto_0
    iput-object v0, p0, Lcom/alibaba/fastjson/TypeReference;->type:Ljava/lang/reflect/Type;

    .line 55
    return-void

    .line 50
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    goto :goto_0
.end method

.method protected varargs constructor <init>([Ljava/lang/reflect/Type;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 63
    invoke-virtual {v3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 65
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 66
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 67
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    move v0, v1

    .line 70
    :goto_0
    array-length v2, v5

    if-lt v1, v2, :cond_0

    .line 82
    new-instance v1, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    invoke-direct {v1, v5, v3, v4}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 83
    sget-object v0, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 84
    if-eqz v0, :cond_4

    .line 89
    :goto_1
    iput-object v0, p0, Lcom/alibaba/fastjson/TypeReference;->type:Ljava/lang/reflect/Type;

    .line 91
    return-void

    .line 71
    :cond_0
    aget-object v2, v5, v1

    instance-of v2, v2, Ljava/lang/reflect/TypeVariable;

    if-nez v2, :cond_2

    :cond_1
    move v2, v0

    .line 76
    :goto_2
    aget-object v0, v5, v1

    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_3

    .line 70
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    .line 71
    :cond_2
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 73
    add-int/lit8 v2, v0, 0x1

    aget-object v0, p1, v0

    aput-object v0, v5, v1

    goto :goto_2

    .line 77
    :cond_3
    aget-object v0, v5, v1

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->checkPrimitiveArray(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;

    move-result-object v0

    aput-object v0, v5, v1

    goto :goto_3

    .line 85
    :cond_4
    sget-object v0, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    goto :goto_1
.end method


# virtual methods
.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/fastjson/TypeReference;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method
