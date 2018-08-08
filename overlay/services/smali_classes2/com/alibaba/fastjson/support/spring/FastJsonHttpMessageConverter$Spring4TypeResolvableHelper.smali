.class Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;
.super Ljava/lang/Object;
.source "FastJsonHttpMessageConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Spring4TypeResolvableHelper"
.end annotation


# static fields
.field private static hasClazzResolvableType:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    :try_start_0
    const-string/jumbo v0, "org.springframework.core.ResolvableType"

    .line 297
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 298
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->hasClazzResolvableType:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 300
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->hasClazzResolvableType:Z

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 292
    invoke-static {}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->isSupport()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 292
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->getType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method private static getType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 310
    if-nez p1, :cond_1

    .line 340
    :cond_0
    return-object p0

    .line 311
    :cond_1
    invoke-static {p0}, Lorg/springframework/core/ResolvableType;->forType(Ljava/lang/reflect/Type;)Lorg/springframework/core/ResolvableType;

    move-result-object v3

    .line 312
    instance-of v1, p0, Ljava/lang/reflect/TypeVariable;

    if-nez v1, :cond_2

    .line 317
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Lorg/springframework/core/ResolvableType;->hasUnresolvableGenerics()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 319
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    array-length v1, v1

    new-array v4, v1, [Ljava/lang/Class;

    .line 320
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    move v2, v0

    .line 322
    :goto_0
    array-length v0, v5

    if-lt v2, v0, :cond_3

    .line 336
    invoke-virtual {v3}, Lorg/springframework/core/ResolvableType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v4}, Lorg/springframework/core/ResolvableType;->forClassWithGenerics(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/springframework/core/ResolvableType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/springframework/core/ResolvableType;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0

    :cond_2
    move-object v0, p0

    .line 313
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-static {p1}, Lorg/springframework/core/ResolvableType;->forClass(Ljava/lang/Class;)Lorg/springframework/core/ResolvableType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->resolveVariable(Ljava/lang/reflect/TypeVariable;Lorg/springframework/core/ResolvableType;)Lorg/springframework/core/ResolvableType;

    move-result-object v0

    .line 314
    sget-object v1, Lorg/springframework/core/ResolvableType;->NONE:Lorg/springframework/core/ResolvableType;

    if-eq v0, v1, :cond_0

    .line 315
    invoke-virtual {v0}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 323
    :cond_3
    aget-object v1, v5, v2

    .line 324
    instance-of v0, v1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_4

    .line 332
    invoke-static {v1}, Lorg/springframework/core/ResolvableType;->forType(Ljava/lang/reflect/Type;)Lorg/springframework/core/ResolvableType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v4, v2

    .line 322
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 325
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-static {p1}, Lorg/springframework/core/ResolvableType;->forClass(Ljava/lang/Class;)Lorg/springframework/core/ResolvableType;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->resolveVariable(Ljava/lang/reflect/TypeVariable;Lorg/springframework/core/ResolvableType;)Lorg/springframework/core/ResolvableType;

    move-result-object v0

    .line 326
    sget-object v6, Lorg/springframework/core/ResolvableType;->NONE:Lorg/springframework/core/ResolvableType;

    if-ne v0, v6, :cond_5

    .line 329
    invoke-static {v1}, Lorg/springframework/core/ResolvableType;->forType(Ljava/lang/reflect/Type;)Lorg/springframework/core/ResolvableType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v4, v2

    goto :goto_1

    .line 327
    :cond_5
    invoke-virtual {v0}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v4, v2

    goto :goto_1
.end method

.method private static isSupport()Z
    .locals 1

    .prologue
    .line 305
    sget-boolean v0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->hasClazzResolvableType:Z

    return v0
.end method

.method private static resolveVariable(Ljava/lang/reflect/TypeVariable;Lorg/springframework/core/ResolvableType;)Lorg/springframework/core/ResolvableType;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Lorg/springframework/core/ResolvableType;",
            ")",
            "Lorg/springframework/core/ResolvableType;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 345
    invoke-virtual {p1}, Lorg/springframework/core/ResolvableType;->hasGenerics()Z

    move-result v1

    if-nez v1, :cond_2

    .line 352
    :cond_0
    invoke-virtual {p1}, Lorg/springframework/core/ResolvableType;->getSuperType()Lorg/springframework/core/ResolvableType;

    move-result-object v1

    .line 353
    sget-object v2, Lorg/springframework/core/ResolvableType;->NONE:Lorg/springframework/core/ResolvableType;

    if-ne v1, v2, :cond_3

    .line 359
    :cond_1
    invoke-virtual {p1}, Lorg/springframework/core/ResolvableType;->getInterfaces()[Lorg/springframework/core/ResolvableType;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_4

    .line 365
    sget-object v0, Lorg/springframework/core/ResolvableType;->NONE:Lorg/springframework/core/ResolvableType;

    return-object v0

    .line 346
    :cond_2
    invoke-static {p0, p1}, Lorg/springframework/core/ResolvableType;->forType(Ljava/lang/reflect/Type;Lorg/springframework/core/ResolvableType;)Lorg/springframework/core/ResolvableType;

    move-result-object v1

    .line 347
    invoke-virtual {v1}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 348
    return-object v1

    .line 354
    :cond_3
    invoke-static {p0, v1}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->resolveVariable(Ljava/lang/reflect/TypeVariable;Lorg/springframework/core/ResolvableType;)Lorg/springframework/core/ResolvableType;

    move-result-object v1

    .line 355
    invoke-virtual {v1}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 356
    return-object v1

    .line 359
    :cond_4
    aget-object v3, v1, v0

    .line 360
    invoke-static {p0, v3}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->resolveVariable(Ljava/lang/reflect/TypeVariable;Lorg/springframework/core/ResolvableType;)Lorg/springframework/core/ResolvableType;

    move-result-object v3

    .line 361
    invoke-virtual {v3}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_5

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    :cond_5
    return-object v3
.end method
