.class public Lcom/alibaba/fastjson/serializer/FieldSerializer;
.super Ljava/lang/Object;
.source "FieldSerializer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/alibaba/fastjson/serializer/FieldSerializer;",
        ">;"
    }
.end annotation


# instance fields
.field protected browserCompatible:Z

.field protected disableCircularReferenceDetect:Z

.field private final double_quoted_fieldPrefix:Ljava/lang/String;

.field protected features:I

.field protected fieldContext:Lcom/alibaba/fastjson/serializer/BeanContext;

.field public final fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

.field private format:Ljava/lang/String;

.field protected persistenceXToMany:Z

.field private runtimeInfo:Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;

.field protected serializeUsing:Z

.field private single_quoted_fieldPrefix:Ljava/lang/String;

.field private un_quoted_fieldPrefix:Ljava/lang/String;

.field protected writeEnumUsingName:Z

.field protected writeEnumUsingToString:Z

.field protected final writeNull:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeEnumUsingToString:Z

    .line 47
    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeEnumUsingName:Z

    .line 48
    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->disableCircularReferenceDetect:Z

    .line 50
    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->serializeUsing:Z

    .line 52
    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->persistenceXToMany:Z

    .line 58
    iput-object p2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 59
    new-instance v0, Lcom/alibaba/fastjson/serializer/BeanContext;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/serializer/BeanContext;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldContext:Lcom/alibaba/fastjson/serializer/BeanContext;

    .line 61
    if-nez p1, :cond_2

    .line 78
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/FieldInfo;->setAccessible()V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->double_quoted_fieldPrefix:Ljava/lang/String;

    .line 83
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v4

    .line 84
    if-nez v4, :cond_9

    move v0, v1

    .line 113
    :goto_1
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeNull:Z

    .line 115
    iget-object v0, p2, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->isAnnotationPresentOneToMany(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_1
    move v1, v2

    .line 116
    :goto_2
    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->persistenceXToMany:Z

    .line 117
    return-void

    .line 61
    :cond_2
    iget-boolean v0, p2, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    if-eqz v0, :cond_4

    :cond_3
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 62
    invoke-static {p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 63
    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_3
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 65
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v5, v6, :cond_5

    .line 67
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v5, v6, :cond_6

    .line 69
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v5, v6, :cond_7

    .line 71
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v5, v6, :cond_8

    .line 64
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 61
    :cond_4
    iget-object v0, p2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_3

    iget-object v0, p2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v3, Ljava/lang/Long;

    if-eq v0, v3, :cond_3

    goto :goto_0

    .line 66
    :cond_5
    iput-boolean v2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeEnumUsingToString:Z

    goto :goto_4

    .line 68
    :cond_6
    iput-boolean v2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeEnumUsingName:Z

    goto :goto_4

    .line 70
    :cond_7
    iput-boolean v2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->disableCircularReferenceDetect:Z

    goto :goto_4

    .line 72
    :cond_8
    iput-boolean v2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->browserCompatible:Z

    goto :goto_4

    .line 85
    :cond_9
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    array-length v5, v3

    move v0, v1

    :goto_5
    if-lt v0, v5, :cond_a

    move v0, v1

    .line 92
    :goto_6
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->format:Ljava/lang/String;

    .line 94
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->format:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_c

    .line 98
    :goto_7
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v5

    array-length v6, v5

    move v3, v1

    :goto_8
    if-lt v3, v6, :cond_d

    .line 110
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v3

    iput v3, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    goto :goto_1

    .line 85
    :cond_a
    aget-object v6, v3, v0

    .line 86
    invoke-virtual {v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v6

    sget v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WRITE_MAP_NULL_FEATURES:I

    and-int/2addr v6, v7

    if-nez v6, :cond_b

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    move v0, v2

    .line 88
    goto :goto_6

    .line 95
    :cond_c
    iput-object v8, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->format:Ljava/lang/String;

    goto :goto_7

    .line 98
    :cond_d
    aget-object v7, v5, v3

    .line 99
    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v7, v8, :cond_e

    .line 101
    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v7, v8, :cond_f

    .line 103
    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v7, v8, :cond_10

    .line 105
    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v7, v8, :cond_11

    .line 98
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 100
    :cond_e
    iput-boolean v2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeEnumUsingToString:Z

    goto :goto_9

    .line 102
    :cond_f
    iput-boolean v2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeEnumUsingName:Z

    goto :goto_9

    .line 104
    :cond_10
    iput-boolean v2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->disableCircularReferenceDetect:Z

    goto :goto_9

    .line 106
    :cond_11
    iput-boolean v2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->browserCompatible:Z

    goto :goto_9

    .line 115
    :cond_12
    iget-object v0, p2, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 116
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->isAnnotationPresentManyToMany(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2
.end method


# virtual methods
.method public compareTo(Lcom/alibaba/fastjson/serializer/FieldSerializer;)I
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 33
    check-cast p1, Lcom/alibaba/fastjson/serializer/FieldSerializer;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->compareTo(Lcom/alibaba/fastjson/serializer/FieldSerializer;)I

    move-result v0

    return v0
.end method

.method public getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->format:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 156
    :cond_0
    return-object v0

    .line 149
    :cond_1
    if-eqz v0, :cond_0

    .line 150
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v2, Ljava/util/Date;

    if-ne v1, v2, :cond_0

    .line 151
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->format:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 152
    sget-object v2, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 153
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyValueDirect(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 141
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->persistenceXToMany:Z

    if-nez v1, :cond_1

    .line 144
    :cond_0
    return-object v0

    .line 141
    :cond_1
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->isHibernateInitialized(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 142
    return-object v0
.end method

.method public writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 122
    iget-boolean v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-nez v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->un_quoted_fieldPrefix:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 135
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->un_quoted_fieldPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 137
    :goto_1
    return-void

    .line 123
    :cond_0
    iget-boolean v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-nez v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->double_quoted_fieldPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->single_quoted_fieldPrefix:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 127
    :goto_2
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->single_quoted_fieldPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 125
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\':"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->single_quoted_fieldPrefix:Ljava/lang/String;

    goto :goto_2

    .line 133
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->un_quoted_fieldPrefix:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 165
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->runtimeInfo:Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;

    if-eqz v0, :cond_6

    .line 197
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->runtimeInfo:Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;

    .line 199
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->disableCircularReferenceDetect:Z

    if-nez v1, :cond_10

    .line 200
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget v5, v1, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    .line 202
    :goto_1
    if-eqz p2, :cond_11

    .line 239
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-boolean v1, v1, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    if-nez v1, :cond_1a

    .line 251
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 253
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;->runtimeFieldClass:Ljava/lang/Class;

    if-ne v1, v2, :cond_1c

    .line 254
    :cond_1
    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;->fieldSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .line 259
    :goto_2
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->format:Ljava/lang/String;

    if-nez v2, :cond_1d

    .line 268
    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-boolean v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-nez v2, :cond_1f

    .line 282
    :cond_3
    iget v2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v2, v3

    if-nez v2, :cond_21

    .line 289
    :cond_4
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->browserCompatible:Z

    if-nez v1, :cond_22

    .line 298
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 299
    return-void

    .line 168
    :cond_6
    if-eqz p2, :cond_8

    .line 171
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    .line 175
    :goto_4
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v0

    .line 177
    if-nez v0, :cond_9

    .line 181
    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->format:Ljava/lang/String;

    if-nez v0, :cond_a

    move-object v0, v2

    .line 189
    :goto_5
    if-eqz v0, :cond_f

    .line 194
    :goto_6
    new-instance v3, Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;

    invoke-direct {v3, v0, v1}, Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;-><init>(Lcom/alibaba/fastjson/serializer/ObjectSerializer;Ljava/lang/Class;)V

    iput-object v3, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->runtimeInfo:Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;

    goto :goto_0

    .line 169
    :cond_8
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object v1, v0

    goto :goto_4

    .line 177
    :cond_9
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serializeUsing()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Void;

    if-eq v3, v4, :cond_7

    .line 178
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serializeUsing()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .line 179
    iput-boolean v6, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->serializeUsing:Z

    goto :goto_6

    .line 182
    :cond_a
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_c

    .line 183
    :cond_b
    new-instance v0, Lcom/alibaba/fastjson/serializer/DoubleSerializer;

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->format:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/serializer/DoubleSerializer;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    const-class v0, Ljava/lang/Double;

    .line 182
    if-eq v1, v0, :cond_b

    .line 184
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_e

    .line 185
    :cond_d
    new-instance v0, Lcom/alibaba/fastjson/serializer/FloatCodec;

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->format:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/serializer/FloatCodec;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    const-class v0, Ljava/lang/Float;

    .line 184
    if-eq v1, v0, :cond_d

    move-object v0, v2

    goto :goto_5

    .line 190
    :cond_f
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    goto :goto_6

    .line 199
    :cond_10
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget v1, v1, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 200
    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v3

    or-int v5, v1, v3

    goto/16 :goto_1

    .line 203
    :cond_11
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 205
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    if-eq v3, v4, :cond_14

    .line 211
    :cond_12
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;->runtimeFieldClass:Ljava/lang/Class;

    const-class v4, Ljava/lang/Number;

    .line 213
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_15

    const-class v4, Ljava/lang/String;

    .line 216
    if-eq v4, v3, :cond_16

    const-class v4, Ljava/lang/Boolean;

    .line 219
    if-eq v4, v3, :cond_17

    const-class v4, Ljava/util/Collection;

    .line 222
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 227
    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer$RuntimeSerializerInfo;->fieldSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .line 229
    sget v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WRITE_MAP_NULL_FEATURES:I

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_19

    .line 235
    :cond_13
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 236
    return-void

    .line 205
    :cond_14
    sget v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WRITE_MAP_NULL_FEATURES:I

    .line 206
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 207
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 208
    return-void

    .line 214
    :cond_15
    iget v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(II)V

    .line 215
    return-void

    .line 217
    :cond_16
    iget v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(II)V

    .line 218
    return-void

    .line 220
    :cond_17
    iget v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(II)V

    .line 221
    return-void

    .line 223
    :cond_18
    iget v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(II)V

    .line 224
    return-void

    .line 229
    :cond_19
    instance-of v3, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v3, :cond_13

    .line 231
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 232
    return-void

    .line 240
    :cond_1a
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeEnumUsingName:Z

    if-nez v1, :cond_1b

    .line 245
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeEnumUsingToString:Z

    if-eqz v1, :cond_0

    .line 246
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 247
    return-void

    .line 241
    :cond_1b
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 242
    return-void

    .line 253
    :cond_1c
    iget-boolean v2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->serializeUsing:Z

    if-nez v2, :cond_1

    .line 256
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    goto/16 :goto_2

    .line 259
    :cond_1d
    instance-of v2, v0, Lcom/alibaba/fastjson/serializer/DoubleSerializer;

    if-nez v2, :cond_2

    instance-of v2, v0, Lcom/alibaba/fastjson/serializer/FloatCodec;

    if-nez v2, :cond_2

    .line 260
    instance-of v1, v0, Lcom/alibaba/fastjson/serializer/ContextObjectSerializer;

    if-nez v1, :cond_1e

    .line 263
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->format:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeWithFormat(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    :goto_7
    return-void

    .line 261
    :cond_1e
    check-cast v0, Lcom/alibaba/fastjson/serializer/ContextObjectSerializer;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldContext:Lcom/alibaba/fastjson/serializer/BeanContext;

    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/fastjson/serializer/ContextObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/BeanContext;)V

    goto :goto_7

    .line 269
    :cond_1f
    instance-of v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-nez v2, :cond_20

    .line 275
    instance-of v2, v0, Lcom/alibaba/fastjson/serializer/MapSerializer;

    if-eqz v2, :cond_3

    .line 276
    check-cast v0, Lcom/alibaba/fastjson/serializer/MapSerializer;

    .line 277
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/serializer/MapSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    .line 278
    return-void

    .line 270
    :cond_20
    check-cast v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 271
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    .line 272
    return-void

    .line 282
    :cond_21
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-eq v1, v2, :cond_4

    const-class v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 284
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 285
    check-cast v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    move-object v1, p1

    move-object v2, p2

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    .line 286
    return-void

    .line 289
    :cond_22
    if-eqz p2, :cond_5

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_25

    :cond_23
    move-object v1, p2

    .line 291
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide v8, 0x1fffffffffffffL

    .line 292
    cmp-long v1, v2, v8

    if-lez v1, :cond_26

    move v1, v6

    :goto_8
    if-nez v1, :cond_24

    const-wide v8, -0x1fffffffffffffL

    cmp-long v1, v2, v8

    if-ltz v1, :cond_27

    :goto_9
    if-nez v6, :cond_5

    .line 293
    :cond_24
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 294
    return-void

    .line 289
    :cond_25
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    if-eq v1, v2, :cond_23

    goto/16 :goto_3

    :cond_26
    move v1, v7

    .line 292
    goto :goto_8

    :cond_27
    move v6, v7

    goto :goto_9
.end method
