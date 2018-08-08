.class public Lcom/alibaba/fastjson/JSONPath$FilterSegement;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterSegement"
.end annotation


# instance fields
.field private final filter:Lcom/alibaba/fastjson/JSONPath$Filter;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V
    .locals 0

    .prologue
    .line 2267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2268
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$FilterSegement;->filter:Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 2269
    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2273
    if-eqz p3, :cond_0

    .line 2277
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 2279
    instance-of v0, p3, Ljava/lang/Iterable;

    if-nez v0, :cond_1

    .line 2292
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$FilterSegement;->filter:Lcom/alibaba/fastjson/JSONPath$Filter;

    invoke-interface {v0, p1, p2, p3, p3}, Lcom/alibaba/fastjson/JSONPath$Filter;->apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2296
    return-object v2

    .line 2274
    :cond_0
    return-object v2

    :cond_1
    move-object v0, p3

    .line 2280
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2281
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2289
    return-object v1

    .line 2282
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2284
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$FilterSegement;->filter:Lcom/alibaba/fastjson/JSONPath$Filter;

    invoke-interface {v3, p1, p2, p3, v2}, Lcom/alibaba/fastjson/JSONPath$Filter;->apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2285
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2293
    :cond_4
    return-object p3
.end method
