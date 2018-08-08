.class public Lcom/alibaba/fastjson/serializer/AwtCodec;
.super Ljava/lang/Object;
.source "AwtCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/AwtCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/alibaba/fastjson/serializer/AwtCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/AwtCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/AwtCodec;->instance:Lcom/alibaba/fastjson/serializer/AwtCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseRef(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/16 v4, 0xd

    .line 335
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v0

    const/4 v1, 0x4

    .line 336
    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 337
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 338
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 339
    new-instance v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 340
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->popContext()V

    const/4 v1, 0x1

    .line 341
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 342
    invoke-interface {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 343
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    const/4 v0, 0x0

    .line 344
    return-object v0
.end method

.method public static support(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const-class v0, Ljava/awt/Point;

    .line 23
    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-class v0, Ljava/awt/Rectangle;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/awt/Font;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/awt/Color;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
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
    const/16 v3, 0x10

    .line 97
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 99
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 104
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 107
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const-class v0, Ljava/awt/Point;

    .line 110
    if-eq p2, v0, :cond_3

    const-class v0, Ljava/awt/Rectangle;

    .line 112
    if-eq p2, v0, :cond_4

    const-class v0, Ljava/awt/Color;

    .line 114
    if-eq p2, v0, :cond_5

    const-class v0, Ljava/awt/Font;

    .line 116
    if-eq p2, v0, :cond_6

    .line 119
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not support awt class : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/4 v0, 0x0

    .line 101
    return-object v0

    .line 104
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 105
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/alibaba/fastjson/serializer/AwtCodec;->parsePoint(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)Ljava/awt/Point;

    move-result-object v0

    .line 122
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v1

    .line 123
    invoke-virtual {p1, v0, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 124
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 126
    return-object v0

    .line 113
    :cond_4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/AwtCodec;->parseRectangle(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Rectangle;

    move-result-object v0

    goto :goto_0

    .line 115
    :cond_5
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/AwtCodec;->parseColor(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Color;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_6
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/AwtCodec;->parseFont(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Font;

    move-result-object v0

    goto :goto_0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/16 v0, 0xc

    .line 348
    return v0
.end method

.method protected parseColor(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Color;
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v0, 0x0

    .line 183
    iget-object v5, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move v1, v0

    move v2, v0

    move v3, v0

    .line 187
    :cond_0
    :goto_0
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/16 v6, 0xd

    if-eq v4, v6, :cond_1

    .line 193
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    if-eq v4, v9, :cond_2

    .line 197
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_1
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 225
    new-instance v4, Ljava/awt/Color;

    invoke-direct {v4, v3, v2, v1, v0}, Ljava/awt/Color;-><init>(IIII)V

    return-object v4

    .line 194
    :cond_2
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v6

    .line 195
    invoke-interface {v5, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 201
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    if-eq v4, v8, :cond_3

    .line 205
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_3
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v4

    .line 203
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const-string/jumbo v7, "r"

    .line 208
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "g"

    .line 210
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string/jumbo v7, "b"

    .line 212
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string/jumbo v0, "alpha"

    .line 214
    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 217
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syntax error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v3, v4

    .line 220
    :goto_1
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/16 v6, 0x10

    if-ne v4, v6, :cond_0

    .line 221
    invoke-interface {v5, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_0

    :cond_5
    move v2, v4

    .line 211
    goto :goto_1

    :cond_6
    move v1, v4

    .line 213
    goto :goto_1

    :cond_7
    move v0, v4

    .line 215
    goto :goto_1
.end method

.method protected parseFont(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Font;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v1, 0x0

    .line 130
    iget-object v3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v0, 0x0

    move v2, v1

    .line 135
    :cond_0
    :goto_0
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_1

    .line 141
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    if-eq v4, v7, :cond_2

    .line 145
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 179
    new-instance v3, Ljava/awt/Font;

    invoke-direct {v3, v0, v1, v2}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    return-object v3

    .line 142
    :cond_2
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-interface {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    const-string/jumbo v5, "name"

    .line 149
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "style"

    .line 156
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v2, "size"

    .line 163
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 171
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syntax error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_3
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    if-eq v0, v7, :cond_4

    .line 154
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_4
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 174
    :goto_1
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_0

    .line 175
    invoke-interface {v3, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_0

    .line 157
    :cond_5
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-eq v1, v6, :cond_6

    .line 161
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_6
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v1

    .line 159
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_1

    .line 164
    :cond_7
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    if-eq v2, v6, :cond_8

    .line 168
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_8
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v2

    .line 166
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_1
.end method

.method protected parsePoint(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)Ljava/awt/Point;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v0, 0x0

    .line 279
    iget-object v3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move v1, v0

    .line 283
    :cond_0
    :goto_0
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v4, 0xd

    if-eq v2, v4, :cond_1

    .line 289
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    if-eq v2, v7, :cond_2

    .line 303
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_1
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 331
    new-instance v2, Ljava/awt/Point;

    invoke-direct {v2, v1, v0}, Ljava/awt/Point;-><init>(II)V

    return-object v2

    .line 290
    :cond_2
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v4

    .line 292
    sget-object v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "$ref"

    .line 297
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 301
    invoke-interface {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 306
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    .line 308
    if-eq v2, v6, :cond_5

    const/4 v5, 0x3

    .line 311
    if-eq v2, v5, :cond_6

    .line 315
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syntax error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string/jumbo v2, "java.awt.Point"

    .line 293
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->acceptType(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/AwtCodec;->parseRef(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/Point;

    return-object v0

    .line 309
    :cond_5
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v2

    .line 310
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :goto_1
    const-string/jumbo v5, "x"

    .line 318
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v0, "y"

    .line 320
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 323
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syntax error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_6
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->floatValue()F

    move-result v2

    float-to-int v2, v2

    .line 313
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_1

    :cond_7
    move v1, v2

    .line 326
    :goto_2
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v4, 0x10

    if-ne v2, v4, :cond_0

    .line 327
    invoke-interface {v3, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 321
    goto :goto_2
.end method

.method protected parseRectangle(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Rectangle;
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v0, 0x0

    .line 229
    iget-object v5, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move v1, v0

    move v2, v0

    move v3, v0

    .line 233
    :cond_0
    :goto_0
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/16 v6, 0xd

    if-eq v4, v6, :cond_1

    .line 239
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    if-eq v4, v9, :cond_2

    .line 243
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_1
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 275
    new-instance v4, Ljava/awt/Rectangle;

    invoke-direct {v4, v3, v2, v1, v0}, Ljava/awt/Rectangle;-><init>(IIII)V

    return-object v4

    .line 240
    :cond_2
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v6

    .line 241
    invoke-interface {v5, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 247
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    .line 248
    if-eq v4, v8, :cond_3

    const/4 v7, 0x3

    .line 251
    if-eq v4, v7, :cond_4

    .line 255
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_3
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v4

    .line 250
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :goto_1
    const-string/jumbo v7, "x"

    .line 258
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string/jumbo v7, "y"

    .line 260
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string/jumbo v7, "width"

    .line 262
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string/jumbo v0, "height"

    .line 264
    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 267
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syntax error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_4
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->floatValue()F

    move-result v4

    float-to-int v4, v4

    .line 253
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_1

    :cond_5
    move v3, v4

    .line 270
    :goto_2
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/16 v6, 0x10

    if-ne v4, v6, :cond_0

    .line 271
    invoke-interface {v5, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_0

    :cond_6
    move v2, v4

    .line 261
    goto :goto_2

    :cond_7
    move v1, v4

    .line 263
    goto :goto_2

    :cond_8
    move v0, v4

    .line 265
    goto :goto_2
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x7b

    const/16 v4, 0x2c

    .line 32
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 34
    if-eqz p2, :cond_0

    .line 41
    instance-of v1, p2, Ljava/awt/Point;

    if-nez v1, :cond_1

    .line 48
    instance-of v1, p2, Ljava/awt/Font;

    if-nez v1, :cond_3

    .line 56
    instance-of v1, p2, Ljava/awt/Rectangle;

    if-nez v1, :cond_4

    .line 65
    instance-of v1, p2, Ljava/awt/Color;

    if-nez v1, :cond_5

    .line 77
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not support awt class : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 36
    return-void

    .line 42
    :cond_1
    check-cast p2, Ljava/awt/Point;

    const-class v1, Ljava/awt/Point;

    .line 44
    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/AwtCodec;->writeClassName(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/lang/Class;C)C

    move-result v1

    const-string/jumbo v2, "x"

    .line 46
    iget v3, p2, Ljava/awt/Point;->x:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    const-string/jumbo v1, "y"

    .line 47
    iget v2, p2, Ljava/awt/Point;->y:I

    invoke-virtual {v0, v4, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    :cond_2
    :goto_0
    const/16 v1, 0x7d

    .line 80
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 82
    return-void

    .line 49
    :cond_3
    check-cast p2, Ljava/awt/Font;

    const-class v1, Ljava/awt/Font;

    .line 51
    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/AwtCodec;->writeClassName(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/lang/Class;C)C

    move-result v1

    const-string/jumbo v2, "name"

    .line 53
    invoke-virtual {p2}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "style"

    .line 54
    invoke-virtual {p2}, Ljava/awt/Font;->getStyle()I

    move-result v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    const-string/jumbo v1, "size"

    .line 55
    invoke-virtual {p2}, Ljava/awt/Font;->getSize()I

    move-result v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    goto :goto_0

    .line 57
    :cond_4
    check-cast p2, Ljava/awt/Rectangle;

    const-class v1, Ljava/awt/Rectangle;

    .line 59
    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/AwtCodec;->writeClassName(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/lang/Class;C)C

    move-result v1

    const-string/jumbo v2, "x"

    .line 61
    iget v3, p2, Ljava/awt/Rectangle;->x:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    const-string/jumbo v1, "y"

    .line 62
    iget v2, p2, Ljava/awt/Rectangle;->y:I

    invoke-virtual {v0, v4, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    const-string/jumbo v1, "width"

    .line 63
    iget v2, p2, Ljava/awt/Rectangle;->width:I

    invoke-virtual {v0, v4, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    const-string/jumbo v1, "height"

    .line 64
    iget v2, p2, Ljava/awt/Rectangle;->height:I

    invoke-virtual {v0, v4, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    goto :goto_0

    .line 66
    :cond_5
    check-cast p2, Ljava/awt/Color;

    const-class v1, Ljava/awt/Color;

    .line 68
    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/AwtCodec;->writeClassName(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/lang/Class;C)C

    move-result v1

    const-string/jumbo v2, "r"

    .line 70
    invoke-virtual {p2}, Ljava/awt/Color;->getRed()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    const-string/jumbo v1, "g"

    .line 71
    invoke-virtual {p2}, Ljava/awt/Color;->getGreen()I

    move-result v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    const-string/jumbo v1, "b"

    .line 72
    invoke-virtual {p2}, Ljava/awt/Color;->getBlue()I

    move-result v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 73
    invoke-virtual {p2}, Ljava/awt/Color;->getAlpha()I

    move-result v1

    if-lez v1, :cond_2

    const-string/jumbo v1, "alpha"

    .line 74
    invoke-virtual {p2}, Ljava/awt/Color;->getAlpha()I

    move-result v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    goto/16 :goto_0
.end method

.method protected writeClassName(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/lang/Class;C)C
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/serializer/SerializeWriter;",
            "Ljava/lang/Class",
            "<*>;C)C"
        }
    .end annotation

    .prologue
    .line 85
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return p3

    :cond_0
    const/16 v0, 0x7b

    .line 86
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 87
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 89
    const/16 p3, 0x2c

    goto :goto_0
.end method
