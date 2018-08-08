.class Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
.super Ljava/lang/Object;
.source "ASMSerializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Context"
.end annotation


# static fields
.field static final features:I = 0x5

.field static fieldName:I = 0x0

.field static final obj:I = 0x2

.field static original:I = 0x0

.field static final paramFieldName:I = 0x3

.field static final paramFieldType:I = 0x4

.field static processValue:I = 0x0

.field static final serializer:I = 0x1


# instance fields
.field private final beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

.field private final className:Ljava/lang/String;

.field private final getters:[Lcom/alibaba/fastjson/util/FieldInfo;

.field private final nonContext:Z

.field private variantIndex:I

.field private variants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final writeDirect:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x6

    .line 49
    sput v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    const/4 v0, 0x7

    .line 50
    sput v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    const/16 v0, 0x8

    .line 51
    sput v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->processValue:I

    return-void
.end method

.method public constructor <init>([Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;Ljava/lang/String;ZZ)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->variants:Ljava/util/Map;

    const/16 v1, 0x9

    .line 59
    iput v1, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->variantIndex:I

    .line 67
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->getters:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 68
    iput-object p3, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->className:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    .line 70
    iput-boolean p4, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->writeDirect:Z

    .line 71
    if-eqz p5, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->nonContext:Z

    .line 72
    return-void

    .line 71
    :cond_1
    iget-object v1, p2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->writeDirect:Z

    return v0
.end method

.method static synthetic access$100(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->variantIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->nonContext:Z

    return v0
.end method

.method static synthetic access$300(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->className:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    return-object v0
.end method


# virtual methods
.method public getFieldOrinal(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 95
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->getters:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v2, v2

    :goto_0
    if-lt v1, v2, :cond_0

    .line 102
    :goto_1
    return v0

    .line 96
    :cond_0
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->getters:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v3, v3, v1

    .line 97
    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 99
    goto :goto_1
.end method

.method public var(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->variants:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 76
    if-eqz v0, :cond_0

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->variants:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 80
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->variants:Ljava/util/Map;

    iget v1, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->variantIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->variantIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public var(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->variants:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 85
    if-eqz v0, :cond_0

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->variants:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 90
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->variants:Ljava/util/Map;

    iget v1, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->variantIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->variantIndex:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->variantIndex:I

    goto :goto_0
.end method
