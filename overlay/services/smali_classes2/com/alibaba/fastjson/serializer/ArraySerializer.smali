.class public Lcom/alibaba/fastjson/serializer/ArraySerializer;
.super Ljava/lang/Object;
.source "ArraySerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# instance fields
.field private final compObjectSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

.field private final componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/ArraySerializer;->componentType:Ljava/lang/Class;

    .line 31
    iput-object p2, p0, Lcom/alibaba/fastjson/serializer/ArraySerializer;->compObjectSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .line 32
    return-void
.end method


# virtual methods
.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v8, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 38
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 43
    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    .line 44
    array-length v9, v6

    .line 46
    iget-object v10, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, v10, p2, p3, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 50
    const/16 v0, 0x5b

    :try_start_0
    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v0, 0x0

    move v7, v0

    .line 51
    :goto_0
    if-lt v7, v9, :cond_1

    .line 70
    const/16 v0, 0x5d

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iput-object v10, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 74
    return-void

    .line 39
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 40
    return-void

    .line 52
    :cond_1
    if-nez v7, :cond_2

    .line 55
    :goto_1
    :try_start_1
    aget-object v2, v6, v7

    .line 57
    if-eqz v2, :cond_3

    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/ArraySerializer;->componentType:Ljava/lang/Class;

    if-eq v0, v1, :cond_6

    .line 66
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    .line 67
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 51
    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 53
    :cond_2
    const/16 v0, 0x2c

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 73
    :catchall_0
    move-exception v0

    .line 72
    iput-object v10, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v0

    .line 58
    :cond_3
    :try_start_2
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const-string/jumbo v0, "null"

    .line 61
    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_2

    .line 58
    :cond_5
    instance-of v0, p2, [Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string/jumbo v0, ""

    .line 59
    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 64
    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/ArraySerializer;->compObjectSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
