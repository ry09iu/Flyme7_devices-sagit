.class Lcom/alibaba/fastjson/JSONPath$StringOpSegement;
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
    name = "StringOpSegement"
.end annotation


# instance fields
.field private final op:Lcom/alibaba/fastjson/JSONPath$Operator;

.field private final propertyName:Ljava/lang/String;

.field private final propertyNameHash:J

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V
    .locals 2

    .prologue
    .line 2223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2224
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->propertyName:Ljava/lang/String;

    .line 2225
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->propertyNameHash:J

    .line 2226
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->value:Ljava/lang/String;

    .line 2227
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 2228
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2231
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->propertyName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->propertyNameHash:J

    invoke-virtual {p1, p4, v2, v4, v5}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v2

    .line 2233
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v4, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v3, v4, :cond_0

    .line 2235
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v4, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v3, v4, :cond_1

    .line 2239
    if-eqz v2, :cond_3

    .line 2243
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 2244
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v4, Lcom/alibaba/fastjson/JSONPath$Operator;->GE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v3, v4, :cond_4

    .line 2246
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v4, Lcom/alibaba/fastjson/JSONPath$Operator;->GT:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v3, v4, :cond_6

    .line 2248
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v4, Lcom/alibaba/fastjson/JSONPath$Operator;->LE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v3, v4, :cond_8

    .line 2250
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v4, Lcom/alibaba/fastjson/JSONPath$Operator;->LT:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v3, v4, :cond_a

    .line 2254
    return v0

    .line 2234
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2236
    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->value:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 2240
    :cond_3
    return v0

    .line 2245
    :cond_4
    if-lez v2, :cond_5

    :goto_1
    return v0

    :cond_5
    move v0, v1

    goto :goto_1

    .line 2247
    :cond_6
    if-ltz v2, :cond_7

    :goto_2
    return v0

    :cond_7
    move v0, v1

    goto :goto_2

    .line 2249
    :cond_8
    if-gez v2, :cond_9

    :goto_3
    return v0

    :cond_9
    move v0, v1

    goto :goto_3

    .line 2251
    :cond_a
    if-gtz v2, :cond_b

    :goto_4
    return v0

    :cond_b
    move v0, v1

    goto :goto_4
.end method
