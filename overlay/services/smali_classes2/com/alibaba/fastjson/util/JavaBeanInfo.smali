.class public Lcom/alibaba/fastjson/util/JavaBeanInfo;
.super Ljava/lang/Object;
.source "JavaBeanInfo.java"


# instance fields
.field public final buildMethod:Ljava/lang/reflect/Method;

.field public final builderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final creatorConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field public creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

.field public creatorConstructorParameters:[Ljava/lang/String;

.field public final defaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field public final defaultConstructorParameterSize:I

.field public final factoryMethod:Ljava/lang/reflect/Method;

.field public final fields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field public final jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

.field public orders:[Ljava/lang/String;

.field public final parserFeatures:I

.field public final sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field public final typeKey:Ljava/lang/String;

.field public final typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->clazz:Ljava/lang/Class;

    .line 58
    iput-object p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->builderClass:Ljava/lang/Class;

    .line 59
    iput-object p3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 60
    iput-object p4, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 61
    iput-object p5, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    .line 62
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getParserFeatures(Ljava/lang/Class;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    .line 63
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    .line 65
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    .line 66
    if-nez p7, :cond_2

    .line 79
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 80
    iput-object v1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeKey:Ljava/lang/String;

    const/4 v1, 0x0

    .line 81
    iput-object v1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    .line 84
    :goto_0
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/alibaba/fastjson/util/FieldInfo;

    iput-object v1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 85
    iget-object v1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v0, p8

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 87
    iget-object v1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v1, v1

    new-array v4, v1, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 88
    iget-object v1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    if-nez v1, :cond_6

    .line 105
    iget-object v1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v5, v5

    invoke-static {v1, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    move-object v1, v4

    .line 112
    :goto_1
    iput-object v1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 114
    if-nez p3, :cond_b

    .line 116
    if-nez p5, :cond_c

    const/4 v1, 0x0

    .line 119
    iput v1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    .line 122
    :goto_2
    if-nez p4, :cond_d

    .line 166
    :cond_1
    :goto_3
    return-void

    .line 67
    :cond_2
    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_3

    const/4 v1, 0x0

    :cond_3
    iput-object v1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeKey:Ljava/lang/String;

    .line 71
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 74
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 76
    :goto_4
    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v1

    .line 77
    array-length v2, v1

    if-eqz v2, :cond_5

    :goto_5
    iput-object v1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    goto :goto_0

    .line 72
    :cond_4
    iput-object v2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    .line 77
    goto :goto_5

    .line 89
    :cond_6
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 90
    iget-object v2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_6
    if-lt v1, v3, :cond_7

    const/4 v2, 0x0

    .line 94
    iget-object v7, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    array-length v8, v7

    const/4 v1, 0x0

    move v5, v1

    :goto_7
    if-lt v5, v8, :cond_8

    .line 101
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 102
    add-int/lit8 v3, v2, 0x1

    aput-object v1, v4, v2

    move v2, v3

    .line 103
    goto :goto_8

    .line 90
    :cond_7
    aget-object v5, v2, v1

    .line 91
    iget-object v7, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 94
    :cond_8
    aget-object v9, v7, v5

    .line 95
    invoke-virtual {v6, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 96
    if-nez v1, :cond_9

    move v1, v2

    .line 94
    :goto_9
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v1

    goto :goto_7

    .line 97
    :cond_9
    add-int/lit8 v3, v2, 0x1

    aput-object v1, v4, v2

    .line 98
    invoke-virtual {v6, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v3

    goto :goto_9

    .line 110
    :cond_a
    iget-object v1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    goto/16 :goto_1

    .line 115
    :cond_b
    invoke-virtual {p3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    iput v1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    goto/16 :goto_2

    .line 117
    :cond_c
    invoke-virtual {p5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    iput v1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    goto/16 :goto_2

    .line 123
    :cond_d
    invoke-virtual {p4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    .line 126
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result v1

    .line 127
    if-nez v1, :cond_e

    .line 149
    iget-object v1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    array-length v1, v1

    iget-object v2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v2, v2

    if-ne v1, v2, :cond_13

    .line 152
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 153
    :goto_a
    iget-object v3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    array-length v3, v3

    if-lt v1, v3, :cond_14

    move v1, v2

    .line 161
    :goto_b
    if-nez v1, :cond_1

    .line 162
    invoke-static {p4}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    goto/16 :goto_3

    .line 128
    :cond_e
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    .line 130
    invoke-virtual {p4}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v5

    const/4 v1, 0x0

    move v2, v1

    .line 131
    :goto_c
    iget-object v1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    array-length v1, v1

    if-ge v2, v1, :cond_1

    array-length v1, v5

    if-ge v2, v1, :cond_1

    .line 132
    aget-object v6, v5, v2

    const/4 v3, 0x0

    .line 134
    array-length v7, v6

    const/4 v1, 0x0

    move v4, v1

    :goto_d
    if-lt v4, v7, :cond_10

    move-object v1, v3

    .line 140
    :goto_e
    if-nez v1, :cond_12

    .line 131
    :cond_f
    :goto_f
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_c

    .line 134
    :cond_10
    aget-object v1, v6, v4

    .line 135
    instance-of v8, v1, Lcom/alibaba/fastjson/annotation/JSONField;

    if-nez v8, :cond_11

    .line 134
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_d

    .line 136
    :cond_11
    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_e

    .line 141
    :cond_12
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_f

    .line 143
    iget-object v3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    aput-object v1, v3, v2

    goto :goto_f

    .line 150
    :cond_13
    const/4 v1, 0x0

    goto :goto_b

    .line 154
    :cond_14
    iget-object v3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-ne v3, v4, :cond_15

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 155
    :cond_15
    const/4 v1, 0x0

    goto :goto_b
.end method

.method static add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 184
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 207
    :goto_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    const/4 v0, 0x1

    return v0

    .line 185
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 187
    iget-object v2, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 184
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 188
    :cond_2
    iget-boolean v2, v0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-nez v2, :cond_3

    .line 192
    :goto_2
    iget-object v2, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    iget-object v3, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 197
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    .line 199
    if-ltz v0, :cond_5

    .line 203
    return v4

    .line 188
    :cond_3
    iget-boolean v2, p1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-eqz v2, :cond_1

    goto :goto_2

    .line 193
    :cond_4
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 200
    :cond_5
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Lcom/alibaba/fastjson/util/JavaBeanInfo;"
        }
    .end annotation

    .prologue
    .line 213
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v0

    return-object v0
.end method

.method public static build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "ZZ)",
            "Lcom/alibaba/fastjson/util/JavaBeanInfo;"
        }
    .end annotation

    .prologue
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 222
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 223
    if-nez v10, :cond_6

    .line 230
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getBuilderClass(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;

    move-result-object v5

    .line 232
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v25

    .line 233
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v26

    .line 235
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result v23

    .line 236
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v14

    const/4 v6, 0x0

    .line 239
    if-nez v23, :cond_7

    .line 240
    :cond_1
    if-eqz v5, :cond_8

    .line 243
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getDefaultConstructor(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    :goto_1
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 251
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 253
    if-nez p3, :cond_9

    .line 262
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_2
    const/4 v3, 0x1

    .line 263
    :goto_2
    if-eqz v6, :cond_c

    :cond_3
    if-nez v3, :cond_d

    .line 472
    :cond_4
    :goto_3
    if-nez v6, :cond_3a

    .line 476
    :goto_4
    if-nez v5, :cond_3b

    .line 589
    :cond_5
    :goto_5
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v24, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_6
    move/from16 v0, v24

    if-lt v4, v0, :cond_4b

    .line 714
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 715
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v11, v3}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    .line 717
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v26, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_7
    move/from16 v0, v26

    if-lt v4, v0, :cond_60

    .line 773
    new-instance v3, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v3

    .line 224
    :cond_6
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONType;->naming()Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v3

    .line 225
    if-eqz v3, :cond_0

    sget-object v4, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    if-eq v3, v4, :cond_0

    move-object/from16 p2, v3

    .line 226
    goto :goto_0

    .line 239
    :cond_7
    array-length v3, v14

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 241
    :cond_8
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getDefaultConstructor(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    goto :goto_1

    :cond_9
    move-object/from16 v3, p0

    .line 254
    :goto_8
    if-nez v3, :cond_a

    .line 259
    new-instance v3, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v7, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v3

    .line 255
    :cond_a
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 257
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v11, v4}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    .line 254
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_8

    .line 262
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    .line 263
    :cond_c
    if-nez v5, :cond_3

    .line 264
    :cond_d
    invoke-static {v14}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getCreatorConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v21

    .line 266
    if-nez v21, :cond_10

    .line 312
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getFactoryMethod(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v8

    if-nez v8, :cond_19

    .line 344
    if-eqz v3, :cond_1e

    :cond_f
    move-object/from16 v7, v21

    goto/16 :goto_3

    .line 266
    :cond_10
    if-nez v3, :cond_e

    .line 267
    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 269
    invoke-virtual/range {v21 .. v21}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v22

    const/4 v4, 0x0

    .line 272
    move-object/from16 v0, v22

    array-length v3, v0

    if-gtz v3, :cond_12

    :cond_11
    move-object/from16 v7, v21

    .line 312
    goto/16 :goto_3

    .line 273
    :cond_12
    invoke-virtual/range {v21 .. v21}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v23

    const/4 v3, 0x0

    move-object v7, v4

    move v4, v3

    .line 274
    :goto_9
    move-object/from16 v0, v22

    array-length v3, v0

    if-ge v4, v3, :cond_11

    .line 275
    aget-object v14, v23, v4

    const/4 v12, 0x0

    .line 277
    array-length v15, v14

    const/4 v3, 0x0

    move v13, v3

    :goto_a
    if-lt v13, v15, :cond_14

    move-object v3, v12

    .line 284
    :goto_b
    aget-object v15, v22, v4

    .line 285
    invoke-virtual/range {v21 .. v21}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v12

    aget-object v16, v12, v4

    const/4 v13, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 290
    if-nez v3, :cond_16

    .line 298
    :goto_c
    if-nez v13, :cond_17

    .line 299
    :cond_13
    if-eqz v7, :cond_18

    .line 302
    :goto_d
    aget-object v13, v7, v4

    .line 305
    :goto_e
    new-instance v12, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v14, p0

    invoke-direct/range {v12 .. v20}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 307
    invoke-static {v11, v12}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 274
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_9

    .line 277
    :cond_14
    aget-object v3, v14, v13

    .line 278
    instance-of v0, v3, Lcom/alibaba/fastjson/annotation/JSONField;

    move/from16 v16, v0

    if-nez v16, :cond_15

    .line 277
    add-int/lit8 v3, v13, 0x1

    move v13, v3

    goto :goto_a

    .line 279
    :cond_15
    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_b

    .line 291
    :cond_16
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v12, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v17

    .line 292
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v18

    .line 293
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v12

    invoke-static {v12}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v19

    .line 294
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v12

    invoke-static {v12}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v20

    .line 295
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v13

    goto :goto_c

    .line 298
    :cond_17
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_e

    .line 300
    :cond_18
    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v7

    goto :goto_d

    .line 313
    :cond_19
    invoke-static {v8}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 315
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v22

    .line 316
    move-object/from16 v0, v22

    array-length v3, v0

    if-lez v3, :cond_f

    .line 317
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v9

    const/4 v3, 0x0

    move v4, v3

    .line 318
    :goto_f
    move-object/from16 v0, v22

    array-length v3, v0

    if-lt v4, v3, :cond_1a

    .line 342
    new-instance v3, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v3

    .line 319
    :cond_1a
    aget-object v12, v9, v4

    const/4 v6, 0x0

    .line 321
    array-length v13, v12

    const/4 v3, 0x0

    move v7, v3

    :goto_10
    if-lt v7, v13, :cond_1b

    move-object v3, v6

    .line 327
    :goto_11
    if-eqz v3, :cond_1d

    .line 331
    aget-object v15, v22, v4

    .line 332
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v6

    aget-object v16, v6, v4

    .line 333
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v6, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v17

    .line 334
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v18

    .line 335
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v19

    .line 336
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v20

    .line 337
    new-instance v12, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v14, p0

    invoke-direct/range {v12 .. v20}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 339
    invoke-static {v11, v12}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 318
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_f

    .line 321
    :cond_1b
    aget-object v3, v12, v7

    .line 322
    instance-of v14, v3, Lcom/alibaba/fastjson/annotation/JSONField;

    if-nez v14, :cond_1c

    .line 321
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto :goto_10

    .line 323
    :cond_1c
    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_11

    .line 328
    :cond_1d
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v4, "illegal json creator"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 345
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    const/4 v4, 0x0

    .line 348
    if-nez v23, :cond_21

    .line 354
    :cond_1f
    array-length v15, v14

    const/4 v3, 0x0

    move v13, v3

    move-object/from16 v7, v21

    :goto_12
    if-lt v13, v15, :cond_22

    :goto_13
    const/4 v3, 0x0

    .line 410
    if-nez v4, :cond_2f

    move-object/from16 v22, v3

    .line 414
    :goto_14
    if-nez v4, :cond_30

    .line 467
    :cond_20
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "default constructor not found. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 348
    :cond_21
    array-length v3, v14

    if-lez v3, :cond_1f

    .line 349
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    .line 350
    invoke-static {v14}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    .line 351
    invoke-static {v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    move-object v7, v12

    goto :goto_13

    .line 354
    :cond_22
    aget-object v12, v14, v13

    .line 355
    invoke-virtual {v12}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v16, "org.springframework.security.web.authentication.WebAuthenticationDetails"

    .line 357
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_26

    :cond_23
    const-string/jumbo v16, "org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationToken"

    .line 366
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_27

    :cond_24
    const-string/jumbo v16, "org.springframework.security.core.authority.SimpleGrantedAuthority"

    .line 378
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_28

    .line 390
    :cond_25
    invoke-virtual {v12}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_29

    const/4 v3, 0x0

    .line 391
    :goto_15
    if-eqz v3, :cond_2a

    .line 394
    invoke-static {v12}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v3

    .line 395
    if-nez v3, :cond_2b

    move-object v3, v4

    move-object v4, v7

    .line 354
    :goto_16
    add-int/lit8 v7, v13, 0x1

    move v13, v7

    move-object v7, v4

    move-object v4, v3

    goto :goto_12

    .line 358
    :cond_26
    array-length v0, v3

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_23

    const/16 v16, 0x0

    aget-object v16, v3, v16

    const-class v17, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_23

    const/16 v16, 0x1

    aget-object v16, v3, v16

    const-class v17, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_23

    .line 360
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 361
    invoke-static {v12}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v4

    move-object v7, v12

    .line 362
    goto/16 :goto_13

    .line 367
    :cond_27
    array-length v0, v3

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_24

    const/16 v16, 0x0

    aget-object v16, v3, v16

    const-class v17, Ljava/lang/Object;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_24

    const/16 v16, 0x1

    aget-object v16, v3, v16

    const-class v17, Ljava/lang/Object;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_24

    const/16 v16, 0x2

    aget-object v16, v3, v16

    const-class v17, Ljava/util/Collection;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_24

    .line 372
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v3, 0x3

    .line 373
    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v7, "principal"

    aput-object v7, v4, v3

    const/4 v3, 0x1

    const-string/jumbo v7, "credentials"

    aput-object v7, v4, v3

    const/4 v3, 0x2

    const-string/jumbo v7, "authorities"

    aput-object v7, v4, v3

    move-object v7, v12

    .line 374
    goto/16 :goto_13

    .line 379
    :cond_28
    array-length v0, v3

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_25

    const/16 v16, 0x0

    aget-object v3, v3, v16

    const-class v16, Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v3, v0, :cond_25

    const/4 v3, 0x1

    .line 382
    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v7, "authority"

    aput-object v7, v4, v3

    move-object v7, v12

    .line 383
    goto/16 :goto_13

    :cond_29
    const/4 v3, 0x1

    .line 390
    goto/16 :goto_15

    :cond_2a
    move-object v3, v4

    move-object v4, v7

    .line 392
    goto/16 :goto_16

    .line 395
    :cond_2b
    array-length v0, v3

    move/from16 v16, v0

    if-eqz v16, :cond_2d

    .line 399
    if-nez v7, :cond_2e

    :cond_2c
    move-object v4, v12

    .line 405
    goto/16 :goto_16

    :cond_2d
    move-object v3, v4

    move-object v4, v7

    .line 396
    goto/16 :goto_16

    .line 399
    :cond_2e
    if-eqz v4, :cond_2c

    array-length v0, v3

    move/from16 v16, v0

    array-length v0, v4

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_2c

    move-object v3, v4

    move-object v4, v7

    .line 401
    goto/16 :goto_16

    .line 411
    :cond_2f
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v22, v3

    goto/16 :goto_14

    .line 414
    :cond_30
    move-object/from16 v0, v22

    array-length v3, v0

    array-length v12, v4

    if-ne v3, v12, :cond_20

    .line 416
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v27

    const/4 v3, 0x0

    move/from16 v21, v3

    .line 417
    :goto_17
    move-object/from16 v0, v22

    array-length v3, v0

    move/from16 v0, v21

    if-lt v0, v3, :cond_31

    .line 462
    if-nez v23, :cond_4

    .line 463
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "javax.servlet.http.Cookie"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 464
    new-instance v3, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v3

    .line 418
    :cond_31
    aget-object v15, v27, v21

    .line 419
    aget-object v13, v4, v21

    const/4 v12, 0x0

    .line 422
    array-length v0, v15

    move/from16 v16, v0

    const/4 v3, 0x0

    move v14, v3

    :goto_18
    move/from16 v0, v16

    if-lt v14, v0, :cond_33

    move-object v3, v12

    .line 429
    :goto_19
    aget-object v15, v22, v21

    .line 430
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v12

    aget-object v16, v12, v21

    .line 431
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v13, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v17

    .line 432
    if-nez v17, :cond_35

    move-object v12, v3

    .line 438
    :goto_1a
    if-eqz v12, :cond_37

    .line 449
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    .line 450
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_32

    move-object v3, v13

    .line 453
    :cond_32
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v18

    .line 454
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v13

    invoke-static {v13}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v19

    .line 455
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v12

    invoke-static {v12}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v20

    move-object v13, v3

    .line 457
    :goto_1b
    new-instance v12, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v14, p0

    invoke-direct/range {v12 .. v20}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 459
    invoke-static {v11, v12}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 417
    add-int/lit8 v3, v21, 0x1

    move/from16 v21, v3

    goto :goto_17

    .line 422
    :cond_33
    aget-object v3, v15, v14

    .line 423
    instance-of v0, v3, Lcom/alibaba/fastjson/annotation/JSONField;

    move/from16 v17, v0

    if-nez v17, :cond_34

    .line 422
    add-int/lit8 v3, v14, 0x1

    move v14, v3

    goto :goto_18

    .line 424
    :cond_34
    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_19

    .line 433
    :cond_35
    if-eqz v3, :cond_36

    move-object v12, v3

    goto :goto_1a

    :cond_36
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 434
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object v12, v3

    goto :goto_1a

    :cond_37
    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string/jumbo v3, "org.springframework.security.core.userdetails.User"

    .line 442
    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    :cond_38
    const/16 v20, 0x0

    .line 446
    goto :goto_1b

    :cond_39
    const-string/jumbo v3, "password"

    .line 443
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 444
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v20, v0

    goto :goto_1b

    .line 473
    :cond_3a
    invoke-static {v6}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    goto/16 :goto_4

    :cond_3b
    const/4 v4, 0x0

    const-class v3, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    .line 479
    invoke-virtual {v5, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    .line 480
    if-nez v3, :cond_3e

    move-object v3, v4

    .line 484
    :goto_1c
    if-nez v3, :cond_3f

    :cond_3c
    const-string/jumbo v3, "with"

    move-object v4, v3

    .line 488
    :goto_1d
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v27

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    const/4 v3, 0x0

    move/from16 v24, v3

    :goto_1e
    move/from16 v0, v24

    move/from16 v1, v28

    if-lt v0, v1, :cond_40

    .line 551
    if-eqz v5, :cond_5

    const-class v3, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    .line 552
    invoke-virtual {v5, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    const/4 v4, 0x0

    .line 555
    if-nez v3, :cond_47

    move-object v3, v4

    .line 559
    :goto_1f
    if-nez v3, :cond_48

    :cond_3d
    const-string/jumbo v3, "build"

    :goto_20
    const/4 v4, 0x0

    .line 564
    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v9

    .line 571
    :goto_21
    if-eqz v9, :cond_49

    .line 581
    :goto_22
    if-eqz v9, :cond_4a

    .line 585
    invoke-static {v9}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    goto/16 :goto_5

    .line 481
    :cond_3e
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;->withPrefix()Ljava/lang/String;

    move-result-object v3

    goto :goto_1c

    .line 484
    :cond_3f
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3c

    move-object v4, v3

    goto :goto_1d

    .line 488
    :cond_40
    aget-object v14, v27, v24

    .line 489
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_43

    .line 493
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-class v3, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 499
    invoke-virtual {v14, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 501
    if-eqz v3, :cond_44

    move-object/from16 v21, v3

    .line 505
    :goto_23
    if-nez v21, :cond_45

    .line 522
    :cond_41
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v3, "set"

    .line 524
    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 527
    :cond_42
    invoke-virtual {v12, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 531
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-le v3, v13, :cond_43

    .line 535
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_24
    const/4 v12, 0x0

    .line 538
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v12

    .line 539
    invoke-static {v12}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v13

    if-eqz v13, :cond_43

    const/4 v13, 0x0

    .line 543
    invoke-static {v12}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v12

    invoke-virtual {v3, v13, v12}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 545
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 547
    new-instance v12, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v15, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    invoke-direct/range {v12 .. v23}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    invoke-static {v11, v12}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 488
    :cond_43
    :goto_25
    add-int/lit8 v3, v24, 0x1

    move/from16 v24, v3

    goto/16 :goto_1e

    .line 502
    :cond_44
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v21

    goto :goto_23

    .line 506
    :cond_45
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 510
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v18

    .line 511
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v19

    .line 512
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v20

    .line 514
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_41

    .line 515
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v13

    .line 516
    new-instance v12, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v15, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    invoke-direct/range {v12 .. v23}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    invoke-static {v11, v12}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto :goto_25

    .line 524
    :cond_46
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v13, 0x3

    if-le v3, v13, :cond_42

    .line 525
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_24

    .line 556
    :cond_47
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;->buildMethod()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1f

    .line 559
    :cond_48
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3d

    goto/16 :goto_20

    :cond_49
    :try_start_1
    const-string/jumbo v3, "create"

    const/4 v4, 0x0

    .line 573
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto/16 :goto_22

    .line 582
    :cond_4a
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v4, "buildMethod not found."

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 589
    :cond_4b
    aget-object v14, v26, v4

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 591
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 593
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v12

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v12

    if-nez v12, :cond_4c

    .line 598
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    .line 599
    sget-object v13, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4d

    .line 603
    :goto_26
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v12

    const-class v13, Ljava/lang/Object;

    if-eq v12, v13, :cond_4c

    .line 607
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    .line 609
    array-length v13, v12

    if-nez v13, :cond_4e

    .line 589
    :cond_4c
    :goto_27
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_6

    .line 599
    :cond_4d
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4c

    goto :goto_26

    .line 609
    :cond_4e
    array-length v13, v12

    const/4 v15, 0x2

    if-gt v13, v15, :cond_4c

    const-class v13, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 613
    invoke-virtual {v14, v13}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v21

    check-cast v21, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 614
    if-nez v21, :cond_54

    .line 623
    :cond_4f
    array-length v13, v12

    const/4 v15, 0x1

    if-ne v13, v15, :cond_4c

    .line 627
    if-eqz v21, :cond_55

    .line 631
    :goto_28
    if-eqz v21, :cond_56

    .line 635
    :goto_29
    if-nez v21, :cond_57

    .line 652
    :cond_50
    if-eqz v21, :cond_58

    :goto_2a
    const/4 v13, 0x3

    .line 656
    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 659
    invoke-static {v13}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v15

    if-eqz v15, :cond_59

    .line 662
    :cond_51
    sget-boolean v13, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-nez v13, :cond_5a

    .line 665
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x3

    invoke-virtual {v3, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v15, 0x4

    invoke-virtual {v3, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 677
    :goto_2b
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v3, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v15

    .line 678
    if-eqz v15, :cond_5d

    :cond_52
    :goto_2c
    const/16 v22, 0x0

    .line 684
    if-nez v15, :cond_5e

    .line 706
    :cond_53
    if-nez p2, :cond_5f

    move-object v13, v3

    .line 710
    :goto_2d
    new-instance v12, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v23, 0x0

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    invoke-direct/range {v12 .. v23}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    invoke-static {v11, v12}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto :goto_27

    .line 614
    :cond_54
    array-length v13, v12

    const/4 v15, 0x2

    if-ne v13, v15, :cond_4f

    const/4 v13, 0x0

    aget-object v13, v12, v13

    const-class v15, Ljava/lang/String;

    if-ne v13, v15, :cond_4f

    const/4 v13, 0x1

    aget-object v13, v12, v13

    const-class v15, Ljava/lang/Object;

    if-ne v13, v15, :cond_4f

    .line 618
    new-instance v12, Lcom/alibaba/fastjson/util/FieldInfo;

    const-string/jumbo v13, ""

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v15, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    invoke-direct/range {v12 .. v23}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    invoke-static {v11, v12}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto/16 :goto_27

    .line 628
    :cond_55
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v21

    goto/16 :goto_28

    .line 631
    :cond_56
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v15, 0x4

    if-lt v13, v15, :cond_4c

    goto/16 :goto_29

    .line 636
    :cond_57
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v13

    if-eqz v13, :cond_4c

    .line 640
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v18

    .line 641
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v13

    invoke-static {v13}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v19

    .line 642
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v13

    invoke-static {v13}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v20

    .line 644
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_50

    .line 645
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v13

    .line 646
    new-instance v12, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v15, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    invoke-direct/range {v12 .. v23}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    invoke-static {v11, v12}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto/16 :goto_27

    :cond_58
    const-string/jumbo v13, "set"

    .line 652
    invoke-virtual {v3, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4c

    goto/16 :goto_2a

    :cond_59
    const/16 v15, 0x200

    .line 659
    if-gt v13, v15, :cond_51

    const/16 v15, 0x5f

    .line 667
    if-eq v13, v15, :cond_5b

    const/16 v15, 0x66

    .line 669
    if-eq v13, v15, :cond_5c

    .line 671
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v15, 0x5

    if-lt v13, v15, :cond_4c

    const/4 v13, 0x4

    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v13

    if-eqz v13, :cond_4c

    const/4 v13, 0x3

    .line 672
    invoke-virtual {v3, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2b

    :cond_5a
    const/4 v13, 0x3

    .line 663
    invoke-virtual {v3, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2b

    :cond_5b
    const/4 v13, 0x4

    .line 668
    invoke-virtual {v3, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2b

    :cond_5c
    const/4 v13, 0x3

    .line 670
    invoke-virtual {v3, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2b

    :cond_5d
    const/4 v13, 0x0

    .line 678
    aget-object v12, v12, v13

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v12, v13, :cond_52

    .line 679
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "is"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 680
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v12, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v15

    goto/16 :goto_2c

    :cond_5e
    const-class v12, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 685
    invoke-virtual {v15, v12}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v22

    check-cast v22, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 687
    if-eqz v22, :cond_53

    .line 688
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v12

    if-eqz v12, :cond_4c

    .line 692
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v18

    .line 693
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v12

    invoke-static {v12}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v19

    .line 694
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v12

    invoke-static {v12}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v20

    .line 696
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_53

    .line 697
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v13

    .line 698
    new-instance v12, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v23, 0x0

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    invoke-direct/range {v12 .. v23}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    invoke-static {v11, v12}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto/16 :goto_27

    .line 707
    :cond_5f
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2d

    .line 717
    :cond_60
    aget-object v14, v24, v4

    .line 718
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 719
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x4

    if-lt v12, v13, :cond_61

    .line 723
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v12

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v12

    if-nez v12, :cond_61

    .line 727
    if-eqz v5, :cond_62

    .line 717
    :cond_61
    :goto_2e
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_7

    :cond_62
    const-string/jumbo v12, "get"

    .line 727
    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_61

    const/4 v12, 0x3

    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v12

    if-eqz v12, :cond_61

    .line 728
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    array-length v12, v12

    if-nez v12, :cond_61

    const-class v12, Ljava/util/Collection;

    .line 732
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_66

    :cond_63
    const-class v12, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 740
    invoke-virtual {v14, v12}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v21

    check-cast v21, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 741
    if-nez v21, :cond_67

    .line 745
    :goto_2f
    if-nez v21, :cond_68

    .line 748
    :cond_64
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x3

    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual {v3, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 750
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v13, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 751
    if-nez v3, :cond_69

    .line 759
    :cond_65
    :goto_30
    if-nez p2, :cond_6a

    .line 763
    :goto_31
    invoke-static {v11, v13}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getField(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v3

    .line 764
    if-nez v3, :cond_61

    .line 768
    new-instance v12, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v15, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    invoke-direct/range {v12 .. v23}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    invoke-static {v11, v12}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto :goto_2e

    :cond_66
    const-class v12, Ljava/util/Map;

    .line 733
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-nez v12, :cond_63

    const-class v12, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 734
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v13

    if-eq v12, v13, :cond_63

    const-class v12, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 735
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v13

    if-eq v12, v13, :cond_63

    const-class v12, Ljava/util/concurrent/atomic/AtomicLong;

    .line 736
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v13

    if-eq v12, v13, :cond_63

    goto/16 :goto_2e

    .line 741
    :cond_67
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v12

    if-nez v12, :cond_61

    goto :goto_2f

    .line 745
    :cond_68
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_64

    .line 746
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v13

    goto :goto_30

    :cond_69
    const-class v12, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 752
    invoke-virtual {v3, v12}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 753
    if-eqz v3, :cond_65

    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v3

    if-eqz v3, :cond_61

    goto :goto_30

    .line 760
    :cond_6a
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_31

    .line 578
    :catch_0
    move-exception v3

    goto/16 :goto_22

    :catch_1
    move-exception v3

    goto/16 :goto_22

    .line 569
    :catch_2
    move-exception v3

    goto/16 :goto_21

    :catch_3
    move-exception v3

    goto/16 :goto_21
.end method

.method private static computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;[",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .prologue
    .line 777
    move-object/from16 v0, p4

    array-length v14, v0

    const/4 v1, 0x0

    move v13, v1

    :goto_0
    if-lt v13, v14, :cond_0

    .line 833
    return-void

    .line 777
    :cond_0
    aget-object v4, p4, v13

    .line 778
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    .line 779
    and-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_3

    .line 783
    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_4

    .line 795
    :goto_1
    const/4 v2, 0x0

    .line 796
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    .line 803
    :goto_2
    if-nez v1, :cond_3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 808
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 810
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 812
    if-nez v11, :cond_8

    .line 826
    :cond_2
    :goto_3
    if-nez p2, :cond_9

    .line 830
    :goto_4
    new-instance v1, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 777
    :cond_3
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto :goto_0

    .line 784
    :cond_4
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Map;

    .line 785
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const/4 v1, 0x1

    .line 790
    :goto_5
    if-eqz v1, :cond_3

    goto :goto_1

    :cond_6
    const-class v2, Ljava/util/Collection;

    .line 786
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_5

    const-class v2, Ljava/util/concurrent/atomic/AtomicLong;

    .line 787
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-class v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 788
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-class v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 789
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    .line 796
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 797
    iget-object v1, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 798
    const/4 v1, 0x1

    goto :goto_2

    .line 813
    :cond_8
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 817
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v7

    .line 818
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v8

    .line 819
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v9

    .line 821
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 822
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 827
    :cond_9
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4
.end method

.method public static getBuilderClass(Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 945
    invoke-static {v0, p0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getBuilderClass(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getBuilderClass(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 949
    if-nez p0, :cond_1

    .line 953
    :cond_0
    if-eqz p1, :cond_2

    .line 957
    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONType;->builder()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    .line 959
    if-eq v0, v1, :cond_3

    .line 963
    return-object v0

    .line 949
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "org.springframework.security.web.savedrequest.DefaultSavedRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "org.springframework.security.web.savedrequest.DefaultSavedRequest$Builder"

    .line 950
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 954
    :cond_2
    return-object v2

    .line 960
    :cond_3
    return-object v2
.end method

.method public static getCreatorConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Constructor;",
            ")",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 868
    array-length v6, p0

    move v5, v4

    :goto_0
    if-lt v5, v6, :cond_0

    .line 879
    if-nez v1, :cond_3

    .line 883
    array-length v7, p0

    move v6, v4

    move-object v0, v1

    :goto_1
    if-lt v6, v7, :cond_4

    .line 912
    if-nez v0, :cond_c

    .line 916
    return-object v0

    .line 868
    :cond_0
    aget-object v2, p0, v5

    const-class v0, Lcom/alibaba/fastjson/annotation/JSONCreator;

    .line 869
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONCreator;

    .line 870
    if-nez v0, :cond_1

    move-object v0, v1

    .line 868
    :goto_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v1, v0

    goto :goto_0

    .line 871
    :cond_1
    if-nez v1, :cond_2

    move-object v0, v2

    .line 875
    goto :goto_2

    .line 872
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "multi-JSONCreator"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 880
    :cond_3
    return-object v1

    .line 883
    :cond_4
    aget-object v1, p0, v6

    .line 884
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v8

    .line 885
    array-length v2, v8

    if-eqz v2, :cond_5

    .line 889
    array-length v9, v8

    move v5, v4

    :goto_3
    if-lt v5, v9, :cond_6

    move v2, v3

    .line 903
    :goto_4
    if-nez v2, :cond_a

    .line 883
    :cond_5
    :goto_5
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1

    .line 889
    :cond_6
    aget-object v10, v8, v5

    .line 891
    array-length v11, v10

    move v2, v4

    :goto_6
    if-lt v2, v11, :cond_7

    move v2, v4

    .line 897
    :goto_7
    if-eqz v2, :cond_9

    .line 889
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_3

    .line 891
    :cond_7
    aget-object v12, v10, v2

    .line 892
    instance-of v12, v12, Lcom/alibaba/fastjson/annotation/JSONField;

    if-nez v12, :cond_8

    .line 891
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    move v2, v3

    .line 894
    goto :goto_7

    :cond_9
    move v2, v4

    .line 899
    goto :goto_4

    .line 904
    :cond_a
    if-nez v0, :cond_b

    move-object v0, v1

    .line 908
    goto :goto_5

    .line 905
    :cond_b
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "multi-JSONCreator"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 913
    :cond_c
    return-object v0
.end method

.method static getDefaultConstructor(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Constructor",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 836
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 842
    array-length v4, p1

    move v2, v3

    :goto_0
    if-lt v2, v4, :cond_2

    .line 849
    :goto_1
    if-eqz v0, :cond_4

    .line 862
    :cond_0
    :goto_2
    return-object v0

    .line 837
    :cond_1
    return-object v0

    .line 842
    :cond_2
    aget-object v1, p1, v2

    .line 843
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_3

    .line 842
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 845
    goto :goto_1

    .line 850
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 852
    array-length v4, p1

    move v2, v3

    :goto_3
    if-ge v2, v4, :cond_0

    aget-object v1, p1, v2

    .line 853
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_6

    .line 852
    :cond_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    .line 853
    :cond_6
    aget-object v5, v5, v3

    .line 854
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v0, v1

    .line 856
    goto :goto_2
.end method

.method private static getFactoryMethod(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 922
    array-length v4, p1

    move v3, v0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 941
    return-object v1

    .line 922
    :cond_0
    aget-object v2, p1, v3

    .line 923
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 927
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/alibaba/fastjson/annotation/JSONCreator;

    .line 931
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONCreator;

    .line 932
    if-nez v0, :cond_3

    move-object v0, v1

    .line 922
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 924
    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 928
    goto :goto_1

    .line 933
    :cond_3
    if-nez v1, :cond_4

    move-object v0, v2

    .line 937
    goto :goto_1

    .line 934
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "multi-JSONCreator"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getField(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/fastjson/util/FieldInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/fastjson/util/FieldInfo;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 169
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    return-object v4

    .line 169
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 170
    iget-object v2, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 174
    iget-object v2, v0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 175
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    return-object v0

    .line 171
    :cond_2
    return-object v0
.end method
