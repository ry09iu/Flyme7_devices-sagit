.class Lcom/alibaba/fastjson/asm/TypeCollector$1;
.super Ljava/util/HashMap;
.source "TypeCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/asm/TypeCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "int"

    const-string/jumbo v1, "I"

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/asm/TypeCollector$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "boolean"

    const-string/jumbo v1, "Z"

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/asm/TypeCollector$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "byte"

    const-string/jumbo v1, "B"

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/asm/TypeCollector$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "char"

    const-string/jumbo v1, "C"

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/asm/TypeCollector$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "short"

    const-string/jumbo v1, "S"

    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/asm/TypeCollector$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "float"

    const-string/jumbo v1, "F"

    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/asm/TypeCollector$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "long"

    const-string/jumbo v1, "J"

    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/asm/TypeCollector$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "double"

    const-string/jumbo v1, "D"

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/asm/TypeCollector$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    return-void
.end method
