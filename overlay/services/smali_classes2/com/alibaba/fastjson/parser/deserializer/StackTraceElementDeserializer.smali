.class public Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;
.super Ljava/lang/Object;
.source "StackTraceElementDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
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
    .line 18
    iget-object v4, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 19
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 24
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_4

    :cond_0
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 38
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v5

    .line 40
    if-eqz v5, :cond_5

    :cond_2
    :goto_0
    const/4 v6, 0x4

    .line 52
    invoke-interface {v4, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    const-string/jumbo v6, "className"

    .line 53
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string/jumbo v6, "methodName"

    .line 61
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string/jumbo v6, "fileName"

    .line 69
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string/jumbo v6, "lineNumber"

    .line 77
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string/jumbo v6, "nativeMethod"

    .line 85
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 95
    sget-object v6, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    if-eq v5, v6, :cond_18

    const-string/jumbo v6, "moduleName"

    .line 106
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    const-string/jumbo v6, "moduleVersion"

    .line 114
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    const-string/jumbo v6, "classLoaderName"

    .line 122
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 131
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syntax error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_3
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/4 v0, 0x0

    .line 21
    return-object v0

    .line 24
    :cond_4
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 25
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syntax error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_5
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/16 v7, 0xd

    if-eq v6, v7, :cond_6

    .line 45
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/16 v7, 0x10

    if-ne v6, v7, :cond_2

    .line 46
    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v4, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v6

    if-nez v6, :cond_1

    goto/16 :goto_0

    :cond_6
    const/16 v5, 0x10

    .line 42
    invoke-interface {v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 139
    :goto_1
    new-instance v4, Ljava/lang/StackTraceElement;

    invoke-direct {v4, v3, v2, v1, v0}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v4

    .line 54
    :cond_7
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_8

    .line 56
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_a

    .line 59
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v3, 0x0

    .line 134
    :cond_9
    :goto_2
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_1

    const/16 v5, 0x10

    .line 135
    invoke-interface {v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_1

    .line 57
    :cond_a
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 62
    :cond_b
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v5, 0x8

    if-eq v2, v5, :cond_c

    .line 64
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/4 v5, 0x4

    if-eq v2, v5, :cond_d

    .line 67
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v2, 0x0

    .line 63
    goto :goto_2

    .line 65
    :cond_d
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 70
    :cond_e
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v5, 0x8

    if-eq v1, v5, :cond_f

    .line 72
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v5, 0x4

    if-eq v1, v5, :cond_10

    .line 75
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    const/4 v1, 0x0

    .line 71
    goto :goto_2

    .line 73
    :cond_10
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 78
    :cond_11
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_12

    .line 80
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_13

    .line 83
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    const/4 v0, 0x0

    .line 79
    goto :goto_2

    .line 81
    :cond_13
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v0

    goto :goto_2

    .line 86
    :cond_14
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_15

    .line 88
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_16

    .line 90
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/4 v6, 0x7

    if-eq v5, v6, :cond_17

    .line 93
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/16 v5, 0x10

    .line 87
    invoke-interface {v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_2

    :cond_16
    const/16 v5, 0x10

    .line 89
    invoke-interface {v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_2

    :cond_17
    const/16 v5, 0x10

    .line 91
    invoke-interface {v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_2

    .line 96
    :cond_18
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_19

    .line 102
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_9

    .line 103
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_19
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "java.lang.StackTraceElement"

    .line 98
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 99
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syntax error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1a
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_9

    .line 109
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1b

    .line 112
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1b
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    goto/16 :goto_2

    .line 115
    :cond_1c
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_9

    .line 117
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1d

    .line 120
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1d
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    goto/16 :goto_2

    .line 123
    :cond_1e
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_9

    .line 125
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1f

    .line 128
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1f
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    goto/16 :goto_2
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/16 v0, 0xc

    .line 143
    return v0
.end method
