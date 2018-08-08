.class public Lcom/alibaba/fastjson/serializer/IntegerCodec;
.super Ljava/lang/Object;
.source "IntegerCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/IntegerCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    .line 68
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 70
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x8

    .line 72
    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    .line 80
    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    .line 84
    if-eq v1, v2, :cond_2

    const/16 v0, 0xc

    .line 89
    if-eq v1, v0, :cond_3

    .line 94
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 95
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 103
    if-eq p2, v1, :cond_4

    .line 107
    return-object v0

    .line 73
    :cond_0
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/4 v0, 0x0

    .line 74
    return-object v0

    .line 81
    :cond_1
    :try_start_1
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v1

    const/16 v2, 0x10

    .line 82
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v1

    const/16 v2, 0x10

    .line 86
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 87
    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 91
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;)Ljava/lang/Object;

    .line 92
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 99
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseInt error, field : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 104
    :cond_4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    return-object v1
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 111
    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-object v0, p2

    .line 43
    check-cast v0, Ljava/lang/Number;

    .line 45
    if-eqz v0, :cond_1

    .line 50
    instance-of v2, p2, Ljava/lang/Long;

    if-nez v2, :cond_2

    .line 53
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 56
    :goto_0
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 64
    :cond_0
    :goto_1
    return-void

    .line 46
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 47
    return-void

    .line 51
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/Byte;

    .line 58
    if-eq v0, v2, :cond_4

    const-class v2, Ljava/lang/Short;

    .line 60
    if-ne v0, v2, :cond_0

    const/16 v0, 0x53

    .line 61
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_1

    :cond_4
    const/16 v0, 0x42

    .line 59
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_1
.end method
