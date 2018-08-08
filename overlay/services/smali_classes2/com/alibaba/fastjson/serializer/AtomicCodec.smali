.class public Lcom/alibaba/fastjson/serializer/AtomicCodec;
.super Ljava/lang/Object;
.source "AtomicCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/AtomicCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

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
    .locals 6
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

    .line 95
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 100
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 101
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;)V

    const-class v2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 103
    if-eq p2, v2, :cond_1

    .line 112
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    .line 113
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 117
    return-object v2

    .line 96
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/4 v0, 0x0

    .line 97
    return-object v0

    .line 104
    :cond_1
    new-instance v2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    .line 105
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 109
    return-object v2

    .line 106
    :cond_2
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 114
    :cond_3
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getLong(I)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/16 v0, 0xe

    .line 121
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
    const/16 v7, 0x5d

    const/16 v3, 0x5b

    const/16 v6, 0x2c

    const/4 v0, 0x0

    .line 39
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 41
    instance-of v2, p2, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v2, :cond_0

    .line 47
    instance-of v2, p2, Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v2, :cond_1

    .line 53
    instance-of v2, p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v2, :cond_2

    .line 59
    if-eqz p2, :cond_4

    .line 64
    instance-of v2, p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-nez v2, :cond_5

    .line 80
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 81
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v2

    .line 82
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 83
    :goto_0
    if-lt v0, v2, :cond_8

    .line 90
    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 91
    return-void

    .line 42
    :cond_0
    check-cast p2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 44
    return-void

    .line 48
    :cond_1
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    .line 49
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 50
    return-void

    .line 54
    :cond_2
    check-cast p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "false"

    :goto_1
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 56
    return-void

    :cond_3
    const-string/jumbo v0, "true"

    goto :goto_1

    .line 60
    :cond_4
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 61
    return-void

    .line 65
    :cond_5
    check-cast p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 66
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    move-result v2

    .line 67
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 68
    :goto_2
    if-lt v0, v2, :cond_6

    .line 75
    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 77
    return-void

    .line 69
    :cond_6
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v3

    .line 70
    if-nez v0, :cond_7

    .line 73
    :goto_3
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 71
    :cond_7
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_3

    .line 84
    :cond_8
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v4

    .line 85
    if-nez v0, :cond_9

    .line 88
    :goto_4
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_9
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_4
.end method
