.class Lcom/alibaba/fastjson/JSONPath$RangeSegement;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RangeSegement"
.end annotation


# instance fields
.field private final end:I

.field private final start:I

.field private final step:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 1765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1766
    iput p1, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegement;->start:I

    .line 1767
    iput p2, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegement;->end:I

    .line 1768
    iput p3, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegement;->step:I

    .line 1769
    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1772
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$SizeSegement;->instance:Lcom/alibaba/fastjson/JSONPath$SizeSegement;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson/JSONPath$SizeSegement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1773
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegement;->start:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegement;->start:I

    add-int/2addr v0, v2

    .line 1774
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegement;->end:I

    if-gez v1, :cond_2

    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegement;->end:I

    add-int/2addr v1, v2

    .line 1776
    :goto_1
    sub-int v3, v1, v0

    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegement;->step:I

    div-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    const/4 v4, -0x1

    .line 1777
    if-eq v3, v4, :cond_3

    .line 1781
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1782
    :goto_2
    if-le v0, v1, :cond_4

    .line 1786
    :cond_0
    return-object v4

    .line 1773
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegement;->start:I

    goto :goto_0

    .line 1774
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegement;->end:I

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 1778
    return-object v0

    .line 1782
    :cond_4
    if-ge v0, v2, :cond_0

    .line 1783
    invoke-virtual {p1, p3, v0}, Lcom/alibaba/fastjson/JSONPath;->getArrayItem(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 1784
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1782
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$RangeSegement;->step:I

    add-int/2addr v0, v3

    goto :goto_2
.end method
