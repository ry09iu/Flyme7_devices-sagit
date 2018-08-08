.class public Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;
.super Ljava/lang/Object;
.source "MappingFastJsonValue.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/JSONSerializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BrowserSecureMask:I

.field private static final SECURITY_PREFIX:Ljava/lang/String; = "/**/"


# instance fields
.field private jsonpFunction:Ljava/lang/String;

.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    sput v0, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->BrowserSecureMask:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->value:Ljava/lang/Object;

    .line 43
    return-void
.end method


# virtual methods
.method public getJsonpFunction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->jsonpFunction:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setJsonpFunction(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->jsonpFunction:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->value:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 76
    iget-object v1, p0, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->jsonpFunction:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 82
    sget v1, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->BrowserSecureMask:I

    and-int/2addr v1, p4

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v1, "/**/"

    .line 83
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 86
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->jsonpFunction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    const/16 v1, 0x28

    .line 87
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 88
    iget-object v1, p0, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->value:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    const/16 v1, 0x29

    .line 89
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 90
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 78
    return-void

    .line 82
    :cond_2
    sget v1, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->BrowserSecureMask:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method
