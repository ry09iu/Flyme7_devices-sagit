.class public Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;
.super Ljava/lang/Object;
.source "EnumDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field protected final enumClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected enumNameHashCodes:[J

.field protected final enums:[Ljava/lang/Enum;

.field protected final ordinalEnums:[Ljava/lang/Enum;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumClass:Ljava/lang/Class;

    .line 24
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Enum;

    check-cast v2, [Ljava/lang/Enum;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    .line 26
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 27
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    array-length v2, v2

    if-lt v3, v2, :cond_0

    .line 77
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [J

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    const/4 v2, 0x0

    .line 80
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_b

    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    invoke-static {v2}, Ljava/util/Arrays;->sort([J)V

    .line 86
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/Enum;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enums:[Ljava/lang/Enum;

    const/4 v2, 0x0

    move v3, v2

    .line 87
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    array-length v2, v2

    if-lt v3, v2, :cond_c

    .line 92
    return-void

    .line 28
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    aget-object v12, v2, v3

    .line 29
    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 33
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-class v6, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 34
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONField;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    if-nez v2, :cond_4

    :cond_1
    :goto_3
    const-wide v8, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const-wide v6, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 v5, 0x0

    .line 47
    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v5, v10, :cond_5

    .line 57
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v11, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    cmp-long v4, v8, v6

    if-eqz v4, :cond_2

    .line 59
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v11, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_2
    if-nez v2, :cond_8

    .line 27
    :cond_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 36
    :cond_4
    :try_start_1
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    .line 37
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-lez v6, :cond_1

    move-object v4, v5

    .line 38
    goto :goto_3

    .line 48
    :cond_5
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 50
    int-to-long v14, v10

    xor-long/2addr v14, v8

    const/16 v8, 0x41

    .line 51
    if-ge v10, v8, :cond_7

    :cond_6
    move v8, v10

    :goto_5
    int-to-long v8, v8

    xor-long/2addr v6, v8

    const-wide v8, 0x100000001b3L

    .line 53
    mul-long/2addr v8, v14

    const-wide v14, 0x100000001b3L

    .line 54
    mul-long/2addr v6, v14

    .line 47
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    const/16 v8, 0x5a

    .line 51
    if-gt v10, v8, :cond_6

    add-int/lit8 v8, v10, 0x20

    goto :goto_5

    .line 63
    :cond_8
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->alternateNames()[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    const/4 v2, 0x0

    move v10, v2

    :goto_6
    if-ge v10, v14, :cond_3

    aget-object v15, v13, v10

    const-wide v4, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 v2, 0x0

    .line 65
    :goto_7
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    if-lt v2, v0, :cond_a

    .line 70
    cmp-long v2, v4, v8

    if-eqz v2, :cond_9

    cmp-long v2, v4, v6

    if-eqz v2, :cond_9

    .line 71
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v11, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_9
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_6

    .line 66
    :cond_a
    invoke-virtual {v15, v2}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 67
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    xor-long v4, v4, v16

    const-wide v16, 0x100000001b3L

    .line 68
    mul-long v4, v4, v16

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 80
    :cond_b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 81
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v6, v3

    move v3, v4

    .line 82
    goto/16 :goto_1

    .line 88
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    aget-wide v4, v2, v3

    .line 89
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    .line 90
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enums:[Ljava/lang/Enum;

    aput-object v2, v4, v3

    .line 87
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_2

    .line 43
    :catch_0
    move-exception v2

    move-object v2, v5

    goto/16 :goto_3

    :catch_1
    move-exception v5

    goto/16 :goto_3
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
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 116
    :try_start_0
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 117
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/4 v3, 0x2

    .line 118
    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    .line 127
    if-eq v2, v3, :cond_3

    const/16 v0, 0x8

    .line 143
    if-eq v2, v0, :cond_6

    .line 149
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 152
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parse enum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " error, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    .line 154
    throw v0

    .line 119
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v0

    const/16 v2, 0x10

    .line 120
    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 122
    if-gez v0, :cond_2

    .line 123
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parse enum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " error, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    :catch_1
    move-exception v0

    .line 156
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 122
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    array-length v1, v1

    if-gt v0, v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    aget-object v0, v1, v0

    return-object v0

    .line 128
    :cond_3
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x10

    .line 129
    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 131
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    const-wide v2, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 136
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 142
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->getEnumByHashCode(J)Ljava/lang/Enum;

    move-result-object v0

    return-object v0

    .line 132
    :cond_4
    return-object v5

    .line 137
    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 138
    int-to-long v6, v1

    xor-long/2addr v2, v6

    const-wide v6, 0x100000001b3L

    .line 139
    mul-long/2addr v2, v6

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    const/16 v0, 0x10

    .line 145
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_2
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 147
    return-object v5
.end method

.method public getEnumByHashCode(J)Ljava/lang/Enum;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enums:[Ljava/lang/Enum;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 101
    if-ltz v0, :cond_1

    .line 105
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enums:[Ljava/lang/Enum;

    aget-object v0, v1, v0

    return-object v0

    .line 96
    :cond_0
    return-object v1

    .line 102
    :cond_1
    return-object v1
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 161
    return v0
.end method

.method public valueOf(I)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    aget-object v0, v0, p1

    return-object v0
.end method
