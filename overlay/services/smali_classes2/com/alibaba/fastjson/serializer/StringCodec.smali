.class public Lcom/alibaba/fastjson/serializer/StringCodec;
.super Ljava/lang/Object;
.source "StringCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/StringCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/alibaba/fastjson/serializer/StringCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/StringCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;
    .locals 5
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
    const/4 v4, 0x0

    const/16 v3, 0x10

    .line 92
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 99
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 96
    return-object v1

    .line 100
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 102
    return-object v1

    .line 108
    :cond_2
    return-object v4
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
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
    const/16 v4, 0x10

    const/4 v3, 0x4

    const/4 v2, 0x0

    const-class v0, Ljava/lang/StringBuffer;

    .line 51
    if-eq p2, v0, :cond_0

    const-class v0, Ljava/lang/StringBuilder;

    .line 69
    if-eq p2, v0, :cond_3

    .line 87
    invoke-static {p1}, Lcom/alibaba/fastjson/serializer/StringCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 52
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 53
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 60
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_2

    .line 66
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 54
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-interface {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 57
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 63
    :cond_2
    return-object v2

    .line 70
    :cond_3
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 71
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-eq v1, v3, :cond_4

    .line 78
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_5

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 72
    :cond_4
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-interface {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 81
    :cond_5
    return-object v2
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/4 v0, 0x4

    .line 115
    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/StringCodec;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 41
    if-eqz p2, :cond_0

    .line 46
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 47
    return-void

    .line 42
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 43
    return-void
.end method
