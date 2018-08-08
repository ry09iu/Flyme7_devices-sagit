.class public abstract Lcom/alibaba/fastjson/parser/JSONLexerBase;
.super Ljava/lang/Object;
.source "JSONLexerBase.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/JSONLexer;
.implements Ljava/io/Closeable;


# static fields
.field protected static final INT_MULTMIN_RADIX_TEN:I = -0xccccccc

.field protected static final MULTMIN_RADIX_TEN:J = -0xcccccccccccccccL

.field private static final SBUF_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field

.field protected static final digits:[I

.field protected static final typeFieldName:[C


# instance fields
.field protected bp:I

.field protected calendar:Ljava/util/Calendar;

.field protected ch:C

.field protected eofPos:I

.field protected features:I

.field protected hasSpecial:Z

.field protected locale:Ljava/util/Locale;

.field public matchStat:I

.field protected np:I

.field protected pos:I

.field protected sbuf:[C

.field protected sp:I

.field protected stringDefaultValue:Ljava/lang/String;

.field protected timeZone:Ljava/util/TimeZone;

.field protected token:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_LOCAL:Ljava/lang/ThreadLocal;

    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    const/16 v0, 0x67

    .line 5080
    new-array v0, v0, [I

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    const/16 v0, 0x30

    :goto_0
    const/16 v1, 0x39

    .line 5083
    if-le v0, v1, :cond_0

    const/16 v0, 0x61

    :goto_1
    const/16 v1, 0x66

    .line 5087
    if-le v0, v1, :cond_1

    const/16 v0, 0x41

    :goto_2
    const/16 v1, 0x46

    .line 5090
    if-le v0, v1, :cond_2

    .line 5093
    return-void

    .line 5084
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v0, -0x30

    aput v2, v1, v0

    .line 5083
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5088
    :cond_1
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0xa

    aput v2, v1, v0

    .line 5087
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5091
    :cond_2
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v0, -0x41

    add-int/lit8 v2, v2, 0xa

    aput v2, v1, v0

    .line 5090
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    .line 65
    sget-object v0, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    .line 66
    sget-object v0, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    .line 68
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 72
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    .line 75
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    .line 77
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 81
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 83
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    if-eqz v0, :cond_1

    .line 86
    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, ""

    .line 78
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/16 v0, 0x200

    .line 84
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    goto :goto_1
.end method

.method public static isWhitespace(C)Z
    .locals 1

    .prologue
    const/16 v0, 0x20

    .line 5074
    if-le p0, v0, :cond_0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    goto :goto_0
.end method

.method public static readString([CI)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 4630
    new-array v4, p1, [C

    move v0, v2

    move v3, v2

    .line 4632
    :goto_0
    if-lt v0, p1, :cond_0

    .line 4711
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 4633
    :cond_0
    aget-char v5, p0, v0

    const/16 v1, 0x5c

    .line 4635
    if-ne v5, v1, :cond_1

    .line 4639
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p0, v0

    .line 4641
    packed-switch v1, :pswitch_data_0

    .line 4708
    :pswitch_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "unclosed.str.lit"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4636
    :cond_1
    add-int/lit8 v1, v3, 0x1

    int-to-char v5, v5

    aput-char v5, v4, v3

    .line 4632
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    goto :goto_0

    .line 4643
    :pswitch_1
    add-int/lit8 v1, v3, 0x1

    aput-char v2, v4, v3

    goto :goto_1

    .line 4646
    :pswitch_2
    add-int/lit8 v1, v3, 0x1

    aput-char v8, v4, v3

    goto :goto_1

    .line 4649
    :pswitch_3
    add-int/lit8 v1, v3, 0x1

    aput-char v9, v4, v3

    goto :goto_1

    .line 4652
    :pswitch_4
    add-int/lit8 v1, v3, 0x1

    aput-char v10, v4, v3

    goto :goto_1

    .line 4655
    :pswitch_5
    add-int/lit8 v1, v3, 0x1

    aput-char v11, v4, v3

    goto :goto_1

    .line 4658
    :pswitch_6
    add-int/lit8 v1, v3, 0x1

    const/4 v5, 0x5

    aput-char v5, v4, v3

    goto :goto_1

    .line 4661
    :pswitch_7
    add-int/lit8 v1, v3, 0x1

    const/4 v5, 0x6

    aput-char v5, v4, v3

    goto :goto_1

    .line 4664
    :pswitch_8
    add-int/lit8 v1, v3, 0x1

    const/4 v5, 0x7

    aput-char v5, v4, v3

    goto :goto_1

    .line 4667
    :pswitch_9
    add-int/lit8 v1, v3, 0x1

    const/16 v5, 0x8

    aput-char v5, v4, v3

    goto :goto_1

    .line 4670
    :pswitch_a
    add-int/lit8 v1, v3, 0x1

    const/16 v5, 0x9

    aput-char v5, v4, v3

    goto :goto_1

    .line 4673
    :pswitch_b
    add-int/lit8 v1, v3, 0x1

    const/16 v5, 0xa

    aput-char v5, v4, v3

    goto :goto_1

    .line 4676
    :pswitch_c
    add-int/lit8 v1, v3, 0x1

    const/16 v5, 0xb

    aput-char v5, v4, v3

    goto :goto_1

    .line 4680
    :pswitch_d
    add-int/lit8 v1, v3, 0x1

    const/16 v5, 0xc

    aput-char v5, v4, v3

    goto :goto_1

    .line 4683
    :pswitch_e
    add-int/lit8 v1, v3, 0x1

    const/16 v5, 0xd

    aput-char v5, v4, v3

    goto :goto_1

    .line 4686
    :pswitch_f
    add-int/lit8 v1, v3, 0x1

    const/16 v5, 0x22

    aput-char v5, v4, v3

    goto :goto_1

    .line 4689
    :pswitch_10
    add-int/lit8 v1, v3, 0x1

    const/16 v5, 0x27

    aput-char v5, v4, v3

    goto :goto_1

    .line 4692
    :pswitch_11
    add-int/lit8 v1, v3, 0x1

    const/16 v5, 0x2f

    aput-char v5, v4, v3

    goto :goto_1

    .line 4695
    :pswitch_12
    add-int/lit8 v1, v3, 0x1

    const/16 v5, 0x5c

    aput-char v5, v4, v3

    goto :goto_1

    .line 4698
    :pswitch_13
    add-int/lit8 v1, v3, 0x1

    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v0, v0, 0x1

    aget-char v6, p0, v0

    aget v5, v5, v6

    mul-int/lit8 v5, v5, 0x10

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v0, v0, 0x1

    aget-char v7, p0, v0

    aget v6, v6, v7

    add-int/2addr v5, v6

    int-to-char v5, v5

    int-to-char v5, v5

    aput-char v5, v4, v3

    goto/16 :goto_1

    .line 4701
    :pswitch_14
    add-int/lit8 v1, v3, 0x1

    new-instance v5, Ljava/lang/String;

    new-array v6, v11, [C

    add-int/lit8 v0, v0, 0x1

    aget-char v7, p0, v0

    int-to-char v7, v7

    aput-char v7, v6, v2

    add-int/lit8 v0, v0, 0x1

    aget-char v7, p0, v0

    int-to-char v7, v7

    aput-char v7, v6, v8

    add-int/lit8 v0, v0, 0x1

    aget-char v7, p0, v0

    int-to-char v7, v7

    aput-char v7, v6, v9

    add-int/lit8 v0, v0, 0x1

    aget-char v7, p0, v0

    int-to-char v7, v7

    aput-char v7, v6, v10

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v5, v5

    int-to-char v5, v5

    aput-char v5, v4, v3

    goto/16 :goto_1

    .line 4641
    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_a
        :pswitch_14
        :pswitch_c
        :pswitch_0
        :pswitch_13
    .end packed-switch
.end method

.method private scanStringSingleQuote()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4751
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 4752
    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 4755
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v0

    const/16 v1, 0x27

    .line 4757
    if-eq v0, v1, :cond_7

    const/16 v1, 0x1a

    .line 4761
    if-eq v0, v1, :cond_0

    const/16 v1, 0x5c

    .line 4769
    if-eq v0, v1, :cond_2

    .line 4855
    iget-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-eqz v1, :cond_5

    .line 4860
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v2, v2

    if-eq v1, v2, :cond_6

    .line 4863
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    int-to-char v0, v0

    aput-char v0, v1, v2

    goto :goto_0

    .line 4762
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4766
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "unclosed single-quote string"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4763
    :cond_1
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 4770
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-eqz v0, :cond_3

    .line 4784
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v0

    .line 4786
    packed-switch v0, :pswitch_data_0

    .line 4849
    :pswitch_0
    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 4850
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "unclosed single-quote string"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4771
    :cond_3
    iput-boolean v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 4773
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v1, v1

    if-gt v0, v1, :cond_4

    .line 4780
    :goto_2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->copyTo(II[C)V

    goto :goto_1

    .line 4774
    :cond_4
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 4775
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v2, v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4776
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    goto :goto_2

    .line 4788
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 4791
    :pswitch_2
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 4794
    :pswitch_3
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4797
    :pswitch_4
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4800
    :pswitch_5
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4803
    :pswitch_6
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4806
    :pswitch_7
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4809
    :pswitch_8
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4812
    :pswitch_9
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4815
    :pswitch_a
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4818
    :pswitch_b
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4821
    :pswitch_c
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4825
    :pswitch_d
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4828
    :pswitch_e
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4831
    :pswitch_f
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4834
    :pswitch_10
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4837
    :pswitch_11
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4840
    :pswitch_12
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4843
    :pswitch_13
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    aget v0, v0, v1

    mul-int/lit8 v0, v0, 0x10

    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4846
    :pswitch_14
    new-instance v0, Ljava/lang/String;

    new-array v1, v6, [C

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v2

    int-to-char v2, v2

    aput-char v2, v1, v4

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v2

    int-to-char v2, v2

    aput-char v2, v1, v5

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v2

    int-to-char v2, v2

    aput-char v2, v1, v7

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v2

    int-to-char v2, v2

    aput-char v2, v1, v8

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4856
    :cond_5
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto/16 :goto_0

    .line 4861
    :cond_6
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4867
    :cond_7
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4868
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4869
    return-void

    .line 4786
    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_a
        :pswitch_14
        :pswitch_c
        :pswitch_0
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public abstract addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
.end method

.method protected abstract arrayCopy(I[CII)V
.end method

.method public abstract bytesValue()[B
.end method

.method protected abstract charArrayCompare([C)Z
.end method

.method public abstract charAt(I)C
.end method

.method public close()V
    .locals 2

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v0, v0

    const/16 v1, 0x2000

    if-le v0, v1, :cond_0

    :goto_0
    const/4 v0, 0x0

    .line 1090
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 1091
    return-void

    .line 1088
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_LOCAL:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 2

    .prologue
    .line 523
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    invoke-static {v0, p1, p2}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    .line 525
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 528
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, ""

    .line 526
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    goto :goto_0
.end method

.method protected abstract copyTo(II[C)V
.end method

.method public final decimalValue(Z)Ljava/lang/Number;
    .locals 3

    .prologue
    .line 5050
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x46

    .line 5052
    if-eq v0, v1, :cond_0

    const/16 v1, 0x44

    .line 5056
    if-eq v0, v1, :cond_1

    .line 5060
    if-nez p1, :cond_2

    .line 5063
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 5053
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 5057
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 5061
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->decimalValue()Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 5063
    :catch_0
    move-exception v0

    .line 5066
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract decimalValue()Ljava/math/BigDecimal;
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 4

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v0

    .line 508
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x0

    .line 509
    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 510
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    .line 511
    if-gt v2, v3, :cond_2

    .line 515
    :cond_1
    return v1

    :cond_2
    const/16 v3, 0x39

    .line 511
    if-gt v2, v3, :cond_1

    .line 512
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "float overflow : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public final getCurrent()C
    .locals 1

    .prologue
    .line 547
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    return v0
.end method

.method public getFeatures()I
    .locals 1

    .prologue
    .line 5111
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public abstract indexOf(CI)I
.end method

.method public info()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, ""

    .line 816
    return-object v0
.end method

.method public final intValue()I
    .locals 14

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1031
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1037
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int v7, v0, v4

    .line 1041
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v4, 0x2d

    if-eq v0, v4, :cond_1

    const v0, -0x7fffffff

    move v5, v0

    move v6, v3

    move v0, v1

    .line 1049
    :goto_1
    if-lt v0, v7, :cond_2

    move v4, v3

    .line 1053
    :goto_2
    if-lt v0, v7, :cond_3

    .line 1073
    :goto_3
    if-nez v6, :cond_a

    .line 1080
    neg-int v0, v4

    return v0

    .line 1032
    :cond_0
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    goto :goto_0

    :cond_1
    const/high16 v0, -0x80000000

    .line 1044
    add-int/lit8 v1, v1, 0x1

    move v5, v0

    move v6, v2

    move v0, v1

    goto :goto_1

    .line 1050
    :cond_2
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    .line 1051
    neg-int v0, v0

    move v4, v0

    move v0, v1

    goto :goto_2

    .line 1055
    :cond_3
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v8, 0x4c

    .line 1057
    if-ne v0, v8, :cond_5

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    const/16 v8, 0x53

    if-eq v0, v8, :cond_4

    const/16 v8, 0x42

    if-eq v0, v8, :cond_6

    .line 1061
    add-int/lit8 v8, v0, -0x30

    .line 1063
    int-to-long v10, v4

    const-wide/32 v12, -0xccccccc

    cmp-long v0, v10, v12

    if-ltz v0, :cond_7

    move v0, v2

    :goto_4
    if-nez v0, :cond_8

    .line 1064
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v0, v1

    .line 1058
    goto :goto_3

    :cond_7
    move v0, v3

    .line 1063
    goto :goto_4

    .line 1066
    :cond_8
    mul-int/lit8 v0, v4, 0xa

    .line 1067
    add-int v4, v5, v8

    if-lt v0, v4, :cond_9

    .line 1070
    sub-int/2addr v0, v8

    move v4, v0

    move v0, v1

    .line 1071
    goto :goto_2

    .line 1068
    :cond_9
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1074
    :cond_a
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x1

    if-gt v0, v1, :cond_b

    .line 1077
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1075
    :cond_b
    return v4
.end method

.method public final integerValue()Ljava/lang/Number;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 415
    const/4 v7, 0x0

    .line 416
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 419
    :goto_0
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v1, v0

    .line 424
    const/16 v0, 0x20

    .line 426
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 443
    :goto_1
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move v8, v7

    move v12, v6

    move-wide v6, v2

    move v2, v12

    .line 451
    :goto_2
    if-lt v2, v1, :cond_3

    .line 455
    :goto_3
    if-lt v2, v1, :cond_4

    .line 468
    if-nez v8, :cond_9

    .line 486
    neg-long v2, v4

    const-wide/32 v4, 0x7fffffff

    .line 487
    cmp-long v1, v2, v4

    if-lez v1, :cond_10

    const/4 v1, 0x1

    :goto_4
    if-nez v1, :cond_0

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_11

    .line 498
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 417
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    goto :goto_0

    .line 428
    :sswitch_0
    add-int/lit8 v1, v1, -0x1

    .line 429
    const/16 v0, 0x4c

    goto :goto_1

    .line 432
    :sswitch_1
    add-int/lit8 v1, v1, -0x1

    .line 433
    const/16 v0, 0x53

    goto :goto_1

    .line 436
    :sswitch_2
    add-int/lit8 v1, v1, -0x1

    .line 437
    const/16 v0, 0x42

    goto :goto_1

    .line 444
    :cond_2
    const/4 v7, 0x1

    const-wide/high16 v2, -0x8000000000000000L

    .line 446
    add-int/lit8 v6, v6, 0x1

    move v8, v7

    move v12, v6

    move-wide v6, v2

    move v2, v12

    goto :goto_2

    .line 452
    :cond_3
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    .line 453
    neg-int v2, v2

    int-to-long v4, v2

    move v2, v3

    goto :goto_3

    .line 457
    :cond_4
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    add-int/lit8 v9, v2, -0x30

    const-wide v10, -0xcccccccccccccccL

    .line 458
    cmp-long v2, v4, v10

    if-ltz v2, :cond_5

    const/4 v2, 0x1

    :goto_5
    if-nez v2, :cond_6

    .line 459
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 458
    :cond_5
    const/4 v2, 0x0

    goto :goto_5

    :cond_6
    const-wide/16 v10, 0xa

    .line 461
    mul-long/2addr v4, v10

    .line 462
    int-to-long v10, v9

    add-long/2addr v10, v6

    cmp-long v2, v4, v10

    if-ltz v2, :cond_7

    const/4 v2, 0x1

    :goto_6
    if-nez v2, :cond_8

    .line 463
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 462
    :cond_7
    const/4 v2, 0x0

    goto :goto_6

    .line 465
    :cond_8
    int-to-long v10, v9

    sub-long/2addr v4, v10

    move v2, v3

    goto :goto_3

    .line 469
    :cond_9
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x1

    if-gt v2, v1, :cond_a

    .line 483
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-wide/32 v2, -0x80000000

    .line 470
    cmp-long v1, v4, v2

    if-gez v1, :cond_c

    const/4 v1, 0x1

    :goto_7
    if-nez v1, :cond_b

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_d

    .line 481
    :cond_b
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 470
    :cond_c
    const/4 v1, 0x0

    goto :goto_7

    :cond_d
    const/16 v1, 0x53

    .line 471
    if-eq v0, v1, :cond_e

    const/16 v1, 0x42

    .line 475
    if-eq v0, v1, :cond_f

    .line 479
    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 472
    :cond_e
    long-to-int v0, v4

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 476
    :cond_f
    long-to-int v0, v4

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 487
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_11
    const/16 v1, 0x53

    .line 488
    if-eq v0, v1, :cond_12

    const/16 v1, 0x42

    .line 492
    if-eq v0, v1, :cond_13

    .line 496
    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 489
    :cond_12
    long-to-int v0, v2

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 493
    :cond_13
    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 426
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x4c -> :sswitch_0
        0x53 -> :sswitch_1
    .end sparse-switch
.end method

.method public isBlankInput()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 4718
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x1a

    .line 4719
    if-eq v2, v3, :cond_0

    .line 4724
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4717
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    .line 4720
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4729
    const/4 v0, 0x1

    return v0

    .line 4725
    :cond_1
    return v1
.end method

.method public abstract isEOF()Z
.end method

.method public final isEnabled(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 535
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isEnabled(II)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 539
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    and-int v1, p1, p2

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public final isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 1

    .prologue
    .line 531
    iget v0, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final isRef()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1094
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1098
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x24

    if-eq v1, v2, :cond_2

    :cond_0
    :goto_0
    return v0

    .line 1095
    :cond_1
    return v0

    .line 1098
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x2

    .line 1099
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x3

    .line 1100
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x4

    .line 1101
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected varargs lexError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 39
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 40
    return-void
.end method

.method public final longValue()J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 5001
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 5005
    :goto_0
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int v9, v0, v1

    .line 5007
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    move v8, v3

    move v14, v6

    move-wide v6, v0

    move v0, v14

    .line 5015
    :goto_1
    if-lt v0, v9, :cond_2

    .line 5019
    :goto_2
    if-lt v0, v9, :cond_3

    .line 5038
    :goto_3
    if-nez v8, :cond_b

    .line 5045
    neg-long v0, v4

    return-wide v0

    .line 5002
    :cond_0
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    goto :goto_0

    :cond_1
    const-wide/high16 v0, -0x8000000000000000L

    .line 5010
    add-int/lit8 v6, v6, 0x1

    move v8, v2

    move v14, v6

    move-wide v6, v0

    move v0, v14

    goto :goto_1

    .line 5016
    :cond_2
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    .line 5017
    neg-int v0, v0

    int-to-long v4, v0

    move v0, v1

    goto :goto_2

    .line 5021
    :cond_3
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v10, 0x4c

    .line 5023
    if-ne v0, v10, :cond_5

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    const/16 v10, 0x53

    if-eq v0, v10, :cond_4

    const/16 v10, 0x42

    if-eq v0, v10, :cond_6

    .line 5027
    add-int/lit8 v10, v0, -0x30

    const-wide v12, -0xcccccccccccccccL

    .line 5028
    cmp-long v0, v4, v12

    if-ltz v0, :cond_7

    move v0, v2

    :goto_4
    if-nez v0, :cond_8

    .line 5029
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v0, v1

    .line 5024
    goto :goto_3

    :cond_7
    move v0, v3

    .line 5028
    goto :goto_4

    :cond_8
    const-wide/16 v12, 0xa

    .line 5031
    mul-long/2addr v4, v12

    .line 5032
    int-to-long v12, v10

    add-long/2addr v12, v6

    cmp-long v0, v4, v12

    if-ltz v0, :cond_9

    move v0, v2

    :goto_5
    if-nez v0, :cond_a

    .line 5033
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move v0, v3

    .line 5032
    goto :goto_5

    .line 5035
    :cond_a
    int-to-long v10, v10

    sub-long/2addr v4, v10

    move v0, v1

    .line 5036
    goto :goto_2

    .line 5039
    :cond_b
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x1

    if-gt v0, v1, :cond_c

    .line 5042
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5040
    :cond_c
    return-wide v4
.end method

.method public final matchField([C)Z
    .locals 3

    .prologue
    const/16 v2, 0x5b

    const/4 v1, 0x0

    .line 1158
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1169
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1170
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1172
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_3

    .line 1175
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v2, :cond_4

    .line 1178
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x53

    if-eq v0, v1, :cond_5

    .line 1183
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 1186
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 1159
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1163
    return v1

    .line 1160
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 1173
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xc

    .line 1174
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 1176
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xe

    .line 1177
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 1178
    :cond_5
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x74

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1179
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1180
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v0, 0x15

    .line 1181
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1
.end method

.method public matchField2([C)Z
    .locals 1

    .prologue
    .line 5107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final matchStat()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0
.end method

.method public newCollectionByType(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-class v0, Ljava/util/HashSet;

    .line 1530
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/util/ArrayList;

    .line 1533
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1538
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1539
    return-object v0

    .line 1531
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1532
    return-object v0

    .line 1534
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1535
    return-object v0

    .line 1539
    :catch_0
    move-exception v0

    .line 1541
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract next()C
.end method

.method public final nextIdent()V
    .locals 2

    .prologue
    .line 364
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 367
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_2

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanIdent()V

    .line 372
    :goto_1
    return-void

    .line 365
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 367
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto :goto_1
.end method

.method public final nextToken()V
    .locals 4

    .prologue
    const/16 v2, 0x14

    const/4 v3, 0x0

    .line 101
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 104
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 106
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    .line 111
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3

    .line 116
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_4

    .line 122
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x30

    if-ge v0, v1, :cond_5

    .line 127
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_6

    .line 132
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    sparse-switch v0, :sswitch_data_0

    .line 206
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v0

    if-nez v0, :cond_8

    .line 214
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_a

    .line 215
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipComment()V

    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    .line 113
    return-void

    .line 117
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0x10

    .line 118
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 119
    return-void

    .line 122
    :cond_5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    .line 124
    return-void

    .line 128
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    .line 129
    return-void

    .line 134
    :sswitch_0
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 137
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanStringSingleQuote()V

    .line 138
    return-void

    .line 135
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "Feature.AllowSingleQuotes is false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :sswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 148
    :sswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanTrue()V

    .line 149
    return-void

    .line 151
    :sswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFalse()V

    .line 152
    return-void

    .line 154
    :sswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNullOrNew()V

    .line 155
    return-void

    .line 160
    :sswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanIdent()V

    .line 161
    return-void

    .line 163
    :sswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xa

    .line 164
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 165
    return-void

    .line 167
    :sswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xb

    .line 168
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 169
    return-void

    .line 171
    :sswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xe

    .line 172
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 173
    return-void

    .line 175
    :sswitch_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xf

    .line 176
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 177
    return-void

    .line 179
    :sswitch_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xc

    .line 180
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 181
    return-void

    .line 183
    :sswitch_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xd

    .line 184
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 185
    return-void

    .line 187
    :sswitch_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0x11

    .line 188
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 189
    return-void

    .line 191
    :sswitch_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0x18

    .line 192
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 193
    return-void

    .line 195
    :sswitch_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0x19

    .line 196
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 197
    return-void

    .line 199
    :sswitch_f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 200
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    .line 201
    return-void

    .line 203
    :sswitch_10
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanHex()V

    .line 204
    return-void

    .line 207
    :cond_8
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-eq v0, v2, :cond_9

    .line 211
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 212
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->eofPos:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 223
    :goto_1
    return-void

    .line 208
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "EOF error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_a
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_1

    const-string/jumbo v0, "illegal.char"

    const/4 v1, 0x1

    .line 219
    new-array v1, v1, [Ljava/lang/Object;

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 132
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x27 -> :sswitch_0
        0x28 -> :sswitch_6
        0x29 -> :sswitch_7
        0x2b -> :sswitch_f
        0x2e -> :sswitch_e
        0x3a -> :sswitch_c
        0x3b -> :sswitch_d
        0x4e -> :sswitch_5
        0x53 -> :sswitch_5
        0x54 -> :sswitch_5
        0x5b -> :sswitch_8
        0x5d -> :sswitch_9
        0x66 -> :sswitch_3
        0x6e -> :sswitch_4
        0x74 -> :sswitch_2
        0x75 -> :sswitch_5
        0x78 -> :sswitch_10
        0x7b -> :sswitch_a
        0x7d -> :sswitch_b
    .end sparse-switch
.end method

.method public final nextToken(I)V
    .locals 7

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0x7b

    const/16 v4, 0x5b

    const/16 v3, 0xe

    const/16 v2, 0xc

    const/4 v0, 0x0

    .line 230
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 233
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 353
    :cond_0
    :pswitch_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-ne v0, v1, :cond_10

    .line 354
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 235
    :pswitch_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v5, :cond_2

    .line 240
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v4, :cond_0

    .line 241
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 242
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 243
    return-void

    .line 236
    :cond_2
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 237
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 238
    return-void

    .line 247
    :pswitch_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    .line 253
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_4

    .line 259
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_5

    .line 265
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    const/16 v0, 0x14

    .line 266
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 267
    return-void

    :cond_3
    const/16 v0, 0x10

    .line 248
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 249
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 250
    return-void

    .line 254
    :cond_4
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 255
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 256
    return-void

    :cond_5
    const/16 v0, 0xf

    .line 260
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 261
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 262
    return-void

    .line 271
    :pswitch_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x30

    if-ge v0, v1, :cond_7

    .line 277
    :cond_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_8

    .line 283
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v4, :cond_9

    .line 289
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v5, :cond_0

    .line 290
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 291
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 292
    return-void

    .line 271
    :cond_7
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_6

    .line 272
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 273
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    .line 274
    return-void

    .line 278
    :cond_8
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 279
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    .line 280
    return-void

    .line 284
    :cond_9
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 285
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 286
    return-void

    .line 297
    :pswitch_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_b

    .line 303
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x30

    if-ge v0, v1, :cond_c

    .line 309
    :cond_a
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v4, :cond_d

    .line 315
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v5, :cond_0

    .line 316
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 317
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 318
    return-void

    .line 298
    :cond_b
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 299
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    .line 300
    return-void

    .line 303
    :cond_c
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_a

    .line 304
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 305
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    .line 306
    return-void

    .line 310
    :cond_d
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 311
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 312
    return-void

    .line 322
    :pswitch_5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v4, :cond_e

    .line 328
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v5, :cond_0

    .line 329
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 330
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 331
    return-void

    .line 323
    :cond_e
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 324
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 325
    return-void

    .line 335
    :pswitch_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_f

    .line 341
    :pswitch_7
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    const/16 v0, 0x14

    .line 342
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 343
    return-void

    :cond_f
    const/16 v0, 0xf

    .line 336
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 337
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 338
    return-void

    .line 347
    :pswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextIdent()V

    .line 348
    return-void

    .line 353
    :cond_10
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v6, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v2, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 361
    return-void

    .line 233
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public final nextTokenWithChar(C)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 379
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 382
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, p1, :cond_1

    .line 388
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 383
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 384
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 385
    return-void

    .line 388
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 393
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", info : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final nextTokenWithColon()V
    .locals 1

    .prologue
    .line 375
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithChar(C)V

    .line 376
    return-void
.end method

.method public final nextTokenWithColon(I)V
    .locals 1

    .prologue
    .line 503
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithChar(C)V

    .line 504
    return-void
.end method

.method public abstract numberString()Ljava/lang/String;
.end method

.method public final pos()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    return v0
.end method

.method protected final putChar(C)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4875
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 4880
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    int-to-char v2, p1

    aput-char v2, v0, v1

    .line 4881
    return-void

    .line 4876
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 4877
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4878
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    goto :goto_0
.end method

.method public final resetStringPosition()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 812
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 813
    return-void
.end method

.method public scanBoolean(C)Z
    .locals 8

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v0, 0x0

    .line 1974
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1977
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v5, 0x74

    .line 1980
    if-eq v2, v5, :cond_0

    const/16 v4, 0x66

    .line 1991
    if-eq v2, v4, :cond_3

    const/16 v4, 0x31

    .line 2003
    if-eq v2, v4, :cond_6

    const/16 v4, 0x30

    .line 2006
    if-eq v2, v4, :cond_7

    move v7, v2

    move v2, v1

    move v1, v7

    .line 2012
    :goto_0
    if-eq v1, p1, :cond_8

    .line 2018
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2022
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2023
    return v0

    .line 1981
    :cond_0
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x72

    if-eq v2, v3, :cond_2

    .line 1988
    :cond_1
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1989
    return v0

    .line 1981
    :cond_2
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 1982
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x75

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x2

    .line 1983
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_1

    .line 1985
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v2, v4

    move v7, v0

    move v0, v1

    move v1, v7

    .line 1986
    goto :goto_0

    .line 1992
    :cond_3
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x61

    if-eq v1, v2, :cond_5

    .line 2000
    :cond_4
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2001
    return v0

    .line 1992
    :cond_5
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 1993
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    .line 1994
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x3

    .line 1995
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_4

    .line 1997
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v2, 0x6

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    goto/16 :goto_0

    .line 2004
    :cond_6
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v2, v3

    move v7, v0

    move v0, v1

    move v1, v7

    .line 2005
    goto/16 :goto_0

    .line 2007
    :cond_7
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v2, v3

    .line 2008
    goto/16 :goto_0

    .line 2013
    :cond_8
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2014
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v1, 0x3

    .line 2015
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2016
    return v0

    .line 2019
    :cond_9
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v2, v3

    .line 2020
    goto/16 :goto_0
.end method

.method public scanDate(C)Ljava/util/Date;
    .locals 13

    .prologue
    const/16 v8, 0x22

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v9, -0x1

    const/4 v7, 0x0

    .line 3937
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3940
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3943
    if-eq v3, v8, :cond_2

    const/16 v0, 0x2d

    .line 3989
    if-ne v3, v0, :cond_9

    :cond_0
    const-wide/16 v0, 0x0

    const/16 v2, 0x2d

    .line 3993
    if-eq v3, v2, :cond_c

    move v8, v7

    move v2, v6

    :goto_0
    const/16 v5, 0x30

    .line 3998
    if-ge v3, v5, :cond_d

    :cond_1
    move v5, v2

    :goto_1
    const-wide/16 v10, 0x0

    .line 4010
    cmp-long v2, v0, v10

    if-ltz v2, :cond_10

    move v2, v6

    :goto_2
    if-nez v2, :cond_11

    .line 4011
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4012
    return-object v4

    .line 3944
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x1

    .line 3945
    invoke-virtual {p0, v8, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v0

    .line 3946
    if-eq v0, v9, :cond_3

    .line 3950
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    .line 3951
    sub-int v2, v0, v1

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    .line 3952
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v9, :cond_4

    move-object v12, v1

    move v1, v0

    move-object v0, v12

    .line 3974
    :goto_3
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 3975
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 3977
    new-instance v3, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v3, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 3979
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    .line 3983
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3987
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 3984
    return-object v4

    .line 3947
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "unclosed str"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3955
    :cond_4
    :goto_4
    add-int/lit8 v1, v0, -0x1

    move v2, v7

    :goto_5
    if-gez v1, :cond_6

    .line 3962
    :cond_5
    rem-int/lit8 v1, v2, 0x2

    if-eqz v1, :cond_7

    .line 3965
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v8, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v0

    goto :goto_4

    .line 3956
    :cond_6
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v5, 0x5c

    if-ne v3, v5, :cond_5

    .line 3957
    add-int/lit8 v2, v2, 0x1

    .line 3955
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 3968
    :cond_7
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    sub-int v1, v0, v1

    .line 3969
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v2

    .line 3971
    invoke-static {v2, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    move v1, v0

    move-object v0, v12

    goto :goto_3

    .line 3980
    :cond_8
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 3981
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3987
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    :goto_6
    const/16 v3, 0x2c

    .line 4030
    if-eq v1, v3, :cond_14

    const/16 v3, 0x5d

    .line 4038
    if-eq v1, v3, :cond_15

    .line 4062
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4063
    return-object v4

    .line 3988
    :catchall_0
    move-exception v0

    .line 3987
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v0

    :cond_9
    const/16 v0, 0x30

    .line 3989
    if-ge v3, v0, :cond_b

    :goto_7
    const/16 v0, 0x6e

    .line 4020
    if-eq v3, v0, :cond_13

    .line 4026
    :cond_a
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4027
    return-object v4

    :cond_b
    const/16 v0, 0x39

    .line 3989
    if-le v3, v0, :cond_0

    goto :goto_7

    .line 3994
    :cond_c
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v2, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v8, v6

    .line 3995
    goto/16 :goto_0

    :cond_d
    const/16 v5, 0x39

    .line 3998
    if-gt v3, v5, :cond_1

    .line 3999
    add-int/lit8 v0, v3, -0x30

    int-to-long v0, v0

    .line 4001
    :goto_8
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v2, v5

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v5, 0x30

    .line 4002
    if-ge v2, v5, :cond_f

    :cond_e
    move v5, v3

    move v3, v2

    goto/16 :goto_1

    :cond_f
    const/16 v5, 0x39

    if-gt v2, v5, :cond_e

    const-wide/16 v10, 0xa

    .line 4003
    mul-long/2addr v0, v10

    add-int/lit8 v2, v2, -0x30

    int-to-long v10, v2

    add-long/2addr v0, v10

    move v2, v3

    goto :goto_8

    :cond_10
    move v2, v7

    .line 4010
    goto/16 :goto_2

    .line 4015
    :cond_11
    if-nez v8, :cond_12

    .line 4019
    :goto_9
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object v0, v2

    move v1, v3

    move v2, v5

    .line 4020
    goto :goto_6

    .line 4016
    :cond_12
    neg-long v0, v0

    goto :goto_9

    .line 4020
    :cond_13
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x75

    if-ne v0, v1, :cond_a

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_a

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_a

    const/4 v0, 0x5

    .line 4021
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4024
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v1, 0x5

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v2, v1

    move v1, v0

    move-object v0, v4

    goto/16 :goto_6

    .line 4031
    :cond_14
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4032
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v1, 0x3

    .line 4033
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v1, 0x10

    .line 4034
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4035
    return-object v0

    .line 4039
    :cond_15
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    .line 4040
    if-eq v1, v2, :cond_16

    const/16 v2, 0x5d

    .line 4044
    if-eq v1, v2, :cond_17

    const/16 v2, 0x7d

    .line 4048
    if-eq v1, v2, :cond_18

    const/16 v2, 0x1a

    .line 4052
    if-eq v1, v2, :cond_19

    .line 4057
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4058
    return-object v4

    :cond_16
    const/16 v1, 0x10

    .line 4041
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4042
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4043
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_a
    const/4 v1, 0x4

    .line 4060
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4066
    return-object v0

    :cond_17
    const/16 v1, 0xf

    .line 4045
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4046
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4047
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a

    :cond_18
    const/16 v1, 0xd

    .line 4049
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4050
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4051
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a

    :cond_19
    const/16 v1, 0x14

    .line 4053
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4054
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4055
    const/16 v1, 0x1a

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a
.end method

.method public scanDecimal(C)Ljava/math/BigDecimal;
    .locals 10

    .prologue
    const/16 v8, 0x30

    const/4 v2, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 2851
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2854
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v0, 0x22

    .line 2855
    if-eq v4, v0, :cond_2

    move v0, v1

    .line 2856
    :goto_0
    if-nez v0, :cond_3

    move v5, v2

    :goto_1
    const/16 v3, 0x2d

    .line 2860
    if-eq v4, v3, :cond_4

    move v3, v1

    .line 2861
    :goto_2
    if-nez v3, :cond_5

    move v3, v5

    .line 2866
    :goto_3
    if-ge v4, v8, :cond_6

    :cond_0
    const/16 v1, 0x6e

    .line 2926
    if-eq v4, v1, :cond_16

    .line 2958
    :cond_1
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2959
    return-object v6

    :cond_2
    move v0, v2

    .line 2855
    goto :goto_0

    .line 2857
    :cond_3
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v5, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    goto :goto_1

    :cond_4
    move v3, v2

    .line 2860
    goto :goto_2

    .line 2862
    :cond_5
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v5, 0x1

    add-int/2addr v3, v5

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v9, v3

    move v3, v4

    move v4, v9

    goto :goto_3

    :cond_6
    const/16 v5, 0x39

    .line 2866
    if-gt v4, v5, :cond_0

    .line 2868
    :goto_4
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v3, v5

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 2869
    if-ge v5, v8, :cond_b

    :cond_7
    const/16 v3, 0x2e

    .line 2876
    if-eq v5, v3, :cond_c

    move v3, v1

    .line 2877
    :goto_5
    if-nez v3, :cond_d

    move v3, v5

    :cond_8
    const/16 v5, 0x65

    .line 2894
    if-ne v3, v5, :cond_10

    :cond_9
    move v1, v2

    .line 2895
    :goto_6
    if-nez v1, :cond_11

    move v2, v3

    move v3, v4

    .line 2910
    :cond_a
    if-nez v0, :cond_14

    .line 2920
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2921
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v3

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 2924
    :goto_7
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v0

    .line 2925
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>([C)V

    const/16 v0, 0x2c

    .line 2962
    if-eq v2, v0, :cond_1c

    const/16 v0, 0x5d

    .line 2970
    if-eq v2, v0, :cond_1d

    .line 2994
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2995
    return-object v6

    :cond_b
    const/16 v3, 0x39

    .line 2869
    if-gt v5, v3, :cond_7

    move v3, v4

    .line 2870
    goto :goto_4

    :cond_c
    move v3, v2

    .line 2876
    goto :goto_5

    .line 2878
    :cond_d
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    .line 2879
    if-ge v4, v8, :cond_f

    .line 2889
    :cond_e
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2890
    return-object v6

    :cond_f
    const/16 v5, 0x39

    .line 2879
    if-gt v4, v5, :cond_e

    .line 2881
    :goto_8
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v3, v5

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2882
    if-lt v3, v8, :cond_8

    const/16 v5, 0x39

    if-gt v3, v5, :cond_8

    move v3, v4

    .line 2883
    goto :goto_8

    :cond_10
    const/16 v5, 0x45

    .line 2894
    if-eq v3, v5, :cond_9

    goto :goto_6

    .line 2896
    :cond_11
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v1, 0x2b

    .line 2897
    if-ne v2, v1, :cond_13

    .line 2898
    :cond_12
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v3, v1

    .line 2901
    :goto_9
    if-lt v2, v8, :cond_a

    const/16 v1, 0x39

    if-gt v2, v1, :cond_a

    .line 2902
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v3, v1

    goto :goto_9

    :cond_13
    const/16 v1, 0x2d

    .line 2897
    if-eq v2, v1, :cond_12

    goto :goto_9

    :cond_14
    const/16 v0, 0x22

    .line 2911
    if-ne v2, v0, :cond_15

    .line 2915
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2917
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v0, 0x1

    .line 2918
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v4

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    move v3, v4

    goto/16 :goto_7

    .line 2912
    :cond_15
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2913
    return-object v6

    .line 2926
    :cond_16
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1

    const/4 v1, 0x5

    .line 2927
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2929
    add-int/lit8 v1, v3, 0x3

    .line 2930
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2932
    if-nez v0, :cond_18

    :cond_17
    move v0, v1

    move v1, v2

    :goto_a
    const/16 v2, 0x2c

    .line 2937
    if-eq v0, v2, :cond_19

    const/16 v2, 0x7d

    .line 2943
    if-eq v0, v2, :cond_1a

    .line 2949
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2955
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2956
    return-object v6

    :cond_18
    const/16 v0, 0x22

    .line 2932
    if-ne v1, v0, :cond_17

    .line 2933
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    goto :goto_a

    .line 2938
    :cond_19
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2939
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v0, 0x5

    .line 2940
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v0, 0x10

    .line 2941
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2942
    return-object v6

    .line 2944
    :cond_1a
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2945
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v0, 0x5

    .line 2946
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v0, 0xd

    .line 2947
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2948
    return-object v6

    .line 2950
    :cond_1b
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v1, v2

    .line 2951
    goto :goto_a

    .line 2963
    :cond_1c
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2964
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v0, 0x3

    .line 2965
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v0, 0x10

    .line 2966
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2967
    return-object v1

    .line 2971
    :cond_1d
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v3, 0x2c

    .line 2972
    if-eq v0, v3, :cond_1e

    const/16 v3, 0x5d

    .line 2976
    if-eq v0, v3, :cond_1f

    const/16 v3, 0x7d

    .line 2980
    if-eq v0, v3, :cond_20

    const/16 v3, 0x1a

    .line 2984
    if-eq v0, v3, :cond_21

    .line 2989
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2990
    return-object v6

    :cond_1e
    const/16 v0, 0x10

    .line 2973
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2974
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2975
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_b
    const/4 v0, 0x4

    .line 2992
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2998
    return-object v1

    :cond_1f
    const/16 v0, 0xf

    .line 2977
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2978
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2979
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_b

    :cond_20
    const/16 v0, 0xd

    .line 2981
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2982
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2983
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_b

    :cond_21
    const/16 v0, 0x14

    .line 2985
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2986
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2987
    const/16 v0, 0x1a

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_b
.end method

.method public scanDouble(C)D
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 2713
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2716
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v4, 0x1

    add-int/lit8 v0, v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v0, 0x22

    .line 2717
    if-eq v2, v0, :cond_2

    const/4 v0, 0x0

    .line 2718
    :goto_0
    if-nez v0, :cond_3

    :goto_1
    const/16 v1, 0x2d

    .line 2722
    if-eq v2, v1, :cond_4

    const/4 v1, 0x0

    .line 2723
    :goto_2
    if-nez v1, :cond_5

    :goto_3
    const/16 v3, 0x30

    .line 2728
    if-ge v2, v3, :cond_6

    :cond_0
    const/16 v1, 0x6e

    .line 2802
    if-eq v2, v1, :cond_1a

    :cond_1
    const/4 v0, -0x1

    .line 2834
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const-wide/16 v0, 0x0

    .line 2835
    return-wide v0

    :cond_2
    const/4 v0, 0x1

    .line 2717
    goto :goto_0

    .line 2719
    :cond_3
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v4, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    .line 2722
    goto :goto_2

    .line 2724
    :cond_5
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v4, v3

    goto :goto_3

    :cond_6
    const/16 v3, 0x39

    .line 2728
    if-gt v2, v3, :cond_0

    .line 2729
    add-int/lit8 v2, v2, -0x30

    int-to-long v2, v2

    .line 2731
    :goto_4
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v4, 0x1

    add-int/2addr v4, v6

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    const/16 v4, 0x30

    .line 2732
    if-ge v8, v4, :cond_b

    :cond_7
    const-wide/16 v6, 0x1

    const/16 v4, 0x2e

    .line 2741
    if-eq v8, v4, :cond_c

    const/4 v4, 0x0

    .line 2742
    :goto_5
    if-nez v4, :cond_d

    move-wide v10, v2

    move v4, v8

    move-wide v8, v6

    :goto_6
    const/16 v2, 0x65

    .line 2763
    if-ne v4, v2, :cond_12

    :cond_8
    const/4 v2, 0x1

    .line 2764
    :goto_7
    if-nez v2, :cond_13

    .line 2779
    :cond_9
    if-nez v0, :cond_16

    .line 2789
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2790
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v5

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    .line 2793
    :goto_8
    if-eqz v2, :cond_18

    .line 2799
    :cond_a
    invoke-virtual {p0, v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v0

    .line 2800
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 2838
    :goto_9
    if-eq v4, p1, :cond_20

    const/4 v2, -0x1

    .line 2845
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2846
    return-wide v0

    :cond_b
    const/16 v4, 0x39

    .line 2732
    if-gt v8, v4, :cond_7

    const-wide/16 v6, 0xa

    .line 2733
    mul-long/2addr v2, v6

    add-int/lit8 v4, v8, -0x30

    int-to-long v6, v4

    add-long/2addr v2, v6

    move v4, v5

    .line 2734
    goto :goto_4

    :cond_c
    const/4 v4, 0x1

    .line 2741
    goto :goto_5

    .line 2743
    :cond_d
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    .line 2744
    if-ge v4, v5, :cond_f

    :cond_e
    const/4 v0, -0x1

    .line 2758
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const-wide/16 v0, 0x0

    .line 2759
    return-wide v0

    :cond_f
    const/16 v5, 0x39

    .line 2744
    if-gt v4, v5, :cond_e

    const-wide/16 v8, 0xa

    .line 2745
    mul-long/2addr v2, v8

    add-int/lit8 v4, v4, -0x30

    int-to-long v4, v4

    add-long/2addr v4, v2

    const-wide/16 v2, 0xa

    .line 2748
    :goto_a
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v6, 0x1

    add-int/2addr v6, v8

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    const/16 v8, 0x30

    .line 2749
    if-ge v6, v8, :cond_11

    :cond_10
    move-wide v8, v2

    move-wide v10, v4

    move v4, v6

    move v5, v7

    goto :goto_6

    :cond_11
    const/16 v8, 0x39

    if-gt v6, v8, :cond_10

    const-wide/16 v8, 0xa

    .line 2750
    mul-long/2addr v4, v8

    add-int/lit8 v6, v6, -0x30

    int-to-long v8, v6

    add-long/2addr v4, v8

    const-wide/16 v8, 0xa

    .line 2751
    mul-long/2addr v2, v8

    move v6, v7

    .line 2752
    goto :goto_a

    :cond_12
    const/16 v2, 0x45

    .line 2763
    if-eq v4, v2, :cond_8

    const/4 v2, 0x0

    goto :goto_7

    .line 2765
    :cond_13
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    .line 2766
    if-ne v4, v5, :cond_15

    .line 2767
    :cond_14
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v3, 0x1

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    :goto_b
    const/16 v3, 0x30

    .line 2770
    if-lt v4, v3, :cond_9

    const/16 v3, 0x39

    if-gt v4, v3, :cond_9

    .line 2771
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    move v5, v3

    goto :goto_b

    :cond_15
    const/16 v5, 0x2d

    .line 2766
    if-eq v4, v5, :cond_14

    move v5, v3

    goto :goto_b

    :cond_16
    const/16 v0, 0x22

    .line 2780
    if-ne v4, v0, :cond_17

    .line 2784
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v0, v5

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    .line 2786
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v0, 0x1

    .line 2787
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v6

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x2

    move v5, v6

    goto/16 :goto_8

    :cond_17
    const/4 v0, -0x1

    .line 2781
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const-wide/16 v0, 0x0

    .line 2782
    return-wide v0

    :cond_18
    const/16 v2, 0x14

    .line 2793
    if-ge v0, v2, :cond_a

    .line 2794
    long-to-double v2, v10

    long-to-double v6, v8

    div-double/2addr v2, v6

    .line 2795
    if-nez v1, :cond_19

    move-wide v0, v2

    goto/16 :goto_9

    .line 2796
    :cond_19
    neg-double v0, v2

    goto/16 :goto_9

    .line 2802
    :cond_1a
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1

    const/4 v1, 0x5

    .line 2803
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2805
    add-int/lit8 v1, v4, 0x3

    .line 2806
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2808
    if-nez v0, :cond_1c

    :cond_1b
    move v0, v1

    move v1, v2

    :goto_c
    const/16 v2, 0x2c

    .line 2813
    if-eq v0, v2, :cond_1d

    const/16 v2, 0x5d

    .line 2819
    if-eq v0, v2, :cond_1e

    .line 2825
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, -0x1

    .line 2831
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const-wide/16 v0, 0x0

    .line 2832
    return-wide v0

    :cond_1c
    const/16 v0, 0x22

    .line 2808
    if-ne v1, v0, :cond_1b

    .line 2809
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    goto :goto_c

    .line 2814
    :cond_1d
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2815
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v0, 0x5

    .line 2816
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v0, 0x10

    .line 2817
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const-wide/16 v0, 0x0

    .line 2818
    return-wide v0

    .line 2820
    :cond_1e
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2821
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v0, 0x5

    .line 2822
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v0, 0xf

    .line 2823
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const-wide/16 v0, 0x0

    .line 2824
    return-wide v0

    .line 2826
    :cond_1f
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v1, v2

    .line 2827
    goto :goto_c

    .line 2839
    :cond_20
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2840
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v2, 0x3

    .line 2841
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v2, 0x10

    .line 2842
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2843
    return-wide v0
.end method

.method public scanEnum(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/parser/SymbolTable;",
            "C)",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1450
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbolWithSeperator(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    .line 1451
    if-eqz v0, :cond_0

    .line 1454
    invoke-static {p1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0

    .line 1452
    :cond_0
    return-object v1
.end method

.method public final scanFalse()V
    .locals 2

    .prologue
    .line 4555
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x66

    if-ne v0, v1, :cond_1

    .line 4558
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4560
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x61

    if-ne v0, v1, :cond_2

    .line 4563
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4565
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_3

    .line 4568
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4570
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x73

    if-ne v0, v1, :cond_4

    .line 4573
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4575
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x65

    if-ne v0, v1, :cond_5

    .line 4578
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4580
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-ne v0, v1, :cond_6

    :cond_0
    const/4 v0, 0x7

    .line 4582
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4586
    return-void

    .line 4556
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4561
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4566
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4571
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4576
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4580
    :cond_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    .line 4584
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "scan false error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scanFieldBigInteger([C)Ljava/math/BigInteger;
    .locals 14

    .prologue
    const/16 v12, 0x10

    const/4 v5, 0x5

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 3671
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3673
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3678
    array-length v0, p1

    .line 3679
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v0, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v0, 0x22

    .line 3680
    if-eq v2, v0, :cond_3

    move v0, v1

    .line 3681
    :goto_0
    if-nez v0, :cond_4

    :goto_1
    const/16 v3, 0x2d

    .line 3685
    if-eq v2, v3, :cond_5

    .line 3686
    :goto_2
    if-nez v1, :cond_6

    :goto_3
    const/16 v3, 0x30

    .line 3691
    if-ge v2, v3, :cond_7

    :cond_0
    const/16 v1, 0x6e

    .line 3727
    if-eq v2, v1, :cond_10

    .line 3759
    :cond_1
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3760
    return-object v10

    :cond_2
    const/4 v0, -0x2

    .line 3674
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3675
    return-object v10

    :cond_3
    const/4 v0, 0x1

    .line 3680
    goto :goto_0

    .line 3682
    :cond_4
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v4, v3

    goto :goto_1

    :cond_5
    const/4 v1, 0x1

    .line 3685
    goto :goto_2

    .line 3687
    :cond_6
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v4, v3

    goto :goto_3

    :cond_7
    const/16 v3, 0x39

    .line 3691
    if-gt v2, v3, :cond_0

    .line 3692
    add-int/lit8 v2, v2, -0x30

    int-to-long v2, v2

    .line 3694
    :goto_4
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v4, 0x1

    add-int/2addr v4, v6

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    const/16 v4, 0x30

    .line 3695
    if-ge v6, v4, :cond_a

    .line 3704
    :cond_8
    if-nez v0, :cond_b

    .line 3714
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v4, p1

    add-int/2addr v4, v0

    .line 3715
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v5

    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1

    move v13, v6

    move v6, v5

    move v5, v13

    :goto_5
    const/16 v7, 0x14

    .line 3718
    if-ge v0, v7, :cond_d

    .line 3719
    :cond_9
    if-nez v1, :cond_f

    :goto_6
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    :goto_7
    const/16 v1, 0x2c

    .line 3763
    if-eq v5, v1, :cond_16

    const/16 v1, 0x7d

    .line 3771
    if-eq v5, v1, :cond_17

    .line 3795
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3796
    return-object v10

    :cond_a
    const/16 v4, 0x39

    .line 3695
    if-gt v6, v4, :cond_8

    const-wide/16 v8, 0xa

    .line 3696
    mul-long/2addr v2, v8

    add-int/lit8 v4, v6, -0x30

    int-to-long v6, v4

    add-long/2addr v2, v6

    move v4, v5

    .line 3697
    goto :goto_4

    :cond_b
    const/16 v0, 0x22

    .line 3705
    if-ne v6, v0, :cond_c

    .line 3709
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v0, v5

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 3711
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v4, p1

    add-int/2addr v0, v4

    add-int/lit8 v4, v0, 0x1

    .line 3712
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v6

    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x2

    goto :goto_5

    .line 3706
    :cond_c
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3707
    return-object v10

    .line 3718
    :cond_d
    if-nez v1, :cond_e

    .line 3724
    :goto_8
    invoke-virtual {p0, v4, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 3725
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    const/16 v7, 0x15

    .line 3718
    if-lt v0, v7, :cond_9

    goto :goto_8

    .line 3719
    :cond_f
    neg-long v2, v2

    goto :goto_6

    .line 3727
    :cond_10
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1

    .line 3728
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3730
    add-int/lit8 v1, v4, 0x3

    .line 3731
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 3733
    if-nez v0, :cond_12

    :cond_11
    move v0, v1

    move v1, v2

    :goto_9
    const/16 v2, 0x2c

    .line 3738
    if-eq v0, v2, :cond_13

    const/16 v2, 0x7d

    .line 3744
    if-eq v0, v2, :cond_14

    .line 3750
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_15

    .line 3756
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3757
    return-object v10

    :cond_12
    const/16 v0, 0x22

    .line 3733
    if-ne v1, v0, :cond_11

    .line 3734
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    goto :goto_9

    .line 3739
    :cond_13
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3740
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3741
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3742
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3743
    return-object v10

    .line 3745
    :cond_14
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3746
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3747
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v0, 0xd

    .line 3748
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3749
    return-object v10

    .line 3751
    :cond_15
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v1, v2

    .line 3752
    goto :goto_9

    .line 3764
    :cond_16
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3765
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v1, 0x3

    .line 3766
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3767
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3768
    return-object v0

    .line 3772
    :cond_17
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v6, 0x1

    add-int/2addr v1, v6

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v3, 0x2c

    .line 3773
    if-eq v1, v3, :cond_18

    const/16 v3, 0x5d

    .line 3777
    if-eq v1, v3, :cond_19

    const/16 v3, 0x7d

    .line 3781
    if-eq v1, v3, :cond_1a

    const/16 v3, 0x1a

    .line 3785
    if-eq v1, v3, :cond_1b

    .line 3790
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3791
    return-object v10

    .line 3774
    :cond_18
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3775
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3776
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_a
    const/4 v1, 0x4

    .line 3793
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3799
    return-object v0

    :cond_19
    const/16 v1, 0xf

    .line 3778
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3779
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3780
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a

    :cond_1a
    const/16 v1, 0xd

    .line 3782
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3783
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3784
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a

    :cond_1b
    const/16 v1, 0x14

    .line 3786
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3787
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3788
    const/16 v1, 0x1a

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a
.end method

.method public scanFieldBoolean([C)Z
    .locals 9

    .prologue
    const/16 v8, 0x2c

    const/16 v7, 0x1a

    const/16 v6, 0x10

    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 2117
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2119
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2124
    array-length v0, p1

    .line 2125
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v2, 0x74

    .line 2128
    if-eq v0, v2, :cond_1

    const/16 v2, 0x66

    .line 2143
    if-eq v0, v2, :cond_5

    .line 2163
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2164
    return v1

    :cond_0
    const/4 v0, -0x2

    .line 2120
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2121
    return v1

    .line 2129
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v3, 0x72

    if-ne v0, v3, :cond_2

    .line 2133
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v2, 0x75

    if-ne v0, v2, :cond_3

    .line 2137
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v3, 0x65

    if-ne v0, v3, :cond_4

    .line 2142
    const/4 v0, 0x1

    .line 2167
    :goto_0
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v2, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2168
    if-eq v2, v8, :cond_a

    const/16 v3, 0x7d

    .line 2177
    if-eq v2, v3, :cond_b

    .line 2201
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2202
    return v1

    .line 2130
    :cond_2
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2131
    return v1

    .line 2134
    :cond_3
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2135
    return v1

    .line 2138
    :cond_4
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2139
    return v1

    .line 2144
    :cond_5
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v3, 0x61

    if-ne v0, v3, :cond_6

    .line 2148
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v2, 0x6c

    if-ne v0, v2, :cond_7

    .line 2152
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v3, 0x73

    if-ne v0, v3, :cond_8

    .line 2156
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v2, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_9

    move v2, v0

    move v0, v1

    .line 2161
    goto :goto_0

    .line 2145
    :cond_6
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2146
    return v1

    .line 2149
    :cond_7
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2150
    return v1

    .line 2153
    :cond_8
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2154
    return v1

    .line 2157
    :cond_9
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2158
    return v1

    .line 2169
    :cond_a
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2170
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v1, 0x3

    .line 2171
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2172
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2174
    return v0

    .line 2178
    :cond_b
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2179
    if-eq v2, v8, :cond_c

    const/16 v4, 0x5d

    .line 2183
    if-eq v2, v4, :cond_d

    const/16 v4, 0x7d

    .line 2187
    if-eq v2, v4, :cond_e

    .line 2191
    if-eq v2, v7, :cond_f

    .line 2196
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2197
    return v1

    .line 2180
    :cond_c
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2181
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2182
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_1
    const/4 v1, 0x4

    .line 2199
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2205
    return v0

    :cond_d
    const/16 v1, 0xf

    .line 2184
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2185
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2186
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    :cond_e
    const/16 v1, 0xd

    .line 2188
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2189
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2190
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    :cond_f
    const/16 v1, 0x14

    .line 2192
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2193
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2194
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1
.end method

.method public scanFieldDate([C)Ljava/util/Date;
    .locals 13

    .prologue
    const/16 v11, 0x30

    const/16 v8, 0x22

    const/4 v10, 0x0

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 3803
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3805
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3812
    array-length v0, p1

    .line 3813
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v0, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3816
    if-eq v3, v8, :cond_3

    const/16 v0, 0x2d

    .line 3862
    if-ne v3, v0, :cond_a

    :cond_0
    const-wide/16 v0, 0x0

    const/16 v4, 0x2d

    .line 3866
    if-eq v3, v4, :cond_c

    move v6, v5

    .line 3871
    :goto_0
    if-ge v3, v11, :cond_d

    :cond_1
    move v4, v2

    :goto_1
    const-wide/16 v8, 0x0

    .line 3883
    cmp-long v2, v0, v8

    if-ltz v2, :cond_10

    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_11

    .line 3884
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3885
    return-object v10

    :cond_2
    const/4 v0, -0x2

    .line 3806
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3807
    return-object v10

    .line 3817
    :cond_3
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 3818
    invoke-virtual {p0, v8, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v0

    .line 3819
    if-eq v0, v7, :cond_4

    .line 3823
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v3, p1

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    .line 3824
    sub-int v3, v0, v1

    invoke-virtual {p0, v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x5c

    .line 3825
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v7, :cond_5

    move-object v12, v1

    move v1, v0

    move-object v0, v12

    .line 3847
    :goto_3
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v4, p1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v2

    .line 3848
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 3850
    new-instance v3, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v3, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 3852
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, -0x1

    .line 3856
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3860
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 3857
    return-object v10

    .line 3820
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "unclosed str"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3828
    :cond_5
    :goto_4
    add-int/lit8 v1, v0, -0x1

    move v3, v5

    :goto_5
    if-gez v1, :cond_7

    .line 3835
    :cond_6
    rem-int/lit8 v1, v3, 0x2

    if-eqz v1, :cond_8

    .line 3838
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v8, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v0

    goto :goto_4

    .line 3829
    :cond_7
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v6, 0x5c

    if-ne v4, v6, :cond_6

    .line 3830
    add-int/lit8 v3, v3, 0x1

    .line 3828
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 3841
    :cond_8
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v3, p1

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    sub-int v1, v0, v1

    .line 3842
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v4, p1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v3

    .line 3844
    invoke-static {v3, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    move v1, v0

    move-object v0, v12

    goto :goto_3

    .line 3853
    :cond_9
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 3854
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3860
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    :goto_6
    const/16 v3, 0x2c

    .line 3898
    if-eq v1, v3, :cond_13

    const/16 v3, 0x7d

    .line 3905
    if-eq v1, v3, :cond_14

    .line 3929
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3930
    return-object v10

    .line 3861
    :catchall_0
    move-exception v0

    .line 3860
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v0

    .line 3862
    :cond_a
    if-ge v3, v11, :cond_b

    .line 3894
    :goto_7
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3895
    return-object v10

    :cond_b
    const/16 v0, 0x39

    .line 3862
    if-le v3, v0, :cond_0

    goto :goto_7

    .line 3867
    :cond_c
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v2, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3868
    const/4 v2, 0x1

    move v6, v2

    move v2, v4

    goto/16 :goto_0

    :cond_d
    const/16 v4, 0x39

    .line 3871
    if-gt v3, v4, :cond_1

    .line 3872
    add-int/lit8 v0, v3, -0x30

    int-to-long v0, v0

    .line 3874
    :goto_8
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3875
    if-ge v2, v11, :cond_f

    :cond_e
    move v4, v3

    move v3, v2

    goto/16 :goto_1

    :cond_f
    const/16 v4, 0x39

    if-gt v2, v4, :cond_e

    const-wide/16 v8, 0xa

    .line 3876
    mul-long/2addr v0, v8

    add-int/lit8 v2, v2, -0x30

    int-to-long v8, v2

    add-long/2addr v0, v8

    move v2, v3

    goto :goto_8

    :cond_10
    move v2, v5

    .line 3883
    goto/16 :goto_2

    .line 3888
    :cond_11
    if-nez v6, :cond_12

    .line 3892
    :goto_9
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object v0, v2

    move v1, v3

    move v2, v4

    .line 3893
    goto :goto_6

    .line 3889
    :cond_12
    neg-long v0, v0

    goto :goto_9

    .line 3899
    :cond_13
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3900
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v1, 0x3

    .line 3901
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3902
    return-object v0

    .line 3906
    :cond_14
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    .line 3907
    if-eq v1, v2, :cond_15

    const/16 v2, 0x5d

    .line 3911
    if-eq v1, v2, :cond_16

    const/16 v2, 0x7d

    .line 3915
    if-eq v1, v2, :cond_17

    const/16 v2, 0x1a

    .line 3919
    if-eq v1, v2, :cond_18

    .line 3924
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3925
    return-object v10

    :cond_15
    const/16 v1, 0x10

    .line 3908
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3909
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3910
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_a
    const/4 v1, 0x4

    .line 3927
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3933
    return-object v0

    :cond_16
    const/16 v1, 0xf

    .line 3912
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3913
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3914
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a

    :cond_17
    const/16 v1, 0xd

    .line 3916
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3917
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3918
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a

    :cond_18
    const/16 v1, 0x14

    .line 3920
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3921
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3922
    const/16 v1, 0x1a

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a
.end method

.method public scanFieldDecimal([C)Ljava/math/BigDecimal;
    .locals 10

    .prologue
    const/16 v8, 0x39

    const/16 v7, 0x30

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 3515
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3517
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3522
    array-length v0, p1

    .line 3523
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v0, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v0, 0x22

    .line 3524
    if-eq v3, v0, :cond_3

    move v0, v1

    .line 3525
    :goto_0
    if-nez v0, :cond_4

    :goto_1
    const/16 v2, 0x2d

    .line 3529
    if-eq v3, v2, :cond_5

    move v2, v1

    .line 3530
    :goto_2
    if-nez v2, :cond_6

    move v2, v4

    .line 3535
    :goto_3
    if-ge v3, v7, :cond_7

    :cond_0
    const/16 v1, 0x6e

    .line 3595
    if-eq v3, v1, :cond_17

    .line 3627
    :cond_1
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3628
    return-object v5

    :cond_2
    const/4 v0, -0x2

    .line 3518
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3519
    return-object v5

    :cond_3
    const/4 v0, 0x1

    .line 3524
    goto :goto_0

    .line 3526
    :cond_4
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v4, v2

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    .line 3529
    goto :goto_2

    .line 3531
    :cond_6
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v9, v2

    move v2, v3

    move v3, v9

    goto :goto_3

    .line 3535
    :cond_7
    if-gt v3, v8, :cond_0

    .line 3537
    :goto_4
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    .line 3538
    if-ge v4, v7, :cond_c

    :cond_8
    const/16 v2, 0x2e

    .line 3545
    if-eq v4, v2, :cond_d

    move v2, v1

    .line 3546
    :goto_5
    if-nez v2, :cond_e

    move v2, v4

    :cond_9
    const/16 v4, 0x65

    .line 3563
    if-ne v2, v4, :cond_11

    :cond_a
    const/4 v1, 0x1

    .line 3564
    :goto_6
    if-nez v1, :cond_12

    .line 3579
    :cond_b
    if-nez v0, :cond_15

    .line 3589
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, p1

    add-int/2addr v1, v0

    .line 3590
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v3

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 3593
    :goto_7
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v0

    .line 3594
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>([C)V

    const/16 v0, 0x2c

    .line 3631
    if-eq v2, v0, :cond_1d

    const/16 v0, 0x7d

    .line 3639
    if-eq v2, v0, :cond_1e

    .line 3663
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3664
    return-object v5

    .line 3538
    :cond_c
    if-gt v4, v8, :cond_8

    move v2, v3

    .line 3539
    goto :goto_4

    :cond_d
    const/4 v2, 0x1

    .line 3545
    goto :goto_5

    .line 3547
    :cond_e
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3548
    if-ge v3, v7, :cond_10

    .line 3558
    :cond_f
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3559
    return-object v5

    .line 3548
    :cond_10
    if-gt v3, v8, :cond_f

    .line 3550
    :goto_8
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3551
    if-lt v2, v7, :cond_9

    if-gt v2, v8, :cond_9

    move v2, v3

    .line 3552
    goto :goto_8

    :cond_11
    const/16 v4, 0x45

    .line 3563
    if-eq v2, v4, :cond_a

    goto :goto_6

    .line 3565
    :cond_12
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    .line 3566
    if-ne v2, v3, :cond_14

    .line 3567
    :cond_13
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3570
    :goto_9
    if-lt v2, v7, :cond_b

    if-gt v2, v8, :cond_b

    .line 3571
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v3, v1

    goto :goto_9

    :cond_14
    const/16 v3, 0x2d

    .line 3566
    if-eq v2, v3, :cond_13

    move v3, v1

    goto :goto_9

    :cond_15
    const/16 v0, 0x22

    .line 3580
    if-ne v2, v0, :cond_16

    .line 3584
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3586
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    .line 3587
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v4

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    move v3, v4

    goto/16 :goto_7

    .line 3581
    :cond_16
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3582
    return-object v5

    .line 3595
    :cond_17
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v3, 0x75

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_1

    const/4 v1, 0x5

    .line 3596
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3598
    add-int/lit8 v1, v2, 0x3

    .line 3599
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 3601
    if-nez v0, :cond_19

    :cond_18
    move v0, v1

    move v1, v2

    :goto_a
    const/16 v2, 0x2c

    .line 3606
    if-eq v0, v2, :cond_1a

    const/16 v2, 0x7d

    .line 3612
    if-eq v0, v2, :cond_1b

    .line 3618
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 3624
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3625
    return-object v5

    :cond_19
    const/16 v0, 0x22

    .line 3601
    if-ne v1, v0, :cond_18

    .line 3602
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    goto :goto_a

    .line 3607
    :cond_1a
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3608
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v0, 0x5

    .line 3609
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v0, 0x10

    .line 3610
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3611
    return-object v5

    .line 3613
    :cond_1b
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3614
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v0, 0x5

    .line 3615
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v0, 0xd

    .line 3616
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3617
    return-object v5

    .line 3619
    :cond_1c
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v1, v2

    .line 3620
    goto :goto_a

    .line 3632
    :cond_1d
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3633
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v0, 0x3

    .line 3634
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v0, 0x10

    .line 3635
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3636
    return-object v1

    .line 3640
    :cond_1e
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v3, 0x2c

    .line 3641
    if-eq v0, v3, :cond_1f

    const/16 v3, 0x5d

    .line 3645
    if-eq v0, v3, :cond_20

    const/16 v3, 0x7d

    .line 3649
    if-eq v0, v3, :cond_21

    const/16 v3, 0x1a

    .line 3653
    if-eq v0, v3, :cond_22

    .line 3658
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3659
    return-object v5

    :cond_1f
    const/16 v0, 0x10

    .line 3642
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3643
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3644
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_b
    const/4 v0, 0x4

    .line 3661
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3667
    return-object v1

    :cond_20
    const/16 v0, 0xf

    .line 3646
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3647
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3648
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_b

    :cond_21
    const/16 v0, 0xd

    .line 3650
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3651
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3652
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_b

    :cond_22
    const/16 v0, 0x14

    .line 3654
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3655
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3656
    const/16 v0, 0x1a

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_b
.end method

.method public final scanFieldDouble([C)D
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 3344
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3346
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3351
    array-length v0, p1

    .line 3352
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v0, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v0, 0x22

    .line 3353
    if-eq v2, v0, :cond_3

    const/4 v0, 0x0

    .line 3354
    :goto_0
    if-nez v0, :cond_4

    :goto_1
    const/16 v1, 0x2d

    .line 3358
    if-eq v2, v1, :cond_5

    const/4 v1, 0x0

    .line 3359
    :goto_2
    if-nez v1, :cond_6

    :goto_3
    const/16 v3, 0x30

    .line 3364
    if-ge v2, v3, :cond_7

    :cond_0
    const/16 v1, 0x6e

    .line 3439
    if-eq v2, v1, :cond_1b

    :cond_1
    const/4 v0, -0x1

    .line 3471
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const-wide/16 v0, 0x0

    .line 3472
    return-wide v0

    :cond_2
    const/4 v0, -0x2

    .line 3347
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const-wide/16 v0, 0x0

    .line 3348
    return-wide v0

    :cond_3
    const/4 v0, 0x1

    .line 3353
    goto :goto_0

    .line 3355
    :cond_4
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v4, v1

    goto :goto_1

    :cond_5
    const/4 v1, 0x1

    .line 3358
    goto :goto_2

    .line 3360
    :cond_6
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v4, v3

    goto :goto_3

    :cond_7
    const/16 v3, 0x39

    .line 3364
    if-gt v2, v3, :cond_0

    .line 3365
    add-int/lit8 v2, v2, -0x30

    int-to-long v2, v2

    .line 3368
    :goto_4
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v4, 0x1

    add-int/2addr v4, v6

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    const/16 v4, 0x30

    .line 3369
    if-ge v8, v4, :cond_c

    :cond_8
    const-wide/16 v6, 0x1

    const/16 v4, 0x2e

    .line 3378
    if-eq v8, v4, :cond_d

    const/4 v4, 0x0

    .line 3379
    :goto_5
    if-nez v4, :cond_e

    move-wide v10, v2

    move v4, v8

    move-wide v8, v6

    :goto_6
    const/16 v2, 0x65

    .line 3400
    if-ne v4, v2, :cond_13

    :cond_9
    const/4 v2, 0x1

    .line 3401
    :goto_7
    if-nez v2, :cond_14

    .line 3416
    :cond_a
    if-nez v0, :cond_17

    .line 3426
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v3, p1

    add-int/2addr v3, v0

    .line 3427
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v5

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    .line 3430
    :goto_8
    if-eqz v2, :cond_19

    .line 3436
    :cond_b
    invoke-virtual {p0, v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v0

    .line 3437
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_9
    const/16 v2, 0x2c

    .line 3475
    if-eq v4, v2, :cond_21

    const/16 v2, 0x7d

    .line 3483
    if-eq v4, v2, :cond_22

    const/4 v0, -0x1

    .line 3507
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const-wide/16 v0, 0x0

    .line 3508
    return-wide v0

    :cond_c
    const/16 v4, 0x39

    .line 3369
    if-gt v8, v4, :cond_8

    const-wide/16 v6, 0xa

    .line 3370
    mul-long/2addr v2, v6

    add-int/lit8 v4, v8, -0x30

    int-to-long v6, v4

    add-long/2addr v2, v6

    move v4, v5

    .line 3371
    goto :goto_4

    :cond_d
    const/4 v4, 0x1

    .line 3378
    goto :goto_5

    .line 3380
    :cond_e
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    .line 3381
    if-ge v4, v5, :cond_10

    :cond_f
    const/4 v0, -0x1

    .line 3395
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const-wide/16 v0, 0x0

    .line 3396
    return-wide v0

    :cond_10
    const/16 v5, 0x39

    .line 3381
    if-gt v4, v5, :cond_f

    const-wide/16 v8, 0xa

    .line 3382
    mul-long/2addr v2, v8

    add-int/lit8 v4, v4, -0x30

    int-to-long v4, v4

    add-long/2addr v4, v2

    const-wide/16 v2, 0xa

    .line 3385
    :goto_a
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v6, 0x1

    add-int/2addr v6, v8

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    const/16 v8, 0x30

    .line 3386
    if-ge v6, v8, :cond_12

    :cond_11
    move-wide v8, v2

    move-wide v10, v4

    move v4, v6

    move v5, v7

    goto :goto_6

    :cond_12
    const/16 v8, 0x39

    if-gt v6, v8, :cond_11

    const-wide/16 v8, 0xa

    .line 3387
    mul-long/2addr v4, v8

    add-int/lit8 v6, v6, -0x30

    int-to-long v8, v6

    add-long/2addr v4, v8

    const-wide/16 v8, 0xa

    .line 3388
    mul-long/2addr v2, v8

    move v6, v7

    .line 3389
    goto :goto_a

    :cond_13
    const/16 v2, 0x45

    .line 3400
    if-eq v4, v2, :cond_9

    const/4 v2, 0x0

    goto :goto_7

    .line 3402
    :cond_14
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    .line 3403
    if-ne v4, v5, :cond_16

    .line 3404
    :cond_15
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v3, 0x1

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    :goto_b
    const/16 v3, 0x30

    .line 3407
    if-lt v4, v3, :cond_a

    const/16 v3, 0x39

    if-gt v4, v3, :cond_a

    .line 3408
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    move v5, v3

    goto :goto_b

    :cond_16
    const/16 v5, 0x2d

    .line 3403
    if-eq v4, v5, :cond_15

    move v5, v3

    goto :goto_b

    :cond_17
    const/16 v0, 0x22

    .line 3417
    if-ne v4, v0, :cond_18

    .line 3421
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v0, v5

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    .line 3423
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v3, p1

    add-int/2addr v0, v3

    add-int/lit8 v3, v0, 0x1

    .line 3424
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v6

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x2

    move v5, v6

    goto/16 :goto_8

    :cond_18
    const/4 v0, -0x1

    .line 3418
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const-wide/16 v0, 0x0

    .line 3419
    return-wide v0

    :cond_19
    const/16 v2, 0x14

    .line 3430
    if-ge v0, v2, :cond_b

    .line 3431
    long-to-double v2, v10

    long-to-double v6, v8

    div-double/2addr v2, v6

    .line 3432
    if-nez v1, :cond_1a

    move-wide v0, v2

    goto/16 :goto_9

    .line 3433
    :cond_1a
    neg-double v0, v2

    goto/16 :goto_9

    .line 3439
    :cond_1b
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1

    const/4 v1, 0x5

    .line 3440
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3442
    add-int/lit8 v1, v4, 0x3

    .line 3443
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 3445
    if-nez v0, :cond_1d

    :cond_1c
    move v0, v1

    move v1, v2

    :goto_c
    const/16 v2, 0x2c

    .line 3450
    if-eq v0, v2, :cond_1e

    const/16 v2, 0x7d

    .line 3456
    if-eq v0, v2, :cond_1f

    .line 3462
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, -0x1

    .line 3468
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const-wide/16 v0, 0x0

    .line 3469
    return-wide v0

    :cond_1d
    const/16 v0, 0x22

    .line 3445
    if-ne v1, v0, :cond_1c

    .line 3446
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    goto :goto_c

    .line 3451
    :cond_1e
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3452
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v0, 0x5

    .line 3453
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v0, 0x10

    .line 3454
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const-wide/16 v0, 0x0

    .line 3455
    return-wide v0

    .line 3457
    :cond_1f
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3458
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v0, 0x5

    .line 3459
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v0, 0xd

    .line 3460
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const-wide/16 v0, 0x0

    .line 3461
    return-wide v0

    .line 3463
    :cond_20
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v1, v2

    .line 3464
    goto :goto_c

    .line 3476
    :cond_21
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3477
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v2, 0x3

    .line 3478
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v2, 0x10

    .line 3479
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3480
    return-wide v0

    .line 3484
    :cond_22
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v5, 0x1

    add-int/2addr v2, v5

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v4, 0x2c

    .line 3485
    if-eq v2, v4, :cond_23

    const/16 v4, 0x5d

    .line 3489
    if-eq v2, v4, :cond_24

    const/16 v4, 0x7d

    .line 3493
    if-eq v2, v4, :cond_25

    const/16 v4, 0x1a

    .line 3497
    if-eq v2, v4, :cond_26

    const/4 v0, -0x1

    .line 3502
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const-wide/16 v0, 0x0

    .line 3503
    return-wide v0

    :cond_23
    const/16 v2, 0x10

    .line 3486
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3487
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3488
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_d
    const/4 v2, 0x4

    .line 3505
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3511
    return-wide v0

    :cond_24
    const/16 v2, 0xf

    .line 3490
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3491
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3492
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_d

    :cond_25
    const/16 v2, 0xd

    .line 3494
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3495
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3496
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_d

    :cond_26
    const/16 v2, 0x14

    .line 3498
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3499
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3500
    const/16 v2, 0x1a

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_d
.end method

.method public final scanFieldFloat([C)F
    .locals 12

    .prologue
    const/16 v11, 0x30

    const/4 v2, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 2389
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2391
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2396
    array-length v0, p1

    .line 2397
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v0, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v0, 0x22

    .line 2399
    if-eq v4, v0, :cond_3

    move v0, v1

    .line 2400
    :goto_0
    if-nez v0, :cond_4

    :goto_1
    const/16 v3, 0x2d

    .line 2404
    if-eq v4, v3, :cond_5

    move v3, v1

    .line 2405
    :goto_2
    if-nez v3, :cond_6

    .line 2410
    :goto_3
    if-ge v4, v11, :cond_7

    :cond_0
    const/16 v1, 0x6e

    .line 2484
    if-eq v4, v1, :cond_1b

    .line 2516
    :cond_1
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2517
    return v9

    :cond_2
    const/4 v0, -0x2

    .line 2392
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2393
    return v9

    :cond_3
    move v0, v2

    .line 2399
    goto :goto_0

    .line 2401
    :cond_4
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    move v5, v3

    goto :goto_1

    :cond_5
    move v3, v2

    .line 2404
    goto :goto_2

    .line 2406
    :cond_6
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    move v5, v6

    goto :goto_3

    :cond_7
    const/16 v6, 0x39

    .line 2410
    if-gt v4, v6, :cond_0

    .line 2411
    add-int/lit8 v4, v4, -0x30

    .line 2413
    :goto_4
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v5, v7

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    .line 2414
    if-ge v7, v11, :cond_d

    :cond_8
    const/16 v5, 0x2e

    .line 2423
    if-eq v7, v5, :cond_e

    move v5, v1

    .line 2424
    :goto_5
    if-nez v5, :cond_f

    move v8, v4

    move v5, v6

    move v4, v7

    move v7, v2

    :goto_6
    const/16 v6, 0x65

    .line 2445
    if-ne v4, v6, :cond_14

    :cond_9
    move v1, v2

    .line 2446
    :goto_7
    if-nez v1, :cond_15

    .line 2461
    :cond_a
    if-nez v0, :cond_18

    .line 2471
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v2, p1

    add-int/2addr v2, v0

    .line 2472
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v5

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    .line 2475
    :goto_8
    if-eqz v1, :cond_1a

    .line 2481
    :cond_b
    invoke-virtual {p0, v2, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v0

    .line 2482
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    :cond_c
    :goto_9
    const/16 v1, 0x2c

    .line 2520
    if-eq v4, v1, :cond_21

    const/16 v1, 0x7d

    .line 2528
    if-eq v4, v1, :cond_22

    .line 2552
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2553
    return v9

    :cond_d
    const/16 v5, 0x39

    .line 2414
    if-gt v7, v5, :cond_8

    .line 2415
    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v5, v7, -0x30

    add-int/2addr v4, v5

    move v5, v6

    .line 2416
    goto :goto_4

    :cond_e
    move v5, v2

    .line 2423
    goto :goto_5

    .line 2425
    :cond_f
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 2426
    if-ge v5, v11, :cond_11

    .line 2440
    :cond_10
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2441
    return v9

    :cond_11
    const/16 v6, 0x39

    .line 2426
    if-gt v5, v6, :cond_10

    .line 2427
    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v5, v4

    const/16 v4, 0xa

    move v6, v7

    .line 2430
    :goto_a
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v6, 0x1

    add-int/2addr v6, v8

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    .line 2431
    if-ge v6, v11, :cond_13

    :cond_12
    move v8, v5

    move v5, v7

    move v7, v4

    move v4, v6

    goto :goto_6

    :cond_13
    const/16 v8, 0x39

    if-gt v6, v8, :cond_12

    .line 2432
    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v6, v6, -0x30

    add-int/2addr v5, v6

    .line 2433
    mul-int/lit8 v4, v4, 0xa

    move v6, v7

    .line 2434
    goto :goto_a

    :cond_14
    const/16 v6, 0x45

    .line 2445
    if-eq v4, v6, :cond_9

    goto :goto_7

    .line 2447
    :cond_15
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    .line 2448
    if-ne v4, v5, :cond_17

    .line 2449
    :cond_16
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    .line 2452
    :goto_b
    if-lt v4, v11, :cond_a

    const/16 v2, 0x39

    if-gt v4, v2, :cond_a

    .line 2453
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    move v5, v2

    goto :goto_b

    :cond_17
    const/16 v5, 0x2d

    .line 2448
    if-eq v4, v5, :cond_16

    move v5, v2

    goto :goto_b

    :cond_18
    const/16 v0, 0x22

    .line 2462
    if-ne v4, v0, :cond_19

    .line 2466
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v0, v5

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    .line 2468
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v2, p1

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    .line 2469
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v6

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x2

    move v5, v6

    goto/16 :goto_8

    .line 2463
    :cond_19
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2464
    return v9

    :cond_1a
    const/16 v1, 0x11

    .line 2475
    if-ge v0, v1, :cond_b

    .line 2476
    int-to-float v0, v8

    int-to-float v1, v7

    div-float/2addr v0, v1

    .line 2477
    if-eqz v3, :cond_c

    .line 2478
    neg-float v0, v0

    goto/16 :goto_9

    .line 2484
    :cond_1b
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v5

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1

    const/4 v1, 0x5

    .line 2485
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2487
    add-int/lit8 v1, v5, 0x3

    .line 2488
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2490
    if-nez v0, :cond_1d

    :cond_1c
    move v0, v1

    move v1, v2

    :goto_c
    const/16 v2, 0x2c

    .line 2495
    if-eq v0, v2, :cond_1e

    const/16 v2, 0x7d

    .line 2501
    if-eq v0, v2, :cond_1f

    .line 2507
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_20

    .line 2513
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2514
    return v9

    :cond_1d
    const/16 v0, 0x22

    .line 2490
    if-ne v1, v0, :cond_1c

    .line 2491
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    goto :goto_c

    .line 2496
    :cond_1e
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2497
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v0, 0x5

    .line 2498
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v0, 0x10

    .line 2499
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2500
    return v9

    .line 2502
    :cond_1f
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2503
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v0, 0x5

    .line 2504
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v0, 0xd

    .line 2505
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2506
    return v9

    .line 2508
    :cond_20
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v1, v2

    .line 2509
    goto :goto_c

    .line 2521
    :cond_21
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2522
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v1, 0x3

    .line 2523
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v1, 0x10

    .line 2524
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2525
    return v0

    .line 2529
    :cond_22
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v5, 0x1

    add-int/2addr v1, v5

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v3, 0x2c

    .line 2530
    if-eq v1, v3, :cond_23

    const/16 v3, 0x5d

    .line 2534
    if-eq v1, v3, :cond_24

    const/16 v3, 0x7d

    .line 2538
    if-eq v1, v3, :cond_25

    const/16 v3, 0x1a

    .line 2542
    if-eq v1, v3, :cond_26

    .line 2547
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2548
    return v9

    :cond_23
    const/16 v1, 0x10

    .line 2531
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2532
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2533
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_d
    const/4 v1, 0x4

    .line 2550
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2556
    return v0

    :cond_24
    const/16 v1, 0xf

    .line 2535
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2536
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2537
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_d

    :cond_25
    const/16 v1, 0xd

    .line 2539
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2540
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2541
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_d

    .line 2543
    :cond_26
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v1, 0x14

    .line 2544
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2545
    const/16 v1, 0x1a

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_d
.end method

.method public final scanFieldFloatArray([C)[F
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 3002
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3004
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3009
    array-length v0, p1

    .line 3010
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v0, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    .line 3011
    if-ne v0, v1, :cond_2

    .line 3015
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v0, 0x10

    .line 3017
    new-array v1, v0, [F

    const/4 v0, 0x0

    .line 3021
    :goto_0
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v3

    add-int/lit8 v9, v4, -0x1

    const/16 v4, 0x2d

    .line 3023
    if-eq v2, v4, :cond_3

    const/4 v4, 0x0

    .line 3024
    :goto_1
    if-nez v4, :cond_4

    :goto_2
    const/16 v5, 0x30

    .line 3028
    if-ge v2, v5, :cond_5

    :cond_0
    const/4 v0, -0x1

    .line 3106
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 3107
    return-object v0

    :cond_1
    const/4 v0, -0x2

    .line 3005
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 3006
    return-object v0

    :cond_2
    const/4 v0, -0x2

    .line 3012
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 3013
    return-object v0

    :cond_3
    const/4 v4, 0x1

    .line 3023
    goto :goto_1

    .line 3025
    :cond_4
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v3, v5

    goto :goto_2

    :cond_5
    const/16 v5, 0x39

    .line 3028
    if-gt v2, v5, :cond_0

    .line 3029
    add-int/lit8 v2, v2, -0x30

    .line 3031
    :goto_3
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v3, 0x1

    add-int/2addr v3, v6

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v3, 0x30

    .line 3032
    if-ge v7, v3, :cond_a

    :cond_6
    const/4 v6, 0x1

    const/16 v3, 0x2e

    .line 3041
    if-eq v7, v3, :cond_b

    const/4 v3, 0x0

    .line 3042
    :goto_4
    if-nez v3, :cond_c

    move v8, v2

    move v3, v7

    move v7, v6

    :goto_5
    const/16 v2, 0x65

    .line 3064
    if-ne v3, v2, :cond_11

    :cond_7
    const/4 v2, 0x1

    .line 3065
    :goto_6
    if-nez v2, :cond_12

    .line 3079
    :cond_8
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v5

    sub-int/2addr v6, v9

    add-int/lit8 v6, v6, -0x1

    .line 3082
    if-eqz v2, :cond_15

    .line 3088
    :cond_9
    invoke-virtual {p0, v9, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v2

    .line 3089
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    move v4, v2

    .line 3092
    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_17

    move-object v2, v1

    .line 3097
    :goto_8
    add-int/lit8 v1, v0, 0x1

    aput v4, v2, v0

    const/16 v0, 0x2c

    .line 3099
    if-eq v3, v0, :cond_18

    const/16 v0, 0x5d

    .line 3101
    if-eq v3, v0, :cond_19

    move v0, v3

    move v3, v5

    :goto_9
    move v10, v1

    move-object v1, v2

    move v2, v0

    move v0, v10

    .line 3109
    goto :goto_0

    :cond_a
    const/16 v3, 0x39

    .line 3032
    if-gt v7, v3, :cond_6

    .line 3033
    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v7, -0x30

    add-int/2addr v2, v3

    move v3, v5

    .line 3034
    goto :goto_3

    :cond_b
    const/4 v3, 0x1

    .line 3041
    goto :goto_4

    .line 3043
    :cond_c
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v3, v5

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v3, 0xa

    const/16 v7, 0x30

    .line 3045
    if-ge v5, v7, :cond_e

    :cond_d
    const/4 v0, -0x1

    .line 3059
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 3060
    return-object v0

    :cond_e
    const/16 v7, 0x39

    .line 3045
    if-gt v5, v7, :cond_d

    .line 3046
    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v2, v5

    move v5, v6

    move v10, v2

    move v2, v3

    move v3, v10

    .line 3048
    :goto_a
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v5, v7

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v7, 0x30

    .line 3050
    if-ge v5, v7, :cond_10

    :cond_f
    move v7, v2

    move v8, v3

    move v3, v5

    move v5, v6

    goto :goto_5

    :cond_10
    const/16 v7, 0x39

    if-gt v5, v7, :cond_f

    .line 3051
    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v3, v5

    .line 3052
    mul-int/lit8 v2, v2, 0xa

    move v5, v6

    .line 3053
    goto :goto_a

    :cond_11
    const/16 v2, 0x45

    .line 3064
    if-eq v3, v2, :cond_7

    const/4 v2, 0x0

    goto :goto_6

    .line 3066
    :cond_12
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v3, v5

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v5, 0x2b

    .line 3067
    if-ne v3, v5, :cond_14

    .line 3068
    :cond_13
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    add-int/2addr v3, v6

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    :goto_b
    const/16 v6, 0x30

    .line 3071
    if-lt v3, v6, :cond_8

    const/16 v6, 0x39

    if-gt v3, v6, :cond_8

    .line 3072
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v3, v5

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v5, v6

    goto :goto_b

    :cond_14
    const/16 v5, 0x2d

    .line 3067
    if-eq v3, v5, :cond_13

    move v5, v6

    goto :goto_b

    :cond_15
    const/16 v2, 0xa

    .line 3082
    if-ge v6, v2, :cond_9

    .line 3083
    int-to-float v2, v8

    int-to-float v6, v7

    div-float/2addr v2, v6

    .line 3084
    if-nez v4, :cond_16

    move v4, v2

    goto/16 :goto_7

    .line 3085
    :cond_16
    neg-float v2, v2

    move v4, v2

    goto/16 :goto_7

    .line 3093
    :cond_17
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 3094
    invoke-static {v1, v6, v2, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_8

    .line 3100
    :cond_18
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v5, 0x1

    add-int/2addr v0, v5

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    goto/16 :goto_9

    .line 3102
    :cond_19
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v5, 0x1

    add-int/2addr v0, v5

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    .line 3112
    array-length v0, v2

    if-ne v1, v0, :cond_1a

    :goto_c
    const/16 v0, 0x2c

    .line 3118
    if-eq v4, v0, :cond_1b

    const/16 v0, 0x7d

    .line 3126
    if-eq v4, v0, :cond_1c

    const/4 v0, -0x1

    .line 3150
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 3151
    return-object v0

    .line 3113
    :cond_1a
    new-array v0, v1, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3114
    invoke-static {v2, v5, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v0

    .line 3115
    goto :goto_c

    .line 3119
    :cond_1b
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v3, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3120
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/4 v0, 0x3

    .line 3121
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v0, 0x10

    .line 3122
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3123
    return-object v2

    .line 3127
    :cond_1c
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v3, 0x2c

    .line 3128
    if-eq v0, v3, :cond_1d

    const/16 v3, 0x5d

    .line 3132
    if-eq v0, v3, :cond_1e

    const/16 v3, 0x7d

    .line 3136
    if-eq v0, v3, :cond_1f

    const/16 v3, 0x1a

    .line 3140
    if-eq v0, v3, :cond_20

    const/4 v0, -0x1

    .line 3145
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 3146
    return-object v0

    :cond_1d
    const/16 v0, 0x10

    .line 3129
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3130
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3131
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    :goto_d
    const/4 v0, 0x4

    .line 3148
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3154
    return-object v2

    :cond_1e
    const/16 v0, 0xf

    .line 3133
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3134
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3135
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_d

    :cond_1f
    const/16 v0, 0xd

    .line 3137
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3138
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3139
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_d

    .line 3141
    :cond_20
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v0, 0x14

    .line 3142
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3143
    const/16 v0, 0x1a

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_d
.end method

.method public final scanFieldFloatArray2([C)[[F
    .locals 13

    .prologue
    const/4 v0, 0x0

    .line 3158
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3160
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3165
    array-length v0, p1

    .line 3166
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    .line 3168
    if-ne v0, v1, :cond_3

    .line 3172
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v0, 0x10

    .line 3174
    new-array v7, v0, [[F

    const/4 v0, 0x0

    move v10, v0

    :cond_0
    :goto_0
    const/16 v0, 0x5b

    .line 3178
    if-ne v1, v0, :cond_0

    .line 3179
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v0, 0x10

    .line 3181
    new-array v1, v0, [F

    const/4 v0, 0x0

    .line 3185
    :goto_1
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v3

    add-int/lit8 v11, v4, -0x1

    const/16 v4, 0x2d

    .line 3186
    if-eq v2, v4, :cond_4

    const/4 v4, 0x0

    .line 3187
    :goto_2
    if-nez v4, :cond_5

    :goto_3
    const/16 v5, 0x30

    .line 3191
    if-ge v2, v5, :cond_6

    :cond_1
    const/4 v0, -0x1

    .line 3269
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 3270
    check-cast v0, [[F

    return-object v0

    :cond_2
    const/4 v0, -0x2

    .line 3161
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 3162
    check-cast v0, [[F

    return-object v0

    :cond_3
    const/4 v0, -0x2

    .line 3169
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 3170
    check-cast v0, [[F

    return-object v0

    :cond_4
    const/4 v4, 0x1

    .line 3186
    goto :goto_2

    .line 3188
    :cond_5
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v3, v5

    goto :goto_3

    :cond_6
    const/16 v5, 0x39

    .line 3191
    if-gt v2, v5, :cond_1

    .line 3192
    add-int/lit8 v2, v2, -0x30

    .line 3194
    :goto_4
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v3, 0x1

    add-int/2addr v3, v6

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    const/16 v3, 0x30

    .line 3196
    if-ge v6, v3, :cond_b

    :cond_7
    const/4 v3, 0x1

    const/16 v8, 0x2e

    .line 3205
    if-eq v6, v8, :cond_c

    move v8, v3

    move v9, v2

    move v3, v6

    :goto_5
    const/16 v2, 0x65

    .line 3228
    if-ne v3, v2, :cond_11

    :cond_8
    const/4 v2, 0x1

    .line 3229
    :goto_6
    if-nez v2, :cond_12

    .line 3243
    :cond_9
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v5

    sub-int/2addr v6, v11

    add-int/lit8 v6, v6, -0x1

    .line 3245
    if-eqz v2, :cond_15

    .line 3251
    :cond_a
    invoke-virtual {p0, v11, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v2

    .line 3252
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    move v4, v2

    .line 3255
    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_17

    move-object v2, v1

    .line 3260
    :goto_8
    add-int/lit8 v1, v0, 0x1

    aput v4, v2, v0

    const/16 v0, 0x2c

    .line 3262
    if-eq v3, v0, :cond_18

    const/16 v0, 0x5d

    .line 3264
    if-eq v3, v0, :cond_19

    move v0, v3

    move v3, v5

    :goto_9
    move v12, v1

    move-object v1, v2

    move v2, v0

    move v0, v12

    .line 3272
    goto :goto_1

    :cond_b
    const/16 v3, 0x39

    .line 3196
    if-gt v6, v3, :cond_7

    .line 3197
    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v6, -0x30

    add-int/2addr v2, v3

    move v3, v5

    .line 3198
    goto :goto_4

    .line 3206
    :cond_c
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v3, v5

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v5, 0x30

    .line 3208
    if-ge v3, v5, :cond_e

    :cond_d
    const/4 v0, -0x1

    .line 3223
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 3224
    check-cast v0, [[F

    return-object v0

    :cond_e
    const/16 v5, 0x39

    .line 3208
    if-gt v3, v5, :cond_d

    .line 3209
    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v3, v2

    const/16 v2, 0xa

    move v5, v6

    .line 3212
    :goto_a
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v5, v8

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v8, 0x30

    .line 3214
    if-ge v5, v8, :cond_10

    :cond_f
    move v8, v2

    move v9, v3

    move v3, v5

    move v5, v6

    goto :goto_5

    :cond_10
    const/16 v8, 0x39

    if-gt v5, v8, :cond_f

    .line 3215
    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v3, v5

    .line 3216
    mul-int/lit8 v2, v2, 0xa

    move v5, v6

    .line 3217
    goto :goto_a

    :cond_11
    const/16 v2, 0x45

    .line 3228
    if-eq v3, v2, :cond_8

    const/4 v2, 0x0

    goto :goto_6

    .line 3230
    :cond_12
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v3, v5

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v5, 0x2b

    .line 3231
    if-ne v3, v5, :cond_14

    .line 3232
    :cond_13
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    add-int/2addr v3, v6

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    :goto_b
    const/16 v6, 0x30

    .line 3235
    if-lt v3, v6, :cond_9

    const/16 v6, 0x39

    if-gt v3, v6, :cond_9

    .line 3236
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v3, v5

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v5, v6

    goto :goto_b

    :cond_14
    const/16 v5, 0x2d

    .line 3231
    if-eq v3, v5, :cond_13

    move v5, v6

    goto :goto_b

    :cond_15
    const/16 v2, 0xa

    .line 3245
    if-ge v6, v2, :cond_a

    .line 3246
    int-to-float v2, v9

    int-to-float v6, v8

    div-float/2addr v2, v6

    .line 3247
    if-nez v4, :cond_16

    move v4, v2

    goto/16 :goto_7

    .line 3248
    :cond_16
    neg-float v2, v2

    move v4, v2

    goto/16 :goto_7

    .line 3256
    :cond_17
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [F

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 3257
    invoke-static {v1, v6, v2, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_8

    .line 3263
    :cond_18
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v5, 0x1

    add-int/2addr v0, v5

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    goto/16 :goto_9

    .line 3265
    :cond_19
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v5, 0x1

    add-int/2addr v0, v5

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3275
    array-length v0, v2

    if-ne v1, v0, :cond_1a

    .line 3281
    :goto_c
    array-length v0, v7

    if-ge v10, v0, :cond_1b

    move-object v0, v7

    .line 3286
    :goto_d
    add-int/lit8 v5, v10, 0x1

    aput-object v2, v0, v10

    const/16 v1, 0x2c

    .line 3288
    if-eq v3, v1, :cond_1c

    const/16 v1, 0x5d

    .line 3290
    if-eq v3, v1, :cond_1d

    move v1, v3

    move v2, v4

    :goto_e
    move v10, v5

    move-object v7, v0

    .line 3294
    goto/16 :goto_0

    .line 3276
    :cond_1a
    new-array v0, v1, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3277
    invoke-static {v2, v5, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v0

    .line 3278
    goto :goto_c

    .line 3282
    :cond_1b
    array-length v0, v7

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [[F

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3283
    invoke-static {v2, v5, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_d

    .line 3289
    :cond_1c
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v4, 0x1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    goto :goto_e

    .line 3291
    :cond_1d
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v4, 0x1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3298
    array-length v1, v0

    if-ne v5, v1, :cond_1e

    :goto_f
    const/16 v1, 0x2c

    .line 3304
    if-eq v3, v1, :cond_1f

    const/16 v1, 0x7d

    .line 3312
    if-eq v3, v1, :cond_20

    const/4 v0, -0x1

    .line 3336
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 3337
    check-cast v0, [[F

    return-object v0

    .line 3299
    :cond_1e
    new-array v1, v5, [[F

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 3300
    invoke-static {v0, v4, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 3301
    goto :goto_f

    .line 3305
    :cond_1f
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3306
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/4 v1, 0x3

    .line 3307
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v1, 0x10

    .line 3308
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3309
    return-object v0

    .line 3313
    :cond_20
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    .line 3314
    if-eq v1, v2, :cond_21

    const/16 v2, 0x5d

    .line 3318
    if-eq v1, v2, :cond_22

    const/16 v2, 0x7d

    .line 3322
    if-eq v1, v2, :cond_23

    const/16 v2, 0x1a

    .line 3326
    if-eq v1, v2, :cond_24

    const/4 v0, -0x1

    .line 3331
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 3332
    check-cast v0, [[F

    return-object v0

    :cond_21
    const/16 v1, 0x10

    .line 3315
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3316
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3317
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    :goto_10
    const/4 v1, 0x4

    .line 3334
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3340
    return-object v0

    :cond_22
    const/16 v1, 0xf

    .line 3319
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3320
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3321
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_10

    :cond_23
    const/16 v1, 0xd

    .line 3323
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3324
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3325
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_10

    .line 3327
    :cond_24
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v1, 0x14

    .line 3328
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3329
    const/16 v1, 0x1a

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_10
.end method

.method public scanFieldInt([C)I
    .locals 10

    .prologue
    const/16 v9, 0x2c

    const/16 v8, 0x1a

    const/16 v7, 0x10

    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 1784
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1786
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1791
    array-length v0, p1

    .line 1792
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v0, 0x2d

    .line 1794
    if-eq v2, v0, :cond_2

    move v0, v1

    .line 1795
    :goto_0
    if-nez v0, :cond_3

    :goto_1
    const/16 v4, 0x30

    .line 1800
    if-ge v2, v4, :cond_4

    .line 1823
    :cond_0
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1824
    return v1

    :cond_1
    const/4 v0, -0x2

    .line 1787
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1788
    return v1

    :cond_2
    const/4 v0, 0x1

    .line 1794
    goto :goto_0

    .line 1796
    :cond_3
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v3, v4

    goto :goto_1

    :cond_4
    const/16 v4, 0x39

    .line 1800
    if-gt v2, v4, :cond_0

    .line 1801
    add-int/lit8 v2, v2, -0x30

    .line 1803
    :goto_2
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v3, v5

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v5, 0x30

    .line 1804
    if-ge v3, v5, :cond_8

    :cond_5
    const/16 v5, 0x2e

    .line 1806
    if-eq v3, v5, :cond_9

    .line 1813
    if-gez v2, :cond_a

    :cond_6
    const/high16 v5, -0x80000000

    .line 1815
    if-eq v2, v5, :cond_b

    .line 1818
    :cond_7
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1819
    return v1

    :cond_8
    const/16 v5, 0x39

    .line 1804
    if-gt v3, v5, :cond_5

    .line 1805
    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    move v3, v4

    goto :goto_2

    .line 1807
    :cond_9
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1808
    return v1

    .line 1813
    :cond_a
    array-length v5, p1

    add-int/lit8 v5, v5, 0xe

    if-gt v4, v5, :cond_6

    .line 1827
    :goto_3
    if-eq v3, v9, :cond_c

    const/16 v5, 0x7d

    .line 1835
    if-eq v3, v5, :cond_e

    .line 1859
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1860
    return v1

    :cond_b
    const/16 v5, 0x11

    .line 1815
    if-ne v4, v5, :cond_7

    if-eqz v0, :cond_7

    goto :goto_3

    .line 1828
    :cond_c
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1829
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v1, 0x3

    .line 1830
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1831
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1832
    if-nez v0, :cond_d

    :goto_4
    return v2

    :cond_d
    neg-int v2, v2

    goto :goto_4

    .line 1836
    :cond_e
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 1837
    if-eq v3, v9, :cond_f

    const/16 v4, 0x5d

    .line 1841
    if-eq v3, v4, :cond_10

    const/16 v4, 0x7d

    .line 1845
    if-eq v3, v4, :cond_11

    .line 1849
    if-eq v3, v8, :cond_12

    .line 1854
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1855
    return v1

    .line 1838
    :cond_f
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1839
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1840
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_5
    const/4 v1, 0x4

    .line 1857
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1863
    if-nez v0, :cond_13

    :goto_6
    return v2

    :cond_10
    const/16 v1, 0xf

    .line 1842
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1843
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1844
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_5

    :cond_11
    const/16 v1, 0xd

    .line 1846
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1847
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1848
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_5

    :cond_12
    const/16 v1, 0x14

    .line 1850
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1851
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v5, -0x1

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1852
    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_5

    .line 1863
    :cond_13
    neg-int v2, v2

    goto :goto_6
.end method

.method public final scanFieldIntArray([C)[I
    .locals 13

    .prologue
    const/16 v11, 0x2c

    const/16 v10, 0x10

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 1867
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1869
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1874
    array-length v0, p1

    .line 1875
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v0, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v2, 0x5b

    .line 1877
    if-ne v0, v2, :cond_2

    .line 1881
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 1883
    new-array v0, v10, [I

    const/16 v4, 0x5d

    .line 1886
    if-eq v2, v4, :cond_3

    move v4, v3

    move v3, v2

    move-object v2, v0

    move v0, v1

    :goto_0
    const/16 v5, 0x2d

    .line 1891
    if-eq v3, v5, :cond_4

    move v7, v1

    :goto_1
    const/16 v5, 0x30

    .line 1895
    if-ge v3, v5, :cond_5

    .line 1921
    :cond_0
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1922
    return-object v8

    :cond_1
    const/4 v0, -0x2

    .line 1870
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1871
    return-object v8

    :cond_2
    const/4 v0, -0x2

    .line 1878
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1879
    return-object v8

    .line 1887
    :cond_3
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move-object v3, v0

    move v0, v2

    move v2, v1

    .line 1928
    :goto_2
    array-length v5, v3

    if-ne v2, v5, :cond_c

    .line 1934
    :goto_3
    if-eq v0, v11, :cond_d

    const/16 v1, 0x7d

    .line 1942
    if-eq v0, v1, :cond_e

    .line 1966
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1967
    return-object v8

    .line 1892
    :cond_4
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    .line 1893
    const/4 v3, 0x1

    move v7, v3

    move v3, v4

    move v4, v5

    goto :goto_1

    :cond_5
    const/16 v5, 0x39

    .line 1895
    if-gt v3, v5, :cond_0

    .line 1896
    add-int/lit8 v3, v3, -0x30

    move v12, v3

    move v3, v4

    move v4, v12

    .line 1898
    :goto_4
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v3, 0x1

    add-int/2addr v3, v6

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    const/16 v3, 0x30

    .line 1900
    if-ge v6, v3, :cond_7

    .line 1907
    :cond_6
    array-length v3, v2

    if-ge v0, v3, :cond_8

    move-object v3, v2

    .line 1912
    :goto_5
    add-int/lit8 v2, v0, 0x1

    if-nez v7, :cond_9

    :goto_6
    aput v4, v3, v0

    .line 1914
    if-eq v6, v11, :cond_a

    const/16 v0, 0x5d

    .line 1916
    if-eq v6, v0, :cond_b

    move v0, v6

    move v4, v5

    :goto_7
    move v12, v2

    move-object v2, v3

    move v3, v0

    move v0, v12

    .line 1924
    goto :goto_0

    :cond_7
    const/16 v3, 0x39

    .line 1900
    if-gt v6, v3, :cond_6

    .line 1901
    mul-int/lit8 v3, v4, 0xa

    add-int/lit8 v4, v6, -0x30

    add-int/2addr v3, v4

    move v4, v3

    move v3, v5

    goto :goto_4

    .line 1908
    :cond_8
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    .line 1909
    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 1912
    :cond_9
    neg-int v4, v4

    goto :goto_6

    .line 1915
    :cond_a
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v5, 0x1

    add-int/2addr v0, v5

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    goto :goto_7

    .line 1917
    :cond_b
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v5, 0x1

    add-int/2addr v0, v5

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    goto :goto_2

    .line 1929
    :cond_c
    new-array v5, v2, [I

    .line 1930
    invoke-static {v3, v1, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v5

    .line 1931
    goto :goto_3

    .line 1935
    :cond_d
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v4, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1936
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/4 v0, 0x3

    .line 1937
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1938
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1939
    return-object v3

    .line 1943
    :cond_e
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1944
    if-eq v0, v11, :cond_f

    const/16 v2, 0x5d

    .line 1948
    if-eq v0, v2, :cond_10

    const/16 v2, 0x7d

    .line 1952
    if-eq v0, v2, :cond_11

    const/16 v2, 0x1a

    .line 1956
    if-eq v0, v2, :cond_12

    .line 1961
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1962
    return-object v8

    .line 1945
    :cond_f
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1946
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1947
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    :goto_8
    const/4 v0, 0x4

    .line 1964
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1970
    return-object v3

    :cond_10
    const/16 v0, 0xf

    .line 1949
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1950
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1951
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_8

    :cond_11
    const/16 v0, 0xd

    .line 1953
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1954
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1955
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_8

    .line 1957
    :cond_12
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v0, 0x14

    .line 1958
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1959
    const/16 v0, 0x1a

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_8
.end method

.method public scanFieldLong([C)J
    .locals 14

    .prologue
    const/16 v13, 0x10

    const/4 v4, 0x1

    const/4 v12, -0x1

    const-wide/16 v10, 0x0

    const/4 v5, 0x0

    .line 2209
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2211
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2216
    array-length v0, p1

    .line 2217
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v0, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    .line 2220
    if-eq v0, v1, :cond_2

    move v6, v5

    :goto_0
    const/16 v1, 0x30

    .line 2226
    if-ge v0, v1, :cond_3

    .line 2247
    :cond_0
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2248
    return-wide v10

    :cond_1
    const/4 v0, -0x2

    .line 2212
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2213
    return-wide v10

    .line 2221
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v6, v4

    move v2, v1

    .line 2222
    goto :goto_0

    :cond_3
    const/16 v1, 0x39

    .line 2226
    if-gt v0, v1, :cond_0

    .line 2227
    add-int/lit8 v0, v0, -0x30

    int-to-long v0, v0

    .line 2229
    :goto_1
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v2, v7

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v2, 0x30

    .line 2230
    if-ge v7, v2, :cond_6

    :cond_4
    const/16 v2, 0x2e

    .line 2232
    if-eq v7, v2, :cond_7

    .line 2240
    array-length v2, p1

    sub-int v2, v3, v2

    const/16 v8, 0x15

    if-lt v2, v8, :cond_8

    :cond_5
    move v2, v5

    .line 2242
    :goto_2
    if-eqz v2, :cond_b

    const/16 v2, 0x2c

    .line 2251
    if-eq v7, v2, :cond_c

    const/16 v2, 0x7d

    .line 2259
    if-eq v7, v2, :cond_e

    .line 2283
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2284
    return-wide v10

    :cond_6
    const/16 v2, 0x39

    .line 2230
    if-gt v7, v2, :cond_4

    const-wide/16 v8, 0xa

    .line 2231
    mul-long/2addr v0, v8

    add-int/lit8 v2, v7, -0x30

    int-to-long v8, v2

    add-long/2addr v0, v8

    move v2, v3

    goto :goto_1

    .line 2233
    :cond_7
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2234
    return-wide v10

    .line 2240
    :cond_8
    cmp-long v2, v0, v10

    if-ltz v2, :cond_a

    move v2, v4

    :goto_3
    if-nez v2, :cond_9

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v2, v0, v8

    if-nez v2, :cond_5

    if-eqz v6, :cond_5

    :cond_9
    move v2, v4

    goto :goto_2

    :cond_a
    move v2, v5

    goto :goto_3

    .line 2243
    :cond_b
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2244
    return-wide v10

    .line 2252
    :cond_c
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2253
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v2, 0x3

    .line 2254
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2255
    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2256
    if-nez v6, :cond_d

    :goto_4
    return-wide v0

    :cond_d
    neg-long v0, v0

    goto :goto_4

    .line 2260
    :cond_e
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    .line 2261
    if-eq v2, v3, :cond_f

    const/16 v3, 0x5d

    .line 2265
    if-eq v2, v3, :cond_10

    const/16 v3, 0x7d

    .line 2269
    if-eq v2, v3, :cond_11

    const/16 v3, 0x1a

    .line 2273
    if-eq v2, v3, :cond_12

    .line 2278
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2279
    return-wide v10

    .line 2262
    :cond_f
    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2263
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2264
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_5
    const/4 v2, 0x4

    .line 2281
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2287
    if-nez v6, :cond_13

    :goto_6
    return-wide v0

    :cond_10
    const/16 v2, 0xf

    .line 2266
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2267
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2268
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_5

    :cond_11
    const/16 v2, 0xd

    .line 2270
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2271
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2272
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_5

    :cond_12
    const/16 v2, 0x14

    .line 2274
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2275
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, -0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2276
    const/16 v2, 0x1a

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_5

    .line 2287
    :cond_13
    neg-long v0, v0

    goto :goto_6
.end method

.method public scanFieldString([C)Ljava/lang/String;
    .locals 12

    .prologue
    const/16 v10, 0x2c

    const/16 v9, 0x1a

    const/16 v8, 0x22

    const/4 v3, 0x0

    const/4 v7, -0x1

    .line 1194
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1196
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1203
    array-length v0, p1

    .line 1204
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v0, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1206
    if-ne v0, v8, :cond_1

    .line 1214
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 1215
    invoke-virtual {p0, v8, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v0

    .line 1216
    if-eq v0, v7, :cond_2

    .line 1220
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v2, p1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 1221
    sub-int v2, v0, v1

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    .line 1222
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v7, :cond_3

    move-object v11, v1

    move v1, v0

    move-object v0, v11

    .line 1244
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v3, p1

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v4

    .line 1245
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1249
    if-eq v1, v10, :cond_7

    const/16 v2, 0x7d

    .line 1256
    if-eq v1, v2, :cond_8

    .line 1280
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1281
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, -0x2

    .line 1197
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1198
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1207
    :cond_1
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1209
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1217
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "unclosed str"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1225
    :cond_3
    :goto_1
    add-int/lit8 v1, v0, -0x1

    move v2, v3

    :goto_2
    if-gez v1, :cond_5

    .line 1232
    :cond_4
    rem-int/lit8 v1, v2, 0x2

    if-eqz v1, :cond_6

    .line 1235
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v8, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v0

    goto :goto_1

    .line 1226
    :cond_5
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_4

    .line 1227
    add-int/lit8 v2, v2, 0x1

    .line 1225
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1238
    :cond_6
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v2, p1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    sub-int v1, v0, v1

    .line 1239
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v3, p1

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v2

    .line 1241
    invoke-static {v2, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    move v1, v0

    move-object v0, v11

    goto :goto_0

    .line 1250
    :cond_7
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1251
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v1, 0x3

    .line 1252
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1253
    return-object v0

    .line 1257
    :cond_8
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1258
    if-eq v1, v10, :cond_9

    const/16 v3, 0x5d

    .line 1262
    if-eq v1, v3, :cond_a

    const/16 v3, 0x7d

    .line 1266
    if-eq v1, v3, :cond_b

    .line 1270
    if-eq v1, v9, :cond_c

    .line 1275
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1276
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const/16 v1, 0x10

    .line 1259
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1260
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1261
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_3
    const/4 v1, 0x4

    .line 1278
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1284
    return-object v0

    :cond_a
    const/16 v1, 0xf

    .line 1263
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1264
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1265
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    :cond_b
    const/16 v1, 0xd

    .line 1267
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1268
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1269
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    :cond_c
    const/16 v1, 0x14

    .line 1271
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1272
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1273
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3
.end method

.method public scanFieldStringArray([CLjava/lang/Class;)Ljava/util/Collection;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0x2c

    const/16 v10, 0x22

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v8, -0x1

    .line 1548
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1550
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1555
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->newCollectionByType(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v5

    .line 1571
    array-length v0, p1

    .line 1572
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v0, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    .line 1574
    if-ne v0, v1, :cond_3

    .line 1579
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v4, v1

    .line 1583
    :goto_0
    if-eq v0, v10, :cond_4

    const/16 v1, 0x6e

    .line 1618
    if-eq v0, v1, :cond_a

    :cond_0
    const/16 v1, 0x5d

    .line 1625
    if-eq v0, v1, :cond_b

    .line 1629
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "illega str"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, -0x2

    .line 1551
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1552
    return-object v9

    .line 1575
    :cond_3
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1576
    return-object v9

    .line 1584
    :cond_4
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v4

    .line 1585
    invoke-virtual {p0, v10, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v0

    .line 1586
    if-eq v0, v8, :cond_5

    .line 1590
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    .line 1591
    sub-int v2, v0, v1

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    .line 1592
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v8, :cond_6

    move-object v12, v1

    move v1, v0

    move-object v0, v12

    .line 1614
    :goto_1
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v4

    .line 1615
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1617
    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 1632
    :goto_2
    if-eq v0, v11, :cond_c

    const/16 v1, 0x5d

    .line 1637
    if-eq v0, v1, :cond_d

    .line 1642
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1643
    return-object v9

    .line 1587
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "unclosed str"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1595
    :cond_6
    :goto_3
    add-int/lit8 v1, v0, -0x1

    move v2, v3

    :goto_4
    if-gez v1, :cond_8

    .line 1602
    :cond_7
    rem-int/lit8 v1, v2, 0x2

    if-eqz v1, :cond_9

    .line 1605
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v10, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v0

    goto :goto_3

    .line 1596
    :cond_8
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_7

    .line 1597
    add-int/lit8 v2, v2, 0x1

    .line 1595
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 1608
    :cond_9
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    sub-int v1, v0, v1

    .line 1609
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    invoke-virtual {p0, v2, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v2

    .line 1611
    invoke-static {v2, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    move v1, v0

    move-object v0, v12

    goto :goto_1

    .line 1618
    :cond_a
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    .line 1619
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x1

    .line 1620
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x2

    .line 1621
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_0

    .line 1622
    add-int/lit8 v0, v4, 0x3

    .line 1623
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1624
    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v2, v1

    goto :goto_2

    .line 1625
    :cond_b
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1626
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1646
    :goto_5
    if-eq v0, v11, :cond_e

    const/16 v2, 0x7d

    .line 1653
    if-eq v0, v2, :cond_f

    .line 1677
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1678
    return-object v9

    .line 1633
    :cond_c
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v4, v1

    .line 1634
    goto/16 :goto_0

    .line 1638
    :cond_d
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    goto :goto_5

    .line 1647
    :cond_e
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1648
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v0, 0x3

    .line 1649
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1650
    return-object v5

    .line 1654
    :cond_f
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1655
    if-eq v0, v11, :cond_10

    const/16 v1, 0x5d

    .line 1659
    if-eq v0, v1, :cond_11

    const/16 v1, 0x7d

    .line 1663
    if-eq v0, v1, :cond_12

    const/16 v1, 0x1a

    .line 1667
    if-eq v0, v1, :cond_13

    .line 1672
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1673
    return-object v9

    :cond_10
    const/16 v0, 0x10

    .line 1656
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1657
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1658
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_6
    const/4 v0, 0x4

    .line 1675
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1681
    return-object v5

    :cond_11
    const/16 v0, 0xf

    .line 1660
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1661
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1662
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    :cond_12
    const/16 v0, 0xd

    .line 1664
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1665
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1666
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    .line 1668
    :cond_13
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v0, 0x14

    .line 1669
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1670
    const/16 v0, 0x1a

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6
.end method

.method public scanFieldStringArray([CILcom/alibaba/fastjson/parser/SymbolTable;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 5103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public scanFieldSymbol([C)J
    .locals 11

    .prologue
    const/16 v10, 0x22

    const/16 v9, 0x1a

    const/4 v0, 0x0

    const/4 v8, -0x1

    const-wide/16 v6, 0x0

    .line 1378
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1380
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1385
    array-length v0, p1

    .line 1386
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v0, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1388
    if-ne v0, v10, :cond_1

    const-wide v0, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 1395
    :goto_0
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 1396
    if-eq v2, v10, :cond_2

    .line 1401
    int-to-long v4, v2

    xor-long/2addr v0, v4

    const-wide v4, 0x100000001b3L

    .line 1402
    mul-long/2addr v0, v4

    const/16 v4, 0x5c

    .line 1404
    if-eq v2, v4, :cond_3

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    .line 1381
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1382
    return-wide v6

    .line 1389
    :cond_1
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1390
    return-wide v6

    .line 1397
    :cond_2
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    .line 1410
    if-eq v2, v3, :cond_4

    const/16 v3, 0x7d

    .line 1417
    if-eq v2, v3, :cond_5

    .line 1441
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1442
    return-wide v6

    .line 1405
    :cond_3
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1406
    return-wide v6

    .line 1411
    :cond_4
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1412
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v2, 0x3

    .line 1413
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1414
    return-wide v0

    .line 1418
    :cond_5
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v4, 0x2c

    .line 1419
    if-eq v2, v4, :cond_6

    const/16 v4, 0x5d

    .line 1423
    if-eq v2, v4, :cond_7

    const/16 v4, 0x7d

    .line 1427
    if-eq v2, v4, :cond_8

    .line 1431
    if-eq v2, v9, :cond_9

    .line 1436
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1437
    return-wide v6

    :cond_6
    const/16 v2, 0x10

    .line 1420
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1421
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1422
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_1
    const/4 v2, 0x4

    .line 1439
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1445
    return-wide v0

    :cond_7
    const/16 v2, 0xf

    .line 1424
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1425
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1426
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    :cond_8
    const/16 v2, 0xd

    .line 1428
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1429
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1430
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    :cond_9
    const/16 v2, 0x14

    .line 1432
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1433
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1434
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1
.end method

.method public scanFieldUUID([C)Ljava/util/UUID;
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 4070
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4072
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4079
    array-length v0, p1

    .line 4080
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v0, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    .line 4083
    if-eq v0, v1, :cond_2

    const/16 v1, 0x6e

    .line 4228
    if-eq v0, v1, :cond_37

    :cond_0
    const/4 v0, -0x1

    .line 4235
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 4236
    return-object v0

    :cond_1
    const/4 v0, -0x2

    .line 4073
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 4074
    return-object v0

    .line 4084
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 4085
    const/16 v1, 0x22

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v7

    const/4 v0, -0x1

    .line 4086
    if-eq v7, v0, :cond_3

    .line 4090
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v8, v0, 0x1

    .line 4091
    sub-int v0, v7, v8

    const/16 v1, 0x24

    .line 4092
    if-eq v0, v1, :cond_4

    const/16 v1, 0x20

    .line 4183
    if-eq v0, v1, :cond_28

    const/4 v0, -0x1

    .line 4225
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 4226
    return-object v0

    .line 4087
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "unclosed str"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0x8

    .line 4094
    if-lt v1, v0, :cond_5

    const/16 v0, 0x9

    move v1, v0

    :goto_1
    const/16 v0, 0xd

    .line 4111
    if-lt v1, v0, :cond_c

    const/16 v0, 0xe

    move v1, v0

    :goto_2
    const/16 v0, 0x12

    .line 4128
    if-lt v1, v0, :cond_13

    const/16 v0, 0x13

    move v1, v0

    :goto_3
    const/16 v0, 0x17

    .line 4145
    if-lt v1, v0, :cond_1a

    const/16 v0, 0x18

    move v1, v0

    :goto_4
    const/16 v0, 0x24

    .line 4162
    if-lt v1, v0, :cond_21

    .line 4179
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 4181
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v2, p1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    sub-int v1, v7, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v6

    .line 4182
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    :goto_5
    const/16 v3, 0x2c

    .line 4239
    if-eq v1, v3, :cond_38

    const/16 v3, 0x7d

    .line 4246
    if-eq v1, v3, :cond_39

    const/4 v0, -0x1

    .line 4270
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 4271
    return-object v0

    .line 4095
    :cond_5
    add-int v0, v8, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v9, 0x30

    .line 4097
    if-ge v0, v9, :cond_9

    :cond_6
    const/16 v9, 0x61

    .line 4099
    if-ge v0, v9, :cond_a

    :cond_7
    const/16 v9, 0x41

    .line 4101
    if-ge v0, v9, :cond_b

    :cond_8
    const/4 v0, -0x2

    .line 4104
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 4105
    return-object v0

    :cond_9
    const/16 v9, 0x39

    .line 4097
    if-gt v0, v9, :cond_6

    .line 4098
    add-int/lit8 v0, v0, -0x30

    :goto_6
    const/4 v9, 0x4

    .line 4108
    shl-long/2addr v4, v9

    .line 4109
    int-to-long v10, v0

    or-long/2addr v4, v10

    .line 4094
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_a
    const/16 v9, 0x66

    .line 4099
    if-gt v0, v9, :cond_7

    .line 4100
    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_6

    :cond_b
    const/16 v9, 0x46

    .line 4101
    if-gt v0, v9, :cond_8

    .line 4102
    add-int/lit8 v0, v0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_6

    .line 4112
    :cond_c
    add-int v0, v8, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v9, 0x30

    .line 4114
    if-ge v0, v9, :cond_10

    :cond_d
    const/16 v9, 0x61

    .line 4116
    if-ge v0, v9, :cond_11

    :cond_e
    const/16 v9, 0x41

    .line 4118
    if-ge v0, v9, :cond_12

    :cond_f
    const/4 v0, -0x2

    .line 4121
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 4122
    return-object v0

    :cond_10
    const/16 v9, 0x39

    .line 4114
    if-gt v0, v9, :cond_d

    .line 4115
    add-int/lit8 v0, v0, -0x30

    :goto_7
    const/4 v9, 0x4

    .line 4125
    shl-long/2addr v4, v9

    .line 4126
    int-to-long v10, v0

    or-long/2addr v4, v10

    .line 4111
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_11
    const/16 v9, 0x66

    .line 4116
    if-gt v0, v9, :cond_e

    .line 4117
    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_7

    :cond_12
    const/16 v9, 0x46

    .line 4118
    if-gt v0, v9, :cond_f

    .line 4119
    add-int/lit8 v0, v0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_7

    .line 4129
    :cond_13
    add-int v0, v8, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v9, 0x30

    .line 4131
    if-ge v0, v9, :cond_17

    :cond_14
    const/16 v9, 0x61

    .line 4133
    if-ge v0, v9, :cond_18

    :cond_15
    const/16 v9, 0x41

    .line 4135
    if-ge v0, v9, :cond_19

    :cond_16
    const/4 v0, -0x2

    .line 4138
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 4139
    return-object v0

    :cond_17
    const/16 v9, 0x39

    .line 4131
    if-gt v0, v9, :cond_14

    .line 4132
    add-int/lit8 v0, v0, -0x30

    :goto_8
    const/4 v9, 0x4

    .line 4142
    shl-long/2addr v4, v9

    .line 4143
    int-to-long v10, v0

    or-long/2addr v4, v10

    .line 4128
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    :cond_18
    const/16 v9, 0x66

    .line 4133
    if-gt v0, v9, :cond_15

    .line 4134
    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_8

    :cond_19
    const/16 v9, 0x46

    .line 4135
    if-gt v0, v9, :cond_16

    .line 4136
    add-int/lit8 v0, v0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_8

    .line 4146
    :cond_1a
    add-int v0, v8, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v9, 0x30

    .line 4148
    if-ge v0, v9, :cond_1e

    :cond_1b
    const/16 v9, 0x61

    .line 4150
    if-ge v0, v9, :cond_1f

    :cond_1c
    const/16 v9, 0x41

    .line 4152
    if-ge v0, v9, :cond_20

    :cond_1d
    const/4 v0, -0x2

    .line 4155
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 4156
    return-object v0

    :cond_1e
    const/16 v9, 0x39

    .line 4148
    if-gt v0, v9, :cond_1b

    .line 4149
    add-int/lit8 v0, v0, -0x30

    :goto_9
    const/4 v9, 0x4

    .line 4159
    shl-long/2addr v2, v9

    .line 4160
    int-to-long v10, v0

    or-long/2addr v2, v10

    .line 4145
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    :cond_1f
    const/16 v9, 0x66

    .line 4150
    if-gt v0, v9, :cond_1c

    .line 4151
    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_9

    :cond_20
    const/16 v9, 0x46

    .line 4152
    if-gt v0, v9, :cond_1d

    .line 4153
    add-int/lit8 v0, v0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_9

    .line 4163
    :cond_21
    add-int v0, v8, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v9, 0x30

    .line 4165
    if-ge v0, v9, :cond_25

    :cond_22
    const/16 v9, 0x61

    .line 4167
    if-ge v0, v9, :cond_26

    :cond_23
    const/16 v9, 0x41

    .line 4169
    if-ge v0, v9, :cond_27

    :cond_24
    const/4 v0, -0x2

    .line 4172
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 4173
    return-object v0

    :cond_25
    const/16 v9, 0x39

    .line 4165
    if-gt v0, v9, :cond_22

    .line 4166
    add-int/lit8 v0, v0, -0x30

    :goto_a
    const/4 v9, 0x4

    .line 4176
    shl-long/2addr v2, v9

    .line 4177
    int-to-long v10, v0

    or-long/2addr v2, v10

    .line 4162
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_4

    :cond_26
    const/16 v9, 0x66

    .line 4167
    if-gt v0, v9, :cond_23

    .line 4168
    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    :cond_27
    const/16 v9, 0x46

    .line 4169
    if-gt v0, v9, :cond_24

    .line 4170
    add-int/lit8 v0, v0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    :cond_28
    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    const/16 v0, 0x10

    .line 4185
    if-lt v1, v0, :cond_29

    const/16 v0, 0x10

    move v1, v0

    :goto_c
    const/16 v0, 0x20

    .line 4202
    if-lt v1, v0, :cond_30

    .line 4220
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 4222
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v2, p1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    sub-int v1, v7, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v6

    .line 4223
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    goto/16 :goto_5

    .line 4186
    :cond_29
    add-int v0, v8, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v9, 0x30

    .line 4188
    if-ge v0, v9, :cond_2d

    :cond_2a
    const/16 v9, 0x61

    .line 4190
    if-ge v0, v9, :cond_2e

    :cond_2b
    const/16 v9, 0x41

    .line 4192
    if-ge v0, v9, :cond_2f

    :cond_2c
    const/4 v0, -0x2

    .line 4195
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 4196
    return-object v0

    :cond_2d
    const/16 v9, 0x39

    .line 4188
    if-gt v0, v9, :cond_2a

    .line 4189
    add-int/lit8 v0, v0, -0x30

    :goto_d
    const/4 v9, 0x4

    .line 4199
    shl-long/2addr v4, v9

    .line 4200
    int-to-long v10, v0

    or-long/2addr v4, v10

    .line 4185
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_2e
    const/16 v9, 0x66

    .line 4190
    if-gt v0, v9, :cond_2b

    .line 4191
    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_d

    :cond_2f
    const/16 v9, 0x46

    .line 4192
    if-gt v0, v9, :cond_2c

    .line 4193
    add-int/lit8 v0, v0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_d

    .line 4203
    :cond_30
    add-int v0, v8, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v9, 0x30

    .line 4205
    if-ge v0, v9, :cond_34

    :cond_31
    const/16 v9, 0x61

    .line 4207
    if-ge v0, v9, :cond_35

    :cond_32
    const/16 v9, 0x41

    .line 4209
    if-ge v0, v9, :cond_36

    :cond_33
    const/4 v0, -0x2

    .line 4212
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 4213
    return-object v0

    :cond_34
    const/16 v9, 0x39

    .line 4205
    if-gt v0, v9, :cond_31

    .line 4206
    add-int/lit8 v0, v0, -0x30

    :goto_e
    const/4 v9, 0x4

    .line 4216
    shl-long/2addr v2, v9

    .line 4217
    int-to-long v10, v0

    or-long/2addr v2, v10

    .line 4202
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_35
    const/16 v9, 0x66

    .line 4207
    if-gt v0, v9, :cond_32

    .line 4208
    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_e

    :cond_36
    const/16 v9, 0x46

    .line 4209
    if-gt v0, v9, :cond_33

    .line 4210
    add-int/lit8 v0, v0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_e

    .line 4228
    :cond_37
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v6, 0x1

    add-int/2addr v0, v6

    .line 4229
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v2, 0x75

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v0, v1

    .line 4230
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v2

    .line 4231
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v2, 0x6c

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    .line 4233
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    goto/16 :goto_5

    .line 4240
    :cond_38
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4241
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v1, 0x3

    .line 4242
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4243
    return-object v0

    .line 4247
    :cond_39
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    .line 4248
    if-eq v1, v2, :cond_3a

    const/16 v2, 0x5d

    .line 4252
    if-eq v1, v2, :cond_3b

    const/16 v2, 0x7d

    .line 4256
    if-eq v1, v2, :cond_3c

    const/16 v2, 0x1a

    .line 4260
    if-eq v1, v2, :cond_3d

    const/4 v0, -0x1

    .line 4265
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 4266
    return-object v0

    :cond_3a
    const/16 v1, 0x10

    .line 4249
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4250
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4251
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_f
    const/4 v1, 0x4

    .line 4268
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4274
    return-object v0

    :cond_3b
    const/16 v1, 0xf

    .line 4253
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4254
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4255
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_f

    :cond_3c
    const/16 v1, 0xd

    .line 4257
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4258
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4259
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_f

    :cond_3d
    const/16 v1, 0x14

    .line 4261
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4262
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4263
    const/16 v1, 0x1a

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_f
.end method

.method public final scanFloat(C)F
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 2560
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2563
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v4, 0x1

    add-int/lit8 v0, v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v0, 0x22

    .line 2564
    if-eq v2, v0, :cond_2

    const/4 v0, 0x0

    .line 2565
    :goto_0
    if-nez v0, :cond_3

    :goto_1
    const/16 v1, 0x2d

    .line 2569
    if-eq v2, v1, :cond_4

    const/4 v1, 0x0

    .line 2570
    :goto_2
    if-nez v1, :cond_5

    :goto_3
    const/16 v3, 0x30

    .line 2575
    if-ge v2, v3, :cond_6

    :cond_0
    const/16 v1, 0x6e

    .line 2664
    if-eq v2, v1, :cond_1a

    :cond_1
    const/4 v0, -0x1

    .line 2696
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 2697
    return v0

    :cond_2
    const/4 v0, 0x1

    .line 2564
    goto :goto_0

    .line 2566
    :cond_3
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v4, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    .line 2569
    goto :goto_2

    .line 2571
    :cond_5
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v4, v3

    goto :goto_3

    :cond_6
    const/16 v3, 0x39

    .line 2575
    if-gt v2, v3, :cond_0

    .line 2576
    add-int/lit8 v2, v2, -0x30

    int-to-long v2, v2

    .line 2578
    :goto_4
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v4, 0x1

    add-int/2addr v4, v6

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    const/16 v4, 0x30

    .line 2579
    if-ge v8, v4, :cond_c

    :cond_7
    const-wide/16 v6, 0x1

    const/16 v4, 0x2e

    .line 2588
    if-eq v8, v4, :cond_d

    const/4 v4, 0x0

    .line 2589
    :goto_5
    if-nez v4, :cond_e

    move-wide v10, v2

    move v4, v8

    move-wide v8, v6

    :goto_6
    const/16 v2, 0x65

    .line 2610
    if-ne v4, v2, :cond_13

    :cond_8
    const/4 v2, 0x1

    .line 2611
    :goto_7
    if-nez v2, :cond_14

    .line 2641
    :cond_9
    if-nez v0, :cond_17

    .line 2651
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2652
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v5

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    .line 2655
    :goto_8
    if-eqz v2, :cond_19

    .line 2661
    :cond_a
    invoke-virtual {p0, v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v0

    .line 2662
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 2700
    :cond_b
    :goto_9
    if-eq v4, p1, :cond_20

    const/4 v1, -0x1

    .line 2707
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2708
    return v0

    :cond_c
    const/16 v4, 0x39

    .line 2579
    if-gt v8, v4, :cond_7

    const-wide/16 v6, 0xa

    .line 2580
    mul-long/2addr v2, v6

    add-int/lit8 v4, v8, -0x30

    int-to-long v6, v4

    add-long/2addr v2, v6

    move v4, v5

    .line 2581
    goto :goto_4

    :cond_d
    const/4 v4, 0x1

    .line 2588
    goto :goto_5

    .line 2590
    :cond_e
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    .line 2591
    if-ge v4, v5, :cond_10

    :cond_f
    const/4 v0, -0x1

    .line 2605
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 2606
    return v0

    :cond_10
    const/16 v5, 0x39

    .line 2591
    if-gt v4, v5, :cond_f

    const-wide/16 v8, 0xa

    .line 2592
    mul-long/2addr v2, v8

    add-int/lit8 v4, v4, -0x30

    int-to-long v4, v4

    add-long/2addr v4, v2

    const-wide/16 v2, 0xa

    .line 2595
    :goto_a
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v6, 0x1

    add-int/2addr v6, v8

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    const/16 v8, 0x30

    .line 2596
    if-ge v6, v8, :cond_12

    :cond_11
    move-wide v8, v2

    move-wide v10, v4

    move v4, v6

    move v5, v7

    goto :goto_6

    :cond_12
    const/16 v8, 0x39

    if-gt v6, v8, :cond_11

    const-wide/16 v8, 0xa

    .line 2597
    mul-long/2addr v4, v8

    add-int/lit8 v6, v6, -0x30

    int-to-long v8, v6

    add-long/2addr v4, v8

    const-wide/16 v8, 0xa

    .line 2598
    mul-long/2addr v2, v8

    move v6, v7

    .line 2599
    goto :goto_a

    :cond_13
    const/16 v2, 0x45

    .line 2610
    if-eq v4, v2, :cond_8

    const/4 v2, 0x0

    goto :goto_7

    .line 2612
    :cond_14
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    .line 2613
    if-ne v4, v5, :cond_16

    .line 2614
    :cond_15
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v3, 0x1

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    :goto_b
    const/16 v3, 0x30

    .line 2617
    if-lt v4, v3, :cond_9

    const/16 v3, 0x39

    if-gt v4, v3, :cond_9

    .line 2618
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    move v5, v3

    goto :goto_b

    :cond_16
    const/16 v5, 0x2d

    .line 2613
    if-eq v4, v5, :cond_15

    move v5, v3

    goto :goto_b

    :cond_17
    const/16 v0, 0x22

    .line 2642
    if-ne v4, v0, :cond_18

    .line 2646
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v0, v5

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    .line 2648
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v0, 0x1

    .line 2649
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v6

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x2

    move v5, v6

    goto/16 :goto_8

    :cond_18
    const/4 v0, -0x1

    .line 2643
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 2644
    return v0

    :cond_19
    const/16 v2, 0x11

    .line 2655
    if-ge v0, v2, :cond_a

    .line 2656
    long-to-float v0, v10

    long-to-float v2, v8

    div-float/2addr v0, v2

    .line 2657
    if-eqz v1, :cond_b

    .line 2658
    neg-float v0, v0

    goto/16 :goto_9

    .line 2664
    :cond_1a
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1

    const/4 v1, 0x5

    .line 2665
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2667
    add-int/lit8 v1, v4, 0x3

    .line 2668
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2670
    if-nez v0, :cond_1c

    :cond_1b
    move v0, v1

    move v1, v2

    :goto_c
    const/16 v2, 0x2c

    .line 2675
    if-eq v0, v2, :cond_1d

    const/16 v2, 0x5d

    .line 2681
    if-eq v0, v2, :cond_1e

    .line 2687
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, -0x1

    .line 2693
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 2694
    return v0

    :cond_1c
    const/16 v0, 0x22

    .line 2670
    if-ne v1, v0, :cond_1b

    .line 2671
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    goto :goto_c

    .line 2676
    :cond_1d
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2677
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v0, 0x5

    .line 2678
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v0, 0x10

    .line 2679
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const/4 v0, 0x0

    .line 2680
    return v0

    .line 2682
    :cond_1e
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2683
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v0, 0x5

    .line 2684
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v0, 0xf

    .line 2685
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const/4 v0, 0x0

    .line 2686
    return v0

    .line 2688
    :cond_1f
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v1, v2

    .line 2689
    goto :goto_c

    .line 2701
    :cond_20
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2702
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v1, 0x3

    .line 2703
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v1, 0x10

    .line 2704
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2705
    return v0
.end method

.method public final scanHex()V
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 4884
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x78

    if-ne v0, v1, :cond_1

    .line 4887
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4888
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v3, :cond_2

    .line 4892
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 4893
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/4 v0, 0x0

    .line 4896
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    const/16 v2, 0x30

    .line 4897
    if-ge v1, v2, :cond_3

    :cond_0
    const/16 v2, 0x41

    if-ge v1, v2, :cond_5

    .line 4900
    :goto_1
    if-eq v1, v3, :cond_6

    .line 4905
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "illegal state. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4885
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "illegal state. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4889
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "illegal state. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/16 v2, 0x39

    .line 4897
    if-gt v1, v2, :cond_0

    .line 4898
    :cond_4
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4895
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/16 v2, 0x46

    .line 4897
    if-le v1, v2, :cond_4

    goto :goto_1

    .line 4901
    :cond_6
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4902
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0x1a

    .line 4908
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4909
    return-void
.end method

.method public final scanIdent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4589
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 4590
    iput-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 4593
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4595
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4596
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4600
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "null"

    .line 4602
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "new"

    .line 4604
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "true"

    .line 4606
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "false"

    .line 4608
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "undefined"

    .line 4610
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "Set"

    .line 4612
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "TreeSet"

    .line 4614
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x12

    .line 4617
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4619
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x8

    .line 4603
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    :cond_2
    const/16 v0, 0x9

    .line 4605
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x6

    .line 4607
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    :cond_4
    const/4 v0, 0x7

    .line 4609
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    :cond_5
    const/16 v0, 0x17

    .line 4611
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    :cond_6
    const/16 v0, 0x15

    .line 4613
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    :cond_7
    const/16 v0, 0x16

    .line 4615
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0
.end method

.method public scanInt(C)I
    .locals 10

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x5

    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 2029
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2032
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v0, 0x22

    .line 2034
    if-eq v3, v0, :cond_3

    move v0, v1

    .line 2035
    :goto_0
    if-nez v0, :cond_4

    move v4, v2

    :goto_1
    const/16 v5, 0x2d

    .line 2039
    if-eq v3, v5, :cond_0

    move v2, v1

    .line 2040
    :cond_0
    if-nez v2, :cond_5

    move v9, v3

    move v3, v4

    move v4, v9

    :goto_2
    const/16 v5, 0x30

    .line 2045
    if-ge v4, v5, :cond_6

    :cond_1
    const/16 v2, 0x6e

    .line 2062
    if-eq v4, v2, :cond_b

    .line 2094
    :cond_2
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2095
    return v1

    :cond_3
    move v0, v2

    .line 2034
    goto :goto_0

    .line 2036
    :cond_4
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v4, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    goto :goto_1

    .line 2041
    :cond_5
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v4, v3

    move v3, v5

    goto :goto_2

    :cond_6
    const/16 v5, 0x39

    .line 2045
    if-gt v4, v5, :cond_1

    .line 2046
    add-int/lit8 v0, v4, -0x30

    .line 2048
    :goto_3
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v3, v5

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v5, 0x30

    .line 2049
    if-ge v3, v5, :cond_8

    :cond_7
    const/16 v5, 0x2e

    .line 2051
    if-eq v3, v5, :cond_9

    .line 2058
    if-ltz v0, :cond_a

    move v1, v3

    .line 2099
    :goto_4
    if-eq v1, p1, :cond_11

    .line 2106
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_13

    .line 2110
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2111
    if-nez v2, :cond_14

    :goto_5
    return v0

    :cond_8
    const/16 v5, 0x39

    .line 2049
    if-gt v3, v5, :cond_7

    .line 2050
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    move v3, v4

    goto :goto_3

    .line 2052
    :cond_9
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2053
    return v1

    .line 2059
    :cond_a
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2060
    return v1

    .line 2062
    :cond_b
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v4, 0x75

    if-ne v2, v4, :cond_2

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v4, 0x6c

    if-ne v2, v4, :cond_2

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v4, 0x6c

    if-ne v2, v4, :cond_2

    .line 2063
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2065
    add-int/lit8 v2, v3, 0x3

    .line 2066
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2068
    if-nez v0, :cond_d

    :cond_c
    move v0, v2

    move v2, v3

    :goto_6
    const/16 v3, 0x2c

    .line 2073
    if-eq v0, v3, :cond_e

    const/16 v3, 0x5d

    .line 2079
    if-eq v0, v3, :cond_f

    .line 2085
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2091
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2092
    return v1

    :cond_d
    const/16 v0, 0x22

    .line 2068
    if-ne v2, v0, :cond_c

    .line 2069
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    goto :goto_6

    .line 2074
    :cond_e
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2075
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2076
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2077
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2078
    return v1

    .line 2080
    :cond_f
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2081
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2082
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v0, 0xf

    .line 2083
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2084
    return v1

    .line 2086
    :cond_10
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v2, v3

    .line 2087
    goto :goto_6

    .line 2100
    :cond_11
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2101
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v1, 0x3

    .line 2102
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2103
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2104
    if-nez v2, :cond_12

    :goto_7
    return v0

    :cond_12
    neg-int v0, v0

    goto :goto_7

    .line 2107
    :cond_13
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v4, v3

    .line 2108
    goto/16 :goto_4

    .line 2111
    :cond_14
    neg-int v0, v0

    goto/16 :goto_5
.end method

.method public scanLong(C)J
    .locals 13

    .prologue
    const/4 v7, 0x5

    const/4 v2, 0x1

    const/4 v12, -0x1

    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    .line 2291
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2294
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v0, 0x22

    .line 2295
    if-eq v4, v0, :cond_2

    move v0, v1

    .line 2296
    :goto_0
    if-nez v0, :cond_3

    move v6, v2

    :goto_1
    const/16 v3, 0x2d

    .line 2300
    if-eq v4, v3, :cond_4

    move v3, v1

    .line 2301
    :goto_2
    if-nez v3, :cond_5

    :goto_3
    const/16 v5, 0x30

    .line 2306
    if-ge v4, v5, :cond_6

    :cond_0
    const/16 v1, 0x6e

    .line 2324
    if-eq v4, v1, :cond_e

    .line 2356
    :cond_1
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2357
    return-wide v10

    :cond_2
    move v0, v2

    .line 2295
    goto :goto_0

    .line 2297
    :cond_3
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v6, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    goto :goto_1

    :cond_4
    move v3, v2

    .line 2300
    goto :goto_2

    .line 2302
    :cond_5
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    add-int/2addr v4, v6

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    move v6, v5

    goto :goto_3

    :cond_6
    const/16 v5, 0x39

    .line 2306
    if-gt v4, v5, :cond_0

    .line 2307
    add-int/lit8 v4, v4, -0x30

    int-to-long v4, v4

    .line 2309
    :goto_4
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v6, 0x1

    add-int/2addr v6, v8

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    const/16 v8, 0x30

    .line 2310
    if-ge v6, v8, :cond_9

    :cond_7
    const/16 v8, 0x2e

    .line 2312
    if-eq v6, v8, :cond_a

    .line 2319
    cmp-long v8, v4, v10

    if-ltz v8, :cond_b

    move v8, v2

    :goto_5
    if-nez v8, :cond_c

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v8, v4, v8

    if-nez v8, :cond_8

    if-nez v3, :cond_c

    .line 2320
    :cond_8
    :goto_6
    if-eqz v1, :cond_d

    .line 2360
    if-nez v0, :cond_14

    move v0, v6

    .line 2370
    :goto_7
    if-eq v0, p1, :cond_16

    .line 2377
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_18

    .line 2382
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2383
    return-wide v4

    :cond_9
    const/16 v8, 0x39

    .line 2310
    if-gt v6, v8, :cond_7

    const-wide/16 v8, 0xa

    .line 2311
    mul-long/2addr v4, v8

    add-int/lit8 v6, v6, -0x30

    int-to-long v8, v6

    add-long/2addr v4, v8

    move v6, v7

    goto :goto_4

    .line 2313
    :cond_a
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2314
    return-wide v10

    :cond_b
    move v8, v1

    .line 2319
    goto :goto_5

    :cond_c
    move v1, v2

    goto :goto_6

    .line 2321
    :cond_d
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v7, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v0

    .line 2322
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2324
    :cond_e
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v6

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v6

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v6

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1

    .line 2325
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2327
    add-int/lit8 v1, v6, 0x3

    .line 2328
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2330
    if-nez v0, :cond_10

    :cond_f
    move v0, v1

    move v1, v2

    :goto_8
    const/16 v2, 0x2c

    .line 2335
    if-eq v0, v2, :cond_11

    const/16 v2, 0x5d

    .line 2341
    if-eq v0, v2, :cond_12

    .line 2347
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2353
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2354
    return-wide v10

    :cond_10
    const/16 v0, 0x22

    .line 2330
    if-ne v1, v0, :cond_f

    .line 2331
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    goto :goto_8

    .line 2336
    :cond_11
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2337
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2338
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v0, 0x10

    .line 2339
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2340
    return-wide v10

    .line 2342
    :cond_12
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2343
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2344
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v0, 0xf

    .line 2345
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2346
    return-wide v10

    .line 2348
    :cond_13
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v1, v2

    .line 2349
    goto :goto_8

    :cond_14
    const/16 v0, 0x22

    .line 2361
    if-ne v6, v0, :cond_15

    .line 2365
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v7, 0x1

    add-int/2addr v0, v7

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v7, v1

    goto/16 :goto_7

    .line 2362
    :cond_15
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2363
    return-wide v10

    .line 2371
    :cond_16
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2372
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v0, 0x3

    .line 2373
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v0, 0x10

    .line 2374
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2375
    if-nez v3, :cond_17

    :goto_9
    return-wide v4

    :cond_17
    neg-long v4, v4

    goto :goto_9

    .line 2378
    :cond_18
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v7, 0x1

    add-int/2addr v0, v7

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v7, v1

    .line 2379
    goto/16 :goto_7
.end method

.method public final scanNullOrNew()V
    .locals 7

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xc

    const/16 v4, 0xa

    const/16 v3, 0x9

    const/16 v2, 0x8

    .line 4510
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_1

    .line 4513
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4515
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x75

    if-eq v0, v1, :cond_2

    .line 4536
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x65

    if-ne v0, v1, :cond_7

    .line 4539
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4541
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x77

    if-ne v0, v1, :cond_8

    .line 4544
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4546
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-ne v0, v1, :cond_9

    .line 4548
    :cond_0
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4552
    return-void

    .line 4511
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse null or new"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4516
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4517
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_4

    .line 4520
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4522
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_5

    .line 4525
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4527
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-ne v0, v1, :cond_6

    .line 4529
    :cond_3
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4533
    return-void

    .line 4518
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse null"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4523
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse null"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4527
    :cond_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v4, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v6, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v3, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v5, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v2, :cond_3

    .line 4531
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "scan null error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4537
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse new"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4542
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse new"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4546
    :cond_9
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v4, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v6, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v3, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v5, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v2, :cond_0

    .line 4550
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "scan new error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanNumber()V
    .locals 7

    .prologue
    const/16 v6, 0x2d

    const/4 v0, 0x0

    const/16 v5, 0x39

    const/16 v4, 0x30

    const/4 v1, 0x1

    .line 4912
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 4914
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v2, v6, :cond_5

    .line 4920
    :goto_0
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ge v2, v4, :cond_6

    .line 4930
    :cond_0
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_7

    .line 4945
    :goto_1
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v3, 0x4c

    if-eq v2, v3, :cond_a

    .line 4948
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v3, 0x53

    if-eq v2, v3, :cond_b

    .line 4951
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v3, 0x42

    if-eq v2, v3, :cond_c

    .line 4954
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v3, 0x46

    if-eq v2, v3, :cond_d

    .line 4958
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v3, 0x44

    if-eq v2, v3, :cond_e

    .line 4962
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v3, 0x65

    if-ne v2, v3, :cond_f

    .line 4963
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4964
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4966
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_10

    .line 4967
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4968
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4972
    :goto_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ge v0, v4, :cond_11

    .line 4980
    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x44

    if-ne v0, v2, :cond_12

    .line 4981
    :cond_4
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4982
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    :goto_3
    move v0, v1

    .line 4988
    :goto_4
    if-nez v0, :cond_13

    const/4 v0, 0x2

    .line 4991
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4993
    :goto_5
    return-void

    .line 4915
    :cond_5
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4916
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 4920
    :cond_6
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-gt v2, v5, :cond_0

    .line 4921
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4925
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 4931
    :cond_7
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4932
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4936
    :goto_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ge v0, v4, :cond_9

    :cond_8
    move v0, v1

    goto :goto_1

    :cond_9
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-gt v0, v5, :cond_8

    .line 4937
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4941
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_6

    .line 4946
    :cond_a
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4947
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_4

    .line 4949
    :cond_b
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4950
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_4

    .line 4952
    :cond_c
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4953
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_4

    .line 4955
    :cond_d
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4956
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move v0, v1

    .line 4957
    goto :goto_4

    .line 4959
    :cond_e
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4960
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move v0, v1

    .line 4961
    goto :goto_4

    .line 4962
    :cond_f
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v3, 0x45

    if-eq v2, v3, :cond_1

    goto :goto_4

    .line 4966
    :cond_10
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v6, :cond_2

    goto/16 :goto_2

    .line 4972
    :cond_11
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-gt v0, v5, :cond_3

    .line 4973
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4977
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_2

    .line 4980
    :cond_12
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x46

    if-eq v0, v2, :cond_4

    goto/16 :goto_3

    :cond_13
    const/4 v0, 0x3

    .line 4989
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_5
.end method

.method public scanString(C)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v10, 0x3

    const/4 v4, 0x0

    const/16 v9, 0x22

    const/4 v3, 0x0

    const/4 v8, -0x1

    .line 1288
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1291
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v1, 0x1

    add-int/lit8 v0, v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v2, 0x6e

    .line 1293
    if-eq v0, v2, :cond_0

    move v4, v1

    .line 1317
    :goto_0
    if-eq v0, v9, :cond_4

    .line 1351
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1355
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1357
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1294
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x75

    if-eq v0, v1, :cond_2

    .line 1298
    :cond_1
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1299
    return-object v4

    .line 1294
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_1

    .line 1296
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1302
    if-eq v0, p1, :cond_3

    .line 1308
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1309
    return-object v4

    .line 1303
    :cond_3
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1304
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1305
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1306
    return-object v4

    .line 1318
    :cond_4
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v5, v0, v4

    .line 1319
    invoke-virtual {p0, v9, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v0

    .line 1320
    if-eq v0, v8, :cond_5

    .line 1324
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    sub-int v2, v0, v5

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    .line 1325
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v8, :cond_6

    move-object v11, v1

    move v1, v0

    move-object v0, v11

    .line 1347
    :goto_1
    sub-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v4

    .line 1348
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1362
    :goto_2
    if-eq v1, p1, :cond_b

    .line 1367
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1371
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1372
    return-object v0

    .line 1321
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "unclosed str"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1328
    :cond_6
    :goto_3
    add-int/lit8 v1, v0, -0x1

    move v2, v3

    :goto_4
    if-gez v1, :cond_8

    .line 1335
    :cond_7
    rem-int/lit8 v1, v2, 0x2

    if-eqz v1, :cond_9

    .line 1338
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v0

    goto :goto_3

    .line 1329
    :cond_8
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_7

    .line 1330
    add-int/lit8 v2, v2, 0x1

    .line 1328
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 1341
    :cond_9
    sub-int v1, v0, v5

    .line 1342
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v2

    .line 1344
    invoke-static {v2, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    move v1, v0

    move-object v0, v11

    goto :goto_1

    .line 1352
    :cond_a
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v4, v1

    .line 1353
    goto/16 :goto_0

    .line 1363
    :cond_b
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1364
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1365
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1366
    return-object v0

    .line 1368
    :cond_c
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v2, v3

    .line 1369
    goto :goto_2
.end method

.method public final scanString()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 876
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 877
    iput-boolean v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 880
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v0

    const/16 v1, 0x22

    .line 882
    if-eq v0, v1, :cond_8

    const/16 v1, 0x1a

    .line 886
    if-eq v0, v1, :cond_0

    const/16 v1, 0x5c

    .line 894
    if-eq v0, v1, :cond_2

    .line 994
    iget-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-eqz v1, :cond_6

    .line 999
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v2, v2

    if-eq v1, v2, :cond_7

    .line 1002
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    int-to-char v0, v0

    aput-char v0, v1, v2

    goto :goto_0

    .line 887
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 891
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unclosed string : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 888
    :cond_1
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 895
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-eqz v0, :cond_3

    .line 913
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v0

    .line 915
    packed-switch v0, :pswitch_data_0

    .line 988
    :pswitch_0
    int-to-char v1, v0

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 989
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unclosed string : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 896
    :cond_3
    iput-boolean v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 898
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 908
    :goto_2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->copyTo(II[C)V

    goto :goto_1

    .line 899
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 900
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    if-gt v1, v0, :cond_5

    .line 903
    :goto_3
    new-array v0, v0, [C

    .line 904
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v2, v2

    invoke-static {v1, v6, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 905
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    goto :goto_2

    .line 901
    :cond_5
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto :goto_3

    .line 917
    :pswitch_1
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 920
    :pswitch_2
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 923
    :pswitch_3
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 926
    :pswitch_4
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 929
    :pswitch_5
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 932
    :pswitch_6
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 935
    :pswitch_7
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 938
    :pswitch_8
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 941
    :pswitch_9
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 944
    :pswitch_a
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 947
    :pswitch_b
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 950
    :pswitch_c
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 954
    :pswitch_d
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 957
    :pswitch_e
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 960
    :pswitch_f
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 963
    :pswitch_10
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 966
    :pswitch_11
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 969
    :pswitch_12
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 972
    :pswitch_13
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v0

    .line 973
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 975
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v0, v2, v0

    mul-int/lit8 v0, v0, 0x10

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v1, v2, v1

    add-int/2addr v0, v1

    .line 976
    int-to-char v0, v0

    .line 977
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 980
    :pswitch_14
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v0

    .line 981
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 982
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v2

    .line 983
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v3

    .line 984
    new-instance v4, Ljava/lang/String;

    new-array v5, v8, [C

    int-to-char v0, v0

    aput-char v0, v5, v6

    int-to-char v0, v1

    aput-char v0, v5, v7

    int-to-char v0, v2

    aput-char v0, v5, v9

    int-to-char v0, v3

    aput-char v0, v5, v10

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    const/16 v0, 0x10

    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 985
    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 995
    :cond_6
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto/16 :goto_0

    .line 1000
    :cond_7
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 1006
    :cond_8
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1007
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1008
    return-void

    .line 915
    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_a
        :pswitch_14
        :pswitch_c
        :pswitch_0
        :pswitch_13
    .end packed-switch
.end method

.method public scanStringArray(Ljava/util/Collection;C)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;C)V"
        }
    .end annotation

    .prologue
    const/16 v10, 0x5c

    const/16 v9, 0x22

    const/16 v8, 0x6c

    const/4 v3, 0x0

    const/4 v7, -0x1

    .line 1685
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1688
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x6e

    .line 1690
    if-eq v0, v1, :cond_3

    :cond_0
    const/16 v1, 0x5b

    .line 1702
    if-ne v0, v1, :cond_4

    .line 1707
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v1, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v4, v1

    :goto_0
    const/16 v1, 0x6e

    .line 1710
    if-eq v0, v1, :cond_5

    :cond_1
    const/16 v1, 0x5d

    .line 1717
    if-eq v0, v1, :cond_6

    .line 1720
    :cond_2
    if-ne v0, v9, :cond_7

    .line 1724
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v5, v0, v4

    .line 1725
    invoke-virtual {p0, v9, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v0

    .line 1726
    if-eq v0, v7, :cond_8

    .line 1730
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    sub-int v2, v0, v5

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 1731
    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v7, :cond_9

    move-object v11, v1

    move v1, v0

    move-object v0, v11

    .line 1753
    :goto_1
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v4

    .line 1754
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1755
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v0, v1

    :goto_2
    const/16 v1, 0x2c

    .line 1758
    if-eq v0, v1, :cond_d

    const/16 v1, 0x5d

    .line 1763
    if-eq v0, v1, :cond_e

    .line 1768
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1769
    return-void

    .line 1690
    :cond_3
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    .line 1691
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 1692
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    .line 1693
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x3

    .line 1694
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, p2, :cond_0

    .line 1696
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1697
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v0, 0x5

    .line 1698
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1699
    return-void

    .line 1703
    :cond_4
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1704
    return-void

    .line 1710
    :cond_5
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    .line 1711
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x1

    .line 1712
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x2

    .line 1713
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_1

    .line 1714
    add-int/lit8 v0, v4, 0x3

    .line 1715
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/4 v2, 0x0

    .line 1716
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v2, v1

    goto/16 :goto_2

    .line 1717
    :cond_6
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 1718
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1772
    :goto_3
    if-eq v0, p2, :cond_f

    .line 1778
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1779
    return-void

    .line 1721
    :cond_7
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1722
    return-void

    .line 1727
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "unclosed str"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1734
    :cond_9
    :goto_4
    add-int/lit8 v1, v0, -0x1

    move v2, v3

    :goto_5
    if-gez v1, :cond_b

    .line 1741
    :cond_a
    rem-int/lit8 v1, v2, 0x2

    if-eqz v1, :cond_c

    .line 1744
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v0

    goto :goto_4

    .line 1735
    :cond_b
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    if-ne v6, v10, :cond_a

    .line 1736
    add-int/lit8 v2, v2, 0x1

    .line 1734
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 1747
    :cond_c
    sub-int v1, v0, v5

    .line 1748
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    invoke-virtual {p0, v2, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v2

    .line 1750
    invoke-static {v2, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    move v1, v0

    move-object v0, v11

    goto/16 :goto_1

    .line 1759
    :cond_d
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v4, v1

    .line 1760
    goto/16 :goto_0

    .line 1764
    :cond_e
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    goto :goto_3

    .line 1773
    :cond_f
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1774
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v0, 0x3

    .line 1775
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1776
    return-void
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    const/16 v1, 0x22

    const/4 v2, 0x0

    .line 595
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 597
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v1, :cond_0

    .line 601
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v3, :cond_1

    .line 609
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_3

    .line 615
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_4

    .line 621
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_5

    .line 626
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 630
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 598
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 602
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 606
    invoke-virtual {p0, p1, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 603
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xd

    .line 611
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 612
    return-object v2

    .line 616
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0x10

    .line 617
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 618
    return-object v2

    :cond_5
    const/16 v0, 0x14

    .line 622
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 623
    return-object v2

    .line 627
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x4

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 640
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 641
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move v0, v1

    move v2, v1

    .line 645
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    .line 647
    if-eq v4, p2, :cond_7

    const/16 v5, 0x1a

    .line 651
    if-eq v4, v5, :cond_0

    const/16 v5, 0x5c

    .line 655
    if-eq v4, v5, :cond_1

    .line 775
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    .line 777
    if-eqz v0, :cond_5

    .line 782
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v6, v6

    if-eq v5, v6, :cond_6

    .line 785
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    int-to-char v4, v4

    aput-char v4, v5, v6

    goto :goto_0

    .line 652
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "unclosed.str"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    :cond_1
    if-eqz v0, :cond_2

    .line 674
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    .line 676
    packed-switch v4, :pswitch_data_0

    .line 769
    :pswitch_0
    int-to-char v0, v4

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 770
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "unclosed.str.lit"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 671
    :goto_2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p0, v0, v4, v1, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->arrayCopy(I[CII)V

    move v0, v3

    goto :goto_1

    .line 660
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 661
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    if-gt v4, v0, :cond_4

    .line 664
    :goto_3
    new-array v0, v0, [C

    .line 665
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v5, v5

    invoke-static {v4, v1, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 666
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    goto :goto_2

    .line 662
    :cond_4
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto :goto_3

    .line 678
    :pswitch_1
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    .line 679
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 682
    :pswitch_2
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    .line 683
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 686
    :pswitch_3
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    .line 687
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 690
    :pswitch_4
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    .line 691
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 694
    :pswitch_5
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    .line 695
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 698
    :pswitch_6
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    .line 699
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 702
    :pswitch_7
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    .line 703
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 706
    :pswitch_8
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    .line 707
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 710
    :pswitch_9
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x8

    .line 711
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 714
    :pswitch_a
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x9

    .line 715
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 718
    :pswitch_b
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0xa

    .line 719
    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 722
    :pswitch_c
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0xb

    .line 723
    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 727
    :pswitch_d
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0xc

    .line 728
    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 731
    :pswitch_e
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0xd

    .line 732
    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 735
    :pswitch_f
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x22

    .line 736
    const/16 v4, 0x22

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 739
    :pswitch_10
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x27

    .line 740
    const/16 v4, 0x27

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 743
    :pswitch_11
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x2f

    .line 744
    const/16 v4, 0x2f

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 747
    :pswitch_12
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x5c

    .line 748
    const/16 v4, 0x5c

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 751
    :pswitch_13
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    int-to-char v5, v4

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 752
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v5

    int-to-char v6, v5

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 754
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v4, v6, v4

    mul-int/lit8 v4, v4, 0x10

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v5, v6, v5

    add-int/2addr v4, v5

    .line 755
    int-to-char v4, v4

    .line 756
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    .line 757
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 760
    :pswitch_14
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    .line 761
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v5

    .line 762
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v6

    .line 763
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v7

    .line 764
    new-instance v8, Ljava/lang/String;

    new-array v9, v10, [C

    int-to-char v4, v4

    aput-char v4, v9, v1

    int-to-char v4, v5

    aput-char v4, v9, v3

    int-to-char v4, v6

    aput-char v4, v9, v11

    const/4 v4, 0x3

    int-to-char v5, v7

    aput-char v5, v9, v4

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    const/16 v4, 0x10

    invoke-static {v8, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 765
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    .line 766
    int-to-char v4, v4

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 778
    :cond_5
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto/16 :goto_0

    .line 783
    :cond_6
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 789
    :cond_7
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 792
    if-eqz v0, :cond_8

    .line 802
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    .line 805
    :goto_4
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 806
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 808
    return-object v0

    .line 795
    :cond_8
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_9

    .line 798
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v0, v0, 0x1

    .line 800
    :goto_5
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p0, v0, v3, v2, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_9
    move v0, v1

    .line 796
    goto :goto_5

    .line 676
    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_a
        :pswitch_14
        :pswitch_c
        :pswitch_0
        :pswitch_13
    .end packed-switch
.end method

.method public final scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v7, 0x33c587

    const/16 v6, 0x6c

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 820
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-eq v2, v1, :cond_3

    .line 823
    :cond_0
    :goto_0
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    .line 824
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 826
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    array-length v5, v3

    if-lt v4, v5, :cond_4

    :cond_1
    move v0, v1

    .line 827
    :goto_1
    if-eqz v0, :cond_5

    .line 832
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    .line 836
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 837
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move v0, v2

    .line 840
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 842
    array-length v2, v3

    if-lt v1, v2, :cond_6

    .line 848
    :cond_2
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 850
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto :goto_2

    .line 820
    :cond_3
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    if-ne v2, v1, :cond_0

    .line 821
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    goto :goto_0

    .line 826
    :cond_4
    aget-boolean v3, v3, v2

    if-nez v3, :cond_1

    goto :goto_1

    .line 828
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "illegal identifier : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 829
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 843
    :cond_6
    aget-boolean v2, v3, v1

    if-nez v2, :cond_2

    .line 854
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x12

    .line 855
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 858
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_8

    .line 865
    :cond_7
    if-eqz p1, :cond_9

    .line 869
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 858
    :cond_8
    if-ne v0, v7, :cond_7

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_7

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_7

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_7

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x3

    .line 859
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_7

    .line 860
    return-object v8

    .line 866
    :cond_9
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public scanSymbolWithSeperator(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x22

    const/4 v6, 0x3

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1458
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1461
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v1, 0x1

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x6e

    .line 1463
    if-eq v2, v3, :cond_0

    .line 1483
    if-ne v2, v7, :cond_4

    .line 1492
    :goto_0
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1493
    if-eq v1, v7, :cond_5

    .line 1503
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    const/16 v3, 0x5c

    .line 1505
    if-eq v1, v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 1464
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x75

    if-eq v0, v1, :cond_2

    .line 1468
    :cond_1
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1469
    return-object v5

    .line 1464
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_1

    .line 1466
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1472
    if-eq v0, p2, :cond_3

    .line 1478
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1479
    return-object v5

    .line 1473
    :cond_3
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1474
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1475
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1476
    return-object v5

    .line 1484
    :cond_4
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1485
    return-object v5

    .line 1496
    :cond_5
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 1497
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    .line 1498
    invoke-virtual {p0, v1, v3, v0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v3

    .line 1499
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1512
    :goto_1
    if-eq v0, p2, :cond_7

    .line 1518
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1523
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1524
    return-object v3

    .line 1506
    :cond_6
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1507
    return-object v5

    .line 1513
    :cond_7
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1514
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1515
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1516
    return-object v3

    .line 1519
    :cond_8
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v1, v2

    .line 1520
    goto :goto_1
.end method

.method public final scanTrue()V
    .locals 2

    .prologue
    .line 4481
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x74

    if-ne v0, v1, :cond_1

    .line 4484
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4486
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x72

    if-ne v0, v1, :cond_2

    .line 4489
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4491
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x75

    if-ne v0, v1, :cond_3

    .line 4494
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4496
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x65

    if-ne v0, v1, :cond_4

    .line 4499
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4501
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    :cond_0
    const/4 v0, 0x6

    .line 4503
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4507
    return-void

    .line 4482
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4487
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4492
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4497
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4501
    :cond_5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    .line 4505
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanType(Ljava/lang/String;)I
    .locals 9

    .prologue
    const/16 v8, 0x7d

    const/16 v7, 0x2c

    const/16 v6, 0x10

    const/4 v0, 0x0

    const/4 v5, -0x1

    .line 1107
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1109
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1113
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    array-length v2, v2

    add-int/2addr v1, v2

    .line 1115
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1116
    :goto_0
    if-lt v0, v2, :cond_1

    .line 1121
    add-int v0, v1, v2

    .line 1122
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_3

    .line 1126
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1128
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v1, v7, :cond_4

    .line 1133
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v1, v8, :cond_5

    .line 1152
    :goto_1
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1153
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_0
    const/4 v0, -0x2

    .line 1110
    return v0

    .line 1117
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v4, v1, v0

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1118
    :cond_2
    return v5

    .line 1123
    :cond_3
    return v5

    .line 1129
    :cond_4
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1130
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1131
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const/4 v0, 0x3

    .line 1132
    return v0

    .line 1134
    :cond_5
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1135
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v1, v7, :cond_6

    .line 1138
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_7

    .line 1141
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v1, v8, :cond_8

    .line 1144
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_9

    .line 1147
    return v5

    .line 1136
    :cond_6
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1137
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_2
    const/4 v1, 0x4

    .line 1149
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_1

    :cond_7
    const/16 v1, 0xf

    .line 1139
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1140
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    :cond_8
    const/16 v1, 0xd

    .line 1142
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1143
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    :cond_9
    const/16 v1, 0x14

    .line 1145
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_2
.end method

.method public scanUUID(C)Ljava/util/UUID;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 4278
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4283
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    .line 4286
    if-eq v0, v1, :cond_1

    const/16 v1, 0x6e

    .line 4431
    if-eq v0, v1, :cond_36

    :cond_0
    const/4 v0, -0x1

    .line 4438
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 4439
    return-object v0

    .line 4287
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x1

    .line 4288
    const/16 v1, 0x22

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v6

    const/4 v0, -0x1

    .line 4289
    if-eq v6, v0, :cond_2

    .line 4293
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v0, 0x1

    .line 4294
    sub-int v0, v6, v7

    const/16 v1, 0x24

    .line 4295
    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    .line 4386
    if-eq v0, v1, :cond_27

    const/4 v0, -0x1

    .line 4428
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 4429
    return-object v0

    .line 4290
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "unclosed str"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0x8

    .line 4297
    if-lt v1, v0, :cond_4

    const/16 v0, 0x9

    move v1, v0

    :goto_1
    const/16 v0, 0xd

    .line 4314
    if-lt v1, v0, :cond_b

    const/16 v0, 0xe

    move v1, v0

    :goto_2
    const/16 v0, 0x12

    .line 4331
    if-lt v1, v0, :cond_12

    const/16 v0, 0x13

    move v1, v0

    :goto_3
    const/16 v0, 0x17

    .line 4348
    if-lt v1, v0, :cond_19

    const/16 v0, 0x18

    move v1, v0

    :goto_4
    const/16 v0, 0x24

    .line 4365
    if-lt v1, v0, :cond_20

    .line 4382
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 4384
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    sub-int v1, v6, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 4385
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    :goto_5
    const/16 v3, 0x2c

    .line 4442
    if-eq v1, v3, :cond_37

    const/16 v3, 0x5d

    .line 4449
    if-eq v1, v3, :cond_38

    const/4 v0, -0x1

    .line 4473
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 4474
    return-object v0

    .line 4298
    :cond_4
    add-int v0, v7, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v8, 0x30

    .line 4300
    if-ge v0, v8, :cond_8

    :cond_5
    const/16 v8, 0x61

    .line 4302
    if-ge v0, v8, :cond_9

    :cond_6
    const/16 v8, 0x41

    .line 4304
    if-ge v0, v8, :cond_a

    :cond_7
    const/4 v0, -0x2

    .line 4307
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 4308
    return-object v0

    :cond_8
    const/16 v8, 0x39

    .line 4300
    if-gt v0, v8, :cond_5

    .line 4301
    add-int/lit8 v0, v0, -0x30

    :goto_6
    const/4 v8, 0x4

    .line 4311
    shl-long/2addr v4, v8

    .line 4312
    int-to-long v8, v0

    or-long/2addr v4, v8

    .line 4297
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_9
    const/16 v8, 0x66

    .line 4302
    if-gt v0, v8, :cond_6

    .line 4303
    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_6

    :cond_a
    const/16 v8, 0x46

    .line 4304
    if-gt v0, v8, :cond_7

    .line 4305
    add-int/lit8 v0, v0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_6

    .line 4315
    :cond_b
    add-int v0, v7, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v8, 0x30

    .line 4317
    if-ge v0, v8, :cond_f

    :cond_c
    const/16 v8, 0x61

    .line 4319
    if-ge v0, v8, :cond_10

    :cond_d
    const/16 v8, 0x41

    .line 4321
    if-ge v0, v8, :cond_11

    :cond_e
    const/4 v0, -0x2

    .line 4324
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 4325
    return-object v0

    :cond_f
    const/16 v8, 0x39

    .line 4317
    if-gt v0, v8, :cond_c

    .line 4318
    add-int/lit8 v0, v0, -0x30

    :goto_7
    const/4 v8, 0x4

    .line 4328
    shl-long/2addr v4, v8

    .line 4329
    int-to-long v8, v0

    or-long/2addr v4, v8

    .line 4314
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_10
    const/16 v8, 0x66

    .line 4319
    if-gt v0, v8, :cond_d

    .line 4320
    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_7

    :cond_11
    const/16 v8, 0x46

    .line 4321
    if-gt v0, v8, :cond_e

    .line 4322
    add-int/lit8 v0, v0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_7

    .line 4332
    :cond_12
    add-int v0, v7, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v8, 0x30

    .line 4334
    if-ge v0, v8, :cond_16

    :cond_13
    const/16 v8, 0x61

    .line 4336
    if-ge v0, v8, :cond_17

    :cond_14
    const/16 v8, 0x41

    .line 4338
    if-ge v0, v8, :cond_18

    :cond_15
    const/4 v0, -0x2

    .line 4341
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 4342
    return-object v0

    :cond_16
    const/16 v8, 0x39

    .line 4334
    if-gt v0, v8, :cond_13

    .line 4335
    add-int/lit8 v0, v0, -0x30

    :goto_8
    const/4 v8, 0x4

    .line 4345
    shl-long/2addr v4, v8

    .line 4346
    int-to-long v8, v0

    or-long/2addr v4, v8

    .line 4331
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    :cond_17
    const/16 v8, 0x66

    .line 4336
    if-gt v0, v8, :cond_14

    .line 4337
    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_8

    :cond_18
    const/16 v8, 0x46

    .line 4338
    if-gt v0, v8, :cond_15

    .line 4339
    add-int/lit8 v0, v0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_8

    .line 4349
    :cond_19
    add-int v0, v7, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v8, 0x30

    .line 4351
    if-ge v0, v8, :cond_1d

    :cond_1a
    const/16 v8, 0x61

    .line 4353
    if-ge v0, v8, :cond_1e

    :cond_1b
    const/16 v8, 0x41

    .line 4355
    if-ge v0, v8, :cond_1f

    :cond_1c
    const/4 v0, -0x2

    .line 4358
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 4359
    return-object v0

    :cond_1d
    const/16 v8, 0x39

    .line 4351
    if-gt v0, v8, :cond_1a

    .line 4352
    add-int/lit8 v0, v0, -0x30

    :goto_9
    const/4 v8, 0x4

    .line 4362
    shl-long/2addr v2, v8

    .line 4363
    int-to-long v8, v0

    or-long/2addr v2, v8

    .line 4348
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    :cond_1e
    const/16 v8, 0x66

    .line 4353
    if-gt v0, v8, :cond_1b

    .line 4354
    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_9

    :cond_1f
    const/16 v8, 0x46

    .line 4355
    if-gt v0, v8, :cond_1c

    .line 4356
    add-int/lit8 v0, v0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_9

    .line 4366
    :cond_20
    add-int v0, v7, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v8, 0x30

    .line 4368
    if-ge v0, v8, :cond_24

    :cond_21
    const/16 v8, 0x61

    .line 4370
    if-ge v0, v8, :cond_25

    :cond_22
    const/16 v8, 0x41

    .line 4372
    if-ge v0, v8, :cond_26

    :cond_23
    const/4 v0, -0x2

    .line 4375
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 4376
    return-object v0

    :cond_24
    const/16 v8, 0x39

    .line 4368
    if-gt v0, v8, :cond_21

    .line 4369
    add-int/lit8 v0, v0, -0x30

    :goto_a
    const/4 v8, 0x4

    .line 4379
    shl-long/2addr v2, v8

    .line 4380
    int-to-long v8, v0

    or-long/2addr v2, v8

    .line 4365
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_4

    :cond_25
    const/16 v8, 0x66

    .line 4370
    if-gt v0, v8, :cond_22

    .line 4371
    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    :cond_26
    const/16 v8, 0x46

    .line 4372
    if-gt v0, v8, :cond_23

    .line 4373
    add-int/lit8 v0, v0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    :cond_27
    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    const/16 v0, 0x10

    .line 4388
    if-lt v1, v0, :cond_28

    const/16 v0, 0x10

    move v1, v0

    :goto_c
    const/16 v0, 0x20

    .line 4405
    if-lt v1, v0, :cond_2f

    .line 4423
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 4425
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    sub-int v1, v6, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 4426
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    goto/16 :goto_5

    .line 4389
    :cond_28
    add-int v0, v7, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v8, 0x30

    .line 4391
    if-ge v0, v8, :cond_2c

    :cond_29
    const/16 v8, 0x61

    .line 4393
    if-ge v0, v8, :cond_2d

    :cond_2a
    const/16 v8, 0x41

    .line 4395
    if-ge v0, v8, :cond_2e

    :cond_2b
    const/4 v0, -0x2

    .line 4398
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 4399
    return-object v0

    :cond_2c
    const/16 v8, 0x39

    .line 4391
    if-gt v0, v8, :cond_29

    .line 4392
    add-int/lit8 v0, v0, -0x30

    :goto_d
    const/4 v8, 0x4

    .line 4402
    shl-long/2addr v4, v8

    .line 4403
    int-to-long v8, v0

    or-long/2addr v4, v8

    .line 4388
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_2d
    const/16 v8, 0x66

    .line 4393
    if-gt v0, v8, :cond_2a

    .line 4394
    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_d

    :cond_2e
    const/16 v8, 0x46

    .line 4395
    if-gt v0, v8, :cond_2b

    .line 4396
    add-int/lit8 v0, v0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_d

    .line 4406
    :cond_2f
    add-int v0, v7, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v8, 0x30

    .line 4408
    if-ge v0, v8, :cond_33

    :cond_30
    const/16 v8, 0x61

    .line 4410
    if-ge v0, v8, :cond_34

    :cond_31
    const/16 v8, 0x41

    .line 4412
    if-ge v0, v8, :cond_35

    :cond_32
    const/4 v0, -0x2

    .line 4415
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 4416
    return-object v0

    :cond_33
    const/16 v8, 0x39

    .line 4408
    if-gt v0, v8, :cond_30

    .line 4409
    add-int/lit8 v0, v0, -0x30

    :goto_e
    const/4 v8, 0x4

    .line 4419
    shl-long/2addr v2, v8

    .line 4420
    int-to-long v8, v0

    or-long/2addr v2, v8

    .line 4405
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_34
    const/16 v8, 0x66

    .line 4410
    if-gt v0, v8, :cond_31

    .line 4411
    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_e

    :cond_35
    const/16 v8, 0x46

    .line 4412
    if-gt v0, v8, :cond_32

    .line 4413
    add-int/lit8 v0, v0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_e

    .line 4431
    :cond_36
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x1

    .line 4432
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x75

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x2

    .line 4433
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x3

    .line 4434
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4436
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v2, 0x5

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    goto/16 :goto_5

    .line 4443
    :cond_37
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4444
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v1, 0x3

    .line 4445
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4446
    return-object v0

    .line 4450
    :cond_38
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    .line 4451
    if-eq v1, v2, :cond_39

    const/16 v2, 0x5d

    .line 4455
    if-eq v1, v2, :cond_3a

    const/16 v2, 0x7d

    .line 4459
    if-eq v1, v2, :cond_3b

    const/16 v2, 0x1a

    .line 4463
    if-eq v1, v2, :cond_3c

    const/4 v0, -0x1

    .line 4468
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v0, 0x0

    .line 4469
    return-object v0

    :cond_39
    const/16 v1, 0x10

    .line 4452
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4453
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4454
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_f
    const/4 v1, 0x4

    .line 4471
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4477
    return-object v0

    :cond_3a
    const/16 v1, 0xf

    .line 4456
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4457
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4458
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_f

    :cond_3b
    const/16 v1, 0xd

    .line 4460
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4461
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4462
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_f

    :cond_3c
    const/16 v1, 0x14

    .line 4464
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4465
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4466
    const/16 v1, 0x1a

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_f
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    .line 1028
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    .line 1020
    return-void
.end method

.method public setToken(I)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 98
    return-void
.end method

.method protected skipComment()V
    .locals 4

    .prologue
    const/16 v3, 0x2f

    const/16 v1, 0x2a

    const/16 v2, 0x1a

    .line 563
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 564
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v3, :cond_0

    .line 574
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v1, :cond_2

    .line 590
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "invalid comment"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 567
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 570
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v2, :cond_0

    .line 571
    return-void

    .line 568
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 569
    return-void

    .line 575
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 577
    :cond_3
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v2, :cond_4

    .line 592
    return-void

    .line 578
    :cond_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v1, :cond_5

    .line 587
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 579
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 580
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v3, :cond_3

    .line 581
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 582
    return-void
.end method

.method public final skipWhitespace()V
    .locals 3

    .prologue
    const/16 v2, 0x2f

    .line 4734
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-le v0, v2, :cond_1

    .line 4748
    :cond_0
    return-void

    .line 4735
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 4736
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 4735
    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 4738
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v2, :cond_0

    .line 4739
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipComment()V

    goto :goto_0
.end method

.method public final stringDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public abstract stringVal()Ljava/lang/String;
.end method

.method public abstract subString(II)Ljava/lang/String;
.end method

.method protected abstract sub_chars(II)[C
.end method

.method public final token()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v0
.end method

.method public final tokenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
