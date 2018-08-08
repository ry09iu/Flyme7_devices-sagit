.class Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;
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
    name = "MultiPropertySegement"
.end annotation


# instance fields
.field private final propertyNames:[Ljava/lang/String;

.field private final propertyNamesHash:[J


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1691
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;->propertyNames:[Ljava/lang/String;

    .line 1692
    array-length v0, p1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;->propertyNamesHash:[J

    const/4 v0, 0x0

    .line 1693
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;->propertyNamesHash:[J

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1696
    return-void

    .line 1694
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;->propertyNamesHash:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 1693
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1699
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;->propertyNames:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    .line 1701
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;->propertyNames:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 1706
    return-object v1

    .line 1702
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;->propertyNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;->propertyNamesHash:[J

    aget-wide v4, v3, v0

    invoke-virtual {p1, p3, v2, v4, v5}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v2

    .line 1703
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1701
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
