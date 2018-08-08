.class public Lcom/alibaba/fastjson/serializer/GuavaCodec;
.super Ljava/lang/Object;
.source "GuavaCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/GuavaCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/alibaba/fastjson/serializer/GuavaCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/GuavaCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/GuavaCodec;->instance:Lcom/alibaba/fastjson/serializer/GuavaCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 18
    instance-of v0, p2, Lcom/google/common/collect/Multimap;

    if-nez v0, :cond_0

    .line 22
    :goto_0
    return-void

    .line 19
    :cond_0
    check-cast p2, Lcom/google/common/collect/Multimap;

    .line 20
    invoke-interface {p2}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    goto :goto_0
.end method
