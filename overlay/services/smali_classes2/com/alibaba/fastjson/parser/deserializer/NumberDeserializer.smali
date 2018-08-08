.class public Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;
.super Ljava/lang/Object;
.source "NumberDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x8000

    const/4 v0, 0x0

    const/16 v6, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 19
    iget-object v3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 20
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 51
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_14

    .line 75
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_1d

    .line 86
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_20

    .line 92
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_21

    .line 94
    :cond_1
    :try_start_0
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 21
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_4

    .line 22
    :cond_3
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-interface {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 24
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_4
    const-class v0, Ljava/lang/Double;

    .line 21
    if-eq p2, v0, :cond_3

    .line 27
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v4

    .line 28
    invoke-interface {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 30
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_7

    :cond_5
    const-wide/16 v6, 0x7fff

    .line 31
    cmp-long v0, v4, v6

    if-lez v0, :cond_a

    move v0, v1

    :goto_0
    if-nez v0, :cond_6

    cmp-long v0, v4, v8

    if-ltz v0, :cond_b

    :goto_1
    if-nez v1, :cond_c

    .line 32
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "short overflow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-class v0, Ljava/lang/Short;

    .line 30
    if-eq p2, v0, :cond_5

    .line 37
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_d

    :cond_8
    const-wide/16 v6, 0x7f

    .line 38
    cmp-long v0, v4, v6

    if-lez v0, :cond_e

    move v0, v1

    :goto_2
    if-nez v0, :cond_9

    const-wide/16 v6, -0x80

    cmp-long v0, v4, v6

    if-ltz v0, :cond_f

    :goto_3
    if-nez v1, :cond_10

    .line 39
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "short overflow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move v0, v2

    .line 31
    goto :goto_0

    :cond_b
    move v1, v2

    goto :goto_1

    .line 34
    :cond_c
    long-to-int v0, v4

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    :cond_d
    const-class v0, Ljava/lang/Byte;

    .line 37
    if-eq p2, v0, :cond_8

    const-wide/32 v6, -0x80000000

    .line 45
    cmp-long v0, v4, v6

    if-gez v0, :cond_11

    move v0, v1

    :goto_4
    if-nez v0, :cond_13

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v4, v6

    if-lez v0, :cond_12

    move v0, v1

    :goto_5
    if-nez v0, :cond_13

    .line 46
    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_e
    move v0, v2

    .line 38
    goto :goto_2

    :cond_f
    move v1, v2

    goto :goto_3

    .line 42
    :cond_10
    long-to-int v0, v4

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :cond_11
    move v0, v2

    .line 45
    goto :goto_4

    :cond_12
    move v0, v2

    goto :goto_5

    .line 48
    :cond_13
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 52
    :cond_14
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_16

    .line 53
    :cond_15
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-interface {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 55
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_16
    const-class v0, Ljava/lang/Double;

    .line 52
    if-eq p2, v0, :cond_15

    .line 58
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    .line 59
    invoke-interface {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 61
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_19

    :cond_17
    const-wide/16 v2, 0x7fff

    .line 62
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-lez v1, :cond_1b

    .line 63
    :cond_18
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "short overflow : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    const-class v1, Ljava/lang/Short;

    .line 61
    if-eq p2, v1, :cond_17

    .line 68
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_1c

    .line 69
    :cond_1a
    invoke-virtual {v0}, Ljava/math/BigDecimal;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 62
    :cond_1b
    invoke-static {v8, v9}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-ltz v1, :cond_18

    .line 65
    invoke-virtual {v0}, Ljava/math/BigDecimal;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    :cond_1c
    const-class v1, Ljava/lang/Byte;

    .line 68
    if-eq p2, v1, :cond_1a

    .line 72
    return-object v0

    :cond_1d
    const-string/jumbo v1, "NaN"

    .line 75
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const-class v1, Ljava/lang/Double;

    .line 78
    if-eq p2, v1, :cond_1e

    const-class v1, Ljava/lang/Float;

    .line 80
    if-eq p2, v1, :cond_1f

    .line 83
    :goto_6
    return-object v0

    :cond_1e
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 79
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_6

    :cond_1f
    const/high16 v0, 0x7fc00000    # NaNf

    .line 81
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_6

    .line 89
    :cond_20
    return-object v0

    :cond_21
    const-class v0, Ljava/lang/Double;

    .line 92
    if-eq p2, v0, :cond_1

    .line 100
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_23

    .line 102
    :cond_22
    :try_start_1
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    .line 94
    :catch_0
    move-exception v0

    .line 96
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseDouble error, field : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_23
    const-class v0, Ljava/lang/Short;

    .line 100
    if-eq p2, v0, :cond_22

    .line 108
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_25

    .line 110
    :cond_24
    :try_start_2
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    return-object v0

    .line 102
    :catch_1
    move-exception v0

    .line 104
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseShort error, field : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_25
    const-class v0, Ljava/lang/Byte;

    .line 108
    if-eq p2, v0, :cond_24

    .line 116
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 110
    :catch_2
    move-exception v0

    .line 112
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseByte error, field : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 120
    return v0
.end method
