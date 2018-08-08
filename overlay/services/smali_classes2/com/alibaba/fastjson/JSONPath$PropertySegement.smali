.class Lcom/alibaba/fastjson/JSONPath$PropertySegement;
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
    name = "PropertySegement"
.end annotation


# instance fields
.field private final deep:Z

.field private final propertyName:Ljava/lang/String;

.field private final propertyNameHash:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 1655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1656
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->propertyName:Ljava/lang/String;

    .line 1657
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->propertyNameHash:J

    .line 1658
    iput-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->deep:Z

    .line 1659
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/fastjson/JSONPath$PropertySegement;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->propertyName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1662
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->deep:Z

    if-nez v0, :cond_0

    .line 1668
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->propertyName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->propertyNameHash:J

    invoke-virtual {p1, p3, v0, v2, v3}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1663
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1664
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->propertyName:Ljava/lang/String;

    invoke-virtual {p1, p3, v1, v0}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    .line 1665
    return-object v0
.end method

.method public remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->propertyName:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson/JSONPath;->removePropertyValue(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 1673
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->deep:Z

    if-nez v0, :cond_0

    .line 1676
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->propertyName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->propertyNameHash:J

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/JSONPath;->setPropertyValue(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)Z

    .line 1678
    :goto_0
    return-void

    .line 1674
    :cond_0
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->propertyName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->propertyNameHash:J

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/JSONPath;->deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_0
.end method
