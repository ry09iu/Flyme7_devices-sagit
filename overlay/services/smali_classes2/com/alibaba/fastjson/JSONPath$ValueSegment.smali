.class Lcom/alibaba/fastjson/JSONPath$ValueSegment;
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
    name = "ValueSegment"
.end annotation


# instance fields
.field private eq:Z

.field private final propertyName:Ljava/lang/String;

.field private final propertyNameHash:J

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2

    .prologue
    .line 1831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1829
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->eq:Z

    .line 1832
    if-eqz p2, :cond_0

    .line 1835
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->propertyName:Ljava/lang/String;

    .line 1836
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->propertyNameHash:J

    .line 1837
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->value:Ljava/lang/Object;

    .line 1838
    iput-boolean p3, p0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->eq:Z

    .line 1839
    return-void

    .line 1833
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1842
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->propertyName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->propertyNameHash:J

    invoke-virtual {p1, p4, v1, v2, v3}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v1

    .line 1843
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->value:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1844
    iget-boolean v2, p0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->eq:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 1847
    :cond_0
    :goto_0
    return v0

    .line 1845
    :cond_1
    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
