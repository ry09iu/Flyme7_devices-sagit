.class Lcom/alibaba/fastjson/JSONPath$FilterGroup;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FilterGroup"
.end annotation


# instance fields
.field private and:Z

.field private fitlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/JSONPath$Filter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/JSONPath$Filter;Lcom/alibaba/fastjson/JSONPath$Filter;Z)V
    .locals 2

    .prologue
    .line 2309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2310
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONPath$FilterGroup;->fitlers:Ljava/util/List;

    .line 2311
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$FilterGroup;->fitlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2312
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$FilterGroup;->fitlers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2313
    iput-boolean p3, p0, Lcom/alibaba/fastjson/JSONPath$FilterGroup;->and:Z

    .line 2314
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/JSONPath$Filter;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2317
    iput-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$FilterGroup;->and:Z

    .line 2318
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$FilterGroup;->fitlers:Ljava/util/List;

    .line 2319
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2322
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath$FilterGroup;->and:Z

    if-nez v0, :cond_1

    .line 2330
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$FilterGroup;->fitlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2335
    return v2

    .line 2323
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$FilterGroup;->fitlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2328
    return v3

    .line 2323
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 2324
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alibaba/fastjson/JSONPath$Filter;->apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2325
    return v2

    .line 2330
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 2331
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alibaba/fastjson/JSONPath$Filter;->apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2332
    return v3
.end method
