.class public Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.source "ArrayListTypeFieldDeserializer.java"


# instance fields
.field private deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

.field private itemFastMatchToken:I

.field private final itemType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 27
    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 29
    iget-object v0, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 30
    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/Object;

    .line 41
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    .line 43
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v0, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v1, v0, v4

    .line 32
    instance-of v0, v1, Ljava/lang/reflect/WildcardType;

    if-nez v0, :cond_2

    .line 39
    :cond_1
    :goto_1
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 33
    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 34
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 35
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 36
    aget-object v1, v0, v4

    goto :goto_1
.end method


# virtual methods
.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/16 v0, 0xe

    .line 46
    return v0
.end method

.method public final parseArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 11

    .prologue
    .line 77
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    .line 78
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 80
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_1

    .line 137
    instance-of v0, v1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_d

    .line 154
    :cond_0
    :goto_0
    iget-object v2, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 156
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v3, 0xe

    .line 157
    if-eq v0, v3, :cond_f

    .line 190
    if-eqz v4, :cond_15

    :goto_1
    const/4 v0, 0x0

    .line 193
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, p1, v1, v0}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 194
    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 197
    :goto_2
    return-void

    .line 81
    :cond_1
    instance-of v0, v1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_2

    .line 107
    instance-of v0, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 108
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 109
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    .line 110
    array-length v2, v7

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v2, v7, v2

    instance-of v2, v2, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 111
    aget-object v2, v7, v2

    check-cast v2, Ljava/lang/reflect/TypeVariable;

    .line 112
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    const/4 v3, 0x0

    .line 115
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Class;

    if-nez v5, :cond_9

    :goto_3
    const/4 v5, -0x1

    .line 120
    if-nez v3, :cond_a

    move v2, v5

    :goto_4
    const/4 v3, -0x1

    .line 131
    if-eq v2, v3, :cond_0

    const/4 v1, 0x0

    .line 132
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v2, v3, v2

    aput-object v2, v7, v1

    .line 133
    new-instance v1, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {v1, v7, v2, v0}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 82
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    .line 83
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    const/4 v2, 0x0

    .line 86
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Class;

    if-nez v3, :cond_3

    :goto_5
    const/4 v3, -0x1

    .line 91
    if-nez v2, :cond_4

    move v0, v3

    :goto_6
    const/4 v2, -0x1

    .line 101
    if-ne v0, v2, :cond_7

    move-object v0, v4

    :goto_7
    move-object v4, v0

    .line 107
    goto :goto_0

    .line 87
    :cond_3
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    goto :goto_5

    :cond_4
    const/4 v5, 0x0

    .line 92
    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v6

    array-length v6, v6

    :goto_8
    if-lt v5, v6, :cond_5

    move v0, v3

    goto :goto_6

    .line 93
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v7

    aget-object v7, v7, v5

    .line 94
    invoke-interface {v7}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 92
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_6
    move v0, v5

    .line 96
    goto :goto_6

    .line 102
    :cond_7
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v0

    .line 103
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v4

    goto :goto_7

    .line 104
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    goto :goto_7

    .line 116
    :cond_9
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    goto :goto_3

    :cond_a
    const/4 v6, 0x0

    .line 121
    invoke-virtual {v3}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v8

    array-length v8, v8

    :goto_9
    if-lt v6, v8, :cond_b

    move v2, v5

    goto/16 :goto_4

    .line 122
    :cond_b
    invoke-virtual {v3}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v9

    aget-object v9, v9, v6

    .line 123
    invoke-interface {v9}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 121
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_c
    move v2, v6

    .line 125
    goto/16 :goto_4

    .line 137
    :cond_d
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 138
    check-cast p2, Ljava/lang/Class;

    move-object v0, v1

    .line 139
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    .line 140
    invoke-virtual {p2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    const/4 v2, 0x0

    .line 142
    invoke-virtual {p2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    array-length v3, v3

    :goto_a
    if-ge v2, v3, :cond_0

    .line 143
    invoke-virtual {p2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    aget-object v5, v5, v2

    .line 144
    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 145
    :cond_e
    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 146
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x0

    .line 147
    aget-object v1, v0, v1

    goto/16 :goto_0

    .line 158
    :cond_f
    if-eqz v4, :cond_10

    .line 163
    :goto_b
    iget v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemFastMatchToken:I

    invoke-interface {v2, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/4 v0, 0x0

    .line 166
    :goto_c
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 173
    :goto_d
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v5, 0xf

    if-eq v3, v5, :cond_14

    .line 177
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, p1, v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 178
    invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 182
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v5, 0x10

    if-eq v3, v5, :cond_13

    .line 165
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 159
    :cond_10
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 160
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemFastMatchToken:I

    goto :goto_b

    .line 168
    :cond_11
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 167
    :cond_12
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v5, 0x10

    if-eq v3, v5, :cond_11

    goto :goto_d

    .line 183
    :cond_13
    iget v3, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemFastMatchToken:I

    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_e

    :cond_14
    const/16 v0, 0x10

    .line 188
    invoke-interface {v2, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_2

    .line 191
    :cond_15
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    goto/16 :goto_1
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 52
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 53
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x8

    .line 54
    if-ne v1, v2, :cond_1

    .line 56
    :cond_0
    invoke-virtual {p0, p2, v3}, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    return-void

    :cond_1
    const/4 v2, 0x4

    .line 54
    if-eq v1, v2, :cond_2

    .line 60
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v1, p2, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 65
    invoke-virtual {p0, p1, p3, v0}, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->parseArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 66
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 68
    if-eqz p2, :cond_3

    .line 71
    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    :goto_1
    return-void

    .line 55
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 69
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
