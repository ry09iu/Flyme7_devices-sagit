.class public Lcom/alibaba/fastjson/serializer/CharArrayCodec;
.super Ljava/lang/Object;
.source "CharArrayCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v6, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 25
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 31
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 39
    instance-of v4, v0, Ljava/lang/String;

    if-nez v4, :cond_2

    .line 43
    instance-of v4, v0, Ljava/util/Collection;

    if-nez v4, :cond_3

    .line 69
    if-eqz v0, :cond_8

    .line 71
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 26
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 28
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0

    .line 32
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v1

    .line 33
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0

    .line 40
    :cond_2
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0

    .line 44
    :cond_3
    check-cast v0, Ljava/util/Collection;

    .line 47
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v3

    .line 57
    :goto_1
    if-eqz v1, :cond_6

    .line 61
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v4, v1, [C

    .line 63
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 66
    return-object v4

    .line 47
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 48
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 49
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 50
    if-eq v1, v3, :cond_4

    move v1, v2

    .line 52
    goto :goto_1

    .line 58
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "can not cast to char[]"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 64
    add-int/lit8 v3, v1, 0x1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    aput-char v0, v4, v1

    move v1, v3

    .line 65
    goto :goto_2

    :cond_8
    move-object v0, v1

    .line 69
    goto :goto_0
.end method


# virtual methods
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
    .line 19
    invoke-static {p1}, Lcom/alibaba/fastjson/serializer/CharArrayCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/4 v0, 0x4

    .line 75
    return v0
.end method
