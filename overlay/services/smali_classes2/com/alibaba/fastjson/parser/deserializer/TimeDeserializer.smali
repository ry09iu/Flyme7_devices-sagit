.class public Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;
.super Ljava/lang/Object;
.source "TimeDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
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
    const/16 v7, 0xd

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 17
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 19
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v3, 0x10

    if-eq v1, v3, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_4

    .line 48
    instance-of v1, v0, Ljava/sql/Time;

    if-nez v1, :cond_5

    .line 50
    instance-of v1, v0, Ljava/lang/Number;

    if-nez v1, :cond_6

    .line 52
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_7

    .line 82
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "parse error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_0
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 22
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 26
    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 28
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 32
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v2

    .line 33
    invoke-interface {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 34
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-ne v1, v7, :cond_3

    const/16 v1, 0x10

    .line 37
    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 39
    new-instance v0, Ljava/sql/Time;

    invoke-direct {v0, v2, v3}, Ljava/sql/Time;-><init>(J)V

    return-object v0

    .line 23
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_4
    return-object v4

    .line 49
    :cond_5
    return-object v0

    .line 51
    :cond_6
    new-instance v1, Ljava/sql/Time;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Time;-><init>(J)V

    return-object v1

    .line 53
    :cond_7
    check-cast v0, Ljava/lang/String;

    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    .line 59
    new-instance v4, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v4, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v1

    if-nez v1, :cond_a

    .line 63
    const/4 v3, 0x1

    move v1, v2

    .line 64
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v1, v5, :cond_b

    move v2, v3

    .line 71
    :cond_8
    if-eqz v2, :cond_c

    .line 76
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 78
    :goto_1
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 79
    new-instance v2, Ljava/sql/Time;

    invoke-direct {v2, v0, v1}, Ljava/sql/Time;-><init>(J)V

    return-object v2

    .line 55
    :cond_9
    return-object v4

    .line 61
    :cond_a
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_1

    .line 65
    :cond_b
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    .line 66
    if-lt v5, v6, :cond_8

    const/16 v6, 0x39

    if-gt v5, v6, :cond_8

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_c
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 73
    invoke-static {v0}, Ljava/sql/Time;->valueOf(Ljava/lang/String;)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 86
    return v0
.end method
