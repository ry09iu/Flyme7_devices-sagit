.class public Lcom/alibaba/fastjson/serializer/LongCodec;
.super Ljava/lang/Object;
.source "LongCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/LongCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/alibaba/fastjson/serializer/LongCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/LongCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/LongCodec;->instance:Lcom/alibaba/fastjson/serializer/LongCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
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
    const/4 v3, 0x0

    .line 58
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 62
    :try_start_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v2, 0x2

    .line 63
    if-eq v1, v2, :cond_0

    const/16 v0, 0xc

    .line 68
    if-eq v1, v0, :cond_1

    .line 73
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 85
    if-eq p2, v1, :cond_3

    :goto_2
    return-object v0

    .line 64
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v2

    const/16 v1, 0x10

    .line 65
    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 66
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    .line 69
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 70
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;)Ljava/lang/Object;

    .line 71
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_2
    return-object v3

    .line 83
    :catch_0
    move-exception v0

    .line 82
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseLong error, field : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 85
    :cond_3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 86
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    move-object v0, v1

    goto :goto_2
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 91
    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    iget-object v3, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 41
    if-eqz p2, :cond_1

    .line 44
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 45
    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 47
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    goto :goto_0

    :cond_2
    const-wide/32 v6, 0x7fffffff

    .line 47
    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    move v2, v0

    :goto_1
    if-nez v2, :cond_0

    const-wide/32 v6, -0x80000000

    cmp-long v2, v4, v6

    if-gez v2, :cond_4

    :goto_2
    if-nez v0, :cond_0

    const-class v0, Ljava/lang/Long;

    if-eq p4, v0, :cond_0

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p4, v0, :cond_0

    const/16 v0, 0x4c

    .line 51
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    :cond_3
    move v2, v1

    .line 47
    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method
