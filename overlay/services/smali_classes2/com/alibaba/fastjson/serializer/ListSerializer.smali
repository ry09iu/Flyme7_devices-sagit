.class public final Lcom/alibaba/fastjson/serializer/ListSerializer;
.super Ljava/lang/Object;
.source "ListSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/ListSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/alibaba/fastjson/serializer/ListSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ListSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/ListSerializer;->instance:Lcom/alibaba/fastjson/serializer/ListSerializer;

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
.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    move/from16 v17, v4

    .line 39
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-object/from16 v19, v0

    const/4 v10, 0x0

    .line 42
    if-nez v17, :cond_2

    .line 46
    :goto_1
    if-eqz p2, :cond_3

    move-object/from16 v4, p2

    .line 51
    check-cast v4, Ljava/util/List;

    .line 53
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_4

    .line 58
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    const/4 v6, 0x0

    .line 59
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2, v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 63
    :try_start_0
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 95
    const/16 v6, 0x5b

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v6, 0x0

    .line 96
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v18, v6

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_a

    .line 144
    const/16 v4, 0x5d

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 148
    return-void

    .line 36
    :cond_1
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 37
    move/from16 v0, p5

    invoke-static {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move/from16 v17, v4

    goto :goto_0

    .line 43
    :cond_2
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v10

    goto :goto_1

    .line 47
    :cond_3
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 48
    return-void

    :cond_4
    const-string/jumbo v4, "[]"

    .line 54
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 55
    return-void

    .line 64
    :cond_5
    const/16 v6, 0x5b

    :try_start_1
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    const/4 v6, 0x0

    .line 68
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v12, v6

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 91
    const/16 v4, 0x5d

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 92
    return-void

    .line 68
    :cond_6
    :try_start_2
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 69
    if-nez v12, :cond_7

    .line 73
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 74
    if-nez v11, :cond_8

    .line 84
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 86
    :goto_5
    add-int/lit8 v4, v12, 0x1

    move v12, v4

    .line 87
    goto :goto_3

    .line 70
    :cond_7
    const/16 v4, 0x2c

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 147
    :catchall_0
    move-exception v4

    .line 146
    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v4

    .line 75
    :cond_8
    :try_start_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 78
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v14

    .line 79
    new-instance v4, Lcom/alibaba/fastjson/serializer/SerialContext;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 80
    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 81
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v6, v14

    move-object/from16 v7, p1

    move-object v8, v11

    move/from16 v11, p5

    invoke-interface/range {v6 .. v11}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto :goto_5

    .line 76
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    goto :goto_5

    .line 97
    :cond_a
    move/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 98
    if-nez v18, :cond_c

    .line 102
    :goto_6
    if-eqz v8, :cond_d

    .line 105
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Integer;

    .line 107
    if-eq v6, v7, :cond_e

    const-class v7, Ljava/lang/Long;

    .line 109
    if-eq v6, v7, :cond_f

    .line 118
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int v6, v6, p5

    if-nez v6, :cond_11

    .line 122
    move-object/from16 v0, v19

    iget-boolean v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->disableCircularReferenceDetect:Z

    if-eqz v6, :cond_12

    .line 127
    :goto_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 130
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v6

    .line 131
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int v7, v7, p5

    if-nez v7, :cond_14

    .line 137
    :cond_b
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v7, p1

    move/from16 v11, p5

    invoke-interface/range {v6 .. v11}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 96
    :goto_8
    add-int/lit8 v6, v18, 0x1

    move/from16 v18, v6

    goto/16 :goto_2

    .line 99
    :cond_c
    const/16 v6, 0x2c

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_6

    :cond_d
    const-string/jumbo v6, "null"

    .line 103
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_8

    .line 108
    :cond_e
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto :goto_8

    .line 110
    :cond_f
    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 111
    if-nez v17, :cond_10

    .line 115
    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto :goto_8

    .line 112
    :cond_10
    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    const/16 v6, 0x4c

    .line 113
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_8

    .line 119
    :cond_11
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v6

    .line 120
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v7, p1

    move/from16 v11, p5

    invoke-interface/range {v6 .. v11}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto :goto_8

    .line 123
    :cond_12
    new-instance v11, Lcom/alibaba/fastjson/serializer/SerialContext;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v5

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-direct/range {v11 .. v16}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 124
    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    goto/16 :goto_7

    .line 128
    :cond_13
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    goto :goto_8

    .line 131
    :cond_14
    instance-of v7, v6, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v7, :cond_b

    .line 134
    check-cast v6, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 135
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v7, p1

    move/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeNoneASM(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_8
.end method
