.class Lcom/alibaba/fastjson/JSONPath$IntInSegement;
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
    name = "IntInSegement"
.end annotation


# instance fields
.field private final not:Z

.field private final propertyName:Ljava/lang/String;

.field private final propertyNameHash:J

.field private final values:[J


# direct methods
.method public constructor <init>(Ljava/lang/String;[JZ)V
    .locals 2

    .prologue
    .line 1859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1860
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->propertyName:Ljava/lang/String;

    .line 1861
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->propertyNameHash:J

    .line 1862
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->values:[J

    .line 1863
    iput-boolean p3, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->not:Z

    .line 1864
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1867
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->propertyName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->propertyNameHash:J

    invoke-virtual {p1, p4, v0, v2, v3}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    .line 1869
    if-eqz v0, :cond_1

    .line 1873
    instance-of v2, v0, Ljava/lang/Number;

    if-nez v2, :cond_2

    .line 1882
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->not:Z

    return v0

    .line 1870
    :cond_1
    return v1

    .line 1874
    :cond_2
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 1875
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->values:[J

    array-length v5, v4

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    aget-wide v6, v4, v0

    .line 1876
    cmp-long v6, v6, v2

    if-nez v6, :cond_4

    .line 1877
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->not:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 1875
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
