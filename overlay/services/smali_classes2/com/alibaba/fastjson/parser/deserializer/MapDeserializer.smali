.class public Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;
.super Ljava/lang/Object;
.source "MapDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseMap(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/16 v10, 0xd

    const/16 v9, 0x10

    const/4 v8, 0x4

    .line 219
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 221
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v3, 0xc

    if-ne v1, v3, :cond_4

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    .line 226
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v4

    .line 227
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v1

    invoke-interface {v2, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 229
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v1

    .line 232
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-eq v5, v10, :cond_5

    .line 237
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-eq v5, v8, :cond_6

    .line 276
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    if-eqz v5, :cond_c

    :cond_3
    :goto_1
    const/4 v5, 0x0

    .line 289
    invoke-interface {v3, p0, p2, v5}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 291
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/16 v7, 0x11

    if-ne v6, v7, :cond_e

    .line 295
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v6

    invoke-interface {v2, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 297
    invoke-interface {v4, p0, p3, v5}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 298
    invoke-virtual {p0, p1, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkMapResolve(Ljava/util/Map;Ljava/lang/Object;)V

    .line 300
    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v9, :cond_1

    .line 303
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v5

    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 308
    :catchall_0
    move-exception v0

    .line 307
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v0

    .line 221
    :cond_4
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-eq v1, v9, :cond_0

    .line 222
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "syntax error, expect {, actual "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/16 v0, 0x10

    .line 233
    :try_start_1
    invoke-interface {v2, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 310
    return-object p1

    .line 238
    :cond_6
    :try_start_2
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->isRef()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 239
    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v3, 0x4

    .line 243
    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 244
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    if-eq v3, v8, :cond_7

    .line 261
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "illegal ref, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_7
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ".."

    .line 246
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string/jumbo v4, "$"

    .line 249
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 257
    new-instance v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v4, v1, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v3, 0x1

    .line 258
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    :goto_2
    const/16 v3, 0xd

    .line 264
    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 265
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    if-ne v3, v10, :cond_b

    const/16 v3, 0x10

    .line 268
    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 273
    return-object v0

    .line 247
    :cond_8
    :try_start_3
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 248
    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_2

    :cond_9
    move-object v0, v1

    .line 251
    :goto_3
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-nez v3, :cond_a

    .line 255
    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_2

    .line 252
    :cond_a
    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_3

    .line 266
    :cond_b
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "illegal ref"

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_c
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v8, :cond_3

    sget-object v5, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 278
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 279
    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x4

    .line 280
    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    const/16 v5, 0x10

    .line 281
    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 282
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-eq v5, v10, :cond_d

    .line 286
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v5

    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_1

    .line 283
    :cond_d
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 307
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 284
    return-object p1

    .line 292
    :cond_e
    :try_start_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syntax error, expect :, actual "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static parseMap(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v9, 0x3a

    const/16 v8, 0x22

    const/4 v2, 0x0

    .line 70
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 72
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v0, 0xc

    .line 73
    if-ne v3, v0, :cond_2

    .line 97
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v5

    move v3, v2

    .line 100
    :goto_0
    :try_start_0
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 101
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v0

    .line 102
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v4, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 111
    :goto_1
    if-eq v0, v8, :cond_8

    const/16 v2, 0x7d

    .line 118
    if-eq v0, v2, :cond_a

    const/16 v2, 0x27

    .line 123
    if-eq v0, v2, :cond_b

    .line 135
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v4, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 139
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 141
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v2

    .line 142
    if-ne v2, v9, :cond_f

    move-object v2, v0

    .line 147
    :goto_2
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 148
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 149
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    .line 151
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 153
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    if-eq v2, v0, :cond_10

    .line 182
    :cond_0
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 184
    if-nez v3, :cond_16

    .line 188
    :goto_3
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v6, 0x8

    if-eq v0, v6, :cond_17

    .line 192
    invoke-virtual {p0, p2, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 195
    :goto_4
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkMapResolve(Ljava/util/Map;Ljava/lang/Object;)V

    .line 198
    invoke-virtual {p0, v5, v0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 199
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 201
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/16 v2, 0x14

    .line 202
    if-ne v0, v2, :cond_18

    .line 212
    :cond_1
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 203
    return-object p1

    .line 74
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "syntax error, expect {, actual "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    instance-of v1, p3, Ljava/lang/String;

    if-nez v1, :cond_4

    .line 79
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x4

    .line 82
    if-ne v3, v0, :cond_5

    .line 94
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fieldName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 83
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 84
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 86
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 87
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 88
    instance-of v2, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_3

    .line 89
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    return-object v0

    .line 104
    :cond_6
    :try_start_1
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 105
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 106
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v0

    :cond_7
    const/16 v2, 0x2c

    .line 103
    if-eq v0, v2, :cond_6

    goto/16 :goto_1

    .line 112
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v0

    const/16 v2, 0x22

    invoke-interface {v4, v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 114
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v2

    .line 115
    if-ne v2, v9, :cond_9

    move-object v2, v0

    goto/16 :goto_2

    .line 116
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expect \':\' at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :catchall_0
    move-exception v0

    .line 212
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v0

    .line 119
    :cond_a
    :try_start_2
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 120
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    const/16 v0, 0x10

    .line 121
    invoke-interface {v4, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 122
    return-object p1

    .line 124
    :cond_b
    :try_start_3
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v4, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 128
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v0

    const/16 v2, 0x27

    invoke-interface {v4, v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 130
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v2

    .line 131
    if-ne v2, v9, :cond_d

    move-object v2, v0

    goto/16 :goto_2

    .line 125
    :cond_c
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_d
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expect \':\' at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_f
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "expect \':\' at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", actual "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_10
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v4, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v0

    const/16 v2, 0x22

    invoke-interface {v4, v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v2

    .line 157
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->getFeatures()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v2, v0, v7, v6}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v0

    const-class v6, Ljava/util/Map;

    .line 159
    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 168
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    const/16 v2, 0x10

    .line 170
    invoke-interface {v4, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/4 v2, 0x2

    .line 172
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 174
    if-nez v5, :cond_15

    .line 178
    :cond_11
    :goto_6
    invoke-interface {v1, p0, v0, p3}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 212
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 178
    return-object v0

    :cond_12
    const/16 v0, 0x10

    .line 160
    :try_start_4
    invoke-interface {v4, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 161
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_14

    .line 99
    :cond_13
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_14
    const/16 v0, 0x10

    .line 162
    invoke-interface {v4, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 212
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 163
    return-object p1

    .line 174
    :cond_15
    :try_start_5
    instance-of v2, p3, Ljava/lang/Integer;

    if-nez v2, :cond_11

    .line 175
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->popContext()V

    goto :goto_6

    .line 185
    :cond_16
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_3

    .line 190
    :cond_17
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move-object v0, v1

    goto/16 :goto_4

    :cond_18
    const/16 v2, 0xf

    .line 202
    if-eq v0, v2, :cond_1

    const/16 v2, 0xd

    .line 206
    if-ne v0, v2, :cond_13

    .line 207
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 212
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 208
    return-object p1
.end method


# virtual methods
.method public createMap(Ljava/lang/reflect/Type;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-class v0, Ljava/util/Properties;

    .line 315
    if-eq p1, v0, :cond_1

    const-class v0, Ljava/util/Hashtable;

    .line 319
    if-eq p1, v0, :cond_2

    const-class v0, Ljava/util/IdentityHashMap;

    .line 323
    if-eq p1, v0, :cond_3

    const-class v0, Ljava/util/SortedMap;

    .line 327
    if-ne p1, v0, :cond_4

    .line 328
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0

    .line 316
    :cond_1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    return-object v0

    .line 320
    :cond_2
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    return-object v0

    .line 324
    :cond_3
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    return-object v0

    :cond_4
    const-class v0, Ljava/util/TreeMap;

    .line 327
    if-eq p1, v0, :cond_0

    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    .line 331
    if-ne p1, v0, :cond_6

    .line 332
    :cond_5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0

    :cond_6
    const-class v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 331
    if-eq p1, v0, :cond_5

    const-class v0, Ljava/util/Map;

    .line 335
    if-ne p1, v0, :cond_8

    .line 336
    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    :cond_8
    const-class v0, Ljava/util/HashMap;

    .line 335
    if-eq p1, v0, :cond_7

    const-class v0, Ljava/util/LinkedHashMap;

    .line 339
    if-eq p1, v0, :cond_9

    .line 343
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_a

    move-object v0, p1

    .line 355
    check-cast v0, Ljava/lang/Class;

    .line 356
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_c

    .line 361
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 340
    :cond_9
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0

    .line 344
    :cond_a
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 346
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v1, Ljava/util/EnumMap;

    .line 347
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 352
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->createMap(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 348
    :cond_b
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 349
    new-instance v1, Ljava/util/EnumMap;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-object v1

    .line 357
    :cond_c
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupport type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :catch_0
    move-exception v0

    .line 363
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupport type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
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
    const/4 v3, 0x0

    const-class v0, Lcom/alibaba/fastjson/JSONObject;

    .line 25
    if-eq p2, v0, :cond_1

    .line 29
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 30
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    .line 35
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->createMap(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v1

    .line 40
    :try_start_0
    invoke-virtual {p1, v1, v0, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 41
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 43
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 41
    return-object v0

    .line 25
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getFieldTypeResolver()Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    move-result-object v0

    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v1, 0x10

    .line 31
    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 32
    return-object v3

    .line 41
    :catchall_0
    move-exception v0

    .line 43
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v0
.end method

.method protected deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 49
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p1, p4, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 50
    :cond_0
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 51
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v1, v0, v1

    .line 53
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "org.springframework.util.LinkedMultiValueMap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    :goto_0
    const-class v2, Ljava/lang/String;

    .line 58
    if-eq v2, v1, :cond_2

    .line 61
    invoke-static {p1, p4, v1, v0, p3}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->parseMap(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    const-class v0, Ljava/util/List;

    goto :goto_0

    .line 59
    :cond_2
    invoke-static {p1, p4, v0, p3}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->parseMap(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/16 v0, 0xc

    .line 369
    return v0
.end method
