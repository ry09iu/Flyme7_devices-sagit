.class public Lcom/alibaba/fastjson/parser/DefaultJSONParser;
.super Ljava/lang/Object;
.source "DefaultJSONParser.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    }
.end annotation


# static fields
.field public static final NONE:I = 0x0

.field public static final NeedToResolve:I = 0x1

.field public static final TypeNameRedirect:I = 0x2

.field private static final primitiveClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private autoTypeAccept:[Ljava/lang/String;

.field private autoTypeEnable:Z

.field protected config:Lcom/alibaba/fastjson/parser/ParserConfig;

.field protected context:Lcom/alibaba/fastjson/parser/ParseContext;

.field private contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

.field private contextArrayIndex:I

.field private dateFormat:Ljava/text/DateFormat;

.field private dateFormatPattern:Ljava/lang/String;

.field private extraProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private extraTypeProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;",
            ">;"
        }
    .end annotation
.end field

.field protected fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

.field public final input:Ljava/lang/Object;

.field protected transient lastBeanContext:Lcom/alibaba/fastjson/serializer/BeanContext;

.field public final lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

.field public resolveStatus:I

.field private resolveTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;",
            ">;"
        }
    .end annotation
.end field

.field public final symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 46
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const/16 v1, 0x11

    .line 76
    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Ljava/lang/Byte;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Ljava/lang/Short;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-class v3, Ljava/lang/Long;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-class v3, Ljava/lang/Float;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-class v3, Ljava/lang/Double;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-class v3, Ljava/math/BigInteger;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-class v3, Ljava/math/BigDecimal;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 98
    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_0

    .line 101
    return-void

    .line 98
    :cond_0
    aget-object v3, v1, v0

    .line 99
    sget-object v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/JSONLexer;)V
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, v0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    .line 56
    iput v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    .line 64
    iput v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 66
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    .line 67
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    .line 68
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    .line 71
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->autoTypeAccept:[Ljava/lang/String;

    .line 149
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 150
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->input:Ljava/lang/Object;

    .line 151
    iput-object p3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 152
    iget-object v0, p3, Lcom/alibaba/fastjson/parser/ParserConfig;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 154
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v0

    const/16 v1, 0x7b

    .line 155
    if-eq v0, v1, :cond_0

    const/16 v1, 0x5b

    .line 158
    if-eq v0, v1, :cond_1

    .line 162
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 164
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 157
    check-cast p2, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    const/16 v0, 0xc

    iput v0, p2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 159
    :cond_1
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 160
    check-cast p2, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    const/16 v0, 0xe

    iput v0, p2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 125
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 2

    .prologue
    .line 129
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {v0, p1, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v0, p1, p3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 134
    return-void
.end method

.method public constructor <init>([CILcom/alibaba/fastjson/parser/ParserConfig;I)V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v0, p1, p2, p4}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>([CII)V

    invoke-direct {p0, p1, v0, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 138
    return-void
.end method

.method private addContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1309
    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    .line 1310
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v1, :cond_0

    .line 1312
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1318
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    aput-object p1, v1, v0

    .line 1319
    return-void

    :cond_0
    const/16 v1, 0x8

    .line 1311
    new-array v1, v1, [Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_0

    .line 1313
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    .line 1314
    new-array v1, v1, [Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1315
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1316
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_0
.end method


# virtual methods
.method public final accept(I)V
    .locals 4

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1454
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 1457
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "syntax error, expect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1458
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1455
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1460
    return-void
.end method

.method public final accept(II)V
    .locals 2

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1464
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 1467
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->throwException(I)V

    .line 1469
    :goto_0
    return-void

    .line 1465
    :cond_0
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_0
.end method

.method public acceptType(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1034
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    .line 1036
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1040
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1046
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "type not match error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1037
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "type not match error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1041
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1042
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    .line 1048
    :goto_0
    return-void

    .line 1043
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_0
.end method

.method public addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V
    .locals 2

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1238
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1239
    return-void

    .line 1236
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    goto :goto_0
.end method

.method public checkListResolve(Ljava/util/Collection;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1070
    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1085
    :goto_0
    return-void

    .line 1071
    :cond_0
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_1

    .line 1079
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v0

    .line 1080
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;

    invoke-direct {v1, p1}, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 1081
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1082
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto :goto_0

    .line 1072
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1073
    check-cast p1, Ljava/util/List;

    .line 1074
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v1

    .line 1075
    new-instance v2, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;

    invoke-direct {v2, p0, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/List;I)V

    iput-object v2, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 1076
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1077
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto :goto_0
.end method

.method public checkMapResolve(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1089
    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1096
    :goto_0
    return-void

    .line 1090
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 1091
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v1

    .line 1092
    iput-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 1093
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    const/4 v0, 0x0

    .line 1094
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto :goto_0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 1477
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1480
    :try_start_0
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AutoCloseSource:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 1486
    :cond_0
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 1488
    return-void

    .line 1481
    :cond_1
    :try_start_1
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    .line 1482
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not close json text, token : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1487
    :catchall_0
    move-exception v0

    .line 1486
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    throw v0
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 1

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->config(Lcom/alibaba/fastjson/parser/Feature;Z)V

    .line 1442
    return-void
.end method

.method public getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    return-object v0
.end method

.method public getContext()Lcom/alibaba/fastjson/parser/ParseContext;
    .locals 1

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    return-object v0
.end method

.method public getDateFomartPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getDateFormat()Ljava/text/DateFormat;
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    return-object v0

    .line 109
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    .line 110
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0
.end method

.method public getExtraProcessors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1249
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    return-object v0

    .line 1247
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    goto :goto_0
.end method

.method public getExtraTypeProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1256
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    return-object v0

    .line 1254
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    goto :goto_0
.end method

.method public getFieldTypeResolver()Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;
    .locals 1

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    return-object v0
.end method

.method public getInput()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->input:Ljava/lang/Object;

    instance-of v0, v0, [C

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->input:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 172
    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->input:Ljava/lang/Object;

    check-cast v0, [C

    check-cast v0, [C

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    .locals 2

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    return-object v0
.end method

.method public getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
    .locals 1

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    return-object v0
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1059
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1065
    return-object v0

    .line 1060
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/ParseContext;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1059
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1061
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getResolveStatus()I
    .locals 1

    .prologue
    .line 1051
    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    return v0
.end method

.method public getResolveTaskList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1231
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    return-object v0

    .line 1229
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    goto :goto_0
.end method

.method public getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    return-object v0
.end method

.method public handleResovleTask(Ljava/lang/Object;)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1504
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1508
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move v4, v5

    :goto_0
    if-lt v4, v6, :cond_1

    .line 1546
    return-void

    .line 1505
    :cond_0
    return-void

    .line 1509
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    .line 1510
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->referenceValue:Ljava/lang/String;

    .line 1513
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    if-nez v1, :cond_3

    move-object v1, v2

    :goto_1
    const-string/jumbo v3, "$"

    .line 1519
    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1529
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v3, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1532
    :cond_2
    :goto_2
    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 1534
    if-nez v0, :cond_5

    .line 1508
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 1514
    :cond_3
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_1

    .line 1520
    :cond_4
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1521
    if-nez v3, :cond_2

    .line 1523
    :try_start_0
    invoke-static {p1, v7}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONPathException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_2

    .line 1526
    :catch_0
    move-exception v8

    goto :goto_2

    .line 1535
    :cond_5
    if-nez v3, :cond_7

    .line 1543
    :cond_6
    :goto_4
    invoke-virtual {v0, v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 1536
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Lcom/alibaba/fastjson/JSONObject;

    if-ne v8, v9, :cond_6

    iget-object v8, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v8, :cond_6

    const-class v8, Ljava/util/Map;

    iget-object v9, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v9, v9, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1538
    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1539
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    aget-object v3, v3, v5

    iget-object v3, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1540
    invoke-static {v3, v7}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_4
.end method

.method public isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 1

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    return v0
.end method

.method public parse()Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1322
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0x3a

    const/16 v7, 0x22

    const/4 v2, 0x0

    .line 1593
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_2

    .line 1615
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    move v3, v2

    .line 1618
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 1619
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v0

    .line 1620
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1629
    :goto_1
    if-eq v0, v7, :cond_8

    const/16 v2, 0x7d

    .line 1636
    if-eq v0, v2, :cond_a

    const/16 v2, 0x27

    .line 1641
    if-eq v0, v2, :cond_b

    .line 1653
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1657
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v0

    .line 1658
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 1659
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v2

    .line 1660
    if-ne v2, v8, :cond_f

    move-object v2, v0

    .line 1665
    :goto_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1666
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 1667
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    .line 1669
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 1671
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    if-eq v2, v0, :cond_10

    .line 1699
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1701
    if-nez v3, :cond_16

    .line 1705
    :goto_3
    invoke-interface {p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;->getType(Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1707
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_17

    .line 1711
    invoke-virtual {p0, v0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1714
    :goto_4
    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;->apply(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1716
    invoke-virtual {p0, v4, v0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1717
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1719
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/16 v2, 0x14

    .line 1720
    if-ne v0, v2, :cond_18

    .line 1730
    :cond_1
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1721
    return-object p1

    .line 1594
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "syntax error, expect {, actual "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1595
    instance-of v1, p2, Ljava/lang/String;

    if-nez v1, :cond_4

    .line 1599
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1602
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1603
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1605
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    .line 1612
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1596
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fieldName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1606
    :cond_5
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1607
    instance-of v2, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_3

    .line 1608
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    return-object v0

    .line 1622
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1623
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 1624
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v0

    :cond_7
    const/16 v2, 0x2c

    .line 1621
    if-eq v0, v2, :cond_6

    goto/16 :goto_1

    .line 1630
    :cond_8
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    const/16 v5, 0x22

    invoke-interface {v0, v2, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    .line 1631
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 1632
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v2

    .line 1633
    if-ne v2, v8, :cond_9

    move-object v2, v0

    goto/16 :goto_2

    .line 1634
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expect \':\' at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1617
    :catchall_0
    move-exception v0

    .line 1730
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v0

    .line 1637
    :cond_a
    :try_start_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1638
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 1639
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1730
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1640
    return-object p1

    .line 1642
    :cond_b
    :try_start_3
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1646
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    const/16 v5, 0x27

    invoke-interface {v0, v2, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    .line 1647
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 1648
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v2

    .line 1649
    if-ne v2, v8, :cond_d

    move-object v2, v0

    goto/16 :goto_2

    .line 1643
    :cond_c
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1650
    :cond_d
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expect \':\' at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1654
    :cond_e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1661
    :cond_f
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "expect \':\' at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", actual "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1671
    :cond_10
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1672
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    const/16 v5, 0x22

    invoke-interface {v0, v2, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    .line 1674
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->getFeatures()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/util/Map;

    .line 1676
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1685
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 1687
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v3, 0x10

    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/4 v2, 0x2

    .line 1689
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 1691
    if-nez v4, :cond_15

    .line 1695
    :cond_11
    :goto_6
    invoke-interface {v1, p0, v0, p2}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1730
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1695
    return-object v0

    .line 1677
    :cond_12
    :try_start_4
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v2, 0x10

    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1678
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_14

    .line 1617
    :cond_13
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 1679
    :cond_14
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1730
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1680
    return-object p1

    .line 1691
    :cond_15
    :try_start_5
    instance-of v2, p2, Ljava/lang/Integer;

    if-nez v2, :cond_11

    .line 1692
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->popContext()V

    goto :goto_6

    .line 1702
    :cond_16
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_3

    .line 1709
    :cond_17
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move-object v0, v1

    goto/16 :goto_4

    :cond_18
    const/16 v2, 0xf

    .line 1720
    if-eq v0, v2, :cond_1

    const/16 v2, 0xd

    .line 1724
    if-ne v0, v2, :cond_13

    .line 1725
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1730
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1726
    return-object p1
.end method

.method public parse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/16 v4, 0x12

    const/16 v2, 0xa

    const/4 v3, 0x0

    .line 1335
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1336
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1436
    :pswitch_0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "syntax error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1338
    :pswitch_1
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1339
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1340
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1341
    return-object v0

    .line 1343
    :pswitch_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1344
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 1345
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1346
    return-object v0

    .line 1348
    :pswitch_3
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1349
    invoke-virtual {p0, v1, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1350
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->UseObjectArray:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1353
    return-object v1

    .line 1351
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1355
    :pswitch_4
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 1356
    invoke-virtual {p0, v1, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1368
    :pswitch_5
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v1

    .line 1369
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1370
    return-object v1

    .line 1372
    :pswitch_6
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v1

    .line 1373
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1374
    return-object v1

    .line 1376
    :pswitch_7
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    .line 1377
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1379
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1390
    :goto_0
    return-object v1

    .line 1380
    :cond_1
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 1382
    :try_start_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 1386
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    goto :goto_0

    .line 1383
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1386
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 1383
    return-object v0

    .line 1387
    :catchall_0
    move-exception v0

    .line 1386
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v0

    .line 1392
    :pswitch_8
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1393
    return-object v3

    .line 1395
    :pswitch_9
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1396
    return-object v3

    .line 1398
    :pswitch_a
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1399
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 1401
    :pswitch_b
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1402
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 1404
    :pswitch_c
    invoke-interface {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1406
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 1409
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1411
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 1412
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const/4 v2, 0x2

    .line 1413
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    const/16 v2, 0xb

    .line 1415
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 1417
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2

    .line 1407
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1419
    :pswitch_d
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isBlankInput()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1422
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unterminated json string, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1420
    :cond_4
    return-object v3

    .line 1424
    :pswitch_e
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->bytesValue()[B

    move-result-object v1

    .line 1425
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1426
    return-object v1

    .line 1428
    :pswitch_f
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "NaN"

    .line 1429
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1433
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "syntax error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1430
    :cond_5
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1431
    return-object v3

    .line 1336
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_d
        :pswitch_1
        :pswitch_2
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method

.method public parseArray(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 670
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 671
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 672
    return-object v0
.end method

.method public parseArray(Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Collection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 676
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 677
    return-void
.end method

.method public parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 681
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    .line 682
    return-void
.end method

.method public parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v1, 0x0

    const/16 v7, 0x10

    const/4 v2, 0x0

    .line 686
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v3, 0x15

    .line 687
    if-ne v0, v3, :cond_1

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 689
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    :goto_0
    const/16 v3, 0xe

    .line 692
    if-ne v0, v3, :cond_2

    .line 697
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, p1, :cond_3

    const-class v0, Ljava/lang/String;

    .line 700
    if-eq v0, p1, :cond_4

    .line 704
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 705
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 708
    :goto_1
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 709
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move v3, v1

    .line 712
    :goto_2
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 719
    :goto_3
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v5, 0xf

    if-eq v1, v5, :cond_d

    .line 723
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, p1, :cond_7

    const-class v1, Ljava/lang/String;

    .line 726
    if-eq v1, p1, :cond_8

    .line 743
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v5, 0x8

    if-eq v1, v5, :cond_b

    .line 747
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, p1, v1}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 749
    :goto_4
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 750
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 753
    :goto_5
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eq v1, v7, :cond_c

    .line 711
    :goto_6
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_1
    const/16 v3, 0x16

    .line 687
    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 693
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exepct \'[\', but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 698
    :cond_3
    sget-object v0, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    .line 699
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_1

    .line 701
    :cond_4
    sget-object v0, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    .line 702
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_1

    .line 714
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 713
    :cond_6
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-eq v1, v7, :cond_5

    goto/16 :goto_3

    .line 724
    :cond_7
    sget-object v1, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, p0, v5, v6}, Lcom/alibaba/fastjson/serializer/IntegerCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 725
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 760
    :catchall_0
    move-exception v0

    .line 759
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v0

    .line 728
    :cond_8
    :try_start_2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-eq v1, v8, :cond_9

    .line 732
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    .line 733
    if-eqz v1, :cond_a

    .line 736
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 740
    :goto_7
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 729
    :cond_9
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 730
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v6, 0x10

    invoke-interface {v5, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_7

    :cond_a
    move-object v1, v2

    .line 734
    goto :goto_7

    .line 744
    :cond_b
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move-object v1, v2

    .line 745
    goto/16 :goto_4

    .line 754
    :cond_c
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v5

    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_6

    .line 759
    :cond_d
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 762
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 763
    return-void
.end method

.method public final parseArray(Ljava/util/Collection;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1111
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1112
    return-void
.end method

.method public final parseArray(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x4

    const/4 v0, 0x0

    const/16 v7, 0x10

    .line 1116
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1118
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v4, 0x15

    if-ne v2, v4, :cond_2

    .line 1119
    :cond_0
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1122
    :goto_0
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v4, 0xe

    if-ne v2, v4, :cond_3

    .line 1127
    invoke-interface {v3, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1129
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1130
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move v2, v0

    .line 1133
    :goto_1
    :try_start_0
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1141
    :goto_2
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1206
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 1210
    :cond_1
    :goto_3
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1211
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 1213
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eq v0, v7, :cond_8

    .line 1132
    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1118
    :cond_2
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v4, 0x16

    if-eq v2, v4, :cond_0

    goto :goto_0

    .line 1123
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syntax error, expect [, actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", pos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1124
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", fieldName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1135
    :cond_4
    :try_start_1
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1134
    :cond_5
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    if-eq v0, v7, :cond_4

    goto :goto_2

    .line 1143
    :pswitch_1
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v0

    const/16 v5, 0x10

    .line 1144
    invoke-interface {v3, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1132
    :catchall_0
    move-exception v0

    .line 1219
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v0

    .line 1147
    :pswitch_2
    :try_start_2
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1150
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v0

    :goto_5
    const/16 v5, 0x10

    .line 1152
    invoke-interface {v3, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_3

    .line 1148
    :cond_6
    const/4 v0, 0x1

    invoke-interface {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v0

    goto :goto_5

    .line 1155
    :pswitch_3
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x10

    .line 1156
    invoke-interface {v3, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1158
    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v3, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1159
    new-instance v5, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v5, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 1160
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1165
    :goto_6
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    goto/16 :goto_3

    .line 1161
    :cond_7
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_6

    .line 1172
    :pswitch_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v5, 0x10

    .line 1173
    invoke-interface {v3, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_3

    .line 1176
    :pswitch_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v5, 0x10

    .line 1177
    invoke-interface {v3, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_3

    .line 1180
    :pswitch_6
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v3, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v5

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 1181
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_3

    .line 1184
    :pswitch_7
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1185
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1186
    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->UseObjectArray:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v3, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1187
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_3

    :pswitch_8
    const/4 v0, 0x4

    .line 1194
    invoke-interface {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    move-object v0, v1

    .line 1195
    goto/16 :goto_3

    :pswitch_9
    const/4 v0, 0x4

    .line 1198
    invoke-interface {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    move-object v0, v1

    .line 1199
    goto/16 :goto_3

    :pswitch_a
    const/16 v0, 0x10

    .line 1201
    invoke-interface {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1219
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1202
    return-void

    .line 1204
    :pswitch_b
    :try_start_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "unclosed jsonArray"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v0, 0x4

    .line 1214
    invoke-interface {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 1141
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public parseArray([Ljava/lang/reflect/Type;)[Ljava/lang/Object;
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v10, 0xf

    const/16 v9, 0x10

    .line 766
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 771
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_2

    .line 775
    array-length v0, p1

    new-array v6, v0, [Ljava/lang/Object;

    .line 776
    array-length v0, p1

    if-eqz v0, :cond_3

    .line 787
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    move v2, v3

    .line 789
    :goto_0
    array-length v0, p1

    if-lt v2, v0, :cond_5

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    if-ne v0, v10, :cond_15

    .line 874
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 876
    return-object v6

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 768
    return-object v4

    .line 772
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syntax error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 777
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 779
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    if-ne v0, v10, :cond_4

    .line 783
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 784
    new-array v0, v3, [Ljava/lang/Object;

    return-object v0

    .line 780
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 792
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    .line 796
    aget-object v1, p1, v2

    .line 797
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_8

    .line 798
    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    if-eq v0, v11, :cond_a

    .line 802
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 803
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v0, v1, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    .line 853
    :goto_1
    aput-object v0, v6, v2

    .line 855
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    if-eq v0, v10, :cond_0

    .line 859
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    if-ne v0, v9, :cond_13

    .line 863
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-eq v2, v0, :cond_14

    .line 866
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 789
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 794
    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    move-object v0, v4

    goto :goto_1

    :cond_8
    const-class v0, Ljava/lang/Integer;

    .line 797
    if-eq v1, v0, :cond_6

    const-class v0, Ljava/lang/String;

    .line 805
    if-eq v1, v0, :cond_b

    .line 816
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-eq v2, v0, :cond_d

    move-object v0, v4

    move v5, v3

    .line 825
    :goto_3
    if-nez v5, :cond_f

    .line 848
    :cond_9
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 849
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, p0, v1, v5}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 799
    :cond_a
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 800
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_1

    .line 806
    :cond_b
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/4 v5, 0x4

    if-eq v0, v5, :cond_c

    .line 810
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 811
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v0, v1, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 807
    :cond_c
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 808
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_1

    .line 817
    :cond_d
    instance-of v0, v1, Ljava/lang/Class;

    if-nez v0, :cond_e

    move-object v0, v4

    move v5, v3

    goto :goto_3

    :cond_e
    move-object v0, v1

    .line 818
    check-cast v0, Ljava/lang/Class;

    .line 819
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v5

    .line 820
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_3

    .line 825
    :cond_f
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/16 v7, 0xe

    if-eq v5, v7, :cond_9

    .line 826
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 828
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 829
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v7

    .line 831
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    if-ne v8, v10, :cond_12

    .line 846
    :cond_10
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v5, v1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1

    .line 837
    :cond_11
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v8, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 833
    :cond_12
    invoke-interface {v0, p0, v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 834
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    if-eq v8, v9, :cond_11

    .line 838
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    if-eq v0, v10, :cond_10

    .line 841
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syntax error :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    :cond_13
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syntax error :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 864
    :cond_14
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_2

    .line 871
    :cond_15
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseArrayWithType(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 961
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    move-object v0, p1

    .line 966
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 968
    array-length v1, v0

    if-ne v1, v5, :cond_2

    .line 972
    aget-object v0, v0, v4

    .line 974
    instance-of v1, v0, Ljava/lang/Class;

    if-nez v1, :cond_3

    .line 980
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-nez v1, :cond_4

    .line 1004
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-nez v1, :cond_7

    .line 1020
    :cond_0
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_9

    .line 1028
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TODO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 962
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/4 v0, 0x0

    .line 963
    return-object v0

    .line 969
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not support type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 975
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 976
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 977
    return-object v1

    .line 981
    :cond_4
    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 984
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v4

    const-class v2, Ljava/lang/Object;

    .line 987
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 996
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 997
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 998
    return-object v2

    .line 988
    :cond_5
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_6

    .line 992
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not support type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 990
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_7
    move-object v1, v0

    .line 1005
    check-cast v1, Ljava/lang/reflect/TypeVariable;

    .line 1006
    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1008
    array-length v3, v2

    if-ne v3, v5, :cond_8

    .line 1012
    aget-object v1, v2, v4

    .line 1013
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 1014
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1015
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 1016
    return-object v2

    .line 1009
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not support : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1021
    :cond_9
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 1023
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1024
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 1025
    return-object v1
.end method

.method public parseExtra(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1562
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1563
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    .line 1566
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    if-nez v1, :cond_2

    .line 1571
    :cond_0
    if-eqz v0, :cond_3

    .line 1573
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .line 1575
    :goto_0
    instance-of v0, p1, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;

    if-nez v0, :cond_4

    .line 1581
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    if-nez v0, :cond_5

    .line 1587
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 1590
    :goto_1
    return-void

    .line 1567
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;

    .line 1568
    invoke-interface {v0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;->getExtraType(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_2

    .line 1572
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 1576
    :cond_4
    check-cast p1, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;

    .line 1577
    invoke-interface {p1, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;->processExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1578
    return-void

    .line 1582
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;

    .line 1583
    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;->processExtra(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 1588
    :cond_6
    iput v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_1
.end method

.method public parseKey()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1331
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 1328
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1329
    return-object v0
.end method

.method public parseObject()Lcom/alibaba/fastjson/JSONObject;
    .locals 3

    .prologue
    .line 1104
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 1105
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 1106
    return-object v0
.end method

.method public parseObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 629
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 633
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 638
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v1, 0x8

    .line 639
    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    .line 644
    if-eq v0, v1, :cond_2

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 661
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/4 v0, 0x0

    .line 641
    return-object v0

    :cond_2
    const-class v0, [B

    .line 645
    if-eq p1, v0, :cond_3

    const-class v0, [C

    .line 651
    if-ne p1, v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 653
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 654
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0

    .line 646
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->bytesValue()[B

    move-result-object v0

    .line 647
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 648
    return-object v0

    .line 661
    :catch_0
    move-exception v0

    .line 663
    throw v0

    :catch_1
    move-exception v0

    .line 665
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parseObject(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1100
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .prologue
    .line 179
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 181
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_8

    .line 186
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_9

    .line 191
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_a

    .line 196
    :cond_0
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_b

    .line 200
    :cond_1
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 202
    :try_start_0
    instance-of v1, p1, Lcom/alibaba/fastjson/JSONObject;

    if-nez v1, :cond_c

    move-object v2, p1

    .line 204
    :goto_0
    const/4 v10, 0x0

    move v5, v10

    .line 206
    :cond_2
    :goto_1
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 207
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v1

    .line 208
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v11, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 216
    :goto_2
    const/4 v6, 0x0

    const/16 v3, 0x22

    .line 218
    if-eq v1, v3, :cond_f

    const/16 v3, 0x7d

    .line 225
    if-eq v1, v3, :cond_11

    const/16 v3, 0x27

    .line 243
    if-eq v1, v3, :cond_16

    const/16 v3, 0x1a

    .line 254
    if-eq v1, v3, :cond_19

    const/16 v3, 0x2c

    .line 256
    if-eq v1, v3, :cond_1a

    const/16 v3, 0x30

    .line 258
    if-ge v1, v3, :cond_1b

    :cond_3
    const/16 v3, 0x2d

    if-eq v1, v3, :cond_1c

    const/16 v3, 0x7b

    .line 277
    if-ne v1, v3, :cond_20

    .line 278
    :cond_4
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 279
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v3

    .line 280
    const/4 v1, 0x1

    .line 294
    :goto_3
    if-eqz v1, :cond_23

    .line 299
    :goto_4
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v7

    .line 301
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 303
    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    if-eq v3, v1, :cond_24

    :cond_5
    const-string/jumbo v1, "$ref"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 388
    if-eq v3, v1, :cond_34

    .line 442
    :cond_6
    if-eqz v5, :cond_40

    move v10, v5

    move-object v6, v4

    .line 454
    :goto_5
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v4, Lcom/alibaba/fastjson/JSONObject;

    if-eq v1, v4, :cond_44

    move-object v9, v3

    :goto_6
    const/16 v1, 0x22

    .line 461
    if-eq v7, v1, :cond_46

    const/16 v1, 0x30

    .line 475
    if-ge v7, v1, :cond_49

    :cond_7
    const/16 v1, 0x2d

    if-eq v7, v1, :cond_4a

    const/16 v1, 0x5b

    .line 484
    if-eq v7, v1, :cond_4c

    const/16 v1, 0x7b

    .line 514
    if-eq v7, v1, :cond_53

    .line 578
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 579
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    .line 581
    invoke-interface {v2, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v3, 0xd

    if-eq v1, v3, :cond_63

    .line 586
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v3, 0x10

    if-eq v1, v3, :cond_64

    .line 589
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "syntax error, position at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 608
    :catchall_0
    move-exception v1

    move-object v4, v6

    .line 613
    :goto_7
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v1

    .line 182
    :cond_8
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/4 v1, 0x0

    .line 183
    return-object v1

    .line 187
    :cond_9
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 188
    return-object p1

    .line 191
    :cond_a
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 192
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 193
    return-object p1

    .line 196
    :cond_b
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    .line 197
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "syntax error, expect {, actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_c
    :try_start_2
    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_0

    .line 210
    :cond_d
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 211
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 212
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v1

    :cond_e
    const/16 v3, 0x2c

    .line 209
    if-eq v1, v3, :cond_d

    goto/16 :goto_2

    .line 219
    :cond_f
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    const/16 v3, 0x22

    invoke-interface {v11, v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 221
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v1

    const/16 v7, 0x3a

    .line 222
    if-ne v1, v7, :cond_10

    move v1, v6

    goto/16 :goto_3

    .line 223
    :cond_10
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "expect \':\' at "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", name "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 608
    :catchall_1
    move-exception v1

    goto/16 :goto_7

    .line 226
    :cond_11
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 227
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 228
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 230
    if-eqz v5, :cond_12

    .line 613
    :goto_8
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 242
    return-object p1

    .line 231
    :cond_12
    :try_start_3
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    if-nez v1, :cond_15

    .line 234
    :cond_13
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v1

    .line 235
    if-eqz v4, :cond_14

    move-object v1, v4

    :cond_14
    move-object v4, v1

    .line 238
    goto :goto_8

    .line 231
    :cond_15
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/ParseContext;->fieldName:Ljava/lang/Object;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_13

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-ne p1, v1, :cond_13

    .line 232
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_8

    .line 244
    :cond_16
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v11, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 248
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    const/16 v3, 0x27

    invoke-interface {v11, v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v3

    .line 249
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 250
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v1

    const/16 v7, 0x3a

    .line 251
    if-ne v1, v7, :cond_18

    move v1, v6

    goto/16 :goto_3

    .line 245
    :cond_17
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "syntax error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    :cond_18
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "expect \':\' at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_19
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "syntax error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    :cond_1a
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "syntax error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    const/16 v3, 0x39

    .line 258
    if-gt v1, v3, :cond_3

    .line 259
    :cond_1c
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 260
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 262
    :try_start_4
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1d

    .line 265
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v1

    .line 267
    :goto_9
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->NonStringKeyAsString:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v11, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v3

    if-nez v3, :cond_1e

    .line 273
    :goto_a
    :try_start_5
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v3

    const/16 v7, 0x3a

    .line 274
    if-ne v3, v7, :cond_1f

    move-object v3, v1

    move v1, v6

    goto/16 :goto_3

    .line 263
    :cond_1d
    :try_start_6
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v1

    goto :goto_9

    .line 268
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v1

    goto :goto_a

    .line 272
    :catch_0
    move-exception v1

    .line 271
    :try_start_7
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parse number key error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 275
    :cond_1f
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parse number key error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    const/16 v3, 0x5b

    .line 277
    if-eq v1, v3, :cond_4

    .line 282
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v11, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 286
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-interface {v11, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v3

    .line 287
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 288
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v1

    const/16 v7, 0x3a

    .line 289
    if-ne v1, v7, :cond_22

    move v1, v6

    goto/16 :goto_3

    .line 283
    :cond_21
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "syntax error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 290
    :cond_22
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "expect \':\' at "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", actual "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 295
    :cond_23
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 296
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    goto/16 :goto_4

    .line 303
    :cond_24
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 304
    invoke-interface {v11, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 305
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    const/16 v3, 0x22

    invoke-interface {v11, v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v7

    .line 307
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->IgnoreAutoType:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v11, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 312
    if-nez p1, :cond_28

    .line 316
    :cond_25
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->getFeatures()I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {v1, v7, v6, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v1

    move-object v6, v1

    .line 319
    :goto_b
    if-eqz v6, :cond_29

    const/16 v1, 0x10

    .line 324
    invoke-interface {v11, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 325
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v3, 0xd

    if-eq v1, v3, :cond_2a

    const/4 v1, 0x2

    .line 362
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 364
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    if-nez v1, :cond_31

    .line 371
    :cond_26
    :goto_c
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_32

    .line 377
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 378
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 379
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 384
    :cond_27
    :goto_d
    move-object/from16 v0, p2

    invoke-interface {v1, p0, v6, v0}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v1

    .line 613
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 385
    return-object v1

    .line 313
    :cond_28
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 314
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move-object v6, v1

    goto :goto_b

    .line 320
    :cond_29
    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-interface {v2, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_2a
    const/16 v1, 0x10

    .line 326
    invoke-interface {v11, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 v3, 0x0

    .line 329
    :try_start_9
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 330
    instance-of v5, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-nez v5, :cond_2b

    move-object v1, v3

    .line 346
    :goto_e
    if-eqz v1, :cond_2e

    .line 613
    :goto_f
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 356
    return-object v1

    .line 331
    :cond_2b
    :try_start_a
    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 332
    invoke-virtual {v1, p0, v6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .line 334
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2c
    :goto_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2d

    move-object v1, v5

    goto :goto_e

    :cond_2d
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 335
    check-cast v2, Ljava/util/Map$Entry;

    .line 336
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 337
    instance-of v9, v3, Ljava/lang/String;

    if-eqz v9, :cond_2c

    .line 338
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v3

    .line 339
    if-eqz v3, :cond_2c

    .line 340
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_10

    .line 356
    :catch_1
    move-exception v1

    .line 358
    :try_start_b
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v3, "create instance error"

    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_2e
    :try_start_c
    const-class v1, Ljava/lang/Cloneable;

    .line 347
    if-eq v6, v1, :cond_2f

    const-string/jumbo v1, "java.util.Collections$EmptyMap"

    .line 349
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 352
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    goto :goto_f

    .line 348
    :cond_2f
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_f

    .line 350
    :cond_30
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result-object v1

    goto :goto_f

    .line 364
    :cond_31
    if-eqz p2, :cond_26

    :try_start_d
    move-object/from16 v0, p2

    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/ParseContext;->fieldName:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-nez v1, :cond_26

    .line 368
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->popContext()V

    goto/16 :goto_c

    .line 372
    :cond_32
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {p1, v6, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v1

    .line 373
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 613
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 374
    return-object v1

    :cond_33
    :try_start_e
    const-class v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 379
    if-eq v2, v3, :cond_27

    const-class v3, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;

    if-eq v2, v3, :cond_27

    const/4 v2, 0x0

    .line 382
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto/16 :goto_d

    .line 388
    :cond_34
    if-eqz v4, :cond_6

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 390
    invoke-interface {v11, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x4

    .line 391
    invoke-interface {v11, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 392
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_35

    .line 438
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "illegal ref, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    :cond_35
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v3

    const/16 v1, 0xd

    .line 394
    invoke-interface {v11, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/4 v1, 0x0

    const-string/jumbo v2, "@"

    .line 397
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    const-string/jumbo v2, ".."

    .line 407
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string/jumbo v2, "$"

    .line 414
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 427
    new-instance v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v2, v4, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v2, 0x1

    .line 428
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 431
    :cond_36
    :goto_11
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3f

    const/16 v2, 0x10

    .line 434
    invoke-interface {v11, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 613
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 436
    return-object v1

    .line 398
    :cond_37
    :try_start_f
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v2, :cond_36

    .line 399
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 400
    iget-object v2, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 401
    instance-of v5, v2, [Ljava/lang/Object;

    if-eqz v5, :cond_39

    :cond_38
    move-object v1, v2

    .line 402
    goto :goto_11

    .line 401
    :cond_39
    instance-of v5, v2, Ljava/util/Collection;

    if-nez v5, :cond_38

    .line 403
    iget-object v2, v3, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v2, :cond_36

    .line 404
    iget-object v1, v3, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_11

    .line 408
    :cond_3a
    iget-object v2, v4, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-nez v2, :cond_3b

    .line 411
    new-instance v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v2, v4, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v2, 0x1

    .line 412
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto :goto_11

    .line 409
    :cond_3b
    iget-object v1, v4, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_11

    :cond_3c
    move-object v2, v4

    .line 416
    :goto_12
    iget-object v5, v2, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-nez v5, :cond_3d

    .line 420
    iget-object v5, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-nez v5, :cond_3e

    .line 423
    new-instance v5, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v5, v2, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v2, 0x1

    .line 424
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto :goto_11

    .line 417
    :cond_3d
    iget-object v2, v2, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_12

    .line 421
    :cond_3e
    iget-object v1, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_11

    .line 432
    :cond_3f
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "syntax error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 443
    :cond_40
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    if-nez v1, :cond_42

    .line 446
    :cond_41
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v1

    .line 447
    if-eqz v4, :cond_43

    .line 450
    :goto_13
    const/4 v1, 0x1

    move v10, v1

    move-object v6, v4

    goto/16 :goto_5

    .line 443
    :cond_42
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/ParseContext;->fieldName:Ljava/lang/Object;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_41

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-ne p1, v1, :cond_41

    .line 444
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move v10, v5

    move-object v6, v4

    goto/16 :goto_5

    :cond_43
    move-object v4, v1

    .line 448
    goto :goto_13

    .line 455
    :cond_44
    if-eqz v3, :cond_45

    move-object v9, v3

    goto/16 :goto_6

    :cond_45
    :try_start_10
    const-string/jumbo v1, "null"

    move-object v9, v1

    .line 456
    goto/16 :goto_6

    .line 462
    :cond_46
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    .line 463
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 466
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v11, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v3

    if-nez v3, :cond_47

    .line 474
    :goto_14
    invoke-interface {v2, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    :goto_15
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 594
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v3

    const/16 v4, 0x2c

    .line 595
    if-eq v3, v4, :cond_65

    const/16 v2, 0x7d

    .line 598
    if-eq v3, v2, :cond_66

    .line 608
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "syntax error, position at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 467
    :cond_47
    new-instance v3, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v3, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v4

    if-nez v4, :cond_48

    .line 471
    :goto_16
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    goto :goto_14

    .line 469
    :cond_48
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    goto :goto_16

    :cond_49
    const/16 v1, 0x39

    .line 475
    if-gt v7, v1, :cond_7

    .line 476
    :cond_4a
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    .line 477
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4b

    .line 480
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v11, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    invoke-interface {v11, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v1

    .line 483
    :goto_17
    invoke-interface {v2, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 478
    :cond_4b
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v1

    goto :goto_17

    .line 485
    :cond_4c
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 487
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 489
    if-nez p2, :cond_4e

    .line 493
    :cond_4d
    :goto_18
    if-eqz p2, :cond_4f

    .line 497
    :goto_19
    invoke-virtual {p0, v1, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 499
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->UseObjectArray:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v11, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 504
    :goto_1a
    invoke-interface {v2, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v3, 0xd

    if-eq v1, v3, :cond_51

    .line 509
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v3, 0x10

    if-eq v1, v3, :cond_52

    .line 512
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "syntax error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 489
    :cond_4e
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    if-eq v3, v4, :cond_4d

    goto :goto_18

    .line 494
    :cond_4f
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto :goto_19

    .line 500
    :cond_50
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->toArray()[Ljava/lang/Object;

    move-result-object v1

    goto :goto_1a

    .line 507
    :cond_51
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 613
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 508
    return-object p1

    :cond_52
    move v5, v10

    move-object v4, v6

    .line 510
    goto/16 :goto_1

    .line 515
    :cond_53
    :try_start_11
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 517
    if-nez p2, :cond_56

    :cond_54
    const/4 v1, 0x0

    move v3, v1

    .line 520
    :goto_1b
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->CustomMapDeserializer:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v11, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    if-nez v1, :cond_57

    .line 524
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v11, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v4

    invoke-direct {v1, v4}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    :goto_1c
    const/4 v4, 0x0

    .line 528
    if-eqz v3, :cond_58

    :goto_1d
    const/4 v8, 0x0

    .line 533
    const/4 v7, 0x0

    .line 534
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    if-nez v5, :cond_59

    move-object v5, v8

    .line 543
    :goto_1e
    if-eqz v7, :cond_5c

    .line 547
    :goto_1f
    if-nez v4, :cond_5d

    .line 551
    :cond_55
    :goto_20
    if-nez v9, :cond_5e

    .line 555
    :goto_21
    invoke-interface {v2, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    if-nez v3, :cond_5f

    .line 562
    :goto_22
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v4, 0xd

    if-eq v1, v4, :cond_60

    .line 567
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v4, 0x10

    if-eq v1, v4, :cond_61

    .line 575
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "syntax error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 517
    :cond_56
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Ljava/lang/Integer;

    if-ne v1, v3, :cond_54

    const/4 v1, 0x1

    move v3, v1

    goto :goto_1b

    .line 521
    :cond_57
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    const-class v4, Ljava/util/Map;

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    const-class v4, Ljava/util/Map;

    .line 522
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->createMap(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v1

    goto :goto_1c

    .line 529
    :cond_58
    invoke-virtual {p0, v6, v1, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v4

    goto :goto_1d

    .line 535
    :cond_59
    if-nez v9, :cond_5a

    const/4 v5, 0x0

    .line 536
    :goto_23
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    invoke-interface {v12, p1, v5}, Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;->resolve(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 537
    if-nez v5, :cond_5b

    move-object v5, v8

    goto :goto_1e

    .line 535
    :cond_5a
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_23

    .line 538
    :cond_5b
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v7, v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v7

    .line 539
    invoke-interface {v7, p0, v5, v9}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 540
    const/4 v5, 0x1

    move v13, v5

    move-object v5, v7

    move v7, v13

    goto :goto_1e

    .line 544
    :cond_5c
    invoke-virtual {p0, v1, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1f

    .line 547
    :cond_5d
    if-eq v1, v5, :cond_55

    .line 548
    iput-object p1, v4, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_20

    .line 552
    :cond_5e
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkMapResolve(Ljava/util/Map;Ljava/lang/Object;)V

    goto/16 :goto_21

    .line 559
    :cond_5f
    invoke-virtual {p0, v5, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    goto/16 :goto_22

    .line 563
    :cond_60
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 565
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 613
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 566
    return-object p1

    .line 568
    :cond_61
    if-nez v3, :cond_62

    .line 571
    :try_start_12
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move v5, v10

    move-object v4, v6

    .line 573
    goto/16 :goto_1

    .line 569
    :cond_62
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->popContext()V

    move v5, v10

    move-object v4, v6

    goto/16 :goto_1

    .line 584
    :cond_63
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 613
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 585
    return-object p1

    :cond_64
    move v5, v10

    move-object v4, v6

    .line 587
    goto/16 :goto_1

    .line 596
    :cond_65
    :try_start_13
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    move v5, v10

    move-object v4, v6

    .line 597
    goto/16 :goto_1

    .line 599
    :cond_66
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 600
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 601
    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 604
    invoke-virtual {p0, v1, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 613
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 606
    return-object p1
.end method

.method public parseObject(Ljava/lang/Object;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/16 v9, 0xd

    const/16 v8, 0x10

    const/4 v1, 0x0

    .line 880
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 882
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 883
    instance-of v2, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-nez v2, :cond_2

    move-object v0, v1

    .line 887
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    .line 893
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v5

    .line 895
    if-eqz v5, :cond_4

    .line 908
    :cond_1
    :goto_1
    if-nez v0, :cond_6

    move-object v3, v1

    .line 912
    :goto_2
    if-eqz v3, :cond_7

    .line 927
    iget-object v2, v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 928
    iget-object v5, v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 930
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v2, v6, :cond_9

    const-class v6, Ljava/lang/String;

    .line 933
    if-eq v2, v6, :cond_a

    .line 936
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v2, v6, :cond_b

    .line 940
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v6, v2, v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2

    .line 942
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 943
    invoke-interface {v2, p0, v5, v1}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 946
    :goto_3
    invoke-virtual {v3, p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 949
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    if-eq v2, v8, :cond_0

    .line 953
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    if-ne v2, v9, :cond_0

    .line 954
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 955
    return-void

    .line 884
    :cond_2
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    goto :goto_0

    .line 887
    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    if-eq v2, v8, :cond_0

    .line 888
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syntax error, expect {, actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 896
    :cond_4
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    if-eq v2, v9, :cond_5

    .line 900
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    if-ne v2, v8, :cond_1

    .line 901
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 897
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 958
    return-void

    .line 909
    :cond_6
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_2

    .line 913
    :cond_7
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 917
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    .line 918
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    .line 920
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    if-ne v2, v9, :cond_0

    .line 921
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 922
    return-void

    .line 914
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setter not found, class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 931
    :cond_9
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 932
    sget-object v2, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v2, p0, v5, v1}, Lcom/alibaba/fastjson/serializer/IntegerCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_3

    .line 934
    :cond_a
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v5, 0x4

    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 935
    invoke-static {p0}, Lcom/alibaba/fastjson/serializer/StringCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_3

    .line 937
    :cond_b
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 938
    sget-object v2, Lcom/alibaba/fastjson/serializer/LongCodec;->instance:Lcom/alibaba/fastjson/serializer/LongCodec;

    invoke-virtual {v2, p0, v5, v1}, Lcom/alibaba/fastjson/serializer/LongCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_3
.end method

.method public popContext()V
    .locals 3

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1281
    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    if-lez v0, :cond_1

    .line 1285
    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    .line 1286
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    iget v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1287
    return-void

    .line 1276
    :cond_0
    return-void

    .line 1282
    :cond_1
    return-void
.end method

.method public resolveReference(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1491
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v1, :cond_1

    .line 1494
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 1500
    :cond_0
    return-object v3

    .line 1492
    :cond_1
    return-object v3

    .line 1494
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    if-ge v0, v1, :cond_0

    .line 1495
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    aget-object v1, v1, v0

    .line 1496
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/ParseContext;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1494
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1497
    :cond_3
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public setConfig(Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 624
    return-void
.end method

.method public setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    .locals 2

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1302
    new-instance v0, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/ParseContext;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1303
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1305
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 1299
    return-object v0
.end method

.method public setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    .locals 2

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-virtual {p0, v0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 1291
    return-object v0
.end method

.method public setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
    .locals 2

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1271
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1272
    return-void

    .line 1269
    :cond_0
    return-void
.end method

.method public setDateFomrat(Ljava/text/DateFormat;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    .line 122
    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    .line 118
    return-void
.end method

.method public setFieldTypeResolver(Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;)V
    .locals 0

    .prologue
    .line 1264
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    .line 1265
    return-void
.end method

.method public setResolveStatus(I)V
    .locals 0

    .prologue
    .line 1055
    iput p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 1056
    return-void
.end method

.method public throwException(I)V
    .locals 3

    .prologue
    .line 1472
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syntax error, expect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1473
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
