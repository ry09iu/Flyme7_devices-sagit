.class Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;
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
    name = "IntBetweenSegement"
.end annotation


# instance fields
.field private final endValue:J

.field private final not:Z

.field private final propertyName:Ljava/lang/String;

.field private final propertyNameHash:J

.field private final startValue:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJZ)V
    .locals 2

    .prologue
    .line 1894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1895
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->propertyName:Ljava/lang/String;

    .line 1896
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->propertyNameHash:J

    .line 1897
    iput-wide p2, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->startValue:J

    .line 1898
    iput-wide p4, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->endValue:J

    .line 1899
    iput-boolean p6, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->not:Z

    .line 1900
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1903
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->propertyName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->propertyNameHash:J

    invoke-virtual {p1, p4, v0, v4, v5}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    .line 1905
    if-eqz v0, :cond_1

    .line 1909
    instance-of v3, v0, Ljava/lang/Number;

    if-nez v3, :cond_2

    .line 1916
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->not:Z

    return v0

    .line 1906
    :cond_1
    return v1

    .line 1910
    :cond_2
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 1911
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->startValue:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    move v0, v2

    :goto_0
    if-nez v0, :cond_0

    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->endValue:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    move v0, v2

    :goto_1
    if-nez v0, :cond_0

    .line 1912
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->not:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    return v0

    :cond_3
    move v0, v1

    .line 1911
    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    .line 1912
    goto :goto_2
.end method
