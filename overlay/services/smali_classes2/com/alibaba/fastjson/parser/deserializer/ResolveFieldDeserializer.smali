.class public final Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.source "ResolveFieldDeserializer.java"


# instance fields
.field private final collection:Ljava/util/Collection;

.field private final index:I

.field private final key:Ljava/lang/Object;

.field private final list:Ljava/util/List;

.field private final map:Ljava/util/Map;

.field private final parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/List;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 27
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    .line 28
    iput p3, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->index:I

    .line 29
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->list:Ljava/util/List;

    .line 31
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->key:Ljava/lang/Object;

    .line 32
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->map:Ljava/util/Map;

    .line 34
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->collection:Ljava/util/Collection;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, v1, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 53
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->index:I

    .line 55
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->list:Ljava/util/List;

    .line 57
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->key:Ljava/lang/Object;

    .line 58
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->map:Ljava/util/Map;

    .line 60
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->collection:Ljava/util/Collection;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, v1, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 40
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->index:I

    .line 42
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->list:Ljava/util/List;

    .line 44
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->key:Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->map:Ljava/util/Map;

    .line 47
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->collection:Ljava/util/Collection;

    .line 48
    return-void
.end method


# virtual methods
.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 0
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
    .line 99
    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->map:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->collection:Ljava/util/Collection;

    if-nez v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->list:Ljava/util/List;

    iget v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->index:I

    invoke-interface {v0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->list:Ljava/util/List;

    instance-of v0, v0, Lcom/alibaba/fastjson/JSONArray;

    if-nez v0, :cond_3

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->map:Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->key:Ljava/lang/Object;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->collection:Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 72
    return-void

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->list:Ljava/util/List;

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 79
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->getRelatedArray()Ljava/lang/Object;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_0

    .line 82
    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 84
    iget v3, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->index:I

    if-le v2, v3, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->getComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    if-nez v2, :cond_4

    .line 91
    :goto_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->index:I

    invoke-static {v1, v0, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0

    .line 87
    :cond_4
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->getComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v2

    invoke-static {p2, v0, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1
.end method
