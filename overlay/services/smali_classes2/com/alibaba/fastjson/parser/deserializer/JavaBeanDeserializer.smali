.class public Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
.super Ljava/lang/Object;
.source "JavaBeanDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field private final alterNameFieldDeserializers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;",
            ">;"
        }
    .end annotation
.end field

.field public final beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

.field protected final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

.field private transient hashArray:[J

.field private transient hashArrayMapping:[S

.field private transient smartMatchHashArray:[J

.field private transient smartMatchHashArrayMapping:[S

.field protected final sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-object v2, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->clazz:Ljava/lang/Class;

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    .line 54
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    .line 57
    iget-object v2, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v2, v2

    new-array v2, v2, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 58
    iget-object v2, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v4, v2

    move v3, v1

    :goto_0
    if-lt v3, v4, :cond_0

    .line 71
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    .line 73
    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v0, v0

    new-array v0, v0, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 74
    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v2, v0

    move v0, v1

    :goto_1
    if-lt v0, v2, :cond_3

    .line 79
    return-void

    .line 59
    :cond_0
    iget-object v2, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v2, v2, v3

    .line 60
    invoke-virtual {p1, p1, p2, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v5

    .line 62
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object v5, v6, v3

    .line 64
    iget-object v6, v2, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    array-length v7, v6

    move v2, v1

    :goto_2
    if-lt v2, v7, :cond_1

    .line 58
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 64
    :cond_1
    aget-object v8, v6, v2

    .line 65
    if-eqz v0, :cond_2

    .line 68
    :goto_3
    invoke-interface {v0, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 66
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_3

    .line 75
    :cond_3
    iget-object v1, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v1, v1, v0

    .line 76
    iget-object v1, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v1

    .line 77
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object v1, v3, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/ParserConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    iget-boolean v1, p1, Lcom/alibaba/fastjson/parser/ParserConfig;->fieldBased:Z

    iget-boolean v2, p1, Lcom/alibaba/fastjson/parser/ParserConfig;->compatibleWithJavaBean:Z

    .line 48
    invoke-static {p2, p3, v0, v1, v2}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;)V

    .line 50
    return-void
.end method

.method static isSetFlag(I[I)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 157
    if-eqz p1, :cond_1

    .line 161
    div-int/lit8 v0, p0, 0x20

    .line 162
    rem-int/lit8 v1, p0, 0x20

    .line 163
    array-length v2, p1

    if-lt v0, v2, :cond_2

    .line 169
    :cond_0
    return v3

    .line 158
    :cond_1
    return v3

    .line 164
    :cond_2
    aget v0, p1, v0

    shl-int v1, v4, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 165
    return v4
.end method

.method protected static parseArray(Ljava/util/Collection;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/16 v6, 0x5b

    const/16 v5, 0xf

    const/16 v4, 0x10

    const/16 v3, 0xe

    .line 1320
    iget-object v0, p2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    check-cast v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 1321
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    const/16 v2, 0x8

    .line 1322
    if-eq v1, v2, :cond_0

    .line 1328
    if-ne v1, v3, :cond_1

    .line 1331
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v1

    .line 1332
    if-eq v1, v6, :cond_2

    .line 1336
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 1339
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    if-eq v1, v5, :cond_3

    const/4 v1, 0x0

    .line 1346
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, p2, p3, v2}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1347
    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1348
    add-int/lit8 v1, v1, 0x1

    .line 1349
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v2

    if-eq v2, v4, :cond_4

    .line 1362
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    .line 1363
    if-ne v1, v5, :cond_6

    .line 1367
    :goto_3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v1

    const/16 v2, 0x2c

    .line 1368
    if-eq v1, v2, :cond_7

    .line 1372
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 1375
    :goto_4
    return-void

    .line 1323
    :cond_0
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 1324
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    .line 1325
    return-void

    .line 1329
    :cond_1
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->throwException(I)V

    goto :goto_0

    .line 1333
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1334
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setToken(I)V

    goto :goto_1

    .line 1340
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 1341
    return-void

    .line 1350
    :cond_4
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v2

    .line 1351
    if-eq v2, v6, :cond_5

    .line 1355
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    goto :goto_2

    .line 1352
    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1353
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setToken(I)V

    goto :goto_2

    .line 1364
    :cond_6
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->throwException(I)V

    goto :goto_3

    .line 1369
    :cond_7
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1370
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setToken(I)V

    goto :goto_4
.end method


# virtual methods
.method protected check(Lcom/alibaba/fastjson/parser/JSONLexer;I)V
    .locals 2

    .prologue
    .line 346
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 349
    return-void

    .line 347
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 173
    instance-of v2, p2, Ljava/lang/Class;

    if-nez v2, :cond_4

    .line 183
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_5

    .line 187
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_6

    .line 193
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v3, v2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 194
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v2, v2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    if-eqz v2, :cond_7

    .line 201
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v4

    .line 202
    if-nez v4, :cond_a

    .line 203
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "can\'t create non-static inner class instance."

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 248
    :catch_0
    move-exception v0

    .line 245
    throw v0

    .line 174
    :cond_4
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    check-cast p2, Ljava/lang/Class;

    .line 176
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 177
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 178
    new-array v3, v3, [Ljava/lang/Class;

    aput-object p2, v3, v1

    invoke-static {v0, v3, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 179
    return-object v0

    .line 183
    :cond_5
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 184
    return-object v0

    .line 187
    :cond_6
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v2, v2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    if-lez v2, :cond_2

    .line 188
    return-object v0

    .line 195
    :cond_7
    if-nez v3, :cond_9

    .line 198
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 250
    :goto_0
    if-nez p1, :cond_11

    .line 263
    :cond_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    .line 196
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 202
    :cond_a
    iget-object v2, v4, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 207
    instance-of v2, p2, Ljava/lang/Class;

    if-nez v2, :cond_b

    .line 210
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "can\'t create non-static inner class instance."

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    :catch_1
    move-exception v0

    .line 247
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "create instance error, class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 208
    :cond_b
    :try_start_2
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x24

    .line 213
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v6, 0x0

    .line 214
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 216
    iget-object v2, v4, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 217
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 220
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    move-object v0, v2

    .line 238
    :cond_c
    :goto_1
    if-eqz v0, :cond_10

    const/4 v2, 0x1

    .line 242
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 221
    :cond_d
    iget-object v2, v4, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 222
    if-eqz v2, :cond_c

    iget-object v4, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v4, :cond_c

    const-string/jumbo v4, "java.util.ArrayList"

    .line 224
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 229
    :cond_e
    iget-object v4, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 230
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 231
    iget-object v0, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_1

    :cond_f
    const-string/jumbo v4, "java.util.List"

    .line 225
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string/jumbo v4, "java.util.Collection"

    .line 226
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string/jumbo v4, "java.util.Map"

    .line 227
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string/jumbo v4, "java.util.HashMap"

    .line 228
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_1

    .line 239
    :cond_10
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "can\'t create non-static inner class instance."

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 250
    :cond_11
    iget-object v2, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    .line 251
    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 252
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_8

    aget-object v4, v2, v1

    .line 253
    iget-object v5, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    if-eq v5, v6, :cond_12

    .line 252
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    :try_start_3
    const-string/jumbo v5, ""

    .line 255
    invoke-virtual {v4, v0, v5}, Lcom/alibaba/fastjson/util/FieldInfo;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 258
    :catch_2
    move-exception v0

    .line 257
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "create instance error, class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createInstance(Ljava/util/Map;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1162
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_2

    .line 1201
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v6, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1202
    array-length v7, v6

    .line 1203
    new-array v8, v7, [Ljava/lang/Object;

    move v4, v5

    move-object v2, v3

    .line 1205
    :goto_0
    if-lt v4, v7, :cond_8

    .line 1236
    if-nez v2, :cond_13

    .line 1251
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_15

    .line 1258
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_16

    move-object v0, v3

    .line 1266
    :goto_1
    return-object v0

    .line 1162
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {p0, v3, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .line 1165
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1186
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_7

    .line 1197
    return-object v2

    .line 1165
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1166
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1167
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1169
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v1

    .line 1170
    if-eqz v1, :cond_3

    .line 1174
    iget-object v4, v1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1175
    iget-object v5, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 1176
    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    .line 1177
    if-nez v4, :cond_6

    .line 1180
    :cond_5
    invoke-static {v0, v5, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    .line 1183
    :goto_3
    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    const-class v6, Ljava/util/Date;

    .line 1177
    if-ne v5, v6, :cond_5

    .line 1178
    invoke-static {v0, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_3

    .line 1189
    :cond_7
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1194
    return-object v0

    .line 1192
    :catch_0
    move-exception v0

    .line 1191
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "build object error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1206
    :cond_8
    aget-object v9, v6, v4

    .line 1207
    iget-object v0, v9, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1209
    if-eqz v0, :cond_9

    .line 1233
    :goto_4
    aput-object v0, v8, v4

    .line 1205
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_0

    .line 1210
    :cond_9
    iget-object v1, v9, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1211
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v10, :cond_a

    .line 1213
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v1, v10, :cond_b

    .line 1215
    sget-object v10, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v1, v10, :cond_c

    .line 1217
    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v1, v10, :cond_d

    .line 1219
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v1, v10, :cond_e

    .line 1221
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v1, v10, :cond_f

    .line 1223
    sget-object v10, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v1, v10, :cond_10

    .line 1225
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v10, :cond_11

    move-object v1, v0

    .line 1228
    :goto_5
    if-eqz v2, :cond_12

    move-object v0, v2

    .line 1231
    :goto_6
    iget-object v2, v9, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    .line 1212
    :cond_a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    :cond_b
    const-wide/16 v0, 0x0

    .line 1214
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_5

    .line 1216
    :cond_c
    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_5

    .line 1218
    :cond_d
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_5

    :cond_e
    const/4 v0, 0x0

    .line 1220
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_5

    :cond_f
    const-wide/16 v0, 0x0

    .line 1222
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_5

    .line 1224
    :cond_10
    const/16 v0, 0x30

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    goto :goto_5

    .line 1226
    :cond_11
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_5

    .line 1229
    :cond_12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_6

    .line 1237
    :cond_13
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_14
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1238
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1239
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 1241
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    .line 1242
    if-eqz v0, :cond_14

    .line 1243
    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1244
    if-eqz v0, :cond_14

    .line 1245
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput-object v5, v8, v0

    goto :goto_7

    .line 1253
    :cond_15
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto/16 :goto_1

    .line 1257
    :catch_1
    move-exception v0

    .line 1255
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "create instance error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 1256
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1260
    :cond_16
    :try_start_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto/16 :goto_1

    .line 1263
    :catch_2
    move-exception v0

    .line 1262
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "create factory method error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 267
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "I)TT;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, v4

    .line 271
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "I[I)TT;"
        }
    .end annotation

    .prologue
    const-class v4, Lcom/alibaba/fastjson/JSON;

    .line 362
    move-object/from16 v0, p2

    if-ne v0, v4, :cond_1

    .line 363
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v4

    return-object v4

    :cond_1
    const-class v4, Lcom/alibaba/fastjson/JSONObject;

    .line 362
    move-object/from16 v0, p2

    if-eq v0, v4, :cond_0

    .line 366
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object v11, v4

    check-cast v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 367
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v19

    .line 369
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v7

    const/16 v4, 0x8

    .line 370
    if-eq v7, v4, :cond_9

    .line 375
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v4

    .line 376
    if-nez p4, :cond_a

    :cond_2
    move-object v12, v4

    :goto_0
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v4, 0xd

    .line 384
    if-eq v7, v4, :cond_b

    const/16 v4, 0xe

    .line 392
    if-eq v7, v4, :cond_e

    :cond_3
    const/16 v4, 0xc

    .line 403
    if-ne v7, v4, :cond_12

    .line 454
    :cond_4
    :try_start_0
    move-object/from16 v0, p1

    iget v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v7, 0x2

    if-eq v4, v7, :cond_20

    .line 458
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeKey:Ljava/lang/String;

    move-object/from16 v20, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    move v13, v4

    move-object v7, v5

    move-object v8, v6

    :goto_2
    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 465
    const/4 v4, 0x0

    .line 466
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v14, v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-lt v13, v14, :cond_21

    move-object v14, v6

    move-object v15, v9

    move-object v6, v5

    move-object v5, v10

    .line 476
    :goto_3
    const/4 v10, 0x0

    .line 477
    const/4 v9, 0x0

    const/16 v17, 0x0

    .line 480
    if-nez v5, :cond_24

    move-object/from16 v4, v17

    move/from16 v18, v10

    move/from16 v17, v9

    .line 614
    :goto_4
    if-eqz v18, :cond_59

    move-object/from16 v6, v16

    .line 732
    :cond_5
    if-eqz p4, :cond_76

    :cond_6
    move-object v9, v7

    move-object/from16 v16, v8

    move-object/from16 v10, p6

    move-object/from16 v7, p4

    .line 743
    :goto_5
    if-nez v18, :cond_79

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p2

    .line 773
    :try_start_2
    invoke-virtual/range {v4 .. v10}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;[I)Z

    move-result v4

    .line 774
    if-eqz v4, :cond_7f

    .line 781
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v5, 0x11

    if-eq v4, v5, :cond_81

    .line 786
    :cond_7
    :goto_6
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v5, 0x10

    if-eq v4, v5, :cond_82

    .line 790
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_83

    .line 795
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_84

    .line 796
    :cond_8
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "syntax error, unexpect token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v6

    invoke-static {v6}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 913
    :catchall_0
    move-exception v4

    move-object/from16 v8, v16

    move-object/from16 p4, v7

    .line 915
    :goto_7
    if-nez v8, :cond_a5

    .line 918
    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v4

    :cond_9
    const/16 v4, 0x10

    .line 371
    invoke-virtual {v11, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    const/4 v4, 0x0

    .line 372
    return-object v4

    .line 376
    :cond_a
    if-eqz v4, :cond_2

    .line 377
    iget-object v4, v4, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object v12, v4

    goto/16 :goto_0

    :cond_b
    const/16 v4, 0x10

    .line 385
    :try_start_3
    invoke-virtual {v11, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 386
    if-eqz p4, :cond_c

    :goto_9
    const/4 v4, 0x0

    .line 915
    if-nez v4, :cond_d

    .line 918
    :goto_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 389
    return-object p4

    .line 387
    :cond_c
    :try_start_4
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object p4

    goto :goto_9

    .line 916
    :cond_d
    move-object/from16 v0, p4

    iput-object v0, v6, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_a

    .line 393
    :cond_e
    :try_start_5
    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v4, v4, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 394
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v8, v8, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    and-int/2addr v8, v4

    if-eqz v8, :cond_10

    :cond_f
    const/4 v4, 0x1

    .line 398
    :goto_b
    if-eqz v4, :cond_3

    .line 399
    invoke-virtual/range {p0 .. p4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v4

    const/4 v5, 0x0

    .line 915
    if-nez v5, :cond_11

    .line 918
    :goto_c
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 399
    return-object v4

    .line 394
    :cond_10
    :try_start_6
    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    .line 395
    invoke-virtual {v11, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v8

    if-nez v8, :cond_f

    and-int v4, v4, p5

    if-nez v4, :cond_f

    const/4 v4, 0x0

    goto :goto_b

    .line 916
    :cond_11
    move-object/from16 v0, p4

    iput-object v0, v6, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_c

    :cond_12
    const/16 v4, 0x10

    .line 403
    if-eq v7, v4, :cond_4

    .line 404
    :try_start_7
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isBlankInput()Z

    move-result v4

    if-nez v4, :cond_15

    const/4 v4, 0x4

    .line 408
    if-eq v7, v4, :cond_17

    const/4 v4, 0x5

    .line 427
    if-eq v7, v4, :cond_1c

    :cond_13
    :goto_d
    const/16 v4, 0xe

    .line 431
    if-eq v7, v4, :cond_1d

    .line 437
    :cond_14
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "syntax error, expect {, actual "

    .line 438
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 439
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->tokenName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, ", pos "

    .line 440
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 441
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 443
    move-object/from16 v0, p3

    instance-of v5, v0, Ljava/lang/String;

    if-nez v5, :cond_1f

    :goto_e
    const-string/jumbo v5, ", fastjson-version "

    .line 449
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v7, "1.2.47"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 913
    :catchall_1
    move-exception v4

    move-object v8, v6

    goto/16 :goto_7

    :cond_15
    const/4 v4, 0x0

    .line 915
    if-nez v4, :cond_16

    .line 918
    :goto_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    const/4 v4, 0x0

    .line 405
    return-object v4

    .line 916
    :cond_16
    move-object/from16 v0, p4

    iput-object v0, v6, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_f

    .line 409
    :cond_17
    :try_start_8
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v5

    .line 410
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_18

    .line 415
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz v4, :cond_13

    .line 416
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONType;->seeAlso()[Ljava/lang/Class;

    move-result-object v8

    array-length v9, v8

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v9, :cond_13

    aget-object v10, v8, v4

    const-class v13, Ljava/lang/Enum;

    .line 417
    invoke-virtual {v13, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-nez v13, :cond_1a

    .line 416
    :goto_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 411
    :cond_18
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 v4, 0x0

    .line 915
    if-nez v4, :cond_19

    .line 918
    :goto_12
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    const/4 v4, 0x0

    .line 412
    return-object v4

    .line 916
    :cond_19
    move-object/from16 v0, p4

    iput-object v0, v6, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_12

    .line 419
    :cond_1a
    :try_start_9
    invoke-static {v10, v5}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v4

    const/4 v5, 0x0

    .line 915
    if-nez v5, :cond_1b

    .line 918
    :goto_13
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 420
    return-object v4

    .line 916
    :cond_1b
    move-object/from16 v0, p4

    iput-object v0, v6, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_13

    .line 420
    :catch_0
    move-exception v10

    goto :goto_11

    .line 428
    :cond_1c
    :try_start_a
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCalendar()Ljava/util/Calendar;

    goto/16 :goto_d

    .line 431
    :cond_1d
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v4

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_14

    .line 432
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 433
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const/4 v4, 0x0

    .line 915
    if-nez v4, :cond_1e

    .line 918
    :goto_14
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    const/4 v4, 0x0

    .line 434
    return-object v4

    .line 916
    :cond_1e
    move-object/from16 v0, p4

    iput-object v0, v6, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_14

    :cond_1f
    :try_start_b
    const-string/jumbo v5, ", fieldName "

    .line 445
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 446
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_e

    :cond_20
    const/4 v4, 0x0

    .line 455
    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_1

    .line 467
    :cond_21
    :try_start_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v5, v5, v13

    .line 468
    iget-object v10, v5, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 469
    iget-object v9, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 470
    invoke-virtual {v10}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v6

    .line 471
    if-nez v6, :cond_23

    :cond_22
    move-object v14, v9

    move-object v15, v10

    goto/16 :goto_3

    :cond_23
    instance-of v14, v5, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    if-eqz v14, :cond_22

    .line 472
    move-object v0, v5

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->customDeserilizer:Z

    move-object v14, v9

    move-object v15, v10

    goto/16 :goto_3

    .line 481
    :cond_24
    iget-object v0, v15, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    move-object/from16 v18, v0

    .line 482
    if-nez v4, :cond_27

    .line 484
    :cond_25
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v14, v4, :cond_28

    .line 485
    :cond_26
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldInt([C)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 487
    iget v6, v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-gtz v6, :cond_2a

    .line 490
    iget v6, v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v17, -0x2

    move/from16 v0, v17

    if-eq v6, v0, :cond_2b

    move/from16 v17, v9

    move/from16 v18, v10

    goto/16 :goto_4

    .line 482
    :cond_27
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchField([C)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 483
    const/4 v10, 0x1

    move-object/from16 v4, v17

    move/from16 v18, v10

    move/from16 v17, v9

    goto/16 :goto_4

    :cond_28
    const-class v4, Ljava/lang/Integer;

    .line 484
    if-eq v14, v4, :cond_26

    .line 493
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v14, v4, :cond_2c

    .line 494
    :cond_29
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldLong([C)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 496
    iget v6, v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-gtz v6, :cond_2f

    .line 499
    iget v6, v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v17, -0x2

    move/from16 v0, v17

    if-eq v6, v0, :cond_30

    move/from16 v17, v9

    move/from16 v18, v10

    goto/16 :goto_4

    .line 488
    :cond_2a
    const/4 v10, 0x1

    .line 489
    const/4 v9, 0x1

    move/from16 v17, v9

    move/from16 v18, v10

    goto/16 :goto_4

    :cond_2b
    move-object v5, v7

    move-object v6, v8

    .line 459
    :goto_15
    add-int/lit8 v4, v13, 0x1

    move v13, v4

    move-object v7, v5

    move-object v8, v6

    goto/16 :goto_2

    :cond_2c
    const-class v4, Ljava/lang/Long;

    .line 493
    if-eq v14, v4, :cond_29

    const-class v4, Ljava/lang/String;

    .line 502
    if-eq v14, v4, :cond_31

    const-class v4, Ljava/util/Date;

    .line 511
    if-eq v14, v4, :cond_34

    :cond_2d
    const-class v4, Ljava/math/BigDecimal;

    .line 520
    if-eq v14, v4, :cond_37

    const-class v4, Ljava/math/BigInteger;

    .line 529
    if-eq v14, v4, :cond_3a

    .line 538
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v14, v4, :cond_3d

    .line 539
    :cond_2e
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldBoolean([C)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 541
    iget v6, v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-gtz v6, :cond_3f

    .line 544
    iget v6, v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v17, -0x2

    move/from16 v0, v17

    if-eq v6, v0, :cond_40

    move/from16 v17, v9

    move/from16 v18, v10

    goto/16 :goto_4

    .line 497
    :cond_2f
    const/4 v10, 0x1

    .line 498
    const/4 v9, 0x1

    move/from16 v17, v9

    move/from16 v18, v10

    goto/16 :goto_4

    :cond_30
    move-object v5, v7

    move-object v6, v8

    .line 500
    goto :goto_15

    .line 503
    :cond_31
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldString([C)Ljava/lang/String;

    move-result-object v4

    .line 505
    iget v6, v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-gtz v6, :cond_32

    .line 508
    iget v6, v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v17, -0x2

    move/from16 v0, v17

    if-eq v6, v0, :cond_33

    move/from16 v17, v9

    move/from16 v18, v10

    goto/16 :goto_4

    .line 506
    :cond_32
    const/4 v10, 0x1

    .line 507
    const/4 v9, 0x1

    move/from16 v17, v9

    move/from16 v18, v10

    goto/16 :goto_4

    :cond_33
    move-object v5, v7

    move-object v6, v8

    .line 509
    goto :goto_15

    .line 511
    :cond_34
    iget-object v4, v15, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    if-nez v4, :cond_2d

    .line 512
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldDate([C)Ljava/util/Date;

    move-result-object v4

    .line 514
    iget v6, v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-gtz v6, :cond_35

    .line 517
    iget v6, v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v17, -0x2

    move/from16 v0, v17

    if-eq v6, v0, :cond_36

    move/from16 v17, v9

    move/from16 v18, v10

    goto/16 :goto_4

    .line 515
    :cond_35
    const/4 v10, 0x1

    .line 516
    const/4 v9, 0x1

    move/from16 v17, v9

    move/from16 v18, v10

    goto/16 :goto_4

    :cond_36
    move-object v5, v7

    move-object v6, v8

    .line 518
    goto/16 :goto_15

    .line 521
    :cond_37
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldDecimal([C)Ljava/math/BigDecimal;

    move-result-object v4

    .line 523
    iget v6, v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-gtz v6, :cond_38

    .line 526
    iget v6, v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v17, -0x2

    move/from16 v0, v17

    if-eq v6, v0, :cond_39

    move/from16 v17, v9

    move/from16 v18, v10

    goto/16 :goto_4

    .line 524
    :cond_38
    const/4 v10, 0x1

    .line 525
    const/4 v9, 0x1

    move/from16 v17, v9

    move/from16 v18, v10

    goto/16 :goto_4

    :cond_39
    move-object v5, v7

    move-object v6, v8

    .line 527
    goto/16 :goto_15

    .line 530
    :cond_3a
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldBigInteger([C)Ljava/math/BigInteger;

    move-result-object v4

    .line 532
    iget v6, v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-gtz v6, :cond_3b

    .line 535
    iget v6, v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v17, -0x2

    move/from16 v0, v17

    if-eq v6, v0, :cond_3c

    move/from16 v17, v9

    move/from16 v18, v10

    goto/16 :goto_4

    .line 533
    :cond_3b
    const/4 v10, 0x1

    .line 534
    const/4 v9, 0x1

    move/from16 v17, v9

    move/from16 v18, v10

    goto/16 :goto_4

    :cond_3c
    move-object v5, v7

    move-object v6, v8

    .line 536
    goto/16 :goto_15

    :cond_3d
    const-class v4, Ljava/lang/Boolean;

    .line 538
    if-eq v14, v4, :cond_2e

    .line 547
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v14, v4, :cond_41

    .line 548
    :cond_3e
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldFloat([C)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 550
    iget v6, v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-gtz v6, :cond_43

    .line 553
    iget v6, v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v17, -0x2

    move/from16 v0, v17

    if-eq v6, v0, :cond_44

    move/from16 v17, v9

    move/from16 v18, v10

    goto/16 :goto_4

    .line 542
    :cond_3f
    const/4 v10, 0x1

    .line 543
    const/4 v9, 0x1

    move/from16 v17, v9

    move/from16 v18, v10

    goto/16 :goto_4

    :cond_40
    move-object v5, v7

    move-object v6, v8

    .line 545
    goto/16 :goto_15

    :cond_41
    const-class v4, Ljava/lang/Float;

    .line 547
    if-eq v14, v4, :cond_3e

    .line 556
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v14, v4, :cond_45

    .line 557
    :cond_42
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldDouble([C)D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 559
    iget v6, v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-gtz v6, :cond_47

    .line 562
    iget v6, v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v17, -0x2

    move/from16 v0, v17

    if-eq v6, v0, :cond_48

    move/from16 v17, v9

    move/from16 v18, v10

    goto/16 :goto_4

    .line 551
    :cond_43
    const/4 v10, 0x1

    .line 552
    const/4 v9, 0x1

    move/from16 v17, v9

    move/from16 v18, v10

    goto/16 :goto_4

    :cond_44
    move-object v5, v7

    move-object v6, v8

    .line 554
    goto/16 :goto_15

    :cond_45
    const-class v4, Ljava/lang/Double;

    .line 556
    if-eq v14, v4, :cond_42

    .line 565
    invoke-virtual {v14}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-nez v4, :cond_49

    :cond_46
    :goto_16
    const-class v4, [I

    .line 580
    if-eq v14, v4, :cond_4f

    const-class v4, [F

    .line 589
    if-eq v14, v4, :cond_52

    const-class v4, [[F

    .line 598
    if-eq v14, v4, :cond_55

    .line 607
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchField([C)Z

    move-result v4

    if-nez v4, :cond_58

    move-object v5, v7

    move-object v6, v8

    goto/16 :goto_15

    .line 560
    :cond_47
    const/4 v10, 0x1

    .line 561
    const/4 v9, 0x1

    move/from16 v17, v9

    move/from16 v18, v10

    goto/16 :goto_4

    :cond_48
    move-object v5, v7

    move-object v6, v8

    .line 563
    goto/16 :goto_15

    .line 566
    :cond_49
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v4

    instance-of v4, v4, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    if-eqz v4, :cond_46

    if-nez v6, :cond_4b

    .line 569
    :cond_4a
    instance-of v4, v5, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    if-nez v4, :cond_4c

    move-object/from16 v4, v17

    move/from16 v18, v10

    move/from16 v17, v9

    goto/16 :goto_4

    .line 567
    :cond_4b
    invoke-interface {v6}, Lcom/alibaba/fastjson/annotation/JSONField;->deserializeUsing()Ljava/lang/Class;

    move-result-object v4

    const-class v6, Ljava/lang/Void;

    if-eq v4, v6, :cond_4a

    goto :goto_16

    .line 570
    :cond_4c
    move-object v0, v5

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    move-object v4, v0

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 571
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v11, v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->scanEnum(Lcom/alibaba/fastjson/parser/JSONLexerBase;[CLcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)Ljava/lang/Enum;

    move-result-object v17

    .line 573
    iget v4, v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-gtz v4, :cond_4d

    .line 576
    iget v4, v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v6, -0x2

    if-eq v4, v6, :cond_4e

    move v4, v9

    move v6, v10

    :goto_17
    move/from16 v18, v6

    move/from16 v24, v4

    move-object/from16 v4, v17

    move/from16 v17, v24

    .line 579
    goto/16 :goto_4

    .line 574
    :cond_4d
    const/4 v6, 0x1

    .line 575
    const/4 v4, 0x1

    goto :goto_17

    :cond_4e
    move-object v5, v7

    move-object v6, v8

    .line 577
    goto/16 :goto_15

    .line 581
    :cond_4f
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldIntArray([C)[I

    move-result-object v4

    .line 583
    iget v6, v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-gtz v6, :cond_50

    .line 586
    iget v6, v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v17, -0x2

    move/from16 v0, v17

    if-eq v6, v0, :cond_51

    move/from16 v17, v9

    move/from16 v18, v10

    goto/16 :goto_4

    .line 584
    :cond_50
    const/4 v10, 0x1

    .line 585
    const/4 v9, 0x1

    move/from16 v17, v9

    move/from16 v18, v10

    goto/16 :goto_4

    :cond_51
    move-object v5, v7

    move-object v6, v8

    .line 587
    goto/16 :goto_15

    .line 590
    :cond_52
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldFloatArray([C)[F

    move-result-object v4

    .line 592
    iget v6, v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-gtz v6, :cond_53

    .line 595
    iget v6, v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v17, -0x2

    move/from16 v0, v17

    if-eq v6, v0, :cond_54

    move/from16 v17, v9

    move/from16 v18, v10

    goto/16 :goto_4

    .line 593
    :cond_53
    const/4 v10, 0x1

    .line 594
    const/4 v9, 0x1

    move/from16 v17, v9

    move/from16 v18, v10

    goto/16 :goto_4

    :cond_54
    move-object v5, v7

    move-object v6, v8

    .line 596
    goto/16 :goto_15

    .line 599
    :cond_55
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldFloatArray2([C)[[F

    move-result-object v4

    .line 601
    iget v6, v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-gtz v6, :cond_56

    .line 604
    iget v6, v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v17, -0x2

    move/from16 v0, v17

    if-eq v6, v0, :cond_57

    move/from16 v17, v9

    move/from16 v18, v10

    goto/16 :goto_4

    .line 602
    :cond_56
    const/4 v10, 0x1

    .line 603
    const/4 v9, 0x1

    move/from16 v17, v9

    move/from16 v18, v10

    goto/16 :goto_4

    :cond_57
    move-object v5, v7

    move-object v6, v8

    .line 605
    goto/16 :goto_15

    .line 608
    :cond_58
    const/4 v10, 0x1

    move-object/from16 v4, v17

    move/from16 v18, v10

    move/from16 v17, v9

    goto/16 :goto_4

    .line 615
    :cond_59
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v11, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v6

    .line 617
    if-eqz v6, :cond_5d

    :cond_5a
    const-string/jumbo v9, "$ref"

    .line 630
    if-eq v9, v6, :cond_5f

    .line 692
    :cond_5b
    if-nez v20, :cond_6d

    :cond_5c
    sget-object v9, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    if-ne v9, v6, :cond_5

    :goto_18
    const/4 v4, 0x4

    .line 694
    invoke-virtual {v11, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithColon(I)V

    .line 695
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_6e

    .line 727
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v5, "syntax error"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 913
    :catchall_2
    move-exception v4

    goto/16 :goto_7

    .line 618
    :cond_5d
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v9

    const/16 v10, 0xd

    .line 619
    if-eq v9, v10, :cond_5e

    const/16 v10, 0x10

    .line 623
    if-ne v9, v10, :cond_5a

    .line 624
    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v11, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v9

    if-eqz v9, :cond_5a

    move-object v5, v7

    move-object v6, v8

    .line 625
    goto/16 :goto_15

    :cond_5e
    const/16 v4, 0x10

    .line 620
    invoke-virtual {v11, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-object v9, v7

    move-object v6, v8

    .line 800
    :goto_19
    if-eqz p4, :cond_85

    .line 900
    :goto_1a
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 901
    if-eqz v4, :cond_a2

    const/4 v5, 0x0

    .line 908
    :try_start_e
    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p4

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-result-object v4

    .line 915
    if-nez v6, :cond_a4

    .line 918
    :goto_1b
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 913
    return-object v4

    .line 630
    :cond_5f
    if-eqz v12, :cond_5b

    const/4 v4, 0x4

    .line 631
    :try_start_f
    invoke-virtual {v11, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithColon(I)V

    .line 632
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/4 v5, 0x4

    .line 633
    if-eq v4, v5, :cond_60

    .line 678
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "illegal ref, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 634
    :cond_60
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "@"

    .line 635
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_61

    const-string/jumbo v5, ".."

    .line 637
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_62

    const-string/jumbo v5, "$"

    .line 645
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_64

    const/16 v5, 0x5c

    .line 658
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gtz v5, :cond_67

    move-object v5, v4

    .line 669
    :goto_1c
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 670
    if-nez v4, :cond_6a

    .line 673
    new-instance v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v4, v12, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v4, 0x1

    .line 674
    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    :goto_1d
    const/16 v4, 0xd

    .line 681
    invoke-virtual {v11, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 682
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_6b

    const/16 v4, 0x10

    .line 685
    invoke-virtual {v11, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 687
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v12, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 915
    if-nez v8, :cond_6c

    .line 918
    :goto_1e
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 689
    return-object p4

    .line 636
    :cond_61
    :try_start_10
    iget-object v0, v12, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 p4, v0

    goto :goto_1d

    .line 638
    :cond_62
    iget-object v5, v12, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 639
    iget-object v6, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-nez v6, :cond_63

    .line 642
    new-instance v6, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v6, v5, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v4, 0x1

    .line 643
    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_1d

    .line 640
    :cond_63
    iget-object v0, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 p4, v0

    goto :goto_1d

    :cond_64
    move-object v5, v12

    .line 647
    :goto_1f
    iget-object v6, v5, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-nez v6, :cond_65

    .line 651
    iget-object v6, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-nez v6, :cond_66

    .line 654
    new-instance v6, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v6, v5, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v4, 0x1

    .line 655
    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_1d

    .line 648
    :cond_65
    iget-object v5, v5, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_1f

    .line 652
    :cond_66
    iget-object v0, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 p4, v0

    goto :goto_1d

    .line 659
    :cond_67
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    .line 660
    :goto_20
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v6, v5, :cond_68

    .line 667
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    goto/16 :goto_1c

    .line 661
    :cond_68
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v9, 0x5c

    .line 662
    if-eq v5, v9, :cond_69

    .line 665
    :goto_21
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 660
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    .line 663
    :cond_69
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_21

    :cond_6a
    move-object/from16 p4, v4

    .line 671
    goto/16 :goto_1d

    .line 683
    :cond_6b
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v5, "illegal ref"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 916
    :cond_6c
    move-object/from16 v0, p4

    iput-object v0, v8, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_1e

    .line 692
    :cond_6d
    :try_start_11
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5c

    goto/16 :goto_18

    .line 696
    :cond_6e
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v6

    const/16 v4, 0x10

    .line 697
    invoke-virtual {v11, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 699
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 700
    :cond_6f
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_72

    move-object v5, v7

    move-object v6, v8

    goto/16 :goto_15

    .line 699
    :cond_70
    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->IgnoreAutoType:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v4

    if-nez v4, :cond_6f

    .line 708
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4, v6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v5

    const/4 v4, 0x0

    .line 711
    if-eqz v5, :cond_73

    move-object/from16 v24, v4

    move-object v4, v5

    move-object/from16 v5, v24

    .line 717
    :goto_22
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v4, v0, v5, v1}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 718
    instance-of v7, v4, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-nez v7, :cond_74

    .line 915
    :cond_71
    :goto_23
    if-nez v8, :cond_75

    .line 918
    :goto_24
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 725
    return-object v5

    .line 701
    :cond_72
    :try_start_12
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    move-object v9, v7

    move-object v6, v8

    .line 702
    goto/16 :goto_19

    .line 712
    :cond_73
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    .line 713
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getFeatures()I

    move-result v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v4, v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v4

    .line 714
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v5

    move-object/from16 v24, v4

    move-object v4, v5

    move-object/from16 v5, v24

    goto :goto_22

    .line 719
    :cond_74
    check-cast v4, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 720
    if-eqz v20, :cond_71

    .line 721
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v4

    .line 722
    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto :goto_23

    .line 916
    :cond_75
    move-object/from16 v0, p4

    iput-object v0, v8, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_24

    .line 732
    :cond_76
    if-nez v7, :cond_6

    .line 733
    :try_start_13
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p4

    .line 734
    if-eqz p4, :cond_77

    .line 737
    :goto_25
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v12, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v8

    .line 738
    if-eqz p6, :cond_78

    move-object v9, v7

    move-object/from16 v16, v8

    move-object/from16 v10, p6

    move-object/from16 v7, p4

    goto/16 :goto_5

    .line 735
    :cond_77
    new-instance v7, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v9, v9

    invoke-direct {v7, v9}, Ljava/util/HashMap;-><init>(I)V

    goto :goto_25

    .line 739
    :cond_78
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v9, v9

    div-int/lit8 v9, v9, 0x20

    add-int/lit8 v9, v9, 0x1

    new-array v0, v9, [I

    move-object/from16 p6, v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    move-object v9, v7

    move-object/from16 v16, v8

    move-object/from16 v10, p6

    move-object/from16 v7, p4

    goto/16 :goto_5

    .line 744
    :cond_79
    if-eqz v17, :cond_7b

    .line 747
    if-eqz v7, :cond_7c

    .line 749
    if-eqz v4, :cond_7d

    .line 759
    :try_start_14
    invoke-virtual {v5, v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 762
    :cond_7a
    :goto_26
    if-nez v10, :cond_7e

    .line 768
    :goto_27
    iget v4, v11, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_7

    move-object/from16 v6, v16

    move-object/from16 p4, v7

    .line 769
    goto/16 :goto_19

    .line 745
    :cond_7b
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v5, v0, v7, v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    goto/16 :goto_6

    .line 748
    :cond_7c
    iget-object v5, v15, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v9, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 750
    :cond_7d
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v14, v6, :cond_7a

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v14, v6, :cond_7a

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v14, v6, :cond_7a

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v14, v6, :cond_7a

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v14, v6, :cond_7a

    .line 756
    invoke-virtual {v5, v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_26

    .line 763
    :cond_7e
    div-int/lit8 v4, v13, 0x20

    .line 764
    rem-int/lit8 v5, v13, 0x20

    .line 765
    aget v6, v10, v4

    const/4 v8, 0x1

    shr-int v5, v8, v5

    or-int/2addr v5, v6

    aput v5, v10, v4

    goto :goto_27

    .line 775
    :cond_7f
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_80

    move-object v5, v9

    move-object/from16 v6, v16

    move-object/from16 p6, v10

    move-object/from16 p4, v7

    goto/16 :goto_15

    .line 776
    :cond_80
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    move-object/from16 v6, v16

    move-object/from16 p4, v7

    .line 777
    goto/16 :goto_19

    .line 782
    :cond_81
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v5, "syntax error, unexpect token \':\'"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_82
    move-object v5, v9

    move-object/from16 v6, v16

    move-object/from16 p6, v10

    move-object/from16 p4, v7

    .line 787
    goto/16 :goto_15

    :cond_83
    const/16 v4, 0x10

    .line 791
    invoke-virtual {v11, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    move-object/from16 v6, v16

    move-object/from16 p4, v7

    .line 792
    goto/16 :goto_19

    .line 795
    :cond_84
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_8

    move-object v5, v9

    move-object/from16 v6, v16

    move-object/from16 p6, v10

    move-object/from16 p4, v7

    goto/16 :goto_15

    .line 801
    :cond_85
    if-eqz v9, :cond_87

    .line 809
    :try_start_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v8, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    .line 811
    if-nez v8, :cond_8a

    .line 842
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v10, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 843
    array-length v11, v10

    .line 844
    new-array v4, v11, [Ljava/lang/Object;

    const/4 v5, 0x0

    move v7, v5

    .line 845
    :goto_28
    if-lt v7, v11, :cond_95

    .line 873
    :goto_29
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    if-nez v5, :cond_9f

    .line 889
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-nez v5, :cond_a1

    .line 897
    :cond_86
    :goto_2a
    move-object/from16 v0, p4

    iput-object v0, v6, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto/16 :goto_1a

    .line 913
    :catchall_3
    move-exception v4

    move-object v8, v6

    goto/16 :goto_7

    .line 802
    :cond_87
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    move-result-object p4

    .line 803
    if-eqz v6, :cond_88

    move-object v4, v6

    .line 915
    :goto_2b
    if-nez v4, :cond_89

    .line 918
    :goto_2c
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 806
    return-object p4

    .line 804
    :cond_88
    :try_start_16
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v12, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    move-result-object v4

    goto :goto_2b

    .line 916
    :cond_89
    move-object/from16 v0, p4

    iput-object v0, v4, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_2c

    .line 812
    :cond_8a
    :try_start_17
    array-length v4, v8

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 813
    :goto_2d
    array-length v7, v8

    if-lt v4, v7, :cond_8b

    move-object v4, v5

    goto :goto_29

    .line 814
    :cond_8b
    aget-object v7, v8, v4

    .line 816
    invoke-interface {v9, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 817
    if-eqz v7, :cond_8d

    .line 839
    :cond_8c
    :goto_2e
    aput-object v7, v5, v4

    .line 813
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 818
    :cond_8d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v10, v10, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    aget-object v10, v10, v4

    .line 819
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v11, v11, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v11, v11, v4

    .line 820
    sget-object v13, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v10, v13, :cond_8e

    .line 822
    sget-object v13, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v10, v13, :cond_8f

    .line 824
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v10, v13, :cond_90

    .line 826
    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v10, v13, :cond_91

    .line 828
    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v10, v13, :cond_92

    .line 830
    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v10, v13, :cond_93

    .line 832
    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v10, v13, :cond_94

    const-class v13, Ljava/lang/String;

    .line 834
    if-ne v10, v13, :cond_8c

    iget v10, v11, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v11, v11, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_8c

    const-string/jumbo v7, ""

    goto :goto_2e

    .line 821
    :cond_8e
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    goto :goto_2e

    .line 823
    :cond_8f
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    goto :goto_2e

    :cond_90
    const/4 v7, 0x0

    .line 825
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_2e

    :cond_91
    const-wide/16 v10, 0x0

    .line 827
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_2e

    :cond_92
    const/4 v7, 0x0

    .line 829
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    goto :goto_2e

    :cond_93
    const-wide/16 v10, 0x0

    .line 831
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    goto :goto_2e

    .line 833
    :cond_94
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2e

    .line 846
    :cond_95
    aget-object v13, v10, v7

    .line 847
    iget-object v5, v13, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 848
    if-eqz v5, :cond_97

    .line 869
    :cond_96
    :goto_2f
    aput-object v5, v4, v7

    .line 845
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto/16 :goto_28

    .line 849
    :cond_97
    iget-object v14, v13, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 850
    sget-object v15, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v14, v15, :cond_98

    .line 852
    sget-object v15, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v14, v15, :cond_99

    .line 854
    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v14, v15, :cond_9a

    .line 856
    sget-object v15, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v14, v15, :cond_9b

    .line 858
    sget-object v15, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v14, v15, :cond_9c

    .line 860
    sget-object v15, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v14, v15, :cond_9d

    .line 862
    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v14, v15, :cond_9e

    const-class v15, Ljava/lang/String;

    .line 864
    if-ne v14, v15, :cond_96

    iget v13, v13, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    sget-object v14, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v14, v14, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v13, v14

    if-eqz v13, :cond_96

    const-string/jumbo v5, ""

    goto :goto_2f

    .line 851
    :cond_98
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    goto :goto_2f

    .line 853
    :cond_99
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    goto :goto_2f

    :cond_9a
    const/4 v5, 0x0

    .line 855
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2f

    :cond_9b
    const-wide/16 v14, 0x0

    .line 857
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_2f

    :cond_9c
    const/4 v5, 0x0

    .line 859
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto :goto_2f

    :cond_9d
    const-wide/16 v14, 0x0

    .line 861
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto :goto_2f

    .line 863
    :cond_9e
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    goto :goto_2f

    .line 875
    :cond_9f
    :try_start_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    move-result-object p4

    .line 881
    if-eqz v8, :cond_86

    .line 882
    :try_start_19
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a0
    :goto_30
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_86

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 883
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v5

    .line 884
    if-eqz v5, :cond_a0

    .line 885
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v5, v0, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_30

    .line 879
    :catch_1
    move-exception v4

    .line 877
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "create instance error, "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 878
    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    .line 891
    :cond_a1
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_2
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    move-result-object p4

    goto/16 :goto_2a

    .line 894
    :catch_2
    move-exception v4

    .line 893
    :try_start_1b
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "create factory method error, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    .line 915
    :cond_a2
    if-nez v6, :cond_a3

    .line 918
    :goto_31
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 902
    return-object p4

    .line 916
    :cond_a3
    move-object/from16 v0, p4

    iput-object v0, v6, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_31

    .line 911
    :catch_3
    move-exception v4

    .line 910
    :try_start_1c
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v7, "build object error"

    invoke-direct {v5, v7, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    .line 916
    :cond_a4
    move-object/from16 v0, p4

    iput-object v0, v6, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto/16 :goto_1b

    :cond_a5
    move-object/from16 v0, p4

    iput-object v0, v8, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto/16 :goto_8
.end method

.method public deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 277
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 281
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    const/4 v0, 0x0

    .line 283
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v5, v1

    move v2, v0

    :goto_0
    if-lt v2, v5, :cond_2

    :cond_0
    const/16 v0, 0x10

    .line 340
    invoke-interface {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 342
    return-object v4

    .line 278
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_2
    add-int/lit8 v0, v5, -0x1

    if-eq v2, v0, :cond_4

    const/16 v0, 0x2c

    .line 285
    :goto_1
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v1, v1, v2

    .line 286
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 287
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v6, v7, :cond_5

    const-class v7, Ljava/lang/String;

    .line 290
    if-eq v6, v7, :cond_6

    .line 293
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v6, v7, :cond_7

    .line 296
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v7

    if-nez v7, :cond_8

    .line 312
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v6, v7, :cond_d

    .line 315
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v6, v7, :cond_e

    .line 318
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v6, v7, :cond_f

    const-class v7, Ljava/util/Date;

    .line 321
    if-eq v6, v7, :cond_10

    :cond_3
    const-class v7, Ljava/math/BigDecimal;

    .line 324
    if-eq v6, v7, :cond_11

    const/16 v6, 0xe

    .line 328
    invoke-interface {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 329
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    iget-object v7, v1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 330
    invoke-virtual {v1, v4, v6}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 332
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v6, 0xf

    if-eq v1, v6, :cond_0

    const/16 v1, 0x5d

    .line 336
    if-eq v0, v1, :cond_12

    const/16 v0, 0x10

    :goto_2
    invoke-virtual {p0, v3, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->check(Lcom/alibaba/fastjson/parser/JSONLexer;I)V

    .line 283
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    const/16 v0, 0x5d

    .line 284
    goto :goto_1

    .line 288
    :cond_5
    invoke-interface {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanInt(C)I

    move-result v0

    .line 289
    invoke-virtual {v1, v4, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;I)V

    goto :goto_3

    .line 291
    :cond_6
    invoke-interface {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString(C)Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-virtual {v1, v4, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 294
    :cond_7
    invoke-interface {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLong(C)J

    move-result-wide v6

    .line 295
    invoke-virtual {v1, v4, v6, v7}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;J)V

    goto :goto_3

    .line 297
    :cond_8
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v7

    const/16 v8, 0x22

    .line 300
    if-ne v7, v8, :cond_a

    .line 301
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v7

    invoke-interface {v3, v6, v7, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanEnum(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/Enum;

    move-result-object v0

    .line 311
    :goto_4
    invoke-virtual {v1, v4, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_a
    const/16 v8, 0x6e

    .line 300
    if-eq v7, v8, :cond_9

    const/16 v6, 0x30

    .line 302
    if-ge v7, v6, :cond_c

    .line 308
    :cond_b
    invoke-virtual {p0, v3, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->scanEnum(Lcom/alibaba/fastjson/parser/JSONLexer;C)Ljava/lang/Enum;

    move-result-object v0

    goto :goto_4

    :cond_c
    const/16 v6, 0x39

    .line 302
    if-gt v7, v6, :cond_b

    .line 303
    invoke-interface {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanInt(C)I

    move-result v6

    move-object v0, v1

    .line 305
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->getFieldValueDeserilizer(Lcom/alibaba/fastjson/parser/ParserConfig;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    .line 306
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->valueOf(I)Ljava/lang/Enum;

    move-result-object v0

    goto :goto_4

    .line 313
    :cond_d
    invoke-interface {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanBoolean(C)Z

    move-result v0

    .line 314
    invoke-virtual {v1, v4, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Z)V

    goto :goto_3

    .line 316
    :cond_e
    invoke-interface {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFloat(C)F

    move-result v0

    .line 317
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 319
    :cond_f
    invoke-interface {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanDouble(C)D

    move-result-wide v6

    .line 320
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 321
    :cond_10
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v7

    const/16 v8, 0x31

    if-ne v7, v8, :cond_3

    .line 322
    invoke-interface {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLong(C)J

    move-result-wide v6

    .line 323
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 325
    :cond_11
    invoke-interface {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanDecimal(C)Ljava/math/BigDecimal;

    move-result-object v0

    .line 326
    invoke-virtual {v1, v4, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_12
    const/16 v0, 0xf

    .line 336
    goto/16 :goto_2
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/16 v0, 0xc

    .line 1153
    return v0
.end method

.method public getFieldDeserializer(J)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 9

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 121
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    if-eqz v0, :cond_0

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 131
    if-ltz v0, :cond_2

    .line 135
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArrayMapping:[S

    if-eqz v2, :cond_3

    .line 148
    :goto_1
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArrayMapping:[S

    aget-short v0, v1, v0

    .line 149
    if-ne v0, v7, :cond_6

    .line 153
    return-object v6

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v0, v0

    new-array v2, v0, [J

    move v0, v1

    .line 123
    :goto_2
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v3, v3

    if-lt v0, v3, :cond_1

    .line 126
    invoke-static {v2}, Ljava/util/Arrays;->sort([J)V

    .line 127
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    goto :goto_0

    .line 124
    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 132
    :cond_2
    return-object v6

    .line 136
    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    array-length v2, v2

    new-array v2, v2, [S

    .line 137
    invoke-static {v2, v7}, Ljava/util/Arrays;->fill([SS)V

    .line 138
    :goto_3
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v3, v3

    if-lt v1, v3, :cond_4

    .line 145
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArrayMapping:[S

    goto :goto_1

    .line 139
    :cond_4
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 140
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v4

    .line 139
    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    .line 141
    if-gez v3, :cond_5

    .line 138
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 142
    :cond_5
    int-to-short v4, v1

    int-to-short v4, v4

    aput-short v4, v2, v3

    goto :goto_4

    .line 150
    :cond_6
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    return-object v0
.end method

.method public getFieldDeserializer(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 86
    if-eqz p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 93
    :goto_0
    if-le v1, v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    if-nez v0, :cond_5

    .line 117
    return-object v4

    .line 87
    :cond_0
    return-object v4

    .line 94
    :cond_1
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 96
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 98
    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 100
    if-ltz v3, :cond_2

    .line 102
    if-gtz v3, :cond_3

    .line 105
    invoke-static {v2, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->isSetFlag(I[I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 109
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v0, v0, v2

    return-object v0

    .line 101
    :cond_2
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 103
    :cond_3
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 106
    :cond_4
    return-object v4

    .line 114
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    return-object v0
.end method

.method public getFieldType(I)Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method protected getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 1289
    iget-object v1, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz v1, :cond_0

    .line 1293
    iget-object v1, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONType;->seeAlso()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 1310
    return-object v6

    .line 1290
    :cond_0
    return-object v6

    .line 1293
    :cond_1
    aget-object v0, v2, v1

    .line 1294
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 1295
    instance-of v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-nez v4, :cond_3

    .line 1293
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1296
    :cond_3
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 1298
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    .line 1299
    iget-object v5, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1303
    invoke-virtual {p0, p1, v4, p3}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v0

    .line 1304
    if-eqz v0, :cond_2

    .line 1305
    return-object v0

    .line 1300
    :cond_4
    return-object v0
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 943
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;[I)Z

    move-result v0

    return v0
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;[I)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[I)Z"
        }
    .end annotation

    .prologue
    .line 948
    iget-object v12, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 950
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->DisableFieldSmartMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 952
    invoke-interface {v12, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 953
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v3

    move-object v4, v3

    .line 958
    :goto_0
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->SupportNonPublicField:Lcom/alibaba/fastjson/parser/Feature;

    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 959
    if-eqz v4, :cond_4

    move-object v5, v4

    .line 995
    :goto_1
    if-eqz v5, :cond_f

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 1063
    :goto_2
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v6, v6

    if-lt v3, v6, :cond_18

    move v3, v4

    :cond_1
    const/4 v4, -0x1

    .line 1069
    if-ne v3, v4, :cond_19

    .line 1076
    :cond_2
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->getFastMatchToken()I

    move-result v3

    invoke-interface {v12, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 1078
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v5, p1, v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 1080
    const/4 v3, 0x1

    return v3

    .line 952
    :cond_3
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 955
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v3

    move-object v4, v3

    goto :goto_0

    .line 960
    :cond_4
    invoke-interface {v12, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 962
    :cond_5
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v3, :cond_7

    .line 981
    :goto_3
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 982
    if-nez v3, :cond_d

    move-object v5, v4

    goto :goto_1

    .line 960
    :cond_6
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v5, v5, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    and-int/2addr v3, v5

    if-nez v3, :cond_5

    move-object v5, v4

    goto :goto_1

    .line 963
    :cond_7
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x1

    const/high16 v5, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v6, v3, v5, v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 964
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    :goto_4
    move-object v5, v3

    if-nez v5, :cond_9

    .line 978
    :cond_8
    iput-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    goto :goto_3

    :cond_9
    const-class v3, Ljava/lang/Object;

    .line 964
    if-eq v5, v3, :cond_8

    .line 965
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    .line 966
    array-length v8, v7

    const/4 v3, 0x0

    :goto_5
    if-lt v3, v8, :cond_a

    .line 964
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_4

    .line 966
    :cond_a
    aget-object v9, v7, v3

    .line 967
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    .line 968
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v11

    if-nez v11, :cond_b

    .line 971
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v11

    .line 972
    and-int/lit8 v13, v11, 0x10

    if-eqz v13, :cond_c

    .line 966
    :cond_b
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 972
    :cond_c
    and-int/lit8 v11, v11, 0x8

    if-nez v11, :cond_b

    .line 975
    invoke-virtual {v6, v10, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 983
    :cond_d
    instance-of v4, v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    if-nez v4, :cond_e

    move-object v8, v3

    .line 986
    check-cast v8, Ljava/lang/reflect/Field;

    .line 987
    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 988
    new-instance v3, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 989
    new-instance v4, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-direct {v4, v5, v6, v3}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 990
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p2

    invoke-interface {v3, v0, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v4

    goto/16 :goto_1

    .line 984
    :cond_e
    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-object v5, v3

    goto/16 :goto_1

    .line 996
    :cond_f
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v12, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1000
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v9, v8

    const/4 v3, 0x0

    move v7, v3

    :goto_7
    if-lt v7, v9, :cond_11

    .line 1057
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseExtra(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1059
    const/4 v3, 0x0

    return v3

    .line 997
    :cond_10
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setter not found, class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", property "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1000
    :cond_11
    aget-object v4, v8, v7

    .line 1001
    iget-object v10, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1002
    iget-boolean v3, v10, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-nez v3, :cond_13

    .line 1000
    :cond_12
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto :goto_7

    .line 1002
    :cond_13
    instance-of v3, v4, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    if-eqz v3, :cond_12

    .line 1004
    iget-object v3, v10, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-nez v3, :cond_14

    .line 1044
    iget-object v3, v10, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_12

    .line 1045
    invoke-interface {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    .line 1046
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1048
    :try_start_0
    iget-object v4, v10, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1052
    const/4 v3, 0x1

    return v3

    :cond_14
    move-object v3, v4

    .line 1005
    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    .line 1006
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->getFieldValueDeserilizer(Lcom/alibaba/fastjson/parser/ParserConfig;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v6

    .line 1007
    instance-of v5, v6, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-nez v5, :cond_15

    .line 1025
    instance-of v3, v6, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    if-eqz v3, :cond_12

    .line 1026
    check-cast v6, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    .line 1030
    :try_start_1
    iget-object v3, v10, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 1031
    if-eqz v3, :cond_17

    .line 1036
    :goto_8
    invoke-interface {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    .line 1037
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1038
    move-object/from16 v0, p2

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1042
    const/4 v3, 0x1

    return v3

    :cond_15
    move-object v5, v6

    .line 1008
    check-cast v5, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 1009
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v11

    .line 1010
    if-eqz v11, :cond_12

    .line 1013
    :try_start_2
    iget-object v5, v10, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1014
    if-eqz v5, :cond_16

    move-object v4, v5

    .line 1018
    :goto_9
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->getFastMatchToken()I

    move-result v3

    invoke-interface {v12, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 1019
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {v11, p1, v4, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 1020
    const/4 v3, 0x1

    return v3

    .line 1015
    :cond_16
    check-cast v6, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    iget-object v5, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {v6, p1, v5}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .line 1016
    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    goto :goto_9

    .line 1020
    :catch_0
    move-exception v3

    .line 1022
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v5, "parse unwrapped field error."

    invoke-direct {v4, v5, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1032
    :cond_17
    :try_start_3
    iget-object v3, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->createMap(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v3

    .line 1033
    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_8

    .line 1041
    :catch_1
    move-exception v3

    .line 1040
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v5, "parse unwrapped field error."

    invoke-direct {v4, v5, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1051
    :catch_2
    move-exception v3

    .line 1050
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v5, "parse unwrapped field error."

    invoke-direct {v4, v5, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1064
    :cond_18
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v6, v6, v3

    if-eq v6, v5, :cond_1

    .line 1063
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 1069
    :cond_19
    if-eqz p6, :cond_2

    const-string/jumbo v4, "_"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1070
    move-object/from16 v0, p6

    invoke-static {v3, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->isSetFlag(I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1071
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseExtra(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1072
    const/4 v3, 0x0

    return v3
.end method

.method protected parseRest(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1274
    new-array v6, v0, [I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->parseRest(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected parseRest(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1283
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;

    move-result-object v0

    .line 1285
    return-object v0
.end method

.method protected scanEnum(Lcom/alibaba/fastjson/parser/JSONLexer;C)Ljava/lang/Enum;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/JSONLexer;",
            "C)",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 352
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "illegal enum. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected scanEnum(Lcom/alibaba/fastjson/parser/JSONLexerBase;[CLcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)Ljava/lang/Enum;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 924
    instance-of v1, p3, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    if-nez v1, :cond_0

    move-object p3, v0

    .line 928
    :goto_0
    if-eqz p3, :cond_1

    .line 933
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldSymbol([C)J

    move-result-wide v2

    .line 934
    iget v1, p1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-gtz v1, :cond_2

    .line 937
    return-object v0

    .line 925
    :cond_0
    check-cast p3, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 929
    iput v1, p1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 930
    return-object v0

    .line 935
    :cond_2
    invoke-virtual {p3, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->getEnumByHashCode(J)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1084
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    return-object v0
.end method

.method public smartMatch(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 12

    .prologue
    const/4 v10, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1088
    if-eqz p1, :cond_1

    .line 1092
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v2

    .line 1094
    if-eqz v2, :cond_2

    move-object v0, v2

    .line 1149
    :cond_0
    :goto_0
    return-object v0

    .line 1089
    :cond_1
    return-object v3

    .line 1095
    :cond_2
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64_lower(Ljava/lang/String;)J

    move-result-wide v4

    .line 1096
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    if-eqz v0, :cond_3

    .line 1106
    :goto_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v4

    .line 1108
    if-ltz v4, :cond_5

    move v0, v4

    move v4, v1

    .line 1113
    :goto_2
    if-gez v0, :cond_7

    move-object v0, v2

    .line 1135
    :goto_3
    if-eqz v0, :cond_0

    .line 1136
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1137
    iget v2, v1, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->DisableFieldSmartMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v5, v5, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v2, v5

    if-nez v2, :cond_d

    .line 1141
    iget-object v1, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1142
    if-eqz v4, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_0

    const-class v2, Ljava/lang/Boolean;

    if-eq v1, v2, :cond_0

    move-object v0, v3

    .line 1143
    goto :goto_0

    .line 1097
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v0, v0

    new-array v6, v0, [J

    move v0, v1

    .line 1098
    :goto_4
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v7, v7

    if-lt v0, v7, :cond_4

    .line 1101
    invoke-static {v6}, Ljava/util/Arrays;->sort([J)V

    .line 1102
    iput-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    goto :goto_1

    .line 1099
    :cond_4
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v7, v7, v0

    iget-object v7, v7, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64_lower(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v6, v0

    .line 1098
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    const-string/jumbo v0, "is"

    .line 1108
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    move v11, v0

    move v0, v4

    move v4, v11

    goto :goto_2

    :cond_6
    const/4 v4, 0x2

    .line 1109
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64_lower(Ljava/lang/String;)J

    move-result-wide v4

    .line 1110
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v4

    move v11, v0

    move v0, v4

    move v4, v11

    goto :goto_2

    .line 1114
    :cond_7
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArrayMapping:[S

    if-eqz v5, :cond_8

    .line 1127
    :goto_5
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArrayMapping:[S

    aget-short v0, v1, v0

    .line 1128
    if-ne v0, v10, :cond_b

    move-object v0, v2

    goto :goto_3

    .line 1115
    :cond_8
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    array-length v5, v5

    new-array v5, v5, [S

    .line 1116
    invoke-static {v5, v10}, Ljava/util/Arrays;->fill([SS)V

    .line 1117
    :goto_6
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v6, v6

    if-lt v1, v6, :cond_9

    .line 1124
    iput-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArrayMapping:[S

    goto :goto_5

    .line 1118
    :cond_9
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 1119
    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64_lower(Ljava/lang/String;)J

    move-result-wide v8

    .line 1118
    invoke-static {v6, v8, v9}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v6

    .line 1120
    if-gez v6, :cond_a

    .line 1117
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1121
    :cond_a
    int-to-short v7, v1

    int-to-short v7, v7

    aput-short v7, v5, v6

    goto :goto_7

    .line 1129
    :cond_b
    invoke-static {v0, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->isSetFlag(I[I)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object v0, v2

    goto/16 :goto_3

    .line 1130
    :cond_c
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v2, v1, v0

    move-object v0, v2

    goto/16 :goto_3

    .line 1138
    :cond_d
    return-object v3
.end method
