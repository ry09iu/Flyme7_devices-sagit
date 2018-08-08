.class public abstract Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;
.source "AbstractDateDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
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
    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 21
    iget-object v3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 24
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 27
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    if-eq v0, v6, :cond_1

    .line 76
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_9

    .line 79
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_a

    .line 116
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getResolveStatus()I

    move-result v0

    if-eq v0, v5, :cond_f

    .line 135
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    .line 138
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;->cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 25
    :cond_0
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 26
    invoke-interface {v3, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_0

    .line 28
    :cond_1
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    .line 30
    if-nez p4, :cond_3

    move-object v0, v1

    .line 64
    :goto_1
    if-eqz v0, :cond_7

    move-object v2, v0

    :cond_2
    :goto_2
    move-object v1, v2

    .line 76
    goto :goto_0

    .line 33
    :cond_3
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v4, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-direct {v0, p4, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_3
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :cond_4
    :goto_4
    move-object v0, v1

    .line 60
    goto :goto_1

    .line 42
    :catch_0
    move-exception v0

    const-string/jumbo v0, "yyyy-MM-ddTHH:mm:ss.SSS"

    .line 35
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "yyyy-MM-ddTHH:mm:ss"

    .line 38
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, v1

    goto :goto_3

    :cond_5
    const-string/jumbo p4, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string/jumbo p4, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 59
    :catch_1
    move-exception v0

    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    .line 47
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 48
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x13

    if-ne v0, v4, :cond_4

    .line 50
    :try_start_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    goto :goto_4

    .line 66
    :cond_7
    invoke-interface {v3, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 68
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    new-instance v1, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, v2

    .line 73
    :goto_5
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    move-object v2, v0

    goto :goto_2

    .line 71
    :cond_8
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_5

    .line 77
    :cond_9
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_0

    .line 80
    :cond_a
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 83
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    if-eq v0, v6, :cond_b

    .line 102
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_b
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 86
    sget-object v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 100
    :goto_6
    invoke-interface {v3, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 106
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    if-eq v0, v5, :cond_e

    .line 110
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syntax error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_c
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/16 v0, 0x11

    .line 88
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 90
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v2

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->getFeatures()I

    move-result v4

    invoke-virtual {v2, v0, v1, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v0

    .line 92
    if-nez v0, :cond_d

    .line 96
    :goto_7
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 97
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto :goto_6

    :cond_d
    move-object p2, v0

    .line 93
    goto :goto_7

    .line 107
    :cond_e
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v0

    .line 108
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 113
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v0, 0xd

    .line 115
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto/16 :goto_0

    .line 117
    :cond_f
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 118
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 120
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    if-eq v0, v6, :cond_10

    .line 126
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    const-string/jumbo v0, "val"

    .line 121
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 124
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/16 v0, 0x11

    .line 129
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 131
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    const/16 v0, 0xd

    .line 133
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto/16 :goto_0

    .line 122
    :cond_11
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :catch_2
    move-exception v0

    goto/16 :goto_4
.end method
