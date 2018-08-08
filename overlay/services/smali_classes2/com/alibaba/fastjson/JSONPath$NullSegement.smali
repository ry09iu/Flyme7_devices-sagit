.class Lcom/alibaba/fastjson/JSONPath$NullSegement;
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
    name = "NullSegement"
.end annotation


# instance fields
.field private final propertyName:Ljava/lang/String;

.field private final propertyNameHash:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1814
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$NullSegement;->propertyName:Ljava/lang/String;

    .line 1815
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$NullSegement;->propertyNameHash:J

    .line 1816
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$NullSegement;->propertyName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/fastjson/JSONPath$NullSegement;->propertyNameHash:J

    invoke-virtual {p1, p4, v0, v2, v3}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    .line 1821
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
