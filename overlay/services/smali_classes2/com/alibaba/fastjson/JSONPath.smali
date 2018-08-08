.class public Lcom/alibaba/fastjson/JSONPath;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;,
        Lcom/alibaba/fastjson/JSONPath$CombineSegement;,
        Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$Filter;,
        Lcom/alibaba/fastjson/JSONPath$FilterGroup;,
        Lcom/alibaba/fastjson/JSONPath$FilterSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntInSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$JSONPathParser;,
        Lcom/alibaba/fastjson/JSONPath$MatchSegement;,
        Lcom/alibaba/fastjson/JSONPath$MultiIndexSegement;,
        Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;,
        Lcom/alibaba/fastjson/JSONPath$NotNullSegement;,
        Lcom/alibaba/fastjson/JSONPath$NullSegement;,
        Lcom/alibaba/fastjson/JSONPath$Operator;,
        Lcom/alibaba/fastjson/JSONPath$PropertySegement;,
        Lcom/alibaba/fastjson/JSONPath$RangeSegement;,
        Lcom/alibaba/fastjson/JSONPath$RlikeSegement;,
        Lcom/alibaba/fastjson/JSONPath$Segement;,
        Lcom/alibaba/fastjson/JSONPath$SizeSegement;,
        Lcom/alibaba/fastjson/JSONPath$StringInSegement;,
        Lcom/alibaba/fastjson/JSONPath$StringOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$ValueSegment;,
        Lcom/alibaba/fastjson/JSONPath$WildCardSegement;
    }
.end annotation


# static fields
.field static final LENGTH:J = -0x15eea8c0e50a614bL

.field static final SIZE:J = 0x4dea9618e618ae3cL

.field private static pathCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONPath;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

.field private final path:Ljava/lang/String;

.field private segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

.field private serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x80

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-nez p1, :cond_1

    .line 43
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    const-string/jumbo v1, "json-path can not be null or empty"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    .line 48
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 49
    return-void
.end method

.method public static varargs arrayAdd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 379
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 380
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->arrayAdd(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 381
    return-void
.end method

.method public static compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;
    .locals 3

    .prologue
    .line 394
    if-eqz p0, :cond_1

    .line 398
    sget-object v0, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONPath;

    .line 399
    if-eqz v0, :cond_2

    .line 406
    :cond_0
    :goto_0
    return-object v0

    .line 395
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    const-string/jumbo v1, "jsonpath can not be null"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONPath;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;)V

    .line 401
    sget-object v1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    const/16 v2, 0x400

    if-ge v1, v2, :cond_0

    .line 402
    sget-object v1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONPath;

    goto :goto_0
.end method

.method public static contains(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 365
    if-eqz p0, :cond_0

    .line 369
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 370
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONPath;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 366
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static containsValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 374
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 375
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->containsValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2482
    if-eq p0, p1, :cond_1

    .line 2486
    if-nez p0, :cond_2

    .line 2487
    :cond_0
    return v2

    .line 2483
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 2486
    :cond_2
    if-eqz p1, :cond_0

    .line 2490
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 2494
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_4

    .line 2502
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2491
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2495
    :cond_4
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_5

    .line 2499
    return v2

    .line 2496
    :cond_5
    check-cast p0, Ljava/lang/Number;

    check-cast p1, Ljava/lang/Number;

    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->eqNotNull(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v0

    return v0
.end method

.method static eqNotNull(Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2507
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 2508
    invoke-static {v3}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v4

    .line 2510
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 2511
    invoke-static {v5}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v6

    .line 2513
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-nez v0, :cond_5

    .line 2521
    :cond_0
    if-nez v4, :cond_6

    .line 2534
    :cond_1
    if-nez v6, :cond_9

    .line 2544
    :cond_2
    invoke-static {v3}, Lcom/alibaba/fastjson/JSONPath;->isDouble(Ljava/lang/Class;)Z

    move-result v0

    .line 2545
    invoke-static {v5}, Lcom/alibaba/fastjson/JSONPath;->isDouble(Ljava/lang/Class;)Z

    move-result v3

    .line 2547
    if-nez v0, :cond_a

    :cond_3
    if-nez v0, :cond_c

    :cond_4
    if-nez v3, :cond_d

    .line 2552
    :goto_0
    return v2

    :cond_5
    move-object v0, p0

    .line 2514
    check-cast v0, Ljava/math/BigDecimal;

    .line 2516
    if-eqz v6, :cond_0

    .line 2517
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2522
    :cond_6
    if-nez v6, :cond_7

    .line 2526
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 2527
    check-cast v0, Ljava/math/BigInteger;

    .line 2528
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 2530
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2523
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_8

    move v0, v1

    :goto_1
    return v0

    :cond_8
    move v0, v2

    goto :goto_1

    .line 2535
    :cond_9
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_2

    .line 2536
    check-cast p0, Ljava/math/BigInteger;

    .line 2537
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 2539
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2547
    :cond_a
    if-eqz v3, :cond_3

    .line 2548
    :cond_b
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    cmpl-double v0, v4, v6

    if-nez v0, :cond_e

    :goto_3
    return v1

    .line 2547
    :cond_c
    if-eqz v6, :cond_4

    goto :goto_2

    :cond_d
    if-nez v4, :cond_b

    goto :goto_0

    :cond_e
    move v1, v2

    .line 2548
    goto :goto_3
.end method

.method public static eval(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 354
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 355
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected static isDouble(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const-class v0, Ljava/lang/Float;

    .line 2556
    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-class v0, Ljava/lang/Double;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isInt(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const-class v0, Ljava/lang/Byte;

    .line 2560
    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Long;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static paths(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static paths(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson/serializer/SerializeConfig;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 427
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "/"

    .line 429
    invoke-static {v0, v1, v2, p0, p1}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 430
    return-object v1
.end method

.method private static paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson/serializer/SerializeConfig;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 524
    if-eqz p2, :cond_1

    .line 528
    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 532
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    instance-of v1, p2, Ljava/util/Map;

    if-nez v1, :cond_3

    .line 549
    instance-of v1, p2, Ljava/util/Collection;

    if-nez v1, :cond_7

    .line 562
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 564
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_a

    .line 577
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 578
    :cond_0
    return-void

    .line 525
    :cond_1
    return-void

    .line 529
    :cond_2
    return-void

    .line 535
    :cond_3
    check-cast p2, Ljava/util/Map;

    .line 537
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 546
    return-void

    .line 537
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 538
    check-cast v0, Ljava/util/Map$Entry;

    .line 539
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 541
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_4

    const-string/jumbo v3, "/"

    .line 542
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 543
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0, p3}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    goto :goto_0

    .line 542
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 550
    :cond_7
    check-cast p2, Ljava/util/Collection;

    .line 553
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    .line 559
    return-void

    .line 553
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v1, "/"

    .line 554
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 555
    :goto_3
    invoke-static {p0, v1, v3, p3}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 556
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 554
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 565
    :cond_a
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    move v1, v0

    .line 567
    :goto_4
    if-lt v1, v2, :cond_b

    .line 574
    return-void

    .line 568
    :cond_b
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v0, "/"

    .line 570
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 571
    :goto_5
    invoke-static {p0, v0, v3, p3}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 567
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 570
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 577
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    .line 582
    instance-of v1, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-nez v1, :cond_e

    .line 601
    return-void

    .line 583
    :cond_e
    check-cast v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 586
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 587
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    .line 598
    return-void

    .line 587
    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 588
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 590
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_f

    const-string/jumbo v3, "/"

    .line 591
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 592
    :goto_7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0, p3}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 597
    :catch_0
    move-exception v0

    .line 596
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "toJSON error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 591
    :cond_11
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_7
.end method

.method private static paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson/serializer/SerializeConfig;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 434
    if-eqz p3, :cond_2

    .line 438
    invoke-interface {p0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 439
    if-nez v0, :cond_3

    .line 450
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    instance-of v0, p3, Ljava/util/Map;

    if-nez v0, :cond_6

    .line 467
    instance-of v0, p3, Ljava/util/Collection;

    if-nez v0, :cond_a

    .line 480
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_d

    .line 495
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 496
    :cond_1
    return-void

    .line 435
    :cond_2
    return-void

    .line 440
    :cond_3
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    .line 445
    :goto_0
    if-nez v0, :cond_0

    .line 446
    return-void

    .line 440
    :cond_5
    instance-of v0, p3, Ljava/lang/Number;

    if-nez v0, :cond_4

    instance-of v0, p3, Ljava/util/Date;

    if-nez v0, :cond_4

    instance-of v0, p3, Ljava/util/UUID;

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    .line 453
    :cond_6
    check-cast p3, Ljava/util/Map;

    .line 455
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    .line 464
    return-void

    .line 455
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 456
    check-cast v0, Ljava/util/Map$Entry;

    .line 457
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 459
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_7

    const-string/jumbo v3, "/"

    .line 460
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 461
    :goto_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v1, v0, p4}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    goto :goto_1

    .line 460
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 468
    :cond_a
    check-cast p3, Ljava/util/Collection;

    .line 471
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    .line 477
    return-void

    .line 471
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v0, "/"

    .line 472
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 473
    :goto_4
    invoke-static {p0, p1, v0, v3, p4}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 474
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 472
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 483
    :cond_d
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 485
    :goto_5
    if-lt v1, v2, :cond_e

    .line 492
    return-void

    .line 486
    :cond_e
    invoke-static {p3, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v0, "/"

    .line 488
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 489
    :goto_6
    invoke-static {p0, p1, v0, v3, p4}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 485
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 488
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 495
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_1

    .line 499
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    .line 500
    instance-of v1, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-nez v1, :cond_11

    .line 519
    return-void

    .line 501
    :cond_11
    check-cast v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 504
    :try_start_0
    invoke-virtual {v0, p3}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 505
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    .line 516
    return-void

    .line 505
    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 506
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 508
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_12

    const-string/jumbo v3, "/"

    .line 509
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 510
    :goto_8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v1, v0, p4}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 515
    :catch_0
    move-exception v0

    .line 514
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "toJSON error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 509
    :cond_14
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_8
.end method

.method public static read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 416
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 417
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v1

    .line 418
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static remove(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 389
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 390
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONPath;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 384
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 385
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->set(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static size(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 359
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 360
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 361
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath;->evalSize(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public varargs arrayAdd(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 141
    if-nez p2, :cond_1

    .line 142
    :cond_0
    return-void

    .line 141
    :cond_1
    array-length v1, p2

    if-eqz v1, :cond_0

    .line 145
    if-eqz p1, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    move v1, v2

    move-object v3, v0

    move-object v0, p1

    .line 153
    :goto_0
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v4, v4

    if-lt v1, v4, :cond_3

    .line 162
    if-eqz v0, :cond_5

    .line 166
    instance-of v1, v0, Ljava/util/Collection;

    if-nez v1, :cond_6

    .line 174
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-nez v4, :cond_8

    .line 188
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupported array put operation. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_2
    return-void

    .line 154
    :cond_3
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_4

    .line 157
    :goto_1
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    aget-object v4, v4, v1

    invoke-interface {v4, p0, p1, v0}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 153
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v4

    goto :goto_0

    :cond_4
    move-object v3, v0

    .line 155
    goto :goto_1

    .line 163
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value not found in path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_6
    check-cast v0, Ljava/util/Collection;

    .line 168
    array-length v1, p2

    :goto_2
    if-lt v2, v1, :cond_7

    .line 171
    return-void

    .line 168
    :cond_7
    aget-object v3, p2, v2

    .line 169
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 178
    :cond_8
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    .line 179
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    array-length v5, p2

    add-int/2addr v5, v4

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 181
    invoke-static {v0, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    :goto_3
    array-length v0, p2

    if-lt v2, v0, :cond_9

    .line 191
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    .line 192
    instance-of v2, v0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    if-nez v2, :cond_a

    .line 198
    instance-of v2, v0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    if-nez v2, :cond_b

    .line 203
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 183
    :cond_9
    add-int v0, v4, v2

    aget-object v5, p2, v2

    invoke-static {v1, v0, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 193
    :cond_a
    check-cast v0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    .line 194
    invoke-virtual {v0, p0, v3, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    return-void

    .line 199
    :cond_b
    check-cast v0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    invoke-virtual {v0, p0, v3, v1}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 200
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 80
    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    move v0, v1

    move-object v2, p1

    .line 87
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v3, v3

    if-lt v0, v3, :cond_1

    .line 94
    const/4 v0, 0x1

    return v0

    .line 81
    :cond_0
    return v1

    .line 88
    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    aget-object v3, v3, v0

    invoke-interface {v3, p0, p1, v2}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 89
    if-eqz v2, :cond_2

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_2
    return v1
.end method

.method public containsValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 101
    if-eq v0, p2, :cond_0

    .line 105
    if-eqz v0, :cond_1

    .line 109
    instance-of v1, v0, Ljava/lang/Iterable;

    if-nez v1, :cond_2

    .line 121
    invoke-static {v0, p2}, Lcom/alibaba/fastjson/JSONPath;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 102
    :cond_0
    return v3

    .line 106
    :cond_1
    return v2

    .line 110
    :cond_2
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 111
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 118
    return v2

    .line 112
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 113
    invoke-static {v1, p2}, Lcom/alibaba/fastjson/JSONPath;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    return v3
.end method

.method protected deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2672
    if-eqz p1, :cond_0

    .line 2676
    instance-of v1, p1, Ljava/util/Map;

    if-nez v1, :cond_1

    .line 2691
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2693
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v1

    .line 2694
    if-nez v1, :cond_4

    .line 2718
    instance-of v1, p1, Ljava/util/List;

    if-nez v1, :cond_7

    .line 2727
    return-void

    .line 2673
    :cond_0
    return-void

    .line 2677
    :cond_1
    check-cast p1, Ljava/util/Map;

    .line 2679
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2685
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2688
    return-void

    .line 2680
    :cond_2
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2681
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2682
    return-void

    .line 2685
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2686
    invoke-virtual {p0, v1, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 2696
    :cond_4
    :try_start_0
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v0

    .line 2697
    if-nez v0, :cond_5

    .line 2708
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2709
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_6

    .line 2712
    return-void

    .line 2699
    :cond_5
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValueDirect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2700
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2706
    return-void

    .line 2705
    :catch_0
    move-exception v0

    .line 2702
    :try_start_2
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFieldValue error."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2712
    :catch_1
    move-exception v0

    .line 2714
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "jsonpath error, path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", segement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2702
    :catch_2
    move-exception v0

    .line 2704
    :try_start_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFieldValue error."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2709
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2710
    invoke-virtual {p0, v1, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 2719
    :cond_7
    check-cast p1, Ljava/util/List;

    .line 2721
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_8

    .line 2725
    return-void

    .line 2722
    :cond_8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 2723
    invoke-virtual {p0, v1, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    .line 2721
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 2730
    if-eqz p1, :cond_0

    .line 2734
    instance-of v1, p1, Ljava/util/Map;

    if-nez v1, :cond_1

    .line 2749
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2751
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanDeserializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v2

    .line 2752
    if-nez v2, :cond_4

    .line 2771
    instance-of v1, p1, Ljava/util/List;

    if-nez v1, :cond_7

    .line 2780
    return-void

    .line 2731
    :cond_0
    return-void

    .line 2735
    :cond_1
    check-cast p1, Ljava/util/Map;

    .line 2737
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2743
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2746
    return-void

    .line 2738
    :cond_2
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2739
    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2740
    return-void

    .line 2743
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 2744
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/JSONPath;->deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_0

    .line 2754
    :cond_4
    :try_start_0
    invoke-virtual {v2, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    .line 2755
    if-nez v0, :cond_5

    .line 2760
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v0

    .line 2761
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getObjectFieldValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2762
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2765
    return-void

    .line 2756
    :cond_5
    invoke-virtual {v0, p1, p5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2757
    return-void

    .line 2762
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 2763
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/JSONPath;->deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2765
    :catch_0
    move-exception v0

    .line 2767
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "jsonpath error, path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", segement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2772
    :cond_7
    check-cast p1, Ljava/util/List;

    .line 2774
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_8

    .line 2778
    return-void

    .line 2775
    :cond_8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 2776
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/JSONPath;->deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V

    .line 2774
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public eval(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 65
    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    const/4 v0, 0x0

    move-object v1, p1

    .line 72
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 76
    return-object v1

    .line 66
    :cond_0
    return-object v0

    .line 73
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    aget-object v2, v2, v0

    .line 74
    invoke-interface {v2, p0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method evalSize(Ljava/lang/Object;)I
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 2870
    if-eqz p1, :cond_0

    .line 2874
    instance-of v1, p1, Ljava/util/Collection;

    if-nez v1, :cond_1

    .line 2878
    instance-of v1, p1, [Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 2882
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2886
    instance-of v1, p1, Ljava/util/Map;

    if-nez v1, :cond_4

    .line 2897
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v0

    .line 2899
    if-eqz v0, :cond_7

    .line 2904
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getSize(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 2871
    :cond_0
    return v2

    .line 2875
    :cond_1
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    return v0

    .line 2879
    :cond_2
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    array-length v0, p1

    return v0

    .line 2883
    :cond_3
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 2889
    :cond_4
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2894
    return v0

    .line 2889
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2890
    if-eqz v2, :cond_5

    .line 2891
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2900
    :cond_7
    return v2

    .line 2904
    :catch_0
    move-exception v0

    .line 2906
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "evalSize error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getArrayItem(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 2342
    if-eqz p1, :cond_0

    .line 2346
    instance-of v1, p1, Ljava/util/List;

    if-nez v1, :cond_1

    .line 2362
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2378
    instance-of v1, p1, Ljava/util/Map;

    if-nez v1, :cond_9

    .line 2387
    instance-of v1, p1, Ljava/util/Collection;

    if-nez v1, :cond_b

    .line 2399
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2343
    :cond_0
    return-object v3

    .line 2347
    :cond_1
    check-cast p1, Ljava/util/List;

    .line 2349
    if-gez p2, :cond_2

    .line 2355
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 2358
    return-object v3

    .line 2350
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_3

    .line 2353
    return-object v3

    .line 2351
    :cond_3
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2356
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2363
    :cond_5
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 2365
    if-gez p2, :cond_6

    .line 2371
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v0, :cond_8

    .line 2374
    return-object v3

    .line 2366
    :cond_6
    if-lt p2, v0, :cond_7

    .line 2369
    return-object v3

    .line 2367
    :cond_7
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2372
    :cond_8
    add-int/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2379
    :cond_9
    check-cast p1, Ljava/util/Map;

    .line 2380
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2381
    if-eqz v0, :cond_a

    .line 2384
    :goto_0
    return-object v0

    .line 2382
    :cond_a
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 2388
    :cond_b
    check-cast p1, Ljava/util/Collection;

    .line 2390
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_c

    .line 2396
    return-object v3

    .line 2390
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2391
    if-eq v0, p2, :cond_d

    .line 2394
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2392
    :cond_d
    return-object v2
.end method

.method protected getJavaBeanDeserializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2860
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 2861
    instance-of v2, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 2865
    :goto_0
    return-object v0

    .line 2862
    :cond_0
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    goto :goto_0
.end method

.method protected getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2849
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    .line 2850
    instance-of v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 2854
    :goto_0
    return-object v0

    .line 2851
    :cond_0
    check-cast v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    return-object v0
.end method

.method protected getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;
    .locals 11

    .prologue
    const-wide v8, -0x3572c6e70ba870e3L    # -1.3667045267075351E51

    const-wide v2, -0x3b435245719ce47aL    # -1.3543099103600943E23

    const-wide v6, -0x5b667a10b311df43L

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 2567
    if-eqz p1, :cond_2

    .line 2571
    instance-of v1, p1, Ljava/util/Map;

    if-nez v1, :cond_3

    .line 2582
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2584
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v1

    .line 2585
    if-nez v1, :cond_7

    .line 2593
    instance-of v1, p1, Ljava/util/List;

    if-nez v1, :cond_8

    .line 2623
    instance-of v0, p1, Ljava/lang/Enum;

    if-nez v0, :cond_f

    .line 2637
    :cond_0
    instance-of v0, p1, Ljava/util/Calendar;

    if-nez v0, :cond_11

    .line 2666
    :cond_1
    return-object v4

    .line 2568
    :cond_2
    return-object v4

    .line 2572
    :cond_3
    check-cast p1, Ljava/util/Map;

    .line 2573
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2575
    if-eqz v0, :cond_5

    .line 2579
    :cond_4
    :goto_0
    return-object v0

    :cond_5
    const-wide v2, 0x4dea9618e618ae3cL    # 2.239892812106928E67

    .line 2575
    cmp-long v1, v2, p3

    if-eqz v1, :cond_6

    const-wide v2, -0x15eea8c0e50a614bL    # -8.49505883430448E202

    cmp-long v1, v2, p3

    if-nez v1, :cond_4

    .line 2576
    :cond_6
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 2587
    :cond_7
    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;JZ)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 2589
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "jsonpath error, path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", segement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2594
    :cond_8
    check-cast p1, Ljava/util/List;

    const-wide v2, 0x4dea9618e618ae3cL    # 2.239892812106928E67

    .line 2596
    cmp-long v1, v2, p3

    if-eqz v1, :cond_9

    const-wide v2, -0x15eea8c0e50a614bL    # -8.49505883430448E202

    cmp-long v1, v2, p3

    if-nez v1, :cond_a

    .line 2597
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 2600
    :cond_a
    new-instance v2, Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    move v1, v0

    .line 2602
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_b

    .line 2620
    return-object v2

    .line 2603
    :cond_b
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2606
    if-eq v0, p1, :cond_c

    .line 2611
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    .line 2612
    instance-of v3, v0, Ljava/util/Collection;

    if-nez v3, :cond_d

    .line 2615
    if-nez v0, :cond_e

    .line 2602
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2607
    :cond_c
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2613
    :cond_d
    check-cast v0, Ljava/util/Collection;

    .line 2614
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 2616
    :cond_e
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_f
    move-object v0, p1

    .line 2627
    check-cast v0, Ljava/lang/Enum;

    .line 2628
    cmp-long v1, v2, p3

    if-nez v1, :cond_10

    .line 2629
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    const-wide v2, -0xe14383dfcdd03deL    # -5.788733405278088E240

    .line 2632
    cmp-long v1, v2, p3

    if-nez v1, :cond_0

    .line 2633
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 2645
    :cond_11
    check-cast p1, Ljava/util/Calendar;

    const-wide v0, 0x7c64634977425edcL

    .line 2646
    cmp-long v0, v0, p3

    if-nez v0, :cond_12

    const/4 v0, 0x1

    .line 2647
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_12
    const-wide v0, -0xb423c6c9050a95bL

    .line 2649
    cmp-long v0, v0, p3

    if-nez v0, :cond_13

    const/4 v0, 0x2

    .line 2650
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 2652
    :cond_13
    cmp-long v0, v8, p3

    if-nez v0, :cond_14

    const/4 v0, 0x5

    .line 2653
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_14
    const-wide v0, 0x407efecc7eb5764fL    # 495.924925526463

    .line 2655
    cmp-long v0, v0, p3

    if-nez v0, :cond_15

    const/16 v0, 0xb

    .line 2656
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_15
    const-wide v0, 0x5bb2f9bdf2fad1e9L    # 5.387565597711505E133

    .line 2658
    cmp-long v0, v0, p3

    if-nez v0, :cond_16

    const/16 v0, 0xc

    .line 2659
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 2661
    :cond_16
    cmp-long v0, v6, p3

    if-nez v0, :cond_1

    const/16 v0, 0xd

    .line 2662
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected getPropertyValues(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2461
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2463
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v0

    .line 2465
    if-nez v0, :cond_0

    .line 2473
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_1

    .line 2478
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2467
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValues(Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 2469
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "jsonpath error, path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2474
    :cond_1
    check-cast p1, Ljava/util/Map;

    .line 2475
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    if-nez v0, :cond_0

    const-string/jumbo v0, "*"

    .line 56
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->explain()[Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    .line 62
    :goto_0
    return-void

    .line 53
    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 57
    new-array v0, v0, [Lcom/alibaba/fastjson/JSONPath$Segement;

    sget-object v1, Lcom/alibaba/fastjson/JSONPath$WildCardSegement;->instance:Lcom/alibaba/fastjson/JSONPath$WildCardSegement;

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 207
    if-eqz p1, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    move v0, v2

    move-object v1, p1

    .line 215
    :goto_0
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v5, v5

    if-lt v0, v5, :cond_2

    move-object v1, v4

    .line 226
    :cond_0
    :goto_1
    if-eqz v1, :cond_4

    .line 230
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v0, v0, v4

    .line 231
    instance-of v4, v0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    if-nez v4, :cond_5

    .line 253
    instance-of v2, v0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    if-nez v2, :cond_c

    .line 257
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 208
    :cond_1
    return v2

    .line 216
    :cond_2
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-eq v0, v5, :cond_0

    .line 220
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    aget-object v5, v5, v0

    invoke-interface {v5, p0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 221
    if-eqz v1, :cond_3

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move-object v1, v4

    .line 222
    goto :goto_1

    .line 227
    :cond_4
    return v2

    .line 232
    :cond_5
    check-cast v0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    .line 234
    instance-of v4, v1, Ljava/util/Collection;

    if-nez v4, :cond_7

    .line 250
    :cond_6
    :goto_2
    invoke-virtual {v0, p0, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 235
    :cond_7
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v4, v4

    if-le v4, v3, :cond_6

    .line 236
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x2

    aget-object v4, v4, v5

    .line 237
    instance-of v5, v4, Lcom/alibaba/fastjson/JSONPath$RangeSegement;

    if-eqz v5, :cond_a

    .line 238
    :cond_8
    check-cast v1, Ljava/util/Collection;

    .line 240
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_b

    .line 246
    return v2

    .line 237
    :cond_a
    instance-of v4, v4, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegement;

    if-nez v4, :cond_8

    goto :goto_2

    .line 240
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 241
    invoke-virtual {v0, p0, v4}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    move-result v4

    .line 242
    if-eqz v4, :cond_9

    move v2, v3

    .line 243
    goto :goto_3

    .line 254
    :cond_c
    check-cast v0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeArrayItem(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2436
    instance-of v0, p2, Ljava/util/List;

    if-nez v0, :cond_0

    .line 2455
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2456
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupported set operation."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2437
    :cond_0
    check-cast p2, Ljava/util/List;

    .line 2438
    if-gez p3, :cond_1

    .line 2444
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p3

    .line 2446
    if-ltz v0, :cond_3

    .line 2450
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2452
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 2439
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 2442
    invoke-interface {p2, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 2440
    :cond_2
    return v1

    .line 2447
    :cond_3
    return v1
.end method

.method protected removePropertyValue(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2821
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2826
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 2829
    instance-of v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-nez v4, :cond_2

    move-object v0, v3

    .line 2833
    :goto_0
    if-nez v0, :cond_3

    .line 2843
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2822
    :cond_0
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2823
    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_1
    move v0, v2

    goto :goto_1

    .line 2830
    :cond_2
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    goto :goto_0

    .line 2834
    :cond_3
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    .line 2835
    if-eqz v0, :cond_4

    .line 2839
    invoke-virtual {v0, p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2840
    return v2

    .line 2836
    :cond_4
    return v1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/JSONPath;->set(Ljava/lang/Object;Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 265
    if-eqz p1, :cond_1

    .line 269
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    move v2, v3

    move-object v0, v4

    move-object v5, p1

    .line 273
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v1, v1

    if-lt v2, v1, :cond_2

    move-object v5, v0

    .line 335
    :cond_0
    if-eqz v5, :cond_c

    .line 339
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 340
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    if-nez v1, :cond_d

    .line 346
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    if-nez v1, :cond_e

    .line 350
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 266
    :cond_1
    return v3

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    aget-object v1, v0, v2

    .line 281
    invoke-interface {v1, p0, p1, v5}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_3

    move-object v1, v0

    .line 273
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v5

    move-object v5, v1

    goto :goto_0

    .line 284
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-lt v2, v0, :cond_4

    move-object v0, v4

    .line 289
    :goto_2
    instance-of v6, v0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    if-nez v6, :cond_5

    .line 313
    instance-of v0, v0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    if-nez v0, :cond_a

    move-object v0, v4

    .line 317
    :goto_3
    if-eqz v0, :cond_0

    .line 318
    instance-of v6, v1, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    if-nez v6, :cond_b

    .line 323
    instance-of v6, v1, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    if-eqz v6, :cond_0

    .line 324
    check-cast v1, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    .line 325
    invoke-virtual {v1, p0, v5, v0}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object v1, v0

    .line 327
    goto :goto_1

    .line 285
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    add-int/lit8 v6, v2, 0x1

    aget-object v0, v0, v6

    goto :goto_2

    .line 292
    :cond_5
    instance-of v0, v1, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    if-nez v0, :cond_6

    move-object v0, v4

    move-object v6, v4

    .line 303
    :goto_4
    if-nez v6, :cond_8

    .line 311
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto :goto_3

    :cond_6
    move-object v0, v1

    .line 293
    check-cast v0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->access$000(Lcom/alibaba/fastjson/JSONPath$PropertySegement;)Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 295
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanDeserializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v6

    .line 296
    if-nez v6, :cond_7

    move-object v0, v4

    move-object v6, v4

    goto :goto_4

    .line 297
    :cond_7
    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    .line 298
    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 299
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanDeserializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v6

    goto :goto_4

    .line 305
    :cond_8
    iget-object v7, v6, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    if-nez v7, :cond_9

    .line 308
    return v3

    .line 306
    :cond_9
    invoke-virtual {v6, v4, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    .line 314
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    goto :goto_3

    .line 319
    :cond_b
    check-cast v1, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    .line 320
    invoke-virtual {v1, p0, v5, v0}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v0

    .line 322
    goto :goto_1

    .line 336
    :cond_c
    return v3

    .line 341
    :cond_d
    check-cast v0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    .line 342
    invoke-virtual {v0, p0, v5, p2}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 343
    const/4 v0, 0x1

    return v0

    .line 347
    :cond_e
    check-cast v0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    invoke-virtual {v0, p0, v5, p2}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setArrayItem(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2404
    instance-of v0, p2, Ljava/util/List;

    if-nez v0, :cond_0

    .line 2414
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2415
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2431
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupported set operation."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2405
    :cond_0
    check-cast p2, Ljava/util/List;

    .line 2406
    if-gez p3, :cond_1

    .line 2409
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p3

    invoke-interface {p2, v0, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2411
    :goto_0
    return v2

    .line 2407
    :cond_1
    invoke-interface {p2, p3, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2416
    :cond_2
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 2418
    if-gez p3, :cond_4

    .line 2423
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v0, :cond_5

    .line 2428
    :cond_3
    :goto_1
    return v2

    .line 2419
    :cond_4
    if-ge p3, v0, :cond_3

    .line 2420
    invoke-static {p2, p3, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    .line 2424
    :cond_5
    add-int/2addr v0, p3

    invoke-static {p2, v0, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1
.end method

.method protected setPropertyValue(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2784
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2789
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_1

    .line 2799
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 2802
    instance-of v2, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-nez v2, :cond_4

    move-object v0, v1

    .line 2806
    :goto_0
    if-nez v0, :cond_5

    .line 2816
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2785
    :cond_0
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2786
    return v7

    .line 2790
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2796
    return v7

    .line 2790
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2791
    if-eqz v2, :cond_2

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 2794
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/JSONPath;->setPropertyValue(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)Z

    goto :goto_1

    .line 2803
    :cond_4
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    goto :goto_0

    .line 2807
    :cond_5
    invoke-virtual {v0, p3, p4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(J)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    .line 2808
    if-eqz v0, :cond_6

    .line 2812
    invoke-virtual {v0, p1, p5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2813
    return v7

    .line 2809
    :cond_6
    return v3
.end method

.method public size(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 125
    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    const/4 v0, 0x0

    move-object v1, p1

    .line 132
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 136
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->evalSize(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    .line 126
    return v0

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    aget-object v2, v2, v0

    invoke-interface {v2, p0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2911
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
