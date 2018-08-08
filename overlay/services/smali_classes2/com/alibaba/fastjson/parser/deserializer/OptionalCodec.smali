.class public Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;
.super Ljava/lang/Object;
.source "OptionalCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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
    const-class v0, Ljava/util/OptionalInt;

    .line 24
    if-eq p2, v0, :cond_0

    const-class v0, Ljava/util/OptionalLong;

    .line 34
    if-eq p2, v0, :cond_2

    const-class v0, Ljava/util/OptionalDouble;

    .line 44
    if-eq p2, v0, :cond_4

    .line 54
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->unwrapOptional(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_6

    .line 61
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :cond_0
    const-class v0, Ljava/lang/Integer;

    .line 25
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v0

    return-object v0

    .line 28
    :cond_1
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    return-object v0

    :cond_2
    const-class v0, Ljava/lang/Long;

    .line 35
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_3

    .line 40
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/OptionalLong;->of(J)Ljava/util/OptionalLong;

    move-result-object v0

    return-object v0

    .line 38
    :cond_3
    invoke-static {}, Ljava/util/OptionalLong;->empty()Ljava/util/OptionalLong;

    move-result-object v0

    return-object v0

    :cond_4
    const-class v0, Ljava/lang/Double;

    .line 45
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_5

    .line 50
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/OptionalDouble;->of(D)Ljava/util/OptionalDouble;

    move-result-object v0

    return-object v0

    .line 48
    :cond_5
    invoke-static {}, Ljava/util/OptionalDouble;->empty()Ljava/util/OptionalDouble;

    move-result-object v0

    return-object v0

    .line 58
    :cond_6
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/16 v0, 0xc

    .line 65
    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 71
    if-eqz p2, :cond_0

    .line 76
    instance-of v1, p2, Ljava/util/Optional;

    if-nez v1, :cond_1

    .line 83
    instance-of v0, p2, Ljava/util/OptionalDouble;

    if-nez v0, :cond_3

    .line 94
    instance-of v0, p2, Ljava/util/OptionalInt;

    if-nez v0, :cond_5

    .line 105
    instance-of v0, p2, Ljava/util/OptionalLong;

    if-nez v0, :cond_7

    .line 116
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not support optional : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeNull()V

    .line 73
    return-void

    .line 77
    :cond_1
    check-cast p2, Ljava/util/Optional;

    .line 78
    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_2

    .line 79
    :goto_0
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 80
    return-void

    .line 78
    :cond_2
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_3
    check-cast p2, Ljava/util/OptionalDouble;

    .line 85
    invoke-virtual {p2}, Ljava/util/OptionalDouble;->isPresent()Z

    move-result v0

    if-nez v0, :cond_4

    .line 89
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeNull()V

    .line 91
    :goto_1
    return-void

    .line 86
    :cond_4
    invoke-virtual {p2}, Ljava/util/OptionalDouble;->getAsDouble()D

    move-result-wide v0

    .line 87
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    goto :goto_1

    .line 95
    :cond_5
    check-cast p2, Ljava/util/OptionalInt;

    .line 96
    invoke-virtual {p2}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-nez v0, :cond_6

    .line 100
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeNull()V

    .line 102
    :goto_2
    return-void

    .line 97
    :cond_6
    invoke-virtual {p2}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v0

    .line 98
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto :goto_2

    .line 106
    :cond_7
    check-cast p2, Ljava/util/OptionalLong;

    .line 107
    invoke-virtual {p2}, Ljava/util/OptionalLong;->isPresent()Z

    move-result v0

    if-nez v0, :cond_8

    .line 111
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeNull()V

    .line 113
    :goto_3
    return-void

    .line 108
    :cond_8
    invoke-virtual {p2}, Ljava/util/OptionalLong;->getAsLong()J

    move-result-wide v0

    .line 109
    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto :goto_3
.end method
