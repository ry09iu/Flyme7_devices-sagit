.class public Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;
.super Ljava/lang/Object;
.source "HSFJSONUtils.java"


# static fields
.field static final fieldName_argsObjs:[C

.field static final fieldName_argsTypes:[C

.field static final fieldName_type:[C

.field static final typeSymbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/alibaba/fastjson/parser/SymbolTable;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/parser/SymbolTable;-><init>(I)V

    sput-object v0, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->typeSymbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    const-string/jumbo v0, "\"argsTypes\""

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->fieldName_argsTypes:[C

    const-string/jumbo v0, "\"argsObjs\""

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->fieldName_argsObjs:[C

    const-string/jumbo v0, "\"@type\":"

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->fieldName_type:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseInvocationArguments(Ljava/lang/String;Lcom/alibaba/fastjson/support/hsf/MethodLocator;)[Ljava/lang/Object;
    .locals 10

    .prologue
    const/16 v9, 0x2c

    const/16 v7, 0xe

    const/4 v8, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 22
    new-instance v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-direct {v4, p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 26
    invoke-virtual {v4, v3, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v5

    .line 29
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    const/16 v6, 0xc

    .line 30
    if-eq v1, v6, :cond_0

    .line 82
    if-eq v1, v7, :cond_8

    .line 118
    :goto_0
    return-object v3

    .line 31
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->fieldName_argsTypes:[C

    sget-object v6, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->typeSymbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v0, v1, v8, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldStringArray([CILcom/alibaba/fastjson/parser/SymbolTable;)[Ljava/lang/String;

    move-result-object v1

    .line 32
    if-eqz v1, :cond_2

    .line 38
    :cond_1
    :goto_1
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/support/hsf/MethodLocator;->findMethod([Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_3

    .line 59
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 61
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 62
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v2

    if-eq v2, v9, :cond_6

    .line 66
    :goto_2
    sget-object v2, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->fieldName_argsObjs:[C

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchField2([C)Z

    move-result v2

    if-nez v2, :cond_7

    .line 80
    :goto_3
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    goto :goto_0

    .line 32
    :cond_2
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_1

    .line 33
    sget-object v6, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->fieldName_type:[C

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldString([C)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "com.alibaba.fastjson.JSONObject"

    .line 34
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 35
    sget-object v1, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->fieldName_argsTypes:[C

    sget-object v6, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->typeSymbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v0, v1, v8, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldStringArray([CILcom/alibaba/fastjson/parser/SymbolTable;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 41
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    .line 43
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string/jumbo v0, "argsTypes"

    const-class v4, [Ljava/lang/String;

    .line 44
    invoke-virtual {v1, v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 45
    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/support/hsf/MethodLocator;->findMethod([Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string/jumbo v4, "argsObjs"

    .line 47
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 48
    if-eqz v4, :cond_4

    .line 51
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 52
    array-length v0, v3

    new-array v1, v0, [Ljava/lang/Object;

    move v0, v2

    .line 53
    :goto_4
    array-length v2, v3

    if-lt v0, v2, :cond_5

    move-object v0, v1

    :goto_5
    move-object v3, v0

    .line 58
    goto :goto_0

    :cond_4
    move-object v0, v3

    .line 49
    goto :goto_5

    .line 54
    :cond_5
    aget-object v2, v3, v0

    .line 55
    invoke-virtual {v4, v0, v2}, Lcom/alibaba/fastjson/JSONArray;->getObject(ILjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 63
    :cond_6
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_2

    .line 67
    :cond_7
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    const-string/jumbo v0, "argsObjs"

    .line 69
    invoke-virtual {v4, v5, v3, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v2

    .line 70
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray([Ljava/lang/reflect/Type;)[Ljava/lang/Object;

    move-result-object v0

    .line 71
    iput-object v0, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    const/16 v1, 0xd

    .line 73
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 75
    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    move-object v3, v0

    .line 76
    goto :goto_3

    .line 83
    :cond_8
    sget-object v1, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->typeSymbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v0, v3, v8, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldStringArray([CILcom/alibaba/fastjson/parser/SymbolTable;)[Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 87
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v5

    const/16 v6, 0x5d

    .line 89
    if-eq v5, v6, :cond_9

    .line 104
    if-eq v5, v9, :cond_c

    .line 108
    :goto_6
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 110
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/support/hsf/MethodLocator;->findMethod([Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 112
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray([Ljava/lang/reflect/Type;)[Ljava/lang/Object;

    move-result-object v3

    .line 113
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    goto/16 :goto_0

    .line 90
    :cond_9
    invoke-interface {p1, v3}, Lcom/alibaba/fastjson/support/hsf/MethodLocator;->findMethod([Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 92
    array-length v3, v1

    new-array v3, v3, [Ljava/lang/Object;

    .line 93
    :goto_7
    array-length v5, v1

    if-lt v2, v5, :cond_a

    .line 102
    return-object v3

    .line 94
    :cond_a
    aget-object v5, v0, v2

    .line 95
    aget-object v6, v1, v2

    const-class v7, Ljava/lang/String;

    .line 96
    if-ne v5, v7, :cond_b

    .line 99
    aput-object v6, v3, v2

    .line 93
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 97
    :cond_b
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v2

    goto :goto_8

    .line 105
    :cond_c
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 106
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    goto :goto_6
.end method
