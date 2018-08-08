.class public Lcom/alibaba/fastjson/serializer/BooleanCodec;
.super Ljava/lang/Object;
.source "BooleanCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/BooleanCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/alibaba/fastjson/serializer/BooleanCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/BooleanCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/BooleanCodec;->instance:Lcom/alibaba/fastjson/serializer/BooleanCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
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

    .line 54
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 59
    :try_start_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 62
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    .line 65
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 75
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_4

    .line 81
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    if-eq p2, v1, :cond_5

    .line 91
    return-object v0

    :cond_0
    const/16 v1, 0x10

    .line 60
    :try_start_1
    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 61
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const/16 v1, 0x10

    .line 63
    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 64
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 66
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v1

    const/16 v2, 0x10

    .line 67
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/4 v0, 0x1

    .line 69
    if-eq v1, v0, :cond_3

    .line 72
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 70
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 78
    :cond_4
    return-object v3

    .line 85
    :catch_0
    move-exception v0

    .line 84
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseBoolean error, field : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 88
    :cond_5
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    return-object v1
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/4 v0, 0x6

    .line 95
    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 39
    check-cast p2, Ljava/lang/Boolean;

    .line 40
    if-eqz p2, :cond_0

    .line 45
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "false"

    .line 48
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 50
    :goto_0
    return-void

    .line 41
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 42
    return-void

    :cond_1
    const-string/jumbo v1, "true"

    .line 46
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
