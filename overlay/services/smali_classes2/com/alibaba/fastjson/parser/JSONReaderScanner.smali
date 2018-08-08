.class public final Lcom/alibaba/fastjson/parser/JSONReaderScanner;
.super Lcom/alibaba/fastjson/parser/JSONLexerBase;
.source "JSONReaderScanner.java"


# static fields
.field private static final BUF_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field


# instance fields
.field private buf:[C

.field private bufLength:I

.field private reader:Ljava/io/Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->BUF_LOCAL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>(Ljava/io/Reader;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;-><init>(I)V

    .line 59
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->reader:Ljava/io/Reader;

    .line 61
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->BUF_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    .line 62
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    if-nez v0, :cond_0

    .line 66
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    if-eqz v0, :cond_1

    .line 71
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-virtual {p1, v0}, Ljava/io/Reader;->read([C)I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->next()C

    .line 79
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->ch:C

    const v1, 0xfeff

    if-eq v0, v1, :cond_2

    .line 82
    :goto_2
    return-void

    .line 63
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->BUF_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x4000

    .line 67
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    goto :goto_1

    .line 74
    :catch_0
    move-exception v0

    .line 73
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 80
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->next()C

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>(Ljava/lang/String;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>(Ljava/io/Reader;I)V

    .line 47
    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>([CII)V

    .line 51
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/io/CharArrayReader;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/io/CharArrayReader;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>(Ljava/io/Reader;I)V

    .line 86
    return-void
.end method


# virtual methods
.method public final addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final arrayCopy(I[CII)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-static {v0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    return-void
.end method

.method public bytesValue()[B
    .locals 3

    .prologue
    .line 220
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->token:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/IOUtils;->decodeBase64([CII)[B

    move-result-object v0

    return-object v0

    .line 221
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "TODO"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final charArrayCompare([C)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 210
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 216
    const/4 v0, 0x1

    return v0

    .line 211
    :cond_0
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->charAt(I)C

    move-result v2

    aget-char v3, p1, v0

    if-ne v2, v3, :cond_1

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_1
    return v1
.end method

.method public final charAt(I)C
    .locals 7

    .prologue
    const/16 v6, 0x1a

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 89
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-ge p1, v0, :cond_0

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    aget-char v0, v0, p1

    return v0

    .line 90
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-eq v0, v5, :cond_1

    .line 97
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    if-eqz v0, :cond_3

    .line 110
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    sub-int/2addr v0, v1

    .line 111
    if-gtz v0, :cond_4

    .line 116
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->reader:Ljava/io/Reader;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v3, v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-eqz v1, :cond_5

    .line 125
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-eq v1, v5, :cond_6

    .line 129
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    .line 130
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    sub-int/2addr p1, v0

    .line 131
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    .line 132
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    goto :goto_0

    .line 91
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    if-lt p1, v0, :cond_2

    .line 94
    return v6

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    aget-char v0, v0, p1

    return v0

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 99
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    array-length v1, v0

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    sub-int/2addr v1, v2

    .line 103
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->reader:Ljava/io/Reader;

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 104
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    .line 105
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 107
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 112
    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 119
    :catch_1
    move-exception v0

    .line 118
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 122
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "illegal state, textLength is zero"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_6
    return v6
.end method

.method public close()V
    .locals 2

    .prologue
    .line 303
    invoke-super {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    .line 305
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v0, v0

    const/high16 v1, 0x10000

    if-le v0, v1, :cond_0

    :goto_0
    const/4 v0, 0x0

    .line 308
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    .line 310
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->reader:Ljava/io/Reader;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->close(Ljava/io/Closeable;)V

    .line 311
    return-void

    .line 306
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->BUF_LOCAL:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final copyTo(II[C)V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    const/4 v1, 0x0

    invoke-static {v0, p1, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    return-void
.end method

.method public final decimalValue()Ljava/math/BigDecimal;
    .locals 4

    .prologue
    .line 288
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    const/4 v1, -0x1

    .line 289
    if-eq v0, v1, :cond_1

    .line 292
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->charAt(I)C

    move-result v2

    .line 294
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    const/16 v3, 0x4c

    .line 295
    if-ne v2, v3, :cond_2

    .line 296
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 299
    :goto_1
    new-instance v2, Ljava/math/BigDecimal;

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-direct {v2, v3, v0, v1}, Ljava/math/BigDecimal;-><init>([CII)V

    return-object v2

    :cond_1
    const/4 v0, 0x0

    .line 290
    goto :goto_0

    :cond_2
    const/16 v3, 0x53

    .line 295
    if-eq v2, v3, :cond_0

    const/16 v3, 0x42

    if-eq v2, v3, :cond_0

    const/16 v3, 0x46

    if-eq v2, v3, :cond_0

    const/16 v3, 0x44

    if-eq v2, v3, :cond_0

    goto :goto_1
.end method

.method public final indexOf(CI)I
    .locals 3

    .prologue
    .line 140
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    sub-int v0, p2, v0

    .line 142
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    add-int/2addr v1, v0

    .line 143
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->charAt(I)C

    move-result v1

    .line 144
    if-eq p1, v1, :cond_0

    const/16 v2, 0x1a

    .line 147
    if-eq v1, v2, :cond_1

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    add-int/2addr v0, v1

    return v0

    :cond_1
    const/4 v0, -0x1

    .line 148
    return v0
.end method

.method public final isBlankInput()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 320
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    aget-char v2, v2, v0

    const/16 v3, 0x1a

    .line 321
    if-eq v2, v3, :cond_0

    .line 326
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    .line 322
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->token:I

    .line 331
    const/4 v0, 0x1

    return v0

    .line 327
    :cond_1
    return v1
.end method

.method public isEOF()Z
    .locals 2

    .prologue
    .line 315
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v1, v1

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v1, v1

    if-eq v0, v1, :cond_0

    goto :goto_1
.end method

.method public final next()C
    .locals 9

    .prologue
    const/16 v8, 0x1a

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 158
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    .line 160
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-ge v0, v1, :cond_0

    .line 202
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    aget-char v0, v1, v0

    int-to-char v1, v0

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->ch:C

    return v0

    .line 161
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-eq v0, v7, :cond_1

    .line 165
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    if-gtz v0, :cond_2

    .line 173
    :goto_1
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    .line 175
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    .line 178
    :try_start_0
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    .line 179
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v1, v1

    sub-int/2addr v1, v2

    .line 180
    if-eqz v1, :cond_5

    .line 186
    :goto_2
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->reader:Ljava/io/Reader;

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/Reader;->read([CII)I

    move-result v1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-eqz v1, :cond_6

    .line 195
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-eq v1, v7, :cond_7

    .line 199
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    goto :goto_0

    .line 162
    :cond_1
    return v8

    .line 167
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    sub-int/2addr v0, v1

    .line 168
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->ch:C

    const/16 v2, 0x22

    if-eq v1, v2, :cond_4

    .line 171
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    invoke-static {v1, v0, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 168
    :cond_4
    if-lez v0, :cond_3

    .line 169
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 181
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 182
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v6, v6

    invoke-static {v3, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    .line 184
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v1, v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    sub-int/2addr v1, v2

    goto :goto_2

    .line 189
    :catch_0
    move-exception v0

    .line 188
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 192
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "illegal stat, textLength is zero"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_7
    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->ch:C

    return v8
.end method

.method public final numberString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 272
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    const/4 v1, -0x1

    .line 273
    if-eq v0, v1, :cond_1

    .line 276
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->charAt(I)C

    move-result v2

    .line 278
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    const/16 v3, 0x4c

    .line 279
    if-ne v2, v3, :cond_2

    .line 280
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 283
    :goto_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-direct {v2, v3, v0, v1}, Ljava/lang/String;-><init>([CII)V

    .line 284
    return-object v2

    :cond_1
    const/4 v0, 0x0

    .line 274
    goto :goto_0

    :cond_2
    const/16 v3, 0x53

    .line 279
    if-eq v2, v3, :cond_0

    const/16 v3, 0x42

    if-eq v2, v3, :cond_0

    const/16 v3, 0x46

    if-eq v2, v3, :cond_0

    const/16 v3, 0x44

    if-eq v2, v3, :cond_0

    goto :goto_1
.end method

.method public final stringVal()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 235
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->hasSpecial:Z

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sbuf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 236
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    add-int/lit8 v0, v0, 0x1

    .line 237
    if-ltz v0, :cond_1

    .line 240
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v1, v1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_2

    .line 243
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 238
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 241
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final subString(II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 251
    if-ltz p2, :cond_0

    .line 254
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public final sub_chars(II)[C
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 259
    if-ltz p2, :cond_0

    .line 263
    if-eqz p1, :cond_1

    .line 266
    new-array v0, p2, [C

    .line 267
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    return-object v0

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    return-object v0
.end method
