.class public Lcom/alibaba/fastjson/serializer/CharacterCodec;
.super Ljava/lang/Object;
.source "CharacterCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/CharacterCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/alibaba/fastjson/serializer/CharacterCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/CharacterCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/CharacterCodec;->instance:Lcom/alibaba/fastjson/serializer/CharacterCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
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
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_0

    .line 55
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToChar(Ljava/lang/Object;)Ljava/lang/Character;

    move-result-object v0

    .line 53
    :cond_0
    return-object v0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/4 v0, 0x4

    .line 59
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
    .line 34
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 36
    check-cast p2, Ljava/lang/Character;

    .line 37
    if-eqz p2, :cond_0

    .line 42
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 46
    invoke-virtual {p2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 48
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, ""

    .line 38
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 39
    return-void

    :cond_1
    const-string/jumbo v1, "\u0000"

    .line 44
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
