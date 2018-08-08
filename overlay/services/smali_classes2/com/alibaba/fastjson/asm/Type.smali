.class public Lcom/alibaba/fastjson/asm/Type;
.super Ljava/lang/Object;
.source "Type.java"


# static fields
.field public static final BOOLEAN_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final BYTE_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final CHAR_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final DOUBLE_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final FLOAT_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final INT_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final LONG_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final SHORT_TYPE:Lcom/alibaba/fastjson/asm/Type;

.field public static final VOID_TYPE:Lcom/alibaba/fastjson/asm/Type;


# instance fields
.field private final buf:[C

.field private final len:I

.field private final off:I

.field protected final sort:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 42
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x0

    const/high16 v2, 0x56050000

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->VOID_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 47
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const v1, 0x5a000501

    invoke-direct {v0, v3, v4, v1, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->BOOLEAN_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 52
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x2

    const v2, 0x43000601

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->CHAR_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 57
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x3

    const v2, 0x42000501

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->BYTE_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 62
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x4

    const v2, 0x53000701

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->SHORT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 67
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x5

    const v2, 0x49000001

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->INT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 72
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x6

    const v2, 0x46020201

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->FLOAT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 77
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/4 v1, 0x7

    const v2, 0x4a010102    # 2113600.5f

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->LONG_TYPE:Lcom/alibaba/fastjson/asm/Type;

    .line 82
    new-instance v0, Lcom/alibaba/fastjson/asm/Type;

    const/16 v1, 0x8

    const v2, 0x44030302

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/alibaba/fastjson/asm/Type;->DOUBLE_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-void
.end method

.method private constructor <init>(I[CII)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p1, p0, Lcom/alibaba/fastjson/asm/Type;->sort:I

    .line 116
    iput-object p2, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    .line 117
    iput p3, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    .line 118
    iput p4, p0, Lcom/alibaba/fastjson/asm/Type;->len:I

    .line 119
    return-void
.end method

.method static getArgumentTypes(Ljava/lang/String;)[Lcom/alibaba/fastjson/asm/Type;
    .locals 9

    .prologue
    const/16 v8, 0x29

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 234
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    move v0, v1

    move v2, v3

    .line 238
    :goto_0
    add-int/lit8 v4, v2, 0x1

    aget-char v2, v5, v2

    .line 239
    if-eq v2, v8, :cond_2

    const/16 v6, 0x4c

    .line 241
    if-eq v2, v6, :cond_5

    const/16 v6, 0x5b

    .line 245
    if-ne v2, v6, :cond_1

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v4

    .line 242
    :goto_1
    add-int/lit8 v4, v2, 0x1

    aget-char v2, v5, v2

    const/16 v6, 0x3b

    if-ne v2, v6, :cond_0

    .line 244
    add-int/lit8 v0, v0, 0x1

    move v2, v4

    goto :goto_0

    .line 246
    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v2, v4

    goto :goto_0

    .line 250
    :cond_2
    new-array v4, v0, [Lcom/alibaba/fastjson/asm/Type;

    move v0, v1

    .line 253
    :goto_2
    aget-char v2, v5, v3

    if-ne v2, v8, :cond_3

    .line 258
    return-object v4

    .line 254
    :cond_3
    invoke-static {v5, v3}, Lcom/alibaba/fastjson/asm/Type;->getType([CI)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v2

    aput-object v2, v4, v0

    .line 255
    aget-object v2, v4, v0

    iget v6, v2, Lcom/alibaba/fastjson/asm/Type;->len:I

    aget-object v2, v4, v0

    iget v2, v2, Lcom/alibaba/fastjson/asm/Type;->sort:I

    const/16 v7, 0xa

    if-eq v2, v7, :cond_4

    move v2, v1

    :goto_3
    add-int/2addr v2, v6

    add-int/2addr v3, v2

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x2

    .line 255
    goto :goto_3

    :cond_5
    move v2, v4

    goto :goto_1
.end method

.method public static getArgumentsAndReturnSizes(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/16 v6, 0x4a

    const/16 v5, 0x44

    const/4 v1, 0x1

    move v0, v1

    move v2, v1

    .line 135
    :goto_0
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x29

    .line 136
    if-eq v0, v4, :cond_1

    const/16 v4, 0x4c

    .line 139
    if-eq v0, v4, :cond_7

    .line 150
    if-ne v0, v5, :cond_6

    .line 151
    :cond_0
    add-int/lit8 v2, v2, 0x2

    move v0, v3

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 138
    shl-int/lit8 v2, v2, 0x2

    const/16 v3, 0x56

    if-eq v0, v3, :cond_3

    if-ne v0, v5, :cond_4

    :cond_2
    const/4 v1, 0x2

    :goto_1
    or-int v0, v2, v1

    return v0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    if-eq v0, v6, :cond_2

    goto :goto_1

    :cond_5
    move v0, v3

    .line 140
    :goto_2
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x3b

    if-ne v0, v4, :cond_5

    .line 142
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_0

    .line 150
    :cond_6
    if-eq v0, v6, :cond_0

    .line 153
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_0

    :cond_7
    move v0, v3

    goto :goto_2
.end method

.method private getDimensions()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 227
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_0

    .line 230
    return v0

    .line 228
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/asm/Type;->getType([CI)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method private static getType([CI)Lcom/alibaba/fastjson/asm/Type;
    .locals 4

    .prologue
    const/16 v3, 0x3b

    const/4 v0, 0x1

    .line 167
    aget-char v1, p0, p1

    packed-switch v1, :pswitch_data_0

    .line 201
    :goto_0
    :pswitch_0
    add-int v1, p1, v0

    aget-char v1, p0, v1

    if-ne v1, v3, :cond_3

    .line 204
    new-instance v1, Lcom/alibaba/fastjson/asm/Type;

    const/16 v2, 0xa

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v1, v2, p0, v3, v0}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    return-object v1

    .line 169
    :pswitch_1
    sget-object v0, Lcom/alibaba/fastjson/asm/Type;->VOID_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object v0

    .line 171
    :pswitch_2
    sget-object v0, Lcom/alibaba/fastjson/asm/Type;->BOOLEAN_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object v0

    .line 173
    :pswitch_3
    sget-object v0, Lcom/alibaba/fastjson/asm/Type;->CHAR_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object v0

    .line 175
    :pswitch_4
    sget-object v0, Lcom/alibaba/fastjson/asm/Type;->BYTE_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object v0

    .line 177
    :pswitch_5
    sget-object v0, Lcom/alibaba/fastjson/asm/Type;->SHORT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object v0

    .line 179
    :pswitch_6
    sget-object v0, Lcom/alibaba/fastjson/asm/Type;->INT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object v0

    .line 181
    :pswitch_7
    sget-object v0, Lcom/alibaba/fastjson/asm/Type;->FLOAT_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object v0

    .line 183
    :pswitch_8
    sget-object v0, Lcom/alibaba/fastjson/asm/Type;->LONG_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object v0

    .line 185
    :pswitch_9
    sget-object v0, Lcom/alibaba/fastjson/asm/Type;->DOUBLE_TYPE:Lcom/alibaba/fastjson/asm/Type;

    return-object v0

    .line 189
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 188
    :pswitch_a
    add-int v1, p1, v0

    aget-char v1, p0, v1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_0

    .line 191
    add-int v1, p1, v0

    aget-char v1, p0, v1

    const/16 v2, 0x4c

    if-eq v1, v2, :cond_2

    .line 197
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/asm/Type;

    const/16 v2, 0x9

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v2, p0, p1, v0}, Lcom/alibaba/fastjson/asm/Type;-><init>(I[CII)V

    return-object v1

    .line 192
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 193
    :goto_1
    add-int v1, p1, v0

    aget-char v1, p0, v1

    if-eq v1, v3, :cond_1

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 202
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method protected getClassName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 262
    iget v0, p0, Lcom/alibaba/fastjson/asm/Type;->sort:I

    packed-switch v0, :pswitch_data_0

    .line 290
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    iget v3, p0, Lcom/alibaba/fastjson/asm/Type;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "void"

    .line 264
    return-object v0

    :pswitch_1
    const-string/jumbo v0, "boolean"

    .line 266
    return-object v0

    :pswitch_2
    const-string/jumbo v0, "char"

    .line 268
    return-object v0

    :pswitch_3
    const-string/jumbo v0, "byte"

    .line 270
    return-object v0

    :pswitch_4
    const-string/jumbo v0, "short"

    .line 272
    return-object v0

    :pswitch_5
    const-string/jumbo v0, "int"

    .line 274
    return-object v0

    :pswitch_6
    const-string/jumbo v0, "float"

    .line 276
    return-object v0

    :pswitch_7
    const-string/jumbo v0, "long"

    .line 278
    return-object v0

    :pswitch_8
    const-string/jumbo v0, "double"

    .line 280
    return-object v0

    .line 282
    :pswitch_9
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    invoke-direct {p0}, Lcom/alibaba/fastjson/asm/Type;->getDimensions()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/asm/Type;->getType([CI)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v0

    .line 283
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-direct {p0}, Lcom/alibaba/fastjson/asm/Type;->getDimensions()I

    move-result v0

    :goto_0
    if-gtz v0, :cond_0

    .line 287
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v2, "[]"

    .line 285
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method getDescriptor()Ljava/lang/String;
    .locals 4

    .prologue
    .line 222
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    iget v3, p0, Lcom/alibaba/fastjson/asm/Type;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 209
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Type;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/asm/Type;->off:I

    iget v3, p0, Lcom/alibaba/fastjson/asm/Type;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
