.class Lcom/alibaba/fastjson/JSONPath$RlikeSegement;
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
    name = "RlikeSegement"
.end annotation


# instance fields
.field private final not:Z

.field private final pattern:Ljava/util/regex/Pattern;

.field private final propertyName:Ljava/lang/String;

.field private final propertyNameHash:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 2190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2191
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;->propertyName:Ljava/lang/String;

    .line 2192
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;->propertyNameHash:J

    .line 2193
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;->pattern:Ljava/util/regex/Pattern;

    .line 2194
    iput-boolean p3, p0, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;->not:Z

    .line 2195
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2198
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;->propertyName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;->propertyNameHash:J

    invoke-virtual {p1, p4, v1, v2, v3}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v1

    .line 2200
    if-eqz v1, :cond_1

    .line 2204
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2205
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2206
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    .line 2208
    iget-boolean v2, p0, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;->not:Z

    if-nez v2, :cond_2

    move v0, v1

    .line 2212
    :cond_0
    :goto_0
    return v0

    .line 2201
    :cond_1
    return v0

    .line 2209
    :cond_2
    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
