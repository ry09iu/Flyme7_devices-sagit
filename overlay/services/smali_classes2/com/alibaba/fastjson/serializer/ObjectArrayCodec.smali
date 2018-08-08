.class public Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;
.super Ljava/lang/Object;
.source "ObjectArrayCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;->instance:Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private toObjectArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/JSONArray;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 190
    if-eqz p3, :cond_0

    .line 194
    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    .line 196
    invoke-static {p2, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    move v6, v5

    .line 197
    :goto_0
    if-lt v6, v7, :cond_1

    .line 240
    invoke-virtual {p3, v8}, Lcom/alibaba/fastjson/JSONArray;->setRelatedArray(Ljava/lang/Object;)V

    .line 241
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/JSONArray;->setComponentType(Ljava/lang/reflect/Type;)V

    .line 242
    return-object v8

    .line 191
    :cond_0
    return-object v3

    .line 198
    :cond_1
    invoke-virtual {p3, v6}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 200
    if-eq v0, p3, :cond_2

    .line 205
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_3

    .line 216
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONArray;

    if-nez v1, :cond_5

    move-object v1, v3

    .line 232
    :goto_1
    if-eqz v1, :cond_9

    move-object v0, v1

    .line 235
    :goto_2
    invoke-static {v8, v6, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 197
    :goto_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 201
    :cond_2
    invoke-static {v8, v6, v8}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_3

    .line 207
    :cond_3
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 210
    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;->toObjectArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object v0

    .line 213
    :cond_4
    invoke-static {v8, v6, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_3

    :cond_5
    move-object v1, v0

    .line 218
    check-cast v1, Lcom/alibaba/fastjson/JSONArray;

    .line 219
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v9

    move v4, v5

    move v2, v5

    .line 220
    :goto_4
    if-lt v4, v9, :cond_6

    .line 227
    if-nez v2, :cond_8

    move-object v1, v3

    goto :goto_1

    .line 221
    :cond_6
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 222
    if-eq v10, p3, :cond_7

    .line 220
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 223
    :cond_7
    invoke-virtual {v1, v6, v8}, Lcom/alibaba/fastjson/JSONArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 224
    const/4 v2, 0x1

    goto :goto_5

    .line 228
    :cond_8
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->toArray()[Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 233
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
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

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 129
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 130
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x8

    .line 131
    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    .line 136
    if-ne v1, v2, :cond_3

    .line 137
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->bytesValue()[B

    move-result-object v1

    .line 138
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 140
    array-length v0, v1

    if-eqz v0, :cond_4

    .line 144
    :cond_1
    return-object v1

    .line 132
    :cond_2
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 133
    return-object v5

    :cond_3
    const/16 v2, 0x1a

    .line 136
    if-eq v1, v2, :cond_0

    .line 149
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_5

    .line 179
    check-cast p2, Ljava/lang/Class;

    .line 180
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    .line 182
    :goto_0
    new-instance v2, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 183
    invoke-virtual {p1, v1, v2, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    .line 185
    invoke-direct {p0, p1, v0, v2}, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;->toObjectArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    const-class v0, [B

    .line 140
    if-eq p2, v0, :cond_1

    .line 141
    return-object v5

    .line 150
    :cond_5
    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    .line 151
    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 152
    instance-of v0, v1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_6

    .line 176
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_6
    move-object v0, v1

    .line 153
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    .line 154
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/fastjson/parser/ParseContext;->type:Ljava/lang/reflect/Type;

    .line 155
    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    if-nez v3, :cond_7

    .line 173
    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_7
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 157
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 159
    instance-of v6, v3, Ljava/lang/Class;

    if-nez v6, :cond_8

    move-object v0, v5

    .line 167
    :goto_1
    instance-of v2, v0, Ljava/lang/Class;

    if-nez v2, :cond_b

    const-class v0, Ljava/lang/Object;

    goto :goto_0

    .line 160
    :cond_8
    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v6

    move v3, v4

    move-object v4, v5

    .line 161
    :goto_2
    array-length v5, v6

    if-lt v3, v5, :cond_9

    move-object v0, v4

    goto :goto_1

    .line 162
    :cond_9
    aget-object v5, v6, v3

    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 161
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 163
    :cond_a
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v3

    goto :goto_3

    .line 168
    :cond_b
    check-cast v0, Ljava/lang/Class;

    goto :goto_0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/16 v0, 0xe

    .line 246
    return v0
.end method

.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-object/from16 v3, p2

    .line 46
    check-cast v3, [Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, [Ljava/lang/Object;

    .line 48
    if-eqz p2, :cond_0

    .line 53
    array-length v5, v9

    .line 55
    add-int/lit8 v14, v5, -0x1

    const/4 v3, -0x1

    .line 57
    if-eq v14, v3, :cond_1

    .line 62
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    const/4 v3, 0x0

    .line 63
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v15, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 68
    const/16 v3, 0x5b

    :try_start_0
    invoke-virtual {v13, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 70
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v13, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    move v12, v3

    move-object v3, v4

    .line 86
    :goto_0
    if-lt v12, v14, :cond_5

    .line 110
    aget-object v3, v9, v14

    .line 112
    if-eqz v3, :cond_9

    .line 115
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 118
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeWithFieldName(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    :goto_1
    const/16 v3, 0x5d

    invoke-virtual {v13, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :goto_2
    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 125
    return-void

    .line 49
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v13, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 50
    return-void

    :cond_1
    const-string/jumbo v3, "[]"

    .line 58
    invoke-virtual {v13, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 59
    return-void

    .line 71
    :cond_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    const/4 v3, 0x0

    .line 73
    :goto_3
    if-lt v3, v5, :cond_3

    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    const/16 v3, 0x5d

    .line 82
    invoke-virtual {v13, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 83
    return-void

    .line 74
    :cond_3
    if-nez v3, :cond_4

    .line 78
    :goto_4
    :try_start_2
    aget-object v4, v9, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 73
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    const/16 v4, 0x2c

    .line 75
    invoke-virtual {v13, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 124
    :catchall_0
    move-exception v3

    .line 123
    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v3

    .line 87
    :cond_5
    :try_start_3
    aget-object v5, v9, v12

    .line 89
    if-eqz v5, :cond_6

    .line 92
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 95
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    .line 97
    if-eq v11, v10, :cond_8

    .line 101
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v3

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p1

    .line 103
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    move-object v4, v11

    .line 106
    :goto_5
    const/16 v5, 0x2c

    invoke-virtual {v13, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 86
    :goto_6
    add-int/lit8 v5, v12, 0x1

    move v12, v5

    move-object v10, v4

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v4, "null,"

    .line 90
    invoke-virtual {v13, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-object v4, v10

    goto :goto_6

    .line 93
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    move-object v4, v10

    goto :goto_5

    :cond_8
    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p1

    .line 98
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    move-object v4, v10

    goto :goto_5

    :cond_9
    const-string/jumbo v3, "null]"

    .line 113
    invoke-virtual {v13, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto/16 :goto_2

    .line 116
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method
