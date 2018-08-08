.class public Lcom/alibaba/fastjson/JSONObject;
.super Lcom/alibaba/fastjson/JSON;
.source "JSONObject.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/fastjson/JSON;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;",
        "Ljava/lang/reflect/InvocationHandler;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v0, 0x10

    .line 60
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(IZ)V

    .line 61
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(IZ)V

    .line 73
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSON;-><init>()V

    .line 76
    if-nez p2, :cond_0

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    .line 81
    :goto_0
    return-void

    .line 77
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSON;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    .line 65
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    const/16 v0, 0x10

    .line 68
    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/JSONObject;-><init>(IZ)V

    .line 69
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 348
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 378
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public fluentClear()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 352
    return-object p0
.end method

.method public fluentPut(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    return-object p0
.end method

.method public fluentPutAll(Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/fastjson/JSONObject;"
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 343
    return-object p0
.end method

.method public fluentRemove(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    return-object p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-object v0

    .line 102
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 291
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 297
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    .line 162
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 159
    :cond_0
    return-object v1
.end method

.method public getBooleanValue(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 178
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 180
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getByte(Ljava/lang/String;)Ljava/lang/Byte;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 189
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public getByteValue(Ljava/lang/String;)B
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 195
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0

    .line 197
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_0

    .line 172
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBytes(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0

    .line 169
    :cond_0
    return-object v1
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 313
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 274
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue(Ljava/lang/String;)D
    .locals 2

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 280
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    .line 282
    return-wide v0
.end method

.method public getFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 257
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getFloatValue(Ljava/lang/String;)F
    .locals 1

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 263
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 265
    return v0
.end method

.method public getInnerMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 475
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    return-object v0
.end method

.method public getIntValue(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 229
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 231
    return v0
.end method

.method public getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 223
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 126
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONArray;

    if-nez v1, :cond_0

    .line 130
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 134
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    return-object v0

    .line 127
    :cond_0
    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    return-object v0

    .line 131
    :cond_1
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    return-object v0
.end method

.method public getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-nez v1, :cond_0

    .line 116
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 120
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    return-object v0

    .line 113
    :cond_0
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    return-object v0

    .line 117
    :cond_1
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 240
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getLongValue(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 246
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    .line 248
    return-wide v0
.end method

.method public getObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/TypeReference;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 149
    if-eqz p2, :cond_0

    .line 152
    invoke-virtual {p2}, Lcom/alibaba/fastjson/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 150
    :cond_0
    return-object v0
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 139
    invoke-static {v0, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 144
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getShort(Ljava/lang/String;)Ljava/lang/Short;
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 206
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public getShortValue(Ljava/lang/String;)S
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 212
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0

    .line 214
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSqlDate(Ljava/lang/String;)Ljava/sql/Date;
    .locals 1

    .prologue
    .line 317
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 319
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToSqlDate(Ljava/lang/Object;)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 301
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 304
    :cond_0
    return-object v1
.end method

.method public getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 325
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToTimestamp(Ljava/lang/Object;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 393
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 394
    array-length v2, v0

    if-eq v2, v5, :cond_0

    .line 430
    array-length v0, v0

    if-eqz v0, :cond_8

    .line 471
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "equals"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 399
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 400
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_2

    const-class v0, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 405
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 406
    if-nez v0, :cond_3

    move-object v0, v1

    .line 412
    :goto_0
    if-eqz v0, :cond_5

    .line 426
    :goto_1
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    aget-object v3, p3, v4

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    return-object v1

    .line 396
    :cond_1
    aget-object v0, p3, v4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 401
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "illegal setter"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_3
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    move-object v0, v1

    goto :goto_0

    .line 408
    :cond_4
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 413
    :cond_5
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "set"

    .line 415
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 419
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 416
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "illegal setter"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "illegal setter"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_8
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 432
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_9

    const-class v0, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 437
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 438
    if-nez v0, :cond_a

    move-object v0, v1

    .line 444
    :goto_2
    if-eqz v0, :cond_c

    .line 467
    :goto_3
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 468
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 433
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "illegal getter"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_a
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b

    move-object v0, v1

    goto :goto_2

    .line 440
    :cond_b
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 445
    :cond_c
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "get"

    .line 446
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string/jumbo v1, "is"

    .line 452
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string/jumbo v1, "hashCode"

    .line 458
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string/jumbo v1, "toString"

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 463
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "illegal getter"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_d
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_e

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 449
    :cond_e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "illegal getter"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    const/4 v1, 0x2

    .line 453
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 454
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_10

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 455
    :cond_10
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "illegal getter"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_11
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 461
    :cond_12
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 339
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
