.class Lcom/alibaba/fastjson/JSONPath$MatchSegement;
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
    name = "MatchSegement"
.end annotation


# instance fields
.field private final containsValues:[Ljava/lang/String;

.field private final endsWithValue:Ljava/lang/String;

.field private final minLength:I

.field private final not:Z

.field private final propertyName:Ljava/lang/String;

.field private final propertyNameHash:J

.field private final startsWithValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2117
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->propertyName:Ljava/lang/String;

    .line 2118
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->propertyNameHash:J

    .line 2119
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->startsWithValue:Ljava/lang/String;

    .line 2120
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->endsWithValue:Ljava/lang/String;

    .line 2121
    iput-object p4, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->containsValues:[Ljava/lang/String;

    .line 2122
    iput-boolean p5, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    .line 2125
    if-nez p2, :cond_1

    move v0, v1

    .line 2129
    :goto_0
    if-nez p3, :cond_2

    .line 2133
    :goto_1
    if-nez p4, :cond_3

    .line 2139
    :cond_0
    iput v0, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->minLength:I

    .line 2140
    return-void

    .line 2126
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    goto :goto_0

    .line 2130
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 2134
    :cond_3
    array-length v3, p4

    :goto_2
    if-ge v1, v3, :cond_0

    aget-object v2, p4, v1

    .line 2135
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    .line 2134
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2143
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->propertyName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->propertyNameHash:J

    invoke-virtual {p1, p4, v0, v2, v3}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    .line 2145
    if-eqz v0, :cond_2

    .line 2149
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2151
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    iget v2, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->minLength:I

    if-lt v0, v2, :cond_3

    .line 2156
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->startsWithValue:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    .line 2163
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->containsValues:[Ljava/lang/String;

    if-nez v2, :cond_6

    .line 2173
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->endsWithValue:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 2179
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    if-eqz v0, :cond_9

    :goto_1
    return v1

    .line 2146
    :cond_2
    return v1

    .line 2152
    :cond_3
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    return v0

    .line 2157
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->startsWithValue:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2160
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->startsWithValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    goto :goto_0

    .line 2158
    :cond_5
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    return v0

    .line 2164
    :cond_6
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->containsValues:[Ljava/lang/String;

    array-length v5, v4

    move v2, v0

    move v0, v1

    :goto_2
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    .line 2165
    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v7, -0x1

    .line 2166
    if-eq v2, v7, :cond_7

    .line 2169
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    .line 2164
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2167
    :cond_7
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    return v0

    .line 2174
    :cond_8
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->endsWithValue:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2175
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    return v0

    :cond_9
    const/4 v1, 0x1

    .line 2179
    goto :goto_1
.end method
