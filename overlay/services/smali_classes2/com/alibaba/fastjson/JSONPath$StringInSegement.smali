.class Lcom/alibaba/fastjson/JSONPath$StringInSegement;
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
    name = "StringInSegement"
.end annotation


# instance fields
.field private final not:Z

.field private final propertyName:Ljava/lang/String;

.field private final propertyNameHash:J

.field private final values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 1971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1972
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->propertyName:Ljava/lang/String;

    .line 1973
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->propertyNameHash:J

    .line 1974
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->values:[Ljava/lang/String;

    .line 1975
    iput-boolean p3, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->not:Z

    .line 1976
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1979
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->propertyName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->propertyNameHash:J

    invoke-virtual {p1, p4, v2, v4, v5}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v3

    .line 1981
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->values:[Ljava/lang/String;

    array-length v5, v4

    move v2, v0

    :goto_0
    if-lt v2, v5, :cond_0

    .line 1989
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->not:Z

    return v0

    .line 1981
    :cond_0
    aget-object v6, v4, v2

    .line 1982
    if-eq v6, v3, :cond_2

    .line 1984
    if-nez v6, :cond_4

    .line 1981
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1983
    :cond_2
    iget-boolean v2, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->not:Z

    if-eqz v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 1984
    :cond_4
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1985
    iget-boolean v2, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->not:Z

    if-eqz v2, :cond_5

    :goto_2
    return v0

    :cond_5
    move v0, v1

    goto :goto_2
.end method
