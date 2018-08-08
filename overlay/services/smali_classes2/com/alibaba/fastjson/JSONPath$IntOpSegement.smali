.class Lcom/alibaba/fastjson/JSONPath$IntOpSegement;
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
    name = "IntOpSegement"
.end annotation


# instance fields
.field private final op:Lcom/alibaba/fastjson/JSONPath$Operator;

.field private final propertyName:Ljava/lang/String;

.field private final propertyNameHash:J

.field private final value:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/alibaba/fastjson/JSONPath$Operator;)V
    .locals 2

    .prologue
    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2001
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->propertyName:Ljava/lang/String;

    .line 2002
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->propertyNameHash:J

    .line 2003
    iput-wide p2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    .line 2004
    iput-object p4, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 2005
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2008
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->propertyName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->propertyNameHash:J

    invoke-virtual {p1, p4, v0, v4, v5}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    .line 2010
    if-eqz v0, :cond_0

    .line 2014
    instance-of v3, v0, Ljava/lang/Number;

    if-eqz v3, :cond_1

    .line 2018
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 2020
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v3, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v0, v3, :cond_2

    .line 2022
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v3, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v0, v3, :cond_4

    .line 2024
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v3, Lcom/alibaba/fastjson/JSONPath$Operator;->GE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v0, v3, :cond_6

    .line 2026
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v3, Lcom/alibaba/fastjson/JSONPath$Operator;->GT:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v0, v3, :cond_9

    .line 2028
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v3, Lcom/alibaba/fastjson/JSONPath$Operator;->LE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v0, v3, :cond_c

    .line 2030
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v3, Lcom/alibaba/fastjson/JSONPath$Operator;->LT:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v0, v3, :cond_f

    .line 2034
    return v2

    .line 2011
    :cond_0
    return v2

    .line 2015
    :cond_1
    return v2

    .line 2021
    :cond_2
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    return v0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 2023
    :cond_4
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5

    :goto_1
    return v1

    :cond_5
    move v1, v2

    goto :goto_1

    .line 2025
    :cond_6
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_7

    move v0, v1

    :goto_2
    if-nez v0, :cond_8

    :goto_3
    return v1

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    move v1, v2

    goto :goto_3

    .line 2027
    :cond_9
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long v0, v4, v6

    if-gtz v0, :cond_a

    move v0, v1

    :goto_4
    if-nez v0, :cond_b

    :goto_5
    return v1

    :cond_a
    move v0, v2

    goto :goto_4

    :cond_b
    move v1, v2

    goto :goto_5

    .line 2029
    :cond_c
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_d

    move v0, v1

    :goto_6
    if-nez v0, :cond_e

    :goto_7
    return v1

    :cond_d
    move v0, v2

    goto :goto_6

    :cond_e
    move v1, v2

    goto :goto_7

    .line 2031
    :cond_f
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_10

    move v0, v1

    :goto_8
    if-nez v0, :cond_11

    :goto_9
    return v1

    :cond_10
    move v0, v2

    goto :goto_8

    :cond_11
    move v1, v2

    goto :goto_9
.end method
