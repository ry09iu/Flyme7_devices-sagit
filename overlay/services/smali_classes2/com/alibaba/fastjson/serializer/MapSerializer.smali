.class public Lcom/alibaba/fastjson/serializer/MapSerializer;
.super Lcom/alibaba/fastjson/serializer/SerializeFilterable;
.source "MapSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field private static final NON_STRINGKEY_AS_STRING:I

.field public static instance:Lcom/alibaba/fastjson/serializer/MapSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lcom/alibaba/fastjson/serializer/MapSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/MapSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->instance:Lcom/alibaba/fastjson/serializer/MapSerializer;

    const/4 v0, 0x3

    .line 33
    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v0

    sput v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->NON_STRINGKEY_AS_STRING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/serializer/MapSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    .line 45
    return-void
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 56
    if-eqz p2, :cond_4

    move-object/from16 v3, p2

    .line 61
    check-cast v3, Ljava/util/Map;

    .line 62
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->MapSortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 63
    iget v5, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_5

    .line 64
    :cond_0
    instance-of v4, v3, Lcom/alibaba/fastjson/JSONObject;

    if-nez v4, :cond_6

    .line 68
    :goto_0
    instance-of v4, v3, Ljava/util/SortedMap;

    if-eqz v4, :cond_7

    :cond_1
    move-object v11, v3

    .line 77
    :goto_1
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 82
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    const/4 v3, 0x0

    .line 83
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v15, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 85
    if-eqz p6, :cond_9

    .line 89
    :goto_2
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    const/4 v12, 0x0

    const/4 v10, 0x0

    .line 94
    const/4 v4, 0x1

    .line 96
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v14, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-nez v3, :cond_a

    move v3, v4

    .line 108
    :goto_3
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v13, v3

    :cond_2
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_f

    .line 274
    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 277
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 278
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v14, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 282
    :cond_3
    :goto_5
    if-eqz p6, :cond_47

    .line 285
    :goto_6
    return-void

    .line 57
    :cond_4
    invoke-virtual {v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 58
    return-void

    .line 63
    :cond_5
    and-int v4, v4, p5

    if-nez v4, :cond_0

    move-object v11, v3

    goto :goto_1

    .line 65
    :cond_6
    check-cast v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    move-result-object v3

    goto :goto_0

    .line 68
    :cond_7
    instance-of v4, v3, Ljava/util/LinkedHashMap;

    if-nez v4, :cond_1

    .line 70
    :try_start_1
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v11, v4

    .line 73
    goto :goto_1

    :catch_0
    move-exception v4

    move-object v11, v3

    goto :goto_1

    .line 78
    :cond_8
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    .line 79
    return-void

    :cond_9
    const/16 v3, 0x7b

    .line 86
    :try_start_2
    invoke-virtual {v14, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 275
    :catchall_0
    move-exception v3

    .line 274
    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v3

    .line 97
    :cond_a
    :try_start_3
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    iget-object v5, v3, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    .line 98
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v6, Lcom/alibaba/fastjson/JSONObject;

    .line 99
    if-ne v3, v6, :cond_c

    .line 100
    :cond_b
    invoke-interface {v11, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    :goto_7
    const/4 v3, 0x0

    .line 101
    :goto_8
    if-eqz v3, :cond_e

    move v3, v4

    goto :goto_3

    :cond_c
    const-class v6, Ljava/util/HashMap;

    .line 99
    if-eq v3, v6, :cond_b

    const-class v6, Ljava/util/LinkedHashMap;

    if-eq v3, v6, :cond_b

    goto :goto_7

    :cond_d
    const/4 v3, 0x1

    .line 100
    goto :goto_8

    .line 102
    :cond_e
    invoke-virtual {v14, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 104
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 108
    :cond_f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 109
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 111
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 114
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyPreFilters:Ljava/util/List;

    .line 115
    if-nez v3, :cond_19

    .line 129
    :cond_10
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->propertyPreFilters:Ljava/util/List;

    .line 130
    if-nez v3, :cond_1e

    .line 145
    :cond_11
    :goto_a
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;

    .line 146
    if-nez v3, :cond_23

    .line 160
    :cond_12
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->propertyFilters:Ljava/util/List;

    .line 161
    if-nez v3, :cond_28

    .line 176
    :cond_13
    :goto_c
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;

    .line 177
    if-nez v3, :cond_2d

    :cond_14
    move-object v3, v4

    .line 187
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->nameFilters:Ljava/util/List;

    .line 188
    if-nez v4, :cond_32

    :cond_15
    move-object v9, v3

    .line 199
    :goto_e
    if-nez v9, :cond_37

    .line 200
    :cond_16
    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    const/4 v5, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 210
    :goto_f
    if-eqz v5, :cond_3b

    .line 216
    :goto_10
    instance-of v3, v9, Ljava/lang/String;

    if-nez v3, :cond_3c

    .line 228
    if-eqz v13, :cond_3f

    .line 232
    :goto_11
    sget v3, Lcom/alibaba/fastjson/serializer/MapSerializer;->NON_STRINGKEY_AS_STRING:I

    invoke-virtual {v14, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_40

    .line 236
    :cond_17
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    :goto_12
    const/16 v3, 0x3a

    .line 239
    invoke-virtual {v14, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 242
    :goto_13
    const/4 v13, 0x0

    .line 244
    if-eqz v5, :cond_41

    .line 249
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 251
    if-ne v3, v12, :cond_42

    .line 256
    :goto_14
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move/from16 v0, p5

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-nez v3, :cond_43

    :cond_18
    const/4 v7, 0x0

    move-object v3, v10

    move-object/from16 v4, p1

    move-object v6, v9

    move/from16 v8, p5

    .line 270
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto/16 :goto_4

    .line 115
    :cond_19
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_10

    .line 116
    if-nez v4, :cond_1b

    .line 117
    :cond_1a
    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_9

    .line 116
    :cond_1b
    instance-of v3, v4, Ljava/lang/String;

    if-nez v3, :cond_1a

    .line 120
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 121
    :cond_1c
    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 122
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_9

    .line 120
    :cond_1d
    instance-of v3, v4, Ljava/lang/Number;

    if-nez v3, :cond_1c

    goto/16 :goto_9

    .line 130
    :cond_1e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_11

    .line 131
    if-nez v4, :cond_20

    .line 132
    :cond_1f
    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_a

    .line 131
    :cond_20
    instance-of v3, v4, Ljava/lang/String;

    if-nez v3, :cond_1f

    .line 135
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 136
    :cond_21
    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 137
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_a

    .line 135
    :cond_22
    instance-of v3, v4, Ljava/lang/Number;

    if-nez v3, :cond_21

    goto/16 :goto_a

    .line 146
    :cond_23
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_12

    .line 147
    if-nez v4, :cond_25

    .line 148
    :cond_24
    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_b

    .line 147
    :cond_25
    instance-of v3, v4, Ljava/lang/String;

    if-nez v3, :cond_24

    .line 151
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 152
    :cond_26
    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 153
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_b

    .line 151
    :cond_27
    instance-of v3, v4, Ljava/lang/Number;

    if-nez v3, :cond_26

    goto/16 :goto_b

    .line 161
    :cond_28
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_13

    .line 162
    if-nez v4, :cond_2a

    .line 163
    :cond_29
    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_c

    .line 162
    :cond_2a
    instance-of v3, v4, Ljava/lang/String;

    if-nez v3, :cond_29

    .line 166
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 167
    :cond_2b
    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 168
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_c

    .line 166
    :cond_2c
    instance-of v3, v4, Ljava/lang/Number;

    if-nez v3, :cond_2b

    goto/16 :goto_c

    .line 177
    :cond_2d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_14

    .line 178
    if-nez v4, :cond_2f

    .line 179
    :cond_2e
    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4, v8}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    goto/16 :goto_d

    .line 178
    :cond_2f
    instance-of v3, v4, Ljava/lang/String;

    if-nez v3, :cond_2e

    .line 180
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 181
    :cond_30
    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 182
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    goto/16 :goto_d

    .line 180
    :cond_31
    instance-of v3, v4, Ljava/lang/Number;

    if-nez v3, :cond_30

    move-object v3, v4

    goto/16 :goto_d

    .line 188
    :cond_32
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_15

    .line 189
    if-nez v3, :cond_34

    .line 190
    :cond_33
    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto/16 :goto_e

    .line 189
    :cond_34
    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_33

    .line 191
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 192
    :cond_35
    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 193
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto/16 :goto_e

    .line 191
    :cond_36
    instance-of v4, v3, Ljava/lang/Number;

    if-nez v4, :cond_35

    move-object v9, v3

    goto/16 :goto_e

    .line 199
    :cond_37
    instance-of v3, v9, Ljava/lang/String;

    if-nez v3, :cond_16

    .line 202
    instance-of v3, v9, Ljava/util/Map;

    if-eqz v3, :cond_39

    :cond_38
    const/4 v3, 0x1

    .line 203
    :goto_15
    if-eqz v3, :cond_3a

    move-object v5, v8

    goto/16 :goto_f

    .line 202
    :cond_39
    instance-of v3, v9, Ljava/util/Collection;

    if-nez v3, :cond_38

    const/4 v3, 0x0

    goto :goto_15

    .line 204
    :cond_3a
    invoke-static {v9}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    .line 205
    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_f

    .line 211
    :cond_3b
    sget v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WRITE_MAP_NULL_FEATURES:I

    invoke-virtual {v14, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_10

    .line 217
    :cond_3c
    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 219
    if-eqz v13, :cond_3d

    .line 223
    :goto_16
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v14, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 226
    :goto_17
    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    goto/16 :goto_13

    :cond_3d
    const/16 v4, 0x2c

    .line 220
    invoke-virtual {v14, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_16

    .line 224
    :cond_3e
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    goto :goto_17

    :cond_3f
    const/16 v3, 0x2c

    .line 229
    invoke-virtual {v14, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_11

    .line 232
    :cond_40
    instance-of v3, v9, Ljava/lang/Enum;

    if-nez v3, :cond_17

    .line 233
    invoke-static {v9}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 234
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 245
    :cond_41
    invoke-virtual {v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto/16 :goto_4

    .line 253
    :cond_42
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v10

    move-object v12, v3

    goto/16 :goto_14

    .line 256
    :cond_43
    instance-of v3, v10, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v3, :cond_18

    const/4 v7, 0x0

    .line 259
    move-object/from16 v0, p4

    instance-of v3, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v3, :cond_45

    .line 267
    :cond_44
    :goto_18
    move-object v0, v10

    check-cast v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-object v3, v0

    move-object/from16 v4, p1

    move-object v6, v9

    move/from16 v8, p5

    .line 268
    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeNoneASM(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto/16 :goto_4

    .line 260
    :cond_45
    move-object/from16 v0, p4

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    move-object v3, v0

    .line 261
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 262
    array-length v4, v3

    const/4 v6, 0x2

    if-ne v4, v6, :cond_44

    const/4 v4, 0x1

    .line 263
    aget-object v7, v3, v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_18

    .line 278
    :cond_46
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 279
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    goto/16 :goto_5

    :cond_47
    const/16 v3, 0x7d

    .line 283
    invoke-virtual {v14, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_6
.end method
