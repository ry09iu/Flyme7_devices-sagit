.class public Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
.source "ThrowableDeserializer.java"


# direct methods
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
    .line 22
    invoke-direct {p0, p1, p2, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 23
    return-void
.end method

.method private createException(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 165
    invoke-virtual {p3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v5

    array-length v6, v5

    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    :goto_0
    if-lt v4, v6, :cond_0

    .line 183
    if-nez v0, :cond_6

    .line 187
    if-nez v2, :cond_7

    .line 191
    if-nez v3, :cond_8

    const/4 v0, 0x0

    .line 195
    return-object v0

    .line 165
    :cond_0
    aget-object v1, v5, v4

    .line 166
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 167
    array-length v8, v7

    if-eqz v8, :cond_3

    .line 172
    array-length v8, v7

    const/4 v9, 0x1

    if-eq v8, v9, :cond_4

    .line 177
    :cond_1
    array-length v8, v7

    const/4 v9, 0x2

    if-eq v8, v9, :cond_5

    :cond_2
    move-object v1, v2

    move-object v2, v3

    .line 165
    :goto_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_0

    :cond_3
    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    .line 169
    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    .line 172
    aget-object v8, v7, v8

    const-class v9, Ljava/lang/String;

    if-ne v8, v9, :cond_1

    move-object v2, v3

    .line 174
    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    .line 177
    aget-object v8, v7, v8

    const-class v9, Ljava/lang/String;

    if-ne v8, v9, :cond_2

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const-class v8, Ljava/lang/Throwable;

    if-ne v7, v8, :cond_2

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    .line 179
    goto :goto_1

    :cond_6
    const/4 v1, 0x2

    .line 184
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    :cond_7
    const/4 v0, 0x1

    .line 188
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    :cond_8
    const/4 v0, 0x0

    .line 192
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
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
    .line 27
    iget-object v5, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 29
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    .line 34
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getResolveStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    .line 37
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_6

    :goto_0
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 45
    if-nez p2, :cond_7

    :cond_0
    move-object p2, v0

    :cond_1
    :goto_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 59
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_8

    :cond_3
    :goto_3
    const/4 v6, 0x4

    .line 73
    invoke-interface {v5, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 75
    sget-object v6, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string/jumbo v6, "message"

    .line 83
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string/jumbo v6, "cause"

    .line 92
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string/jumbo v6, "stackTrace"

    .line 94
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 97
    if-eqz v1, :cond_12

    .line 100
    :goto_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    .line 103
    :goto_5
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/16 v6, 0xd

    if-eq v4, v6, :cond_13

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 107
    goto :goto_2

    .line 30
    :cond_4
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/4 v0, 0x0

    .line 31
    return-object v0

    :cond_5
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto :goto_0

    .line 38
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_7
    instance-of v1, p2, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 46
    check-cast p2, Ljava/lang/Class;

    const-class v1, Ljava/lang/Throwable;

    .line 47
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object p2, v0

    goto :goto_1

    .line 62
    :cond_8
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/16 v7, 0xd

    if-eq v6, v7, :cond_9

    .line 66
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/16 v7, 0x10

    if-ne v6, v7, :cond_3

    .line 67
    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v5, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_3

    :cond_9
    const/16 v0, 0x10

    .line 63
    invoke-interface {v5, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 110
    :goto_6
    if-eqz p2, :cond_14

    const-class v0, Ljava/lang/Throwable;

    .line 113
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 118
    :try_start_0
    invoke-direct {p0, v3, v4, p2}, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;->createException(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 119
    if-eqz v0, :cond_16

    :goto_7
    move-object v3, v0

    .line 127
    :goto_8
    if-nez v2, :cond_17

    .line 131
    :goto_9
    if-nez v1, :cond_18

    .line 158
    :cond_a
    return-object v3

    .line 76
    :cond_b
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/4 v6, 0x4

    if-eq v0, v6, :cond_c

    .line 80
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_c
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v6

    const-class v7, Ljava/lang/Throwable;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->getFeatures()I

    move-result v8

    invoke-virtual {v6, v0, v7, v8}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object p2

    const/16 v0, 0x10

    .line 82
    invoke-interface {v5, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_5

    .line 84
    :cond_d
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_e

    .line 86
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_f

    .line 89
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/4 v0, 0x0

    .line 91
    :goto_a
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move-object v3, v4

    move-object v9, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v9

    goto/16 :goto_5

    .line 87
    :cond_f
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_10
    const-string/jumbo v0, "cause"

    const/4 v4, 0x0

    .line 93
    invoke-virtual {p0, p1, v4, v0}, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    move-object v9, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v9

    goto/16 :goto_5

    :cond_11
    const-class v0, [Ljava/lang/StackTraceElement;

    .line 95
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    move-object v2, v3

    move-object v3, v4

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_5

    .line 98
    :cond_12
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto/16 :goto_4

    :cond_13
    const/16 v4, 0x10

    .line 104
    invoke-interface {v5, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 105
    goto/16 :goto_6

    .line 111
    :cond_14
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v0

    goto/16 :goto_8

    .line 114
    :cond_15
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type not match, not Throwable. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_16
    :try_start_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    .line 124
    :catch_0
    move-exception v0

    .line 123
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "create instance error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 128
    :cond_17
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    goto/16 :goto_9

    :cond_18
    const/4 v2, 0x0

    .line 134
    if-nez p2, :cond_1b

    move-object p0, v2

    .line 145
    :cond_19
    :goto_b
    if-eqz p0, :cond_a

    .line 146
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 147
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 148
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 150
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_1a

    .line 152
    invoke-virtual {v1, v3, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_c

    .line 135
    :cond_1b
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;->clazz:Ljava/lang/Class;

    if-eq p2, v0, :cond_19

    .line 138
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 139
    instance-of v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-nez v4, :cond_1c

    move-object p0, v2

    goto :goto_b

    .line 140
    :cond_1c
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-object p0, v0

    goto :goto_b
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/16 v0, 0xc

    .line 199
    return v0
.end method
