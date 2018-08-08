.class Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;
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
    name = "IntObjInSegement"
.end annotation


# instance fields
.field private final not:Z

.field private final propertyName:Ljava/lang/String;

.field private final propertyNameHash:J

.field private final values:[Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Long;Z)V
    .locals 2

    .prologue
    .line 1927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1928
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->propertyName:Ljava/lang/String;

    .line 1929
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->propertyNameHash:J

    .line 1930
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->values:[Ljava/lang/Long;

    .line 1931
    iput-boolean p3, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    .line 1932
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1935
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->propertyName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->propertyNameHash:J

    invoke-virtual {p1, p4, v0, v4, v5}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    .line 1937
    if-eqz v0, :cond_1

    .line 1947
    instance-of v3, v0, Ljava/lang/Number;

    if-nez v3, :cond_5

    .line 1960
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    return v0

    .line 1938
    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->values:[Ljava/lang/Long;

    array-length v4, v3

    move v0, v1

    :goto_0
    if-lt v0, v4, :cond_2

    .line 1944
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    return v0

    .line 1938
    :cond_2
    aget-object v5, v3, v0

    .line 1939
    if-eqz v5, :cond_3

    .line 1938
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1940
    :cond_3
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    return v0

    :cond_4
    move v0, v2

    goto :goto_1

    .line 1948
    :cond_5
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 1949
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->values:[Ljava/lang/Long;

    array-length v6, v3

    move v0, v1

    :goto_2
    if-ge v0, v6, :cond_0

    aget-object v7, v3, v0

    .line 1950
    if-eqz v7, :cond_7

    .line 1954
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v7, v8, v4

    if-nez v7, :cond_7

    .line 1955
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    if-eqz v0, :cond_6

    :goto_3
    return v1

    :cond_6
    move v1, v2

    goto :goto_3

    .line 1949
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
