.class public Lcom/alibaba/fastjson/asm/TypeCollector;
.super Ljava/lang/Object;
.source "TypeCollector.java"


# static fields
.field private static final primitives:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected collector:Lcom/alibaba/fastjson/asm/MethodCollector;

.field private final methodName:Ljava/lang/String;

.field private final parameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/alibaba/fastjson/asm/TypeCollector$1;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/TypeCollector$1;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/asm/TypeCollector;->primitives:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->methodName:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->parameterTypes:[Ljava/lang/Class;

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->collector:Lcom/alibaba/fastjson/asm/MethodCollector;

    .line 31
    return-void
.end method

.method private correctTypeName(Lcom/alibaba/fastjson/asm/Type;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-virtual {p1}, Lcom/alibaba/fastjson/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, ""

    :goto_0
    const-string/jumbo v2, "[]"

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, ""

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    :goto_1
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 70
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 74
    :cond_1
    sget-object v2, Lcom/alibaba/fastjson/asm/TypeCollector;->primitives:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "L"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 75
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/alibaba/fastjson/asm/TypeCollector;->primitives:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public getParameterNamesForMethod()[Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->collector:Lcom/alibaba/fastjson/asm/MethodCollector;

    if-nez v0, :cond_1

    .line 85
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->collector:Lcom/alibaba/fastjson/asm/MethodCollector;

    iget-boolean v0, v0, Lcom/alibaba/fastjson/asm/MethodCollector;->debugInfoPresent:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->collector:Lcom/alibaba/fastjson/asm/MethodCollector;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/asm/MethodCollector;->getResult()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected visitMethod(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodCollector;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 34
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->collector:Lcom/alibaba/fastjson/asm/MethodCollector;

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->methodName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    invoke-static {p3}, Lcom/alibaba/fastjson/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lcom/alibaba/fastjson/asm/Type;

    move-result-object v3

    .line 44
    array-length v4, v3

    move v1, v2

    move v0, v2

    :goto_0
    if-lt v1, v4, :cond_3

    .line 51
    array-length v1, v3

    iget-object v4, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->parameterTypes:[Ljava/lang/Class;

    array-length v4, v4

    if-ne v1, v4, :cond_6

    move v1, v2

    .line 54
    :goto_1
    array-length v4, v3

    if-lt v1, v4, :cond_7

    .line 60
    new-instance v1, Lcom/alibaba/fastjson/asm/MethodCollector;

    .line 61
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    array-length v3, v3

    add-int/2addr v0, v3

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodCollector;-><init>(II)V

    iput-object v1, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->collector:Lcom/alibaba/fastjson/asm/MethodCollector;

    .line 60
    return-object v1

    .line 35
    :cond_1
    return-object v7

    .line 39
    :cond_2
    return-object v7

    .line 44
    :cond_3
    aget-object v5, v3, v1

    .line 45
    invoke-virtual {v5}, Lcom/alibaba/fastjson/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "long"

    .line 46
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 47
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 44
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const-string/jumbo v6, "double"

    .line 46
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    .line 52
    :cond_6
    return-object v7

    .line 55
    :cond_7
    aget-object v4, v3, v1

    iget-object v5, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->parameterTypes:[Ljava/lang/Class;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/alibaba/fastjson/asm/TypeCollector;->correctTypeName(Lcom/alibaba/fastjson/asm/Type;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 56
    :cond_8
    return-object v7
.end method
