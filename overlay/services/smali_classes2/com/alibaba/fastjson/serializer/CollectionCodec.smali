.class public Lcom/alibaba/fastjson/serializer/CollectionCodec;
.super Ljava/lang/Object;
.source "CollectionCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/alibaba/fastjson/serializer/CollectionCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/CollectionCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

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
    .line 115
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const-class v0, Lcom/alibaba/fastjson/JSONArray;

    .line 120
    if-eq p2, v0, :cond_1

    .line 126
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->createCollection(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v0

    .line 128
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 129
    invoke-virtual {p1, v1, v0, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    .line 131
    return-object v0

    .line 116
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/4 v0, 0x0

    .line 117
    return-object v0

    .line 121
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 122
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;)V

    .line 123
    return-object v0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/16 v0, 0xe

    .line 137
    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 41
    iget-object v7, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 43
    if-eqz p2, :cond_2

    .line 49
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    :cond_0
    invoke-static {p4}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    :goto_0
    move-object v0, p2

    .line 55
    check-cast v0, Ljava/util/Collection;

    .line 57
    iget-object v8, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 58
    invoke-virtual {p1, v8, p2, p3, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 60
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 70
    :cond_1
    :goto_1
    const/16 v2, 0x5b

    :try_start_0
    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 71
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v0, v1

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 107
    const/16 v0, 0x5d

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iput-object v8, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 111
    return-void

    .line 44
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 45
    return-void

    .line 49
    :cond_3
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 50
    invoke-static {p5, v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_4
    const-class v2, Ljava/util/HashSet;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_5

    const-class v2, Ljava/util/TreeSet;

    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, "TreeSet"

    .line 64
    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_1

    :cond_5
    const-string/jumbo v2, "Set"

    .line 62
    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_1

    .line 71
    :cond_6
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 73
    add-int/lit8 v6, v0, 0x1

    if-nez v0, :cond_8

    .line 77
    :goto_3
    if-eqz v2, :cond_9

    .line 82
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    .line 84
    if-eq v0, v1, :cond_a

    const-class v1, Ljava/lang/Long;

    .line 89
    if-eq v0, v1, :cond_b

    .line 98
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    .line 99
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {p5, v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 104
    :cond_7
    add-int/lit8 v1, v6, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v1, p1

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    :goto_4
    move v0, v6

    .line 106
    goto :goto_2

    .line 74
    :cond_8
    const/16 v0, 0x2c

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 110
    :catchall_0
    move-exception v0

    .line 109
    iput-object v8, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v0

    .line 78
    :cond_9
    :try_start_2
    invoke-virtual {v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    move v0, v6

    .line 79
    goto :goto_2

    .line 85
    :cond_a
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    move v0, v6

    .line 86
    goto/16 :goto_2

    .line 90
    :cond_b
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 92
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v6

    goto/16 :goto_2

    :cond_c
    const/16 v0, 0x4c

    .line 93
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    move v0, v6

    goto/16 :goto_2

    .line 99
    :cond_d
    instance-of v1, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v1, :cond_7

    .line 101
    check-cast v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 102
    add-int/lit8 v1, v6, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v1, p1

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeNoneASM(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method
