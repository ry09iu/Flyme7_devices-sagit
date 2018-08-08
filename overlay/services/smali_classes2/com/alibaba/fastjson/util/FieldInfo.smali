.class public Lcom/alibaba/fastjson/util/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/alibaba/fastjson/util/FieldInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final alternateNames:[Ljava/lang/String;

.field public final declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final field:Ljava/lang/reflect/Field;

.field public final fieldAccess:Z

.field private final fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

.field public final fieldClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final fieldTransient:Z

.field public final fieldType:Ljava/lang/reflect/Type;

.field public final format:Ljava/lang/String;

.field public final getOnly:Z

.field public final isEnum:Z

.field public final jsonDirect:Z

.field public final label:Ljava/lang/String;

.field public final method:Ljava/lang/reflect/Method;

.field private final methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

.field public final name:Ljava/lang/String;

.field public final name_chars:[C

.field private ordinal:I

.field public final parserFeatures:I

.field public final serialzeFeatures:I

.field public final unwrapped:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Field;",
            "III)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 58
    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 60
    iput-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 61
    iput-object p4, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 62
    iput-object v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 63
    iput-object p5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 64
    iput p6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 65
    iput p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    .line 66
    iput p8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    .line 68
    invoke-virtual {p3}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    .line 70
    if-nez p5, :cond_0

    .line 75
    iput-boolean v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    .line 76
    iput-boolean v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 79
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->genFieldNameChars()[C

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    .line 81
    if-nez p5, :cond_3

    :goto_1
    const-string/jumbo v0, ""

    .line 85
    iput-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    .line 86
    iput-object v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 87
    iput-object v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 88
    iput-boolean v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    .line 89
    iput-boolean v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->jsonDirect:Z

    .line 90
    iput-boolean v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    .line 91
    iput-object v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    .line 92
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    .line 93
    return-void

    .line 71
    :cond_0
    invoke-virtual {p5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    .line 72
    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 73
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_2

    .line 82
    :cond_3
    invoke-static {p5}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "III",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 25
    iput v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 106
    if-nez p3, :cond_4

    .line 113
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 115
    iput-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 116
    iput p6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 117
    iput p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    .line 118
    iput p8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    .line 119
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 120
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 122
    if-nez p3, :cond_5

    .line 128
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 129
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    .line 132
    :goto_1
    if-nez p11, :cond_a

    :cond_1
    const-string/jumbo v1, ""

    .line 135
    iput-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    :goto_2
    const/4 v2, 0x0

    .line 139
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v3

    .line 142
    if-nez v3, :cond_b

    .line 152
    const/4 v1, 0x0

    .line 153
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    const/4 v3, 0x0

    .line 154
    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    .line 156
    :goto_3
    iput-object v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    .line 158
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->genFieldNameChars()[C

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    .line 160
    if-nez p2, :cond_d

    .line 164
    :goto_4
    if-nez p3, :cond_e

    .line 168
    :goto_5
    const/4 v4, 0x0

    .line 171
    if-nez p2, :cond_f

    .line 185
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 186
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 187
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 188
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v4

    .line 190
    :goto_6
    iput-boolean v4, p0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    .line 191
    if-nez v1, :cond_13

    :cond_2
    const/4 v1, 0x0

    :goto_7
    iput-boolean v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->jsonDirect:Z

    .line 193
    if-nez p4, :cond_14

    .line 207
    :cond_3
    instance-of v1, v2, Ljava/lang/Class;

    if-eqz v1, :cond_15

    .line 219
    :goto_8
    iput-object v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 220
    iput-object v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 222
    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    .line 223
    return-void

    .line 107
    :cond_4
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p1, v1

    .line 109
    goto :goto_0

    .line 123
    :cond_5
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    .line 124
    and-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_8

    :cond_6
    const/4 v1, 0x1

    :goto_9
    iput-boolean v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 125
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_7
    const/4 v1, 0x1

    .line 126
    :goto_a
    iput-boolean v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    goto :goto_1

    .line 124
    :cond_8
    if-eqz p2, :cond_6

    const/4 v1, 0x0

    goto :goto_9

    .line 126
    :cond_9
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->isTransient(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x0

    goto :goto_a

    .line 132
    :cond_a
    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 133
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    goto/16 :goto_2

    .line 143
    :cond_b
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_c

    .line 148
    :goto_b
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->jsonDirect()Z

    move-result v2

    .line 149
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->unwrapped()Z

    move-result v4

    iput-boolean v4, p0, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    .line 150
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->alternateNames()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    move v6, v2

    move-object v2, v1

    move v1, v6

    goto/16 :goto_3

    :cond_c
    const/4 v1, 0x0

    .line 146
    goto :goto_b

    .line 161
    :cond_d
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    goto/16 :goto_4

    .line 165
    :cond_e
    invoke-static {p3}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    goto/16 :goto_5

    .line 173
    :cond_f
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    const/4 v5, 0x1

    if-eq v3, v5, :cond_11

    .line 176
    array-length v3, v2

    const/4 v5, 0x2

    if-eq v3, v5, :cond_12

    .line 179
    :cond_10
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 180
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 181
    const/4 v4, 0x1

    .line 183
    :goto_c
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    goto/16 :goto_6

    :cond_11
    const/4 v3, 0x0

    .line 174
    aget-object v3, v2, v3

    .line 175
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v5, 0x0

    aget-object v2, v2, v5

    goto :goto_c

    :cond_12
    const/4 v3, 0x0

    .line 176
    aget-object v3, v2, v3

    const-class v5, Ljava/lang/String;

    if-ne v3, v5, :cond_10

    const/4 v3, 0x1

    aget-object v3, v2, v3

    const-class v5, Ljava/lang/Object;

    if-ne v3, v5, :cond_10

    const/4 v3, 0x0

    .line 177
    aget-object v2, v2, v3

    move-object v3, v2

    goto :goto_c

    :cond_13
    const-class v1, Ljava/lang/String;

    .line 191
    if-ne v3, v1, :cond_2

    const/4 v1, 0x1

    goto/16 :goto_7

    :cond_14
    const-class v1, Ljava/lang/Object;

    .line 193
    if-ne v3, v1, :cond_3

    instance-of v1, v2, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_3

    move-object v1, v2

    .line 194
    check-cast v1, Ljava/lang/reflect/TypeVariable;

    .line 195
    invoke-static {p4, p5, v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getInheritGenericType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 196
    if-eqz v1, :cond_3

    .line 197
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 198
    iput-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 200
    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    .line 201
    return-void

    .line 208
    :cond_15
    if-nez p5, :cond_16

    move-object p5, p4

    :cond_16
    invoke-static {p4, p5, v2}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 210
    if-ne v1, v2, :cond_17

    move-object v2, v1

    goto/16 :goto_8

    .line 211
    :cond_17
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-nez v2, :cond_18

    .line 213
    instance-of v2, v1, Ljava/lang/Class;

    if-nez v2, :cond_19

    move-object v2, v1

    goto/16 :goto_8

    .line 212
    :cond_18
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    move-object v2, v1

    goto/16 :goto_8

    .line 214
    :cond_19
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    move-object v2, v1

    goto/16 :goto_8
.end method

.method private static getArgument([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 317
    if-nez p2, :cond_1

    .line 318
    :cond_0
    return v2

    .line 317
    :cond_1
    array-length v0, p1

    if-eqz v0, :cond_0

    move v1, v2

    move v3, v2

    .line 322
    :goto_0
    array-length v0, p0

    if-lt v1, v0, :cond_2

    .line 342
    return v3

    .line 323
    :cond_2
    aget-object v0, p0, v1

    .line 324
    instance-of v5, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v5, :cond_4

    .line 332
    instance-of v5, v0, Ljava/lang/reflect/TypeVariable;

    if-nez v5, :cond_5

    .line 322
    :cond_3
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 325
    :cond_4
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 326
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 327
    invoke-static {v5, p1, p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getArgument([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z

    move-result v6

    .line 328
    if-eqz v6, :cond_3

    .line 329
    new-instance v3, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {v3, v5, v6, v0}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    aput-object v3, p0, v1

    move v3, v4

    .line 330
    goto :goto_1

    :cond_5
    move v5, v3

    move v3, v2

    .line 333
    :goto_2
    array-length v6, p1

    if-lt v3, v6, :cond_6

    move v3, v5

    goto :goto_1

    .line 334
    :cond_6
    aget-object v6, p1, v3

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 333
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 335
    :cond_7
    aget-object v5, p2, v3

    aput-object v5, p0, v1

    move v5, v4

    .line 336
    goto :goto_3
.end method

.method public static getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 254
    if-nez p0, :cond_1

    .line 255
    :cond_0
    return-object p2

    .line 254
    :cond_1
    if-eqz p1, :cond_0

    .line 258
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_4

    .line 270
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isGenericParamType(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 274
    instance-of v0, p2, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_7

    .line 288
    :cond_2
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_9

    .line 313
    :cond_3
    return-object p2

    :cond_4
    move-object v0, p2

    .line 259
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 260
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 261
    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 262
    if-ne v0, v1, :cond_5

    .line 267
    return-object p2

    .line 263
    :cond_5
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 264
    return-object v0

    .line 271
    :cond_6
    return-object p2

    .line 275
    :cond_7
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 276
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    move-object v1, p2

    .line 277
    check-cast v1, Ljava/lang/reflect/TypeVariable;

    .line 279
    invoke-virtual {v3}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    .line 280
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 281
    aget-object v4, v3, v2

    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    :cond_8
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    .line 283
    return-object v0

    :cond_9
    move-object v0, p2

    .line 289
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 291
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 294
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_a

    .line 297
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_b

    .line 302
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    move-object p1, v0

    .line 305
    :goto_1
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/alibaba/fastjson/util/FieldInfo;->getArgument([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z

    move-result v1

    .line 306
    if-eqz v1, :cond_3

    .line 307
    new-instance v1, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 308
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {v1, v3, v2, v0}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 309
    return-object v1

    .line 295
    :cond_a
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 296
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    goto :goto_1

    .line 298
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 299
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    move-object p1, v1

    move-object v1, v2

    goto :goto_1
.end method

.method private static getInheritGenericType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 346
    invoke-interface {p2}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    .line 349
    instance-of v0, v0, Ljava/lang/Class;

    if-nez v0, :cond_2

    move-object v1, v2

    .line 354
    :goto_0
    if-eq v1, p0, :cond_3

    move-object v3, v2

    .line 360
    :goto_1
    if-nez p0, :cond_5

    .line 372
    :cond_0
    :goto_2
    if-nez v3, :cond_7

    .line 373
    :cond_1
    return-object v2

    .line 350
    :cond_2
    invoke-interface {p2}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    goto :goto_0

    .line 355
    :cond_3
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_4

    move-object v3, v2

    goto :goto_2

    .line 356
    :cond_4
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 357
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    goto :goto_2

    :cond_5
    const-class v0, Ljava/lang/Object;

    .line 360
    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_0

    .line 361
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 363
    instance-of v5, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v5, :cond_6

    move-object v0, v3

    .line 360
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    move-object v3, v0

    goto :goto_1

    .line 364
    :cond_6
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 365
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 366
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    invoke-static {v0, v5, v3}, Lcom/alibaba/fastjson/util/FieldInfo;->getArgument([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z

    goto :goto_3

    .line 372
    :cond_7
    if-eqz v1, :cond_1

    .line 377
    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    move v0, v4

    .line 378
    :goto_4
    array-length v4, v1

    if-lt v0, v4, :cond_8

    .line 385
    :goto_5
    return-object v2

    .line 379
    :cond_8
    aget-object v4, v1, v0

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 380
    :cond_9
    aget-object v2, v3, v0

    goto :goto_5
.end method


# virtual methods
.method public compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 413
    iget v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    iget v3, p1, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    if-lt v0, v3, :cond_9

    .line 417
    iget v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    iget v3, p1, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    if-gt v0, v3, :cond_a

    .line 421
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 423
    if-nez v0, :cond_b

    .line 427
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->getDeclaredClass()Ljava/lang/Class;

    move-result-object v0

    .line 428
    invoke-virtual {p1}, Lcom/alibaba/fastjson/util/FieldInfo;->getDeclaredClass()Ljava/lang/Class;

    move-result-object v3

    .line 430
    if-nez v0, :cond_c

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-nez v0, :cond_e

    :cond_1
    move v0, v2

    .line 441
    :goto_0
    iget-object v3, p1, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-nez v3, :cond_f

    .line 443
    :cond_2
    :goto_1
    if-nez v0, :cond_10

    .line 447
    :cond_3
    if-nez v2, :cond_11

    .line 451
    :cond_4
    iget-object v0, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_12

    .line 455
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_13

    .line 459
    :cond_6
    iget-object v0, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "java."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 463
    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 467
    :cond_8
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 414
    :cond_9
    return v5

    .line 418
    :cond_a
    return v1

    .line 424
    :cond_b
    return v0

    .line 430
    :cond_c
    if-eqz v3, :cond_0

    if-eq v0, v3, :cond_0

    .line 431
    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 435
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    return v1

    .line 432
    :cond_d
    return v5

    .line 440
    :cond_e
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-ne v0, v3, :cond_1

    move v0, v1

    goto :goto_0

    .line 441
    :cond_f
    iget-object v3, p1, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-ne v3, v4, :cond_2

    move v2, v1

    goto :goto_1

    .line 443
    :cond_10
    if-nez v2, :cond_3

    .line 444
    return v1

    .line 447
    :cond_11
    if-nez v0, :cond_4

    .line 448
    return v5

    .line 451
    :cond_12
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_5

    .line 452
    return v1

    .line 455
    :cond_13
    iget-object v0, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_6

    .line 456
    return v5

    .line 459
    :cond_14
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "java."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 460
    return v1

    .line 463
    :cond_15
    iget-object v0, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 464
    return v5
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    return v0
.end method

.method protected genFieldNameChars()[C
    .locals 7

    .prologue
    const/16 v6, 0x22

    const/4 v5, 0x0

    .line 226
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 227
    add-int/lit8 v1, v0, 0x3

    new-array v1, v1, [C

    .line 228
    iget-object v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v5, v3, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 229
    aput-char v6, v1, v5

    .line 230
    add-int/lit8 v2, v0, 0x1

    aput-char v6, v1, v2

    .line 231
    add-int/lit8 v0, v0, 0x2

    const/16 v2, 0x3a

    aput-char v2, v1, v0

    .line 232
    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 483
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 485
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 483
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 484
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getAnnation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 237
    if-eq p1, v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    .line 246
    :goto_0
    if-eqz v0, :cond_3

    .line 250
    :cond_0
    :goto_1
    return-object v0

    .line 238
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v0

    return-object v0

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_0

    .line 246
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_1
.end method

.method public getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    return-object v0

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    return-object v0
.end method

.method protected getDeclaredClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 401
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    .line 409
    return-object v1

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getMember()Ljava/lang/reflect/Member;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    return-object v0

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 489
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 495
    return-void

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    return-void
.end method

.method public setAccessible()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 498
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 504
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 500
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    return-object v0
.end method
