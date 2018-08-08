.class Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;
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
    name = "DoubleOpSegement"
.end annotation


# instance fields
.field private final op:Lcom/alibaba/fastjson/JSONPath$Operator;

.field private final propertyName:Ljava/lang/String;

.field private final propertyNameHash:J

.field private final value:D


# direct methods
.method public constructor <init>(Ljava/lang/String;DLcom/alibaba/fastjson/JSONPath$Operator;)V
    .locals 2

    .prologue
    .line 2046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2047
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->propertyName:Ljava/lang/String;

    .line 2048
    iput-wide p2, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    .line 2049
    iput-object p4, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 2050
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->propertyNameHash:J

    .line 2051
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2054
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->propertyName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->propertyNameHash:J

    invoke-virtual {p1, p4, v0, v4, v5}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    .line 2056
    if-eqz v0, :cond_0

    .line 2060
    instance-of v3, v0, Ljava/lang/Number;

    if-eqz v3, :cond_1

    .line 2064
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 2066
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v3, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v0, v3, :cond_2

    .line 2068
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v3, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v0, v3, :cond_4

    .line 2070
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v3, Lcom/alibaba/fastjson/JSONPath$Operator;->GE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v0, v3, :cond_6

    .line 2072
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v3, Lcom/alibaba/fastjson/JSONPath$Operator;->GT:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v0, v3, :cond_8

    .line 2074
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v3, Lcom/alibaba/fastjson/JSONPath$Operator;->LE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v0, v3, :cond_a

    .line 2076
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v3, Lcom/alibaba/fastjson/JSONPath$Operator;->LT:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v0, v3, :cond_c

    .line 2080
    return v2

    .line 2057
    :cond_0
    return v2

    .line 2061
    :cond_1
    return v2

    .line 2067
    :cond_2
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpl-double v0, v4, v6

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    return v0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 2069
    :cond_4
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_5

    :goto_1
    return v1

    :cond_5
    move v1, v2

    goto :goto_1

    .line 2071
    :cond_6
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_7

    :goto_2
    return v1

    :cond_7
    move v1, v2

    goto :goto_2

    .line 2073
    :cond_8
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpl-double v0, v4, v6

    if-lez v0, :cond_9

    :goto_3
    return v1

    :cond_9
    move v1, v2

    goto :goto_3

    .line 2075
    :cond_a
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_b

    :goto_4
    return v1

    :cond_b
    move v1, v2

    goto :goto_4

    .line 2077
    :cond_c
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpg-double v0, v4, v6

    if-gez v0, :cond_d

    :goto_5
    return v1

    :cond_d
    move v1, v2

    goto :goto_5
.end method
