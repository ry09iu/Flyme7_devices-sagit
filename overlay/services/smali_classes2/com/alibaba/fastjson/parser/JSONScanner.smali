.class public final Lcom/alibaba/fastjson/parser/JSONScanner;
.super Lcom/alibaba/fastjson/parser/JSONLexerBase;
.source "JSONScanner.java"


# instance fields
.field private final len:I

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;-><init>(I)V

    .line 50
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 55
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const v1, 0xfeff

    if-eq v0, v1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_0
.end method

.method public constructor <init>([CI)V
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>([CII)V

    .line 77
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    .line 81
    return-void
.end method

.method static charArrayCompare(Ljava/lang/String;I[C)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 88
    array-length v2, p2

    .line 89
    add-int v0, v2, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v0, v3, :cond_0

    move v0, v1

    .line 93
    :goto_0
    if-lt v0, v2, :cond_1

    .line 99
    const/4 v0, 0x1

    return v0

    .line 90
    :cond_0
    return v1

    .line 94
    :cond_1
    aget-char v3, p2, v0

    add-int v4, p1, v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_2

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_2
    return v1
.end method

.method static checkDate(CCCCCCII)Z
    .locals 6

    .prologue
    const/16 v5, 0x32

    const/16 v4, 0x39

    const/16 v3, 0x31

    const/16 v2, 0x30

    const/4 v1, 0x0

    .line 714
    if-ge p0, v3, :cond_1

    .line 715
    :cond_0
    return v1

    :cond_1
    const/16 v0, 0x33

    .line 714
    if-gt p0, v0, :cond_0

    .line 717
    if-ge p1, v2, :cond_3

    .line 718
    :cond_2
    return v1

    .line 717
    :cond_3
    if-gt p1, v4, :cond_2

    .line 720
    if-ge p2, v2, :cond_5

    .line 721
    :cond_4
    return v1

    .line 720
    :cond_5
    if-gt p2, v4, :cond_4

    .line 723
    if-ge p3, v2, :cond_7

    .line 724
    :cond_6
    return v1

    .line 723
    :cond_7
    if-gt p3, v4, :cond_6

    .line 727
    if-eq p4, v2, :cond_8

    .line 731
    if-eq p4, v3, :cond_e

    .line 736
    return v1

    .line 728
    :cond_8
    if-ge p5, v3, :cond_a

    .line 729
    :cond_9
    return v1

    .line 728
    :cond_a
    if-gt p5, v4, :cond_9

    .line 739
    :cond_b
    if-eq p6, v2, :cond_f

    .line 743
    if-ne p6, v3, :cond_13

    .line 744
    :cond_c
    if-ge p7, v2, :cond_14

    .line 745
    :cond_d
    return v1

    .line 732
    :cond_e
    if-eq p5, v2, :cond_b

    if-eq p5, v3, :cond_b

    if-eq p5, v5, :cond_b

    .line 733
    return v1

    .line 740
    :cond_f
    if-ge p7, v3, :cond_11

    .line 741
    :cond_10
    return v1

    .line 740
    :cond_11
    if-gt p7, v4, :cond_10

    .line 755
    :cond_12
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 743
    :cond_13
    if-eq p6, v5, :cond_c

    const/16 v0, 0x33

    .line 747
    if-eq p6, v0, :cond_15

    .line 752
    return v1

    .line 744
    :cond_14
    if-gt p7, v4, :cond_d

    goto :goto_0

    .line 748
    :cond_15
    if-eq p7, v2, :cond_12

    if-eq p7, v3, :cond_12

    .line 749
    return v1
.end method

.method private checkTime(CCCCCC)Z
    .locals 6

    .prologue
    const/16 v5, 0x36

    const/16 v4, 0x35

    const/16 v3, 0x39

    const/16 v2, 0x30

    const/4 v1, 0x0

    .line 659
    if-eq p1, v2, :cond_0

    const/16 v0, 0x31

    .line 663
    if-eq p1, v0, :cond_4

    const/16 v0, 0x32

    .line 667
    if-eq p1, v0, :cond_7

    .line 672
    return v1

    .line 660
    :cond_0
    if-ge p2, v2, :cond_2

    .line 661
    :cond_1
    return v1

    .line 660
    :cond_2
    if-gt p2, v3, :cond_1

    .line 675
    :goto_0
    if-ge p3, v2, :cond_a

    .line 679
    :cond_3
    if-eq p3, v5, :cond_f

    .line 684
    return v1

    .line 664
    :cond_4
    if-ge p2, v2, :cond_6

    .line 665
    :cond_5
    return v1

    .line 664
    :cond_6
    if-gt p2, v3, :cond_5

    goto :goto_0

    .line 668
    :cond_7
    if-ge p2, v2, :cond_9

    .line 669
    :cond_8
    return v1

    :cond_9
    const/16 v0, 0x34

    .line 668
    if-gt p2, v0, :cond_8

    goto :goto_0

    .line 675
    :cond_a
    if-gt p3, v4, :cond_3

    .line 676
    if-ge p4, v2, :cond_c

    .line 677
    :cond_b
    return v1

    .line 676
    :cond_c
    if-gt p4, v3, :cond_b

    .line 687
    :cond_d
    if-ge p5, v2, :cond_10

    .line 691
    :cond_e
    if-eq p5, v5, :cond_14

    .line 696
    return v1

    .line 680
    :cond_f
    if-eq p4, v2, :cond_d

    .line 681
    return v1

    .line 687
    :cond_10
    if-gt p5, v4, :cond_e

    .line 688
    if-ge p6, v2, :cond_12

    .line 689
    :cond_11
    return v1

    .line 688
    :cond_12
    if-gt p6, v3, :cond_11

    .line 699
    :cond_13
    const/4 v0, 0x1

    return v0

    .line 692
    :cond_14
    if-eq p6, v2, :cond_13

    .line 693
    return v1
.end method

.method private scanISO8601DateIfMatch(ZI)Z
    .locals 22

    .prologue
    const/16 v2, 0x8

    .line 214
    move/from16 v0, p2

    if-lt v0, v2, :cond_6

    .line 218
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v11

    .line 219
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    .line 220
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 221
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 222
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 223
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 224
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 225
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v9

    .line 227
    if-eqz p1, :cond_7

    :cond_0
    const/16 v2, 0x8

    .line 257
    move/from16 v0, p2

    if-ne v0, v2, :cond_c

    .line 261
    :cond_1
    :goto_0
    if-nez p1, :cond_18

    .line 269
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v21

    const/16 v2, 0x2d

    .line 271
    if-eq v6, v2, :cond_19

    :cond_2
    const/4 v2, 0x0

    .line 272
    :goto_1
    if-nez v2, :cond_1a

    :cond_3
    const/4 v3, 0x0

    move/from16 v19, v3

    .line 273
    :goto_2
    if-nez v2, :cond_1b

    :cond_4
    const/4 v2, 0x0

    move/from16 v20, v2

    .line 274
    :goto_3
    if-eqz v20, :cond_1c

    .line 282
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v9

    move v6, v7

    move v3, v10

    move v2, v11

    move v7, v8

    move/from16 v8, v21

    .line 295
    :goto_4
    invoke-static/range {v2 .. v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v10

    if-eqz v10, :cond_1d

    move-object/from16 v10, p0

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    .line 299
    invoke-direct/range {v10 .. v18}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    const/16 v2, 0x8

    .line 302
    move/from16 v0, p2

    if-ne v0, v2, :cond_1e

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 361
    :goto_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v7, 0xb

    invoke-virtual {v6, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 362
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v6, 0xc

    invoke-virtual {v4, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 363
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xe

    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    .line 366
    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 367
    const/4 v2, 0x1

    return v2

    .line 215
    :cond_6
    const/4 v2, 0x0

    return v2

    :cond_7
    const/16 v2, 0xd

    .line 227
    move/from16 v0, p2

    if-le v0, v2, :cond_0

    .line 228
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v2, v2, p2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 229
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v3, v3, p2

    add-int/lit8 v3, v3, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v12, 0x2f

    .line 230
    if-ne v11, v12, :cond_0

    const/16 v12, 0x44

    if-ne v10, v12, :cond_0

    const/16 v12, 0x61

    if-ne v4, v12, :cond_0

    const/16 v12, 0x74

    if-ne v5, v12, :cond_0

    const/16 v12, 0x65

    if-ne v6, v12, :cond_0

    const/16 v12, 0x28

    if-ne v7, v12, :cond_0

    const/16 v12, 0x2f

    if-ne v2, v12, :cond_0

    const/16 v2, 0x29

    if-ne v3, v2, :cond_0

    const/4 v2, -0x1

    const/4 v3, 0x6

    .line 233
    :goto_6
    move/from16 v0, p2

    if-lt v3, v0, :cond_9

    :cond_8
    const/4 v3, -0x1

    .line 241
    if-eq v2, v3, :cond_b

    .line 244
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x6

    .line 245
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v4

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v2

    .line 246
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 248
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->timeZone:Ljava/util/TimeZone;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->locale:Ljava/util/Locale;

    invoke-static {v4, v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, 0x5

    .line 251
    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 252
    const/4 v2, 0x1

    return v2

    .line 234
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v4, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    .line 235
    if-eq v4, v5, :cond_a

    const/16 v5, 0x30

    .line 237
    if-lt v4, v5, :cond_8

    const/16 v5, 0x39

    if-gt v4, v5, :cond_8

    .line 233
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    move v2, v3

    .line 236
    goto :goto_7

    .line 242
    :cond_b
    const/4 v2, 0x0

    return v2

    :cond_c
    const/16 v2, 0xe

    .line 257
    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    const/16 v2, 0x10

    move/from16 v0, p2

    if-eq v0, v2, :cond_16

    :cond_d
    const/16 v2, 0x11

    .line 259
    move/from16 v0, p2

    if-eq v0, v2, :cond_17

    :goto_8
    const/16 v2, 0x9

    .line 370
    move/from16 v0, p2

    if-lt v0, v2, :cond_2e

    .line 374
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 375
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v12, 0xa

    const/16 v13, 0x2d

    .line 379
    if-eq v6, v13, :cond_2f

    :cond_e
    const/16 v13, 0x2f

    if-eq v6, v13, :cond_31

    :goto_9
    const/16 v13, 0x2d

    .line 390
    if-eq v6, v13, :cond_32

    :cond_f
    const/16 v13, 0x2e

    .line 408
    if-eq v4, v13, :cond_34

    :cond_10
    const/16 v13, 0x2d

    if-eq v4, v13, :cond_36

    :goto_a
    const/16 v13, 0x5e74

    .line 420
    if-ne v6, v13, :cond_37

    :cond_11
    const/16 v6, 0x6708

    .line 426
    if-ne v9, v6, :cond_38

    :cond_12
    const/16 v6, 0x65e5

    .line 429
    if-ne v2, v6, :cond_3b

    .line 430
    :cond_13
    const/16 v9, 0x30

    move v6, v7

    move v2, v11

    move/from16 v19, v12

    move v7, v8

    move v8, v9

    move v9, v3

    move v3, v10

    .line 459
    :goto_b
    invoke-static/range {v2 .. v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v10

    if-eqz v10, :cond_42

    move-object/from16 v10, p0

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    .line 463
    invoke-direct/range {v10 .. v18}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    .line 465
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v2, v2, v19

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v9

    const/16 v2, 0x54

    .line 466
    if-ne v9, v2, :cond_43

    .line 467
    :cond_14
    add-int/lit8 v2, v19, 0x9

    move/from16 v0, p2

    if-lt v0, v2, :cond_46

    .line 498
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v2, v2, v19

    add-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_4d

    .line 501
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v2, v2, v19

    add-int/lit8 v2, v2, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_4e

    .line 505
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v2, v2, v19

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 506
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v2, v2, v19

    add-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 507
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v2, v2, v19

    add-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 508
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v2, v2, v19

    add-int/lit8 v2, v2, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 509
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v2, v2, v19

    add-int/lit8 v2, v2, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 510
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v2, v2, v19

    add-int/lit8 v2, v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    move-object/from16 v2, p0

    .line 512
    invoke-direct/range {v2 .. v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v2

    if-eqz v2, :cond_4f

    move-object/from16 v2, p0

    .line 516
    invoke-virtual/range {v2 .. v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTime(CCCCCC)V

    .line 518
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v2, v2, v19

    add-int/lit8 v2, v2, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    .line 519
    if-eq v2, v3, :cond_50

    .line 524
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 526
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v19, 0x9

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    int-to-char v3, v3

    move-object/from16 v0, p0

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v3, 0x5

    .line 528
    move-object/from16 v0, p0

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v3, 0x5a

    .line 530
    if-eq v2, v3, :cond_53

    .line 540
    :cond_15
    :goto_c
    const/4 v2, 0x1

    return v2

    .line 257
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0xa

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x54

    if-eq v2, v3, :cond_1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_d

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x6

    .line 260
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_1

    goto/16 :goto_8

    .line 262
    :cond_18
    const/4 v2, 0x0

    return v2

    :cond_19
    const/16 v2, 0x2d

    .line 271
    if-ne v9, v2, :cond_2

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_1a
    const/16 v3, 0x10

    .line 272
    move/from16 v0, p2

    if-ne v0, v3, :cond_3

    const/4 v3, 0x1

    move/from16 v19, v3

    goto/16 :goto_2

    :cond_1b
    const/16 v2, 0x11

    .line 273
    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    const/4 v2, 0x1

    move/from16 v20, v2

    goto/16 :goto_3

    .line 274
    :cond_1c
    if-nez v19, :cond_5

    move v3, v10

    move v2, v11

    .line 291
    goto/16 :goto_4

    .line 296
    :cond_1d
    const/4 v2, 0x0

    return v2

    .line 303
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 304
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 305
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 306
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 307
    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 311
    if-nez v20, :cond_21

    :cond_1f
    if-nez v19, :cond_23

    :goto_d
    move v7, v2

    move v6, v3

    move/from16 v3, v21

    :goto_e
    move-object/from16 v2, p0

    .line 328
    invoke-direct/range {v2 .. v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v2

    if-eqz v2, :cond_26

    const/16 v2, 0x11

    .line 332
    move/from16 v0, p2

    if-eq v0, v2, :cond_27

    :cond_20
    const/4 v2, 0x0

    .line 351
    :goto_f
    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, v4, -0x30

    add-int v9, v3, v4

    .line 352
    add-int/lit8 v3, v5, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, v6, -0x30

    add-int/2addr v4, v3

    .line 353
    add-int/lit8 v3, v7, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v5, v8, -0x30

    add-int/2addr v3, v5

    move v5, v2

    move v2, v3

    move v3, v4

    move v4, v9

    .line 354
    goto/16 :goto_5

    :cond_21
    const/16 v6, 0x54

    .line 311
    if-ne v5, v6, :cond_1f

    const/16 v6, 0x3a

    if-ne v8, v6, :cond_1f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    const/16 v7, 0x5a

    if-ne v6, v7, :cond_1f

    .line 315
    :cond_22
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 316
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 317
    const/16 v7, 0x30

    .line 318
    const/16 v8, 0x30

    move v4, v2

    goto :goto_e

    :cond_23
    const/16 v6, 0x20

    .line 311
    if-ne v5, v6, :cond_25

    :cond_24
    const/16 v6, 0x3a

    if-eq v8, v6, :cond_22

    goto :goto_d

    :cond_25
    const/16 v6, 0x54

    if-eq v5, v6, :cond_24

    goto :goto_d

    .line 329
    :cond_26
    const/4 v2, 0x0

    return v2

    .line 332
    :cond_27
    if-nez v20, :cond_20

    .line 333
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 334
    move-object/from16 v0, p0

    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v9, v9, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v9

    .line 335
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    .line 336
    if-ge v2, v11, :cond_29

    .line 337
    :cond_28
    const/4 v2, 0x0

    return v2

    :cond_29
    const/16 v11, 0x39

    .line 336
    if-gt v2, v11, :cond_28

    const/16 v11, 0x30

    .line 339
    if-ge v9, v11, :cond_2b

    .line 340
    :cond_2a
    const/4 v2, 0x0

    return v2

    :cond_2b
    const/16 v11, 0x39

    .line 339
    if-gt v9, v11, :cond_2a

    const/16 v11, 0x30

    .line 342
    if-ge v10, v11, :cond_2d

    .line 343
    :cond_2c
    const/4 v2, 0x0

    return v2

    :cond_2d
    const/16 v11, 0x39

    .line 342
    if-gt v10, v11, :cond_2c

    .line 346
    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0x64

    add-int/lit8 v9, v9, -0x30

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v2, v9

    add-int/lit8 v9, v10, -0x30

    add-int/2addr v2, v9

    goto/16 :goto_f

    .line 371
    :cond_2e
    const/4 v2, 0x0

    return v2

    :cond_2f
    const/16 v13, 0x2d

    .line 379
    if-ne v9, v13, :cond_e

    :cond_30
    move v9, v2

    move v6, v7

    move/from16 v19, v12

    move v2, v11

    move v7, v8

    move v8, v3

    move v3, v10

    .line 389
    goto/16 :goto_b

    :cond_31
    const/16 v13, 0x2f

    .line 379
    if-eq v9, v13, :cond_30

    goto/16 :goto_9

    :cond_32
    const/16 v13, 0x2d

    .line 390
    if-ne v8, v13, :cond_f

    .line 396
    const/16 v6, 0x30

    const/16 v2, 0x20

    .line 399
    if-eq v3, v2, :cond_33

    const/16 v2, 0x9

    move v8, v9

    move/from16 v19, v2

    move v2, v11

    move v9, v3

    move v3, v10

    .line 406
    goto/16 :goto_b

    .line 400
    :cond_33
    const/16 v3, 0x30

    const/16 v2, 0x8

    move v8, v3

    move/from16 v19, v2

    move v2, v11

    move v3, v10

    .line 402
    goto/16 :goto_b

    :cond_34
    const/16 v13, 0x2e

    .line 408
    if-ne v7, v13, :cond_10

    :cond_35
    move v7, v6

    move v4, v3

    move/from16 v19, v12

    move v6, v5

    move v3, v9

    move v5, v2

    move v9, v10

    move v2, v8

    move v8, v11

    .line 418
    goto/16 :goto_b

    :cond_36
    const/16 v13, 0x2d

    .line 408
    if-eq v7, v13, :cond_35

    goto/16 :goto_a

    :cond_37
    const v13, 0xb144

    .line 420
    if-eq v6, v13, :cond_11

    .line 455
    const/4 v2, 0x0

    return v2

    :cond_38
    const v6, 0xc6d4

    .line 426
    if-eq v9, v6, :cond_12

    const/16 v6, 0x6708

    .line 439
    if-ne v8, v6, :cond_3e

    .line 440
    :cond_39
    const/16 v6, 0x30

    const/16 v8, 0x65e5

    .line 442
    if-ne v3, v8, :cond_3f

    .line 443
    :cond_3a
    const/16 v3, 0x30

    move v8, v3

    move v2, v11

    move/from16 v19, v12

    move v3, v10

    .line 444
    goto/16 :goto_b

    :cond_3b
    const v6, 0xc77c

    .line 429
    if-eq v2, v6, :cond_13

    .line 432
    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    const/16 v9, 0x65e5

    if-ne v6, v9, :cond_3d

    :cond_3c
    const/16 v6, 0xb

    move v9, v2

    move/from16 v19, v6

    move v6, v7

    move v2, v11

    move v7, v8

    move v8, v3

    move v3, v10

    .line 435
    goto/16 :goto_b

    .line 432
    :cond_3d
    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    const v9, 0xc77c

    if-eq v6, v9, :cond_3c

    .line 437
    const/4 v2, 0x0

    return v2

    :cond_3e
    const v6, 0xc6d4

    .line 439
    if-eq v8, v6, :cond_39

    .line 452
    const/4 v2, 0x0

    return v2

    :cond_3f
    const v8, 0xc77c

    .line 442
    if-eq v3, v8, :cond_3a

    const/16 v8, 0x65e5

    .line 445
    if-ne v2, v8, :cond_41

    :cond_40
    move v8, v9

    move v2, v11

    move/from16 v19, v12

    move v9, v3

    move v3, v10

    .line 447
    goto/16 :goto_b

    :cond_41
    const v8, 0xc77c

    .line 445
    if-eq v2, v8, :cond_40

    .line 449
    const/4 v2, 0x0

    return v2

    .line 460
    :cond_42
    const/4 v2, 0x0

    return v2

    :cond_43
    const/16 v2, 0x20

    .line 466
    if-eq v9, v2, :cond_45

    :goto_10
    const/16 v2, 0x22

    .line 470
    if-ne v9, v2, :cond_47

    .line 471
    :cond_44
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 476
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v2, v2, v19

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    int-to-char v2, v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v2, 0x5

    .line 478
    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 479
    const/4 v2, 0x1

    return v2

    .line 466
    :cond_45
    if-eqz p1, :cond_14

    goto :goto_10

    .line 468
    :cond_46
    const/4 v2, 0x0

    return v2

    :cond_47
    const/16 v2, 0x1a

    .line 470
    if-eq v9, v2, :cond_44

    const/16 v2, 0x65e5

    if-eq v9, v2, :cond_44

    const v2, 0xc77c

    if-eq v9, v2, :cond_44

    const/16 v2, 0x2b

    .line 480
    if-ne v9, v2, :cond_49

    .line 481
    :cond_48
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    add-int/lit8 v3, v19, 0x6

    if-eq v2, v3, :cond_4a

    .line 493
    const/4 v2, 0x0

    return v2

    :cond_49
    const/16 v2, 0x2d

    .line 480
    if-eq v9, v2, :cond_48

    .line 495
    const/4 v2, 0x0

    return v2

    .line 482
    :cond_4a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v2, v2, v19

    add-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_4c

    .line 485
    :cond_4b
    const/4 v2, 0x0

    return v2

    .line 482
    :cond_4c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v2, v2, v19

    add-int/lit8 v2, v2, 0x4

    .line 483
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_4b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v2, v2, v19

    add-int/lit8 v2, v2, 0x5

    .line 484
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_4b

    .line 488
    const/16 v3, 0x30

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/16 v6, 0x30

    const/16 v7, 0x30

    const/16 v8, 0x30

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTime(CCCCCC)V

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 490
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v2, v2, v19

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v3, v3, v19

    add-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCC)V

    .line 491
    const/4 v2, 0x1

    return v2

    .line 499
    :cond_4d
    const/4 v2, 0x0

    return v2

    .line 502
    :cond_4e
    const/4 v2, 0x0

    return v2

    .line 513
    :cond_4f
    const/4 v2, 0x0

    return v2

    .line 520
    :cond_50
    add-int/lit8 v2, v19, 0xb

    move/from16 v0, p2

    if-lt v0, v2, :cond_52

    .line 543
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v2, v2, v19

    add-int/lit8 v2, v2, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    .line 544
    if-ge v2, v3, :cond_54

    .line 545
    :cond_51
    const/4 v2, 0x0

    return v2

    .line 521
    :cond_52
    const/4 v2, 0x0

    return v2

    .line 532
    :cond_53
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x0

    .line 533
    invoke-static {v2}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v2

    .line 534
    array-length v3, v2

    if-lez v3, :cond_15

    const/4 v3, 0x0

    .line 535
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 536
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_c

    :cond_54
    const/16 v3, 0x39

    .line 544
    if-gt v2, v3, :cond_51

    .line 547
    add-int/lit8 v3, v2, -0x30

    const/4 v2, 0x1

    .line 550
    add-int/lit8 v4, v19, 0xb

    move/from16 v0, p2

    if-gt v0, v4, :cond_58

    :cond_55
    :goto_11
    const/4 v4, 0x2

    .line 558
    if-eq v2, v4, :cond_59

    move v8, v2

    move v2, v3

    .line 566
    :goto_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xe

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v9, 0x0

    .line 569
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v2, v2, v19

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v2, 0x2b

    .line 570
    if-ne v3, v2, :cond_5c

    .line 571
    :cond_56
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v2, v2, v19

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v8

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    const/16 v2, 0x30

    .line 572
    if-ge v4, v2, :cond_5f

    .line 573
    :cond_57
    const/4 v2, 0x0

    return v2

    .line 551
    :cond_58
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v4, v4, v19

    add-int/lit8 v4, v4, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    .line 552
    if-lt v4, v5, :cond_55

    const/16 v5, 0x39

    if-gt v4, v5, :cond_55

    .line 553
    mul-int/lit8 v2, v3, 0xa

    add-int/lit8 v3, v4, -0x30

    add-int/2addr v3, v2

    const/4 v2, 0x2

    .line 554
    goto :goto_11

    .line 559
    :cond_59
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v4, v4, v19

    add-int/lit8 v4, v4, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    .line 560
    if-ge v4, v5, :cond_5b

    :cond_5a
    move v8, v2

    move v2, v3

    goto :goto_12

    :cond_5b
    const/16 v5, 0x39

    if-gt v4, v5, :cond_5a

    .line 561
    mul-int/lit8 v2, v3, 0xa

    add-int/lit8 v3, v4, -0x30

    add-int/2addr v3, v2

    const/4 v2, 0x3

    move v8, v2

    move v2, v3

    .line 562
    goto :goto_12

    :cond_5c
    const/16 v2, 0x2d

    .line 570
    if-eq v3, v2, :cond_56

    const/16 v2, 0x5a

    .line 606
    if-eq v3, v2, :cond_69

    .line 617
    :cond_5d
    :goto_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v19, 0xa

    add-int/2addr v3, v8

    add-int/2addr v3, v9

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x1a

    .line 618
    if-ne v2, v3, :cond_6a

    .line 621
    :cond_5e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v19, 0xa

    add-int/2addr v3, v8

    add-int/2addr v3, v9

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    int-to-char v2, v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v2, 0x5

    .line 623
    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 624
    const/4 v2, 0x1

    return v2

    :cond_5f
    const/16 v2, 0x31

    .line 572
    if-gt v4, v2, :cond_57

    .line 576
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v2, v2, v19

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v8

    add-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v2, 0x30

    .line 577
    if-ge v5, v2, :cond_61

    .line 578
    :cond_60
    const/4 v2, 0x0

    return v2

    :cond_61
    const/16 v2, 0x39

    .line 577
    if-gt v5, v2, :cond_60

    .line 581
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v2, v2, v19

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v8

    add-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 582
    const/16 v6, 0x30

    const/16 v7, 0x30

    const/16 v9, 0x3a

    .line 583
    if-eq v2, v9, :cond_62

    const/16 v9, 0x30

    .line 594
    if-eq v2, v9, :cond_66

    const/4 v2, 0x3

    move v9, v2

    :goto_14
    move-object/from16 v2, p0

    .line 604
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCCCC)V

    goto :goto_13

    .line 584
    :cond_62
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v2, v2, v19

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v8

    add-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    const/16 v2, 0x30

    .line 585
    if-ne v6, v2, :cond_64

    .line 589
    :cond_63
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v2, v2, v19

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v8

    add-int/lit8 v2, v2, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    const/16 v2, 0x30

    .line 590
    if-ne v7, v2, :cond_65

    const/4 v2, 0x6

    move v9, v2

    .line 593
    goto :goto_14

    :cond_64
    const/16 v2, 0x33

    .line 585
    if-eq v6, v2, :cond_63

    .line 586
    const/4 v2, 0x0

    return v2

    .line 591
    :cond_65
    const/4 v2, 0x0

    return v2

    .line 595
    :cond_66
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v2, v2, v19

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v8

    add-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    const/16 v2, 0x30

    .line 596
    if-ne v6, v2, :cond_68

    :cond_67
    const/4 v2, 0x5

    move v9, v2

    .line 599
    goto :goto_14

    :cond_68
    const/16 v2, 0x33

    .line 596
    if-eq v6, v2, :cond_67

    .line 597
    const/4 v2, 0x0

    return v2

    :cond_69
    const/4 v9, 0x1

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    if-eqz v2, :cond_5d

    const/4 v2, 0x0

    .line 609
    invoke-static {v2}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v2

    .line 610
    array-length v3, v2

    if-lez v3, :cond_5d

    const/4 v3, 0x0

    .line 611
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 612
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_13

    :cond_6a
    const/16 v3, 0x22

    .line 618
    if-eq v2, v3, :cond_5e

    .line 619
    const/4 v2, 0x0

    return v2
.end method

.method private setCalendar(CCCCCCCC)V
    .locals 5

    .prologue
    .line 703
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->timeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 704
    add-int/lit8 v0, p1, -0x30

    mul-int/lit16 v0, v0, 0x3e8

    add-int/lit8 v1, p2, -0x30

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    add-int/lit8 v1, p3, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    add-int/lit8 v1, p4, -0x30

    add-int/2addr v0, v1

    .line 705
    add-int/lit8 v1, p5, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, p6, -0x30

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    .line 706
    add-int/lit8 v2, p7, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, p8, -0x30

    add-int/2addr v2, v3

    .line 708
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 709
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 710
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 711
    return-void
.end method


# virtual methods
.method public final addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final arrayCopy(I[CII)V
    .locals 2

    .prologue
    .line 2058
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p4

    invoke-virtual {v0, p1, v1, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    .line 2059
    return-void
.end method

.method public bytesValue()[B
    .locals 9

    .prologue
    const/16 v8, 0x39

    const/16 v2, 0x37

    const/16 v3, 0x30

    const/4 v0, 0x0

    .line 115
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v4, 0x1a

    if-eq v1, v4, :cond_0

    .line 134
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/IOUtils;->decodeBase64(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0

    .line 116
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v4, v1, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 117
    rem-int/lit8 v5, v1, 0x2

    if-nez v5, :cond_1

    .line 121
    div-int/lit8 v1, v1, 0x2

    new-array v5, v1, [B

    .line 122
    :goto_0
    array-length v1, v5

    if-lt v0, v1, :cond_2

    .line 131
    return-object v5

    .line 118
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "illegal state. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v4

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 124
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    mul-int/lit8 v7, v0, 0x2

    add-int/2addr v7, v4

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 126
    if-le v6, v8, :cond_3

    move v1, v2

    :goto_1
    sub-int/2addr v6, v1

    .line 127
    if-le v7, v8, :cond_4

    move v1, v2

    :goto_2
    sub-int v1, v7, v1

    .line 128
    shl-int/lit8 v6, v6, 0x4

    or-int/2addr v1, v6

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v1, v3

    .line 126
    goto :goto_1

    :cond_4
    move v1, v3

    .line 127
    goto :goto_2
.end method

.method public final charArrayCompare([C)Z
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v0

    return v0
.end method

.method public final charAt(I)C
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-ge p1, v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 62
    :cond_0
    const/16 v0, 0x1a

    return v0
.end method

.method protected final copyTo(II[C)V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 85
    return-void
.end method

.method public final decimalValue()Ljava/math/BigDecimal;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 186
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 188
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    const/16 v2, 0x4c

    .line 189
    if-ne v1, v2, :cond_1

    .line 190
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 193
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    .line 194
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 198
    new-array v2, v0, [C

    .line 199
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr v0, v1

    invoke-virtual {v3, v1, v0, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 200
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>([C)V

    return-object v0

    :cond_1
    const/16 v2, 0x53

    .line 189
    if-eq v1, v2, :cond_0

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    const/16 v2, 0x46

    if-eq v1, v2, :cond_0

    const/16 v2, 0x44

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 195
    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v3, v1, v0

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-virtual {v2, v1, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 196
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-direct {v1, v2, v5, v0}, Ljava/math/BigDecimal;-><init>([CII)V

    return-object v1
.end method

.method public final indexOf(CI)I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public info()Ljava/lang/String;
    .locals 4

    .prologue
    const/high16 v3, 0x10000

    .line 2062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", json : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2064
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    const/4 v2, 0x0

    .line 2066
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2062
    return-object v0

    .line 2064
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method public isEOF()Z
    .locals 2

    .prologue
    .line 760
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-eq v0, v1, :cond_0

    goto :goto_1
.end method

.method public matchField2([C)Z
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 2174
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2178
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare([C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2183
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v1, p1

    add-int/2addr v0, v1

    .line 2184
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2185
    :goto_1
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x3a

    .line 2189
    if-eq v0, v2, :cond_3

    .line 2194
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2195
    return v3

    .line 2175
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_0

    .line 2179
    :cond_1
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2180
    return v3

    .line 2186
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v1, v2

    goto :goto_1

    .line 2190
    :cond_3
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2191
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2192
    const/4 v0, 0x1

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

    .line 1171
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/util/ArrayList;

    .line 1174
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1179
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1180
    return-object v0

    .line 1172
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1173
    return-object v0

    .line 1175
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1176
    return-object v0

    .line 1180
    :catch_0
    move-exception v0

    .line 1182
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final next()C
    .locals 2

    .prologue
    .line 69
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 70
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    int-to-char v1, v0

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 70
    return v0

    :cond_0
    const/16 v0, 0x1a

    goto :goto_0
.end method

.method public final numberString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 175
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 177
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    const/16 v2, 0x4c

    .line 178
    if-ne v1, v2, :cond_1

    .line 179
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 182
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v2, 0x53

    .line 178
    if-eq v1, v2, :cond_0

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    const/16 v2, 0x46

    if-eq v1, v2, :cond_0

    const/16 v2, 0x44

    if-eq v1, v2, :cond_0

    goto :goto_0
.end method

.method public scanDate(C)Ljava/util/Date;
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 1931
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1932
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1933
    iget-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1935
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1937
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v0, 0x22

    .line 1940
    if-eq v3, v0, :cond_2

    const/16 v0, 0x2d

    .line 1976
    if-ne v3, v0, :cond_8

    :cond_0
    const-wide/16 v0, 0x0

    .line 1979
    const/4 v2, 0x0

    const/16 v5, 0x2d

    .line 1980
    if-eq v3, v5, :cond_b

    move v10, v2

    move v2, v4

    move v4, v10

    :goto_0
    const/16 v5, 0x30

    .line 1985
    if-ge v3, v5, :cond_c

    :cond_1
    :goto_1
    const-wide/16 v8, 0x0

    .line 2000
    cmp-long v2, v0, v8

    if-ltz v2, :cond_11

    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_12

    .line 2001
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2002
    int-to-char v0, v7

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v0, -0x1

    .line 2003
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/4 v0, 0x0

    .line 2004
    return-object v0

    .line 1942
    :cond_2
    const/16 v0, 0x22

    invoke-virtual {p0, v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v1

    const/4 v0, -0x1

    .line 1943
    if-eq v1, v0, :cond_3

    .line 1947
    sub-int v0, v1, v4

    .line 1948
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1949
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(ZI)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1952
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1953
    int-to-char v0, v7

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v0, -0x1

    .line 1954
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/4 v0, 0x0

    .line 1955
    return-object v0

    .line 1944
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "unclosed str"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1950
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 1957
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1958
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move v10, v1

    move v1, v2

    move v2, v10

    :goto_3
    const/16 v3, 0x2c

    .line 1961
    if-ne v1, v3, :cond_6

    .line 1962
    :cond_5
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1963
    int-to-char v2, v1

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_4
    const/16 v2, 0x2c

    .line 2027
    if-eq v1, v2, :cond_15

    .line 2033
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    .line 2034
    if-eq v1, v2, :cond_16

    const/16 v2, 0x5d

    .line 2037
    if-eq v1, v2, :cond_17

    const/16 v2, 0x7d

    .line 2040
    if-eq v1, v2, :cond_18

    const/16 v2, 0x1a

    .line 2043
    if-eq v1, v2, :cond_19

    .line 2047
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2048
    int-to-char v0, v7

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v0, -0x1

    .line 2049
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/4 v0, 0x0

    .line 2050
    return-object v0

    :cond_6
    const/16 v3, 0x5d

    .line 1961
    if-eq v1, v3, :cond_5

    .line 1965
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1969
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1970
    int-to-char v0, v7

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v0, -0x1

    .line 1971
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/4 v0, 0x0

    .line 1973
    return-object v0

    .line 1966
    :cond_7
    add-int/lit8 v1, v2, 0x1

    .line 1967
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move v10, v1

    move v1, v2

    move v2, v10

    goto :goto_3

    :cond_8
    const/16 v0, 0x30

    .line 1976
    if-ge v3, v0, :cond_a

    :goto_5
    const/16 v0, 0x6e

    .line 2012
    if-eq v3, v0, :cond_14

    .line 2020
    :cond_9
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2021
    int-to-char v0, v7

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v0, -0x1

    .line 2022
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/4 v0, 0x0

    .line 2024
    return-object v0

    :cond_a
    const/16 v0, 0x39

    .line 1976
    if-le v3, v0, :cond_0

    goto :goto_5

    .line 1981
    :cond_b
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 1982
    const/4 v2, 0x1

    move v4, v2

    move v2, v5

    goto/16 :goto_0

    :cond_c
    const/16 v5, 0x39

    .line 1985
    if-gt v3, v5, :cond_1

    .line 1986
    add-int/lit8 v0, v3, -0x30

    int-to-long v0, v0

    .line 1988
    :goto_6
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v5, 0x30

    .line 1989
    if-ge v2, v5, :cond_f

    :cond_d
    const/16 v5, 0x2c

    .line 1992
    if-ne v2, v5, :cond_10

    .line 1993
    :cond_e
    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move v3, v2

    goto/16 :goto_1

    :cond_f
    const/16 v5, 0x39

    .line 1989
    if-gt v2, v5, :cond_d

    const-wide/16 v8, 0xa

    .line 1990
    mul-long/2addr v0, v8

    add-int/lit8 v2, v2, -0x30

    int-to-long v8, v2

    add-long/2addr v0, v8

    move v2, v3

    goto :goto_6

    :cond_10
    const/16 v5, 0x5d

    .line 1992
    if-eq v2, v5, :cond_e

    move v3, v2

    goto/16 :goto_1

    .line 2000
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 2007
    :cond_12
    if-nez v4, :cond_13

    .line 2011
    :goto_7
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object v0, v2

    move v1, v3

    .line 2012
    goto/16 :goto_4

    .line 2008
    :cond_13
    neg-long v0, v0

    goto :goto_7

    .line 2012
    :cond_14
    add-int/lit8 v0, v4, 0x1

    .line 2013
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_9

    add-int/lit8 v1, v0, 0x1

    .line 2014
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v2, 0x6c

    if-ne v0, v2, :cond_9

    add-int/lit8 v2, v1, 0x1

    .line 2015
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    .line 2017
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 2018
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    goto/16 :goto_4

    .line 2028
    :cond_15
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v1, 0x3

    .line 2029
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2030
    return-object v0

    :cond_16
    const/16 v1, 0x10

    .line 2035
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2036
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_8
    const/4 v1, 0x4

    .line 2052
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2054
    return-object v0

    :cond_17
    const/16 v1, 0xf

    .line 2038
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2039
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_8

    :cond_18
    const/16 v1, 0xd

    .line 2041
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2042
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_8

    .line 2044
    :cond_19
    const/16 v1, 0x1a

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x14

    .line 2045
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_8
.end method

.method public scanDouble(C)D
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 1690
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1692
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1693
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v0, 0x22

    .line 1694
    if-eq v2, v0, :cond_2

    const/4 v0, 0x0

    .line 1695
    :goto_0
    if-nez v0, :cond_3

    :goto_1
    const/16 v1, 0x2d

    .line 1699
    if-eq v2, v1, :cond_4

    const/4 v1, 0x0

    .line 1700
    :goto_2
    if-nez v1, :cond_5

    :goto_3
    const/16 v3, 0x30

    .line 1705
    if-ge v2, v3, :cond_6

    :cond_0
    const/16 v1, 0x6e

    .line 1779
    if-eq v2, v1, :cond_1a

    :cond_1
    const/4 v0, -0x1

    .line 1813
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const-wide/16 v0, 0x0

    .line 1814
    return-wide v0

    :cond_2
    const/4 v0, 0x1

    .line 1694
    goto :goto_0

    .line 1696
    :cond_3
    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move v4, v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    .line 1699
    goto :goto_2

    .line 1701
    :cond_5
    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move v4, v3

    goto :goto_3

    :cond_6
    const/16 v3, 0x39

    .line 1705
    if-gt v2, v3, :cond_0

    .line 1706
    add-int/lit8 v2, v2, -0x30

    int-to-long v2, v2

    .line 1708
    :goto_4
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    const/16 v4, 0x30

    .line 1709
    if-ge v8, v4, :cond_b

    :cond_7
    const-wide/16 v6, 0x1

    const/16 v4, 0x2e

    .line 1718
    if-eq v8, v4, :cond_c

    const/4 v4, 0x0

    .line 1719
    :goto_5
    if-nez v4, :cond_d

    move-wide v10, v2

    move v4, v8

    move-wide v8, v6

    :goto_6
    const/16 v2, 0x65

    .line 1740
    if-ne v4, v2, :cond_12

    :cond_8
    const/4 v2, 0x1

    .line 1741
    :goto_7
    if-nez v2, :cond_13

    .line 1756
    :cond_9
    if-nez v0, :cond_16

    .line 1766
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1767
    sub-int v0, v5, v3

    add-int/lit8 v0, v0, -0x1

    .line 1770
    :goto_8
    if-eqz v2, :cond_18

    .line 1776
    :cond_a
    invoke-virtual {p0, v3, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v0

    .line 1777
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 1817
    :goto_9
    if-eq v4, p1, :cond_20

    const/4 v2, -0x1

    .line 1824
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1825
    return-wide v0

    :cond_b
    const/16 v4, 0x39

    .line 1709
    if-gt v8, v4, :cond_7

    const-wide/16 v6, 0xa

    .line 1710
    mul-long/2addr v2, v6

    add-int/lit8 v4, v8, -0x30

    int-to-long v6, v4

    add-long/2addr v2, v6

    move v4, v5

    .line 1711
    goto :goto_4

    :cond_c
    const/4 v4, 0x1

    .line 1718
    goto :goto_5

    .line 1720
    :cond_d
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    .line 1721
    if-ge v4, v5, :cond_f

    :cond_e
    const/4 v0, -0x1

    .line 1735
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const-wide/16 v0, 0x0

    .line 1736
    return-wide v0

    :cond_f
    const/16 v5, 0x39

    .line 1721
    if-gt v4, v5, :cond_e

    const-wide/16 v8, 0xa

    .line 1722
    mul-long/2addr v2, v8

    add-int/lit8 v4, v4, -0x30

    int-to-long v4, v4

    add-long/2addr v4, v2

    const-wide/16 v2, 0xa

    .line 1725
    :goto_a
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    const/16 v8, 0x30

    .line 1726
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

    .line 1727
    mul-long/2addr v4, v8

    add-int/lit8 v6, v6, -0x30

    int-to-long v8, v6

    add-long/2addr v4, v8

    const-wide/16 v8, 0xa

    .line 1728
    mul-long/2addr v2, v8

    move v6, v7

    .line 1729
    goto :goto_a

    :cond_12
    const/16 v2, 0x45

    .line 1740
    if-eq v4, v2, :cond_8

    const/4 v2, 0x0

    goto :goto_7

    .line 1742
    :cond_13
    add-int/lit8 v3, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    .line 1743
    if-ne v4, v5, :cond_15

    .line 1744
    :cond_14
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    :goto_b
    const/16 v3, 0x30

    .line 1747
    if-lt v4, v3, :cond_9

    const/16 v3, 0x39

    if-gt v4, v3, :cond_9

    .line 1748
    add-int/lit8 v3, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    move v5, v3

    goto :goto_b

    :cond_15
    const/16 v5, 0x2d

    .line 1743
    if-eq v4, v5, :cond_14

    move v5, v3

    goto :goto_b

    :cond_16
    const/16 v0, 0x22

    .line 1757
    if-ne v4, v0, :cond_17

    .line 1761
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 1763
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v0, 0x1

    .line 1764
    sub-int v0, v6, v3

    add-int/lit8 v0, v0, -0x2

    move v5, v6

    goto/16 :goto_8

    :cond_17
    const/4 v0, -0x1

    .line 1758
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const-wide/16 v0, 0x0

    .line 1759
    return-wide v0

    :cond_18
    const/16 v2, 0x14

    .line 1770
    if-ge v0, v2, :cond_a

    .line 1771
    long-to-double v2, v10

    long-to-double v6, v8

    div-double/2addr v2, v6

    .line 1772
    if-nez v1, :cond_19

    move-wide v0, v2

    goto/16 :goto_9

    .line 1773
    :cond_19
    neg-double v0, v2

    goto/16 :goto_9

    .line 1779
    :cond_1a
    add-int/lit8 v1, v4, 0x1

    .line 1780
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x75

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 1781
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v2, 0x1

    .line 1782
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_1

    const/4 v2, 0x5

    .line 1783
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1785
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1787
    if-nez v0, :cond_1c

    :cond_1b
    move v0, v1

    move v1, v2

    :goto_c
    const/16 v2, 0x2c

    .line 1792
    if-eq v0, v2, :cond_1d

    const/16 v2, 0x5d

    .line 1798
    if-eq v0, v2, :cond_1e

    .line 1804
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, -0x1

    .line 1810
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const-wide/16 v0, 0x0

    .line 1811
    return-wide v0

    :cond_1c
    const/16 v0, 0x22

    .line 1787
    if-ne v1, v0, :cond_1b

    .line 1788
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    goto :goto_c

    .line 1793
    :cond_1d
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1794
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v0, 0x5

    .line 1795
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 v0, 0x10

    .line 1796
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const-wide/16 v0, 0x0

    .line 1797
    return-wide v0

    .line 1799
    :cond_1e
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1800
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v0, 0x5

    .line 1801
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 v0, 0xf

    .line 1802
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const-wide/16 v0, 0x0

    .line 1803
    return-wide v0

    .line 1805
    :cond_1f
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v1, v2

    .line 1806
    goto :goto_c

    .line 1818
    :cond_20
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1819
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v2, 0x3

    .line 1820
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 v2, 0x10

    .line 1821
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1822
    return-wide v0
.end method

.method public scanFieldBoolean([C)Z
    .locals 11

    .prologue
    const/16 v9, 0x10

    const/4 v2, 0x1

    const/16 v8, 0x22

    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 1453
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1455
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v0, v3, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1460
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1461
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v3, p1

    add-int/2addr v0, v3

    .line 1463
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 1465
    if-eq v3, v8, :cond_1

    move v0, v1

    .line 1466
    :goto_0
    if-nez v0, :cond_2

    move v10, v3

    move v3, v4

    move v4, v10

    :goto_1
    const/16 v5, 0x74

    .line 1471
    if-eq v4, v5, :cond_3

    const/16 v5, 0x66

    .line 1493
    if-eq v4, v5, :cond_9

    const/16 v5, 0x31

    .line 1519
    if-eq v4, v5, :cond_10

    const/16 v2, 0x30

    .line 1528
    if-eq v4, v2, :cond_13

    .line 1538
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1539
    return v1

    :cond_0
    const/4 v0, -0x2

    .line 1456
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1457
    return v1

    :cond_1
    move v0, v2

    .line 1465
    goto :goto_0

    .line 1467
    :cond_2
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move v4, v3

    move v3, v5

    goto :goto_1

    .line 1472
    :cond_3
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v5, 0x72

    if-ne v3, v5, :cond_5

    .line 1476
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v4, 0x75

    if-ne v3, v4, :cond_6

    .line 1480
    add-int/lit8 v3, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    const/16 v5, 0x65

    if-ne v4, v5, :cond_7

    .line 1485
    if-nez v0, :cond_8

    move v0, v3

    .line 1490
    :cond_4
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1491
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    :goto_2
    const/16 v3, 0x2c

    .line 1543
    if-eq v0, v3, :cond_16

    const/16 v3, 0x7d

    .line 1548
    if-eq v0, v3, :cond_17

    .line 1573
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1576
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1577
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    .line 1578
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1579
    return v1

    .line 1473
    :cond_5
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1474
    return v1

    .line 1477
    :cond_6
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1478
    return v1

    .line 1481
    :cond_7
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1482
    return v1

    .line 1485
    :cond_8
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    if-eq v3, v8, :cond_4

    .line 1486
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1487
    return v1

    .line 1494
    :cond_9
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-ne v3, v4, :cond_b

    .line 1498
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v4, 0x6c

    if-ne v2, v4, :cond_c

    .line 1502
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x73

    if-ne v2, v3, :cond_d

    .line 1506
    add-int/lit8 v2, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v4, 0x65

    if-ne v3, v4, :cond_e

    .line 1511
    if-nez v0, :cond_f

    move v0, v2

    .line 1516
    :cond_a
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1517
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v2, v1

    .line 1518
    goto :goto_2

    .line 1495
    :cond_b
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1496
    return v1

    .line 1499
    :cond_c
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1500
    return v1

    .line 1503
    :cond_d
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1504
    return v1

    .line 1507
    :cond_e
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1508
    return v1

    .line 1511
    :cond_f
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-eq v2, v8, :cond_a

    .line 1512
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1513
    return v1

    .line 1520
    :cond_10
    if-nez v0, :cond_12

    move v0, v3

    .line 1525
    :cond_11
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1526
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    goto/16 :goto_2

    .line 1520
    :cond_12
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    if-eq v3, v8, :cond_11

    .line 1521
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1522
    return v1

    .line 1529
    :cond_13
    if-nez v0, :cond_14

    .line 1534
    :goto_3
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1535
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v2, v1

    .line 1536
    goto/16 :goto_2

    .line 1529
    :cond_14
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_15

    move v3, v0

    goto :goto_3

    .line 1530
    :cond_15
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1531
    return v1

    .line 1544
    :cond_16
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v0, 0x3

    .line 1545
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1546
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1583
    :goto_4
    return v2

    .line 1549
    :cond_17
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    :goto_5
    const/16 v3, 0x2c

    .line 1551
    if-eq v0, v3, :cond_18

    const/16 v3, 0x5d

    .line 1554
    if-eq v0, v3, :cond_19

    const/16 v3, 0x7d

    .line 1557
    if-eq v0, v3, :cond_1a

    const/16 v3, 0x1a

    .line 1560
    if-eq v0, v3, :cond_1b

    .line 1562
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1566
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1567
    return v1

    .line 1552
    :cond_18
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1553
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_6
    const/4 v0, 0x4

    .line 1571
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_4

    :cond_19
    const/16 v0, 0xf

    .line 1555
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1556
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_6

    :cond_1a
    const/16 v0, 0xd

    .line 1558
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1559
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_6

    :cond_1b
    const/16 v0, 0x14

    .line 1561
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_6

    .line 1563
    :cond_1c
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    goto :goto_5

    .line 1574
    :cond_1d
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    goto/16 :goto_2
.end method

.method public scanFieldDate([C)Ljava/util/Date;
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 983
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 984
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 985
    iget-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 987
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 992
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v1, p1

    add-int/2addr v0, v1

    .line 994
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v0, 0x22

    .line 997
    if-eq v3, v0, :cond_3

    const/16 v0, 0x2d

    .line 1030
    if-ne v3, v0, :cond_9

    :cond_0
    const-wide/16 v0, 0x0

    .line 1033
    const/4 v2, 0x0

    const/16 v5, 0x2d

    .line 1034
    if-eq v3, v5, :cond_b

    move v10, v2

    move v2, v4

    move v4, v10

    :goto_0
    const/16 v5, 0x30

    .line 1039
    if-ge v3, v5, :cond_c

    :cond_1
    :goto_1
    const-wide/16 v8, 0x0

    .line 1054
    cmp-long v2, v0, v8

    if-ltz v2, :cond_11

    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_12

    const/4 v0, -0x1

    .line 1055
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/4 v0, 0x0

    .line 1056
    return-object v0

    :cond_2
    const/4 v0, -0x2

    .line 988
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/4 v0, 0x0

    .line 989
    return-object v0

    .line 999
    :cond_3
    const/16 v0, 0x22

    invoke-virtual {p0, v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v1

    const/4 v0, -0x1

    .line 1000
    if-eq v1, v0, :cond_4

    .line 1004
    sub-int v0, v1, v4

    .line 1005
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1006
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(ZI)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1009
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v0, -0x1

    .line 1010
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/4 v0, 0x0

    .line 1011
    return-object v0

    .line 1001
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "unclosed str"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1007
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 1013
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1014
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move v10, v1

    move v1, v2

    move v2, v10

    :goto_3
    const/16 v3, 0x2c

    .line 1017
    if-ne v1, v3, :cond_7

    .line 1018
    :cond_6
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1019
    int-to-char v2, v1

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_4
    const/16 v2, 0x2c

    .line 1070
    if-eq v1, v2, :cond_14

    .line 1077
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    .line 1078
    if-eq v1, v2, :cond_15

    const/16 v2, 0x5d

    .line 1081
    if-eq v1, v2, :cond_16

    const/16 v2, 0x7d

    .line 1084
    if-eq v1, v2, :cond_17

    const/16 v2, 0x1a

    .line 1087
    if-eq v1, v2, :cond_18

    .line 1090
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1091
    int-to-char v0, v7

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v0, -0x1

    .line 1092
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/4 v0, 0x0

    .line 1093
    return-object v0

    :cond_7
    const/16 v3, 0x7d

    .line 1017
    if-eq v1, v3, :cond_6

    .line 1021
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, -0x1

    .line 1025
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/4 v0, 0x0

    .line 1027
    return-object v0

    .line 1022
    :cond_8
    add-int/lit8 v1, v2, 0x1

    .line 1023
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move v10, v1

    move v1, v2

    move v2, v10

    goto :goto_3

    :cond_9
    const/16 v0, 0x30

    .line 1030
    if-ge v3, v0, :cond_a

    :goto_5
    const/4 v0, -0x1

    .line 1065
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/4 v0, 0x0

    .line 1067
    return-object v0

    :cond_a
    const/16 v0, 0x39

    .line 1030
    if-le v3, v0, :cond_0

    goto :goto_5

    .line 1035
    :cond_b
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 1036
    const/4 v2, 0x1

    move v4, v2

    move v2, v5

    goto/16 :goto_0

    :cond_c
    const/16 v5, 0x39

    .line 1039
    if-gt v3, v5, :cond_1

    .line 1040
    add-int/lit8 v0, v3, -0x30

    int-to-long v0, v0

    .line 1042
    :goto_6
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v5, 0x30

    .line 1043
    if-ge v2, v5, :cond_f

    :cond_d
    const/16 v5, 0x2c

    .line 1046
    if-ne v2, v5, :cond_10

    .line 1047
    :cond_e
    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move v3, v2

    goto/16 :goto_1

    :cond_f
    const/16 v5, 0x39

    .line 1043
    if-gt v2, v5, :cond_d

    const-wide/16 v8, 0xa

    .line 1044
    mul-long/2addr v0, v8

    add-int/lit8 v2, v2, -0x30

    int-to-long v8, v2

    add-long/2addr v0, v8

    move v2, v3

    goto :goto_6

    :cond_10
    const/16 v5, 0x7d

    .line 1046
    if-eq v2, v5, :cond_e

    move v3, v2

    goto/16 :goto_1

    .line 1054
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1059
    :cond_12
    if-nez v4, :cond_13

    .line 1063
    :goto_7
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object v0, v2

    move v1, v3

    .line 1064
    goto/16 :goto_4

    .line 1060
    :cond_13
    neg-long v0, v0

    goto :goto_7

    .line 1071
    :cond_14
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v1, 0x3

    .line 1072
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 v1, 0x10

    .line 1073
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1074
    return-object v0

    :cond_15
    const/16 v1, 0x10

    .line 1079
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1080
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_8
    const/4 v1, 0x4

    .line 1095
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1097
    return-object v0

    :cond_16
    const/16 v1, 0xf

    .line 1082
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1083
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_8

    :cond_17
    const/16 v1, 0xd

    .line 1085
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1086
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_8

    :cond_18
    const/16 v1, 0x14

    .line 1088
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_8
.end method

.method public scanFieldInt([C)I
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/16 v11, 0x7d

    const/16 v10, 0x2c

    const/4 v9, -0x1

    const/4 v1, 0x0

    .line 764
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 765
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 766
    iget-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 768
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v0, v3, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 773
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v3, p1

    add-int/2addr v0, v3

    .line 775
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v0, 0x22

    .line 777
    if-eq v3, v0, :cond_3

    move v0, v1

    .line 779
    :goto_0
    if-nez v0, :cond_4

    :goto_1
    const/16 v5, 0x2d

    .line 783
    if-eq v3, v5, :cond_0

    move v2, v1

    .line 784
    :cond_0
    if-nez v2, :cond_5

    :goto_2
    const/16 v5, 0x30

    .line 789
    if-ge v3, v5, :cond_6

    .line 830
    :cond_1
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 831
    return v1

    :cond_2
    const/4 v0, -0x2

    .line 769
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 770
    return v1

    :cond_3
    move v0, v2

    .line 777
    goto :goto_0

    .line 780
    :cond_4
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move v4, v5

    goto :goto_1

    .line 785
    :cond_5
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move v4, v5

    goto :goto_2

    :cond_6
    const/16 v5, 0x39

    .line 789
    if-gt v3, v5, :cond_1

    .line 790
    add-int/lit8 v3, v3, -0x30

    .line 792
    :goto_3
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    const/16 v8, 0x30

    .line 793
    if-ge v4, v8, :cond_9

    :cond_7
    const/16 v8, 0x2e

    .line 795
    if-eq v4, v8, :cond_a

    .line 803
    if-ltz v3, :cond_b

    .line 808
    if-nez v0, :cond_c

    move v0, v4

    .line 818
    :goto_4
    if-ne v0, v10, :cond_e

    .line 819
    :cond_8
    add-int/lit8 v4, v5, -0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 834
    if-eq v0, v10, :cond_10

    .line 841
    if-eq v0, v11, :cond_12

    .line 873
    :goto_5
    if-nez v2, :cond_18

    :goto_6
    return v3

    :cond_9
    const/16 v8, 0x39

    .line 793
    if-gt v4, v8, :cond_7

    .line 794
    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v3, v4

    move v4, v5

    goto :goto_3

    .line 796
    :cond_a
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 797
    return v1

    .line 804
    :cond_b
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 805
    return v1

    :cond_c
    const/16 v0, 0x22

    .line 809
    if-ne v4, v0, :cond_d

    .line 813
    add-int/lit8 v4, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v5, v4

    goto :goto_4

    .line 810
    :cond_d
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 811
    return v1

    .line 818
    :cond_e
    if-eq v0, v11, :cond_8

    .line 821
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_f

    .line 825
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 826
    return v1

    .line 822
    :cond_f
    add-int/lit8 v4, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v5, v4

    .line 823
    goto :goto_4

    .line 835
    :cond_10
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v0, 0x3

    .line 836
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 v0, 0x10

    .line 837
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 838
    if-nez v2, :cond_11

    :goto_7
    return v3

    :cond_11
    neg-int v3, v3

    goto :goto_7

    .line 842
    :cond_12
    add-int/lit8 v0, v5, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 843
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 845
    :goto_8
    if-eq v0, v10, :cond_13

    const/16 v4, 0x5d

    .line 849
    if-eq v0, v4, :cond_14

    .line 853
    if-eq v0, v11, :cond_15

    const/16 v4, 0x1a

    .line 857
    if-eq v0, v4, :cond_16

    .line 860
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_17

    .line 864
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 865
    int-to-char v0, v7

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 866
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 867
    return v1

    :cond_13
    const/16 v0, 0x10

    .line 846
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 847
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_9
    const/4 v0, 0x4

    .line 870
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_5

    :cond_14
    const/16 v0, 0xf

    .line 850
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 851
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_9

    :cond_15
    const/16 v0, 0xd

    .line 854
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 855
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_9

    :cond_16
    const/16 v0, 0x14

    .line 858
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_9

    .line 861
    :cond_17
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    goto :goto_8

    .line 873
    :cond_18
    neg-int v3, v3

    goto/16 :goto_6
.end method

.method public scanFieldLong([C)J
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 1339
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1340
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1341
    iget-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1343
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1348
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v1, p1

    add-int/2addr v0, v1

    .line 1350
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v0, 0x22

    .line 1352
    if-eq v1, v0, :cond_2

    const/4 v0, 0x0

    .line 1353
    :goto_0
    if-nez v0, :cond_3

    .line 1357
    :goto_1
    const/4 v3, 0x0

    const/16 v4, 0x2d

    .line 1358
    if-eq v1, v4, :cond_4

    move v5, v3

    move v10, v1

    move v1, v2

    move v2, v10

    :goto_2
    const/16 v3, 0x30

    .line 1364
    if-ge v2, v3, :cond_5

    .line 1398
    :cond_0
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1399
    int-to-char v0, v7

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v0, -0x1

    .line 1400
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const-wide/16 v0, 0x0

    .line 1401
    return-wide v0

    :cond_1
    const/4 v0, -0x2

    .line 1344
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const-wide/16 v0, 0x0

    .line 1345
    return-wide v0

    :cond_2
    const/4 v0, 0x1

    .line 1352
    goto :goto_0

    .line 1354
    :cond_3
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move v2, v3

    goto :goto_1

    .line 1359
    :cond_4
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1360
    const/4 v1, 0x1

    move v5, v1

    move v1, v3

    goto :goto_2

    :cond_5
    const/16 v3, 0x39

    .line 1364
    if-gt v2, v3, :cond_0

    .line 1365
    add-int/lit8 v2, v2, -0x30

    int-to-long v2, v2

    .line 1367
    :goto_3
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v8, 0x30

    .line 1368
    if-ge v1, v8, :cond_9

    :cond_6
    const/16 v8, 0x2e

    .line 1370
    if-eq v1, v8, :cond_a

    .line 1374
    if-nez v0, :cond_b

    :goto_4
    const/16 v0, 0x2c

    .line 1383
    if-ne v1, v0, :cond_d

    .line 1384
    :cond_7
    add-int/lit8 v0, v4, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    :goto_5
    const-wide/16 v8, 0x0

    .line 1390
    cmp-long v0, v2, v8

    if-ltz v0, :cond_e

    const/4 v0, 0x1

    :goto_6
    if-nez v0, :cond_f

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v0, v2, v8

    if-nez v0, :cond_8

    if-nez v5, :cond_f

    :cond_8
    const/4 v0, 0x0

    .line 1391
    :goto_7
    if-eqz v0, :cond_10

    move v0, v1

    move v1, v4

    :goto_8
    const/16 v4, 0x2c

    .line 1405
    if-eq v0, v4, :cond_11

    const/16 v4, 0x7d

    .line 1410
    if-eq v0, v4, :cond_13

    .line 1439
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, -0x1

    .line 1444
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const-wide/16 v0, 0x0

    .line 1445
    return-wide v0

    :cond_9
    const/16 v8, 0x39

    .line 1368
    if-gt v1, v8, :cond_6

    const-wide/16 v8, 0xa

    .line 1369
    mul-long/2addr v2, v8

    add-int/lit8 v1, v1, -0x30

    int-to-long v8, v1

    add-long/2addr v2, v8

    move v1, v4

    goto :goto_3

    :cond_a
    const/4 v0, -0x1

    .line 1371
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const-wide/16 v0, 0x0

    .line 1372
    return-wide v0

    :cond_b
    const/16 v0, 0x22

    .line 1375
    if-ne v1, v0, :cond_c

    .line 1379
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move v4, v0

    goto :goto_4

    :cond_c
    const/4 v0, -0x1

    .line 1376
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const-wide/16 v0, 0x0

    .line 1377
    return-wide v0

    :cond_d
    const/16 v0, 0x7d

    .line 1383
    if-eq v1, v0, :cond_7

    goto :goto_5

    .line 1390
    :cond_e
    const/4 v0, 0x0

    goto :goto_6

    :cond_f
    const/4 v0, 0x1

    goto :goto_7

    .line 1392
    :cond_10
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1393
    int-to-char v0, v7

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v0, -0x1

    .line 1394
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const-wide/16 v0, 0x0

    .line 1395
    return-wide v0

    .line 1406
    :cond_11
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v0, 0x3

    .line 1407
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 v0, 0x10

    .line 1408
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1409
    if-nez v5, :cond_12

    :goto_9
    return-wide v2

    :cond_12
    neg-long v2, v2

    goto :goto_9

    .line 1411
    :cond_13
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    :goto_a
    const/16 v1, 0x2c

    .line 1413
    if-eq v0, v1, :cond_14

    const/16 v1, 0x5d

    .line 1417
    if-eq v0, v1, :cond_15

    const/16 v1, 0x7d

    .line 1421
    if-eq v0, v1, :cond_16

    const/16 v1, 0x1a

    .line 1425
    if-eq v0, v1, :cond_17

    .line 1428
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1431
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1432
    int-to-char v0, v7

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v0, -0x1

    .line 1433
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const-wide/16 v0, 0x0

    .line 1434
    return-wide v0

    :cond_14
    const/16 v0, 0x10

    .line 1414
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1415
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_b
    const/4 v0, 0x4

    .line 1437
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1449
    if-nez v5, :cond_1a

    :goto_c
    return-wide v2

    :cond_15
    const/16 v0, 0xf

    .line 1418
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1419
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_b

    :cond_16
    const/16 v0, 0xd

    .line 1422
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1423
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_b

    :cond_17
    const/16 v0, 0x14

    .line 1426
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_b

    .line 1429
    :cond_18
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    goto :goto_a

    .line 1440
    :cond_19
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1441
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v1, v4

    .line 1442
    goto/16 :goto_8

    .line 1449
    :cond_1a
    neg-long v2, v2

    goto :goto_c
.end method

.method public scanFieldString([C)Ljava/lang/String;
    .locals 12

    .prologue
    const/16 v10, 0x5c

    const/16 v9, 0x2c

    const/16 v8, 0x22

    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 877
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 878
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 879
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 882
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 894
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v1, p1

    add-int/2addr v0, v1

    .line 896
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 897
    if-ne v0, v8, :cond_3

    .line 906
    invoke-virtual {p0, v8, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v0

    .line 907
    if-eq v0, v7, :cond_4

    .line 911
    sub-int v2, v0, v1

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 912
    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v7, :cond_5

    move-object v11, v1

    move v1, v0

    move-object v0, v11

    .line 934
    :goto_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 937
    :goto_2
    if-ne v2, v9, :cond_9

    .line 938
    :cond_0
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 939
    int-to-char v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 953
    if-eq v2, v9, :cond_b

    .line 959
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 960
    if-eq v1, v9, :cond_c

    const/16 v2, 0x5d

    .line 963
    if-eq v1, v2, :cond_d

    const/16 v2, 0x7d

    .line 966
    if-eq v1, v2, :cond_e

    const/16 v2, 0x1a

    .line 969
    if-eq v1, v2, :cond_f

    .line 972
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 973
    int-to-char v0, v5

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 974
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 975
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 883
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x2

    .line 887
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 888
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 884
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_0

    .line 898
    :cond_3
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 900
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 908
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "unclosed str"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 915
    :cond_5
    :goto_3
    add-int/lit8 v1, v0, -0x1

    move v2, v3

    :goto_4
    if-gez v1, :cond_7

    .line 922
    :cond_6
    rem-int/lit8 v1, v2, 0x2

    if-eqz v1, :cond_8

    .line 925
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v8, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v0

    goto :goto_3

    .line 916
    :cond_7
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    if-ne v6, v10, :cond_6

    .line 917
    add-int/lit8 v2, v2, 0x1

    .line 915
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 928
    :cond_8
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v2, p1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    sub-int v1, v0, v1

    .line 929
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v3, p1

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->sub_chars(II)[C

    move-result-object v2

    .line 931
    invoke-static {v2, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->readString([CI)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    move v1, v0

    move-object v0, v11

    goto/16 :goto_1

    :cond_9
    const/16 v3, 0x7d

    .line 937
    if-eq v2, v3, :cond_0

    .line 942
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_a

    .line 946
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 948
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 943
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 944
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    goto/16 :goto_2

    .line 954
    :cond_b
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v1, 0x3

    .line 955
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 956
    return-object v0

    :cond_c
    const/16 v1, 0x10

    .line 961
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 962
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_5
    const/4 v1, 0x4

    .line 977
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 979
    return-object v0

    :cond_d
    const/16 v1, 0xf

    .line 964
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 965
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_5

    :cond_e
    const/16 v1, 0xd

    .line 967
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 968
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_5

    :cond_f
    const/16 v1, 0x14

    .line 970
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_5
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

    const/4 v9, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1189
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1191
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1196
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/JSONScanner;->newCollectionByType(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v4

    .line 1210
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v1, p1

    add-int/2addr v0, v1

    .line 1212
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    .line 1214
    if-eq v0, v1, :cond_1

    .line 1280
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    const-string/jumbo v1, "ull"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1285
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1286
    return-object v3

    :cond_0
    const/4 v0, -0x2

    .line 1192
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1193
    return-object v3

    .line 1215
    :cond_1
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v6, v1

    .line 1218
    :goto_0
    if-eq v0, v10, :cond_4

    const/16 v1, 0x6e

    .line 1252
    if-eq v0, v1, :cond_a

    :cond_2
    const/16 v1, 0x5d

    .line 1256
    if-eq v0, v1, :cond_b

    .line 1260
    :cond_3
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1261
    return-object v3

    .line 1220
    :cond_4
    invoke-virtual {p0, v10, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v0

    .line 1221
    if-eq v0, v9, :cond_5

    .line 1225
    sub-int v1, v0, v6

    invoke-virtual {p0, v6, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    .line 1226
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v9, :cond_6

    move-object v12, v1

    move v1, v0

    move-object v0, v12

    .line 1248
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 1249
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1251
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 1264
    :goto_2
    if-eq v0, v11, :cond_c

    const/16 v1, 0x5d

    .line 1269
    if-eq v0, v1, :cond_d

    .line 1277
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1278
    return-object v3

    .line 1222
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "unclosed str"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1229
    :cond_6
    :goto_3
    add-int/lit8 v1, v0, -0x1

    move v2, v5

    :goto_4
    if-gez v1, :cond_8

    .line 1236
    :cond_7
    rem-int/lit8 v1, v2, 0x2

    if-eqz v1, :cond_9

    .line 1239
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v10, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v0

    goto :goto_3

    .line 1230
    :cond_8
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    const/16 v8, 0x5c

    if-ne v7, v8, :cond_7

    .line 1231
    add-int/lit8 v2, v2, 0x1

    .line 1229
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 1242
    :cond_9
    sub-int v1, v0, v6

    .line 1243
    invoke-virtual {p0, v6, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->sub_chars(II)[C

    move-result-object v2

    .line 1245
    invoke-static {v2, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->readString([CI)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    move v1, v0

    move-object v0, v12

    goto :goto_1

    .line 1252
    :cond_a
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    const-string/jumbo v2, "ull"

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1253
    add-int/lit8 v0, v6, 0x3

    .line 1254
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1255
    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v2, v1

    goto :goto_2

    .line 1256
    :cond_b
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1257
    add-int/lit8 v1, v6, 0x1

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move-object v2, v4

    .line 1289
    :goto_5
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1290
    if-eq v0, v11, :cond_10

    const/16 v4, 0x7d

    .line 1294
    if-eq v0, v4, :cond_11

    .line 1331
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1332
    return-object v3

    .line 1265
    :cond_c
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v6, v1

    .line 1266
    goto/16 :goto_0

    .line 1270
    :cond_d
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1271
    :goto_6
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_e

    move-object v2, v4

    goto :goto_5

    .line 1272
    :cond_e
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v1, v2

    goto :goto_6

    .line 1281
    :cond_f
    add-int/lit8 v0, v2, 0x3

    .line 1282
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move-object v2, v3

    .line 1283
    goto :goto_5

    .line 1291
    :cond_10
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v0, 0x3

    .line 1292
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1293
    return-object v2

    .line 1295
    :cond_11
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1297
    :goto_7
    if-eq v0, v11, :cond_12

    const/16 v4, 0x5d

    .line 1301
    if-eq v0, v4, :cond_13

    const/16 v4, 0x7d

    .line 1305
    if-eq v0, v4, :cond_14

    const/16 v4, 0x1a

    .line 1309
    if-eq v0, v4, :cond_15

    move v4, v1

    move v1, v0

    move v0, v5

    .line 1315
    :goto_8
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_16

    .line 1320
    if-nez v0, :cond_17

    .line 1324
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1325
    return-object v3

    :cond_12
    const/16 v0, 0x10

    .line 1298
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1299
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_9
    const/4 v0, 0x4

    .line 1329
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1335
    return-object v2

    :cond_13
    const/16 v0, 0xf

    .line 1302
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1303
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_9

    :cond_14
    const/16 v0, 0xd

    .line 1306
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1307
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_9

    :cond_15
    const/16 v1, 0x14

    .line 1310
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1311
    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_9

    .line 1316
    :cond_16
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1317
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1318
    const/4 v0, 0x1

    move v4, v6

    goto :goto_8

    :cond_17
    move v0, v1

    move v1, v4

    .line 1321
    goto :goto_7
.end method

.method public scanFieldStringArray([CILcom/alibaba/fastjson/parser/SymbolTable;)[Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0x22

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 2071
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2072
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2074
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2080
    if-nez p1, :cond_3

    .line 2104
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v0, 0x1

    .line 2105
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :cond_0
    const/16 v2, 0x5b

    .line 2108
    if-eq v0, v2, :cond_7

    const/16 v1, 0x6e

    .line 2111
    if-eq v0, v1, :cond_8

    .line 2116
    :cond_1
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2117
    return-object v8

    .line 2075
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_0

    .line 2081
    :cond_3
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2082
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare([C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2087
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v1, p1

    add-int/2addr v0, v1

    .line 2088
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2089
    :goto_1
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v2, 0x3a

    .line 2093
    if-eq v0, v2, :cond_6

    .line 2096
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2097
    return-object v8

    :cond_4
    const/4 v0, -0x2

    .line 2083
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2084
    return-object v8

    .line 2090
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v1, v2

    goto :goto_1

    .line 2094
    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v1, v2

    .line 2100
    :goto_2
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2101
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v1, v2

    goto :goto_2

    .line 2109
    :cond_7
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2110
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2120
    if-gez p2, :cond_9

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    :goto_3
    move-object v1, v0

    move v0, v3

    .line 2123
    :goto_4
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_a

    .line 2127
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v2, v10, :cond_b

    .line 2134
    invoke-virtual {p0, p3, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v6

    .line 2135
    array-length v2, v1

    if-eq v0, v2, :cond_c

    move-object v2, v1

    .line 2141
    :goto_5
    add-int/lit8 v1, v0, 0x1

    aput-object v6, v2, v0

    .line 2142
    :goto_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2145
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v6, 0x2c

    if-eq v0, v6, :cond_e

    .line 2151
    array-length v0, v2

    if-ne v0, v1, :cond_f

    .line 2157
    :goto_7
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2161
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_11

    .line 2164
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2165
    int-to-char v0, v5

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2166
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2167
    return-object v8

    .line 2111
    :cond_8
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    const-string/jumbo v1, "ull"

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2112
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2113
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2114
    return-object v8

    .line 2120
    :cond_9
    new-array v0, p2, [Ljava/lang/String;

    goto :goto_3

    .line 2124
    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_4

    .line 2128
    :cond_b
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2129
    int-to-char v0, v5

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2130
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2131
    return-object v8

    .line 2136
    :cond_c
    array-length v2, v1

    array-length v7, v1

    shr-int/lit8 v7, v7, 0x1

    add-int/2addr v2, v7

    add-int/lit8 v2, v2, 0x1

    .line 2137
    new-array v2, v2, [Ljava/lang/String;

    .line 2138
    array-length v7, v1

    invoke-static {v1, v3, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 2143
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_6

    .line 2146
    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    move v0, v1

    move-object v1, v2

    .line 2147
    goto/16 :goto_4

    .line 2152
    :cond_f
    new-array v0, v1, [Ljava/lang/String;

    .line 2153
    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v0

    .line 2154
    goto :goto_7

    .line 2158
    :cond_10
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_7

    .line 2162
    :cond_11
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2170
    return-object v2
.end method

.method public scanFieldSymbol([C)J
    .locals 11

    .prologue
    const/16 v10, 0x2c

    const/16 v9, 0x22

    const/4 v0, 0x0

    const/4 v8, -0x1

    const-wide/16 v6, 0x0

    .line 1101
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1103
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1108
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v1, p1

    add-int/2addr v0, v1

    .line 1110
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1111
    if-ne v0, v9, :cond_1

    const-wide v0, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 1118
    :goto_0
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1119
    if-eq v2, v9, :cond_2

    .line 1123
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-gt v3, v4, :cond_3

    .line 1128
    int-to-long v4, v2

    xor-long/2addr v0, v4

    const-wide v4, 0x100000001b3L

    .line 1129
    mul-long/2addr v0, v4

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    .line 1104
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1105
    return-wide v6

    .line 1112
    :cond_1
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1113
    return-wide v6

    .line 1120
    :cond_2
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1121
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    int-to-char v3, v2

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1133
    :goto_1
    if-eq v2, v10, :cond_4

    const/16 v3, 0x7d

    .line 1137
    if-eq v2, v3, :cond_5

    .line 1158
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1162
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1163
    return-wide v6

    .line 1124
    :cond_3
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1125
    return-wide v6

    .line 1134
    :cond_4
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v2, 0x3

    .line 1135
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1136
    return-wide v0

    .line 1138
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 1139
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 1140
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCurrent()C

    move-result v2

    .line 1141
    if-eq v2, v10, :cond_6

    const/16 v3, 0x5d

    .line 1144
    if-eq v2, v3, :cond_7

    const/16 v3, 0x7d

    .line 1147
    if-eq v2, v3, :cond_8

    const/16 v3, 0x1a

    .line 1150
    if-eq v2, v3, :cond_9

    .line 1153
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1154
    return-wide v6

    :cond_6
    const/16 v2, 0x10

    .line 1142
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1143
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_2
    const/4 v2, 0x4

    .line 1156
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1167
    return-wide v0

    :cond_7
    const/16 v2, 0xf

    .line 1145
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1146
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    :cond_8
    const/16 v2, 0xd

    .line 1148
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1149
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_2

    :cond_9
    const/16 v2, 0x14

    .line 1151
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_2

    .line 1159
    :cond_a
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    goto/16 :goto_1
.end method

.method public scanISO8601DateIfMatch()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    return v0
.end method

.method public scanISO8601DateIfMatch(Z)Z
    .locals 2

    .prologue
    .line 209
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    sub-int/2addr v0, v1

    .line 210
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(ZI)Z

    move-result v0

    return v0
.end method

.method public final scanInt(C)I
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/16 v8, 0x22

    const/4 v6, 0x5

    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 1587
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1589
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1590
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1592
    :goto_0
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1596
    if-eq v0, v8, :cond_4

    move v2, v3

    .line 1598
    :goto_1
    if-nez v2, :cond_5

    :goto_2
    const/16 v5, 0x2d

    .line 1602
    if-eq v0, v5, :cond_0

    move v4, v3

    .line 1603
    :cond_0
    if-nez v4, :cond_6

    :goto_3
    const/16 v5, 0x30

    .line 1608
    if-ge v0, v5, :cond_7

    :cond_1
    const/16 v4, 0x6e

    .line 1633
    if-eq v0, v4, :cond_e

    .line 1667
    :cond_2
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1668
    return v3

    .line 1593
    :cond_3
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v1, v2

    goto :goto_0

    :cond_4
    move v2, v4

    .line 1596
    goto :goto_1

    .line 1599
    :cond_5
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v1, v5

    goto :goto_2

    .line 1604
    :cond_6
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v1, v5

    goto :goto_3

    :cond_7
    const/16 v5, 0x39

    .line 1608
    if-gt v0, v5, :cond_1

    .line 1609
    add-int/lit8 v0, v0, -0x30

    .line 1611
    :goto_4
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v6, 0x30

    .line 1612
    if-ge v1, v6, :cond_9

    :cond_8
    const/16 v6, 0x2e

    .line 1614
    if-eq v1, v6, :cond_a

    .line 1618
    if-nez v2, :cond_b

    move v2, v5

    .line 1629
    :goto_5
    if-ltz v0, :cond_d

    .line 1672
    :goto_6
    if-eq v1, p1, :cond_14

    .line 1679
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1683
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1684
    if-nez v4, :cond_17

    :goto_7
    return v0

    :cond_9
    const/16 v6, 0x39

    .line 1612
    if-gt v1, v6, :cond_8

    .line 1613
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    move v1, v5

    goto :goto_4

    .line 1615
    :cond_a
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1616
    return v3

    .line 1619
    :cond_b
    if-ne v1, v8, :cond_c

    .line 1623
    add-int/lit8 v2, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    goto :goto_5

    .line 1620
    :cond_c
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1621
    return v3

    .line 1630
    :cond_d
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1631
    return v3

    .line 1633
    :cond_e
    add-int/lit8 v0, v1, 0x1

    .line 1634
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v4, 0x75

    if-ne v1, v4, :cond_2

    add-int/lit8 v1, v0, 0x1

    .line 1635
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v4, 0x6c

    if-ne v0, v4, :cond_2

    add-int/lit8 v0, v1, 0x1

    .line 1636
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v4, 0x6c

    if-ne v1, v4, :cond_2

    .line 1637
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1639
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1641
    if-nez v2, :cond_10

    :cond_f
    :goto_8
    const/16 v2, 0x2c

    .line 1646
    if-eq v0, v2, :cond_11

    const/16 v2, 0x5d

    .line 1652
    if-eq v0, v2, :cond_12

    .line 1658
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1664
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1665
    return v3

    .line 1641
    :cond_10
    if-ne v0, v8, :cond_f

    .line 1642
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v1, v2

    goto :goto_8

    .line 1647
    :cond_11
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1648
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1649
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 v0, 0x10

    .line 1650
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1651
    return v3

    .line 1653
    :cond_12
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1654
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1655
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 v0, 0xf

    .line 1656
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1657
    return v3

    .line 1659
    :cond_13
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v1, v2

    .line 1660
    goto :goto_8

    .line 1673
    :cond_14
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1674
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v1, 0x3

    .line 1675
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 v1, 0x10

    .line 1676
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1677
    if-nez v4, :cond_15

    :goto_9
    return v0

    :cond_15
    neg-int v0, v0

    goto :goto_9

    .line 1680
    :cond_16
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move v2, v3

    .line 1681
    goto/16 :goto_6

    .line 1684
    :cond_17
    neg-int v0, v0

    goto/16 :goto_7
.end method

.method public scanLong(C)J
    .locals 13

    .prologue
    const/4 v7, 0x5

    const/4 v2, 0x1

    const/4 v12, -0x1

    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    .line 1830
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1832
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1833
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    const/16 v0, 0x22

    .line 1834
    if-eq v4, v0, :cond_2

    move v0, v1

    .line 1836
    :goto_0
    if-nez v0, :cond_3

    :goto_1
    const/16 v3, 0x2d

    .line 1840
    if-eq v4, v3, :cond_4

    move v3, v1

    .line 1841
    :goto_2
    if-nez v3, :cond_5

    :goto_3
    const/16 v5, 0x30

    .line 1846
    if-ge v4, v5, :cond_6

    :cond_0
    const/16 v1, 0x6e

    .line 1873
    if-eq v4, v1, :cond_10

    .line 1907
    :cond_1
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1908
    return-wide v10

    :cond_2
    move v0, v2

    .line 1834
    goto :goto_0

    .line 1837
    :cond_3
    add-int/lit8 v3, v6, 0x1

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    move v6, v3

    goto :goto_1

    :cond_4
    move v3, v2

    .line 1840
    goto :goto_2

    .line 1842
    :cond_5
    add-int/lit8 v5, v6, 0x1

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    move v6, v5

    goto :goto_3

    :cond_6
    const/16 v5, 0x39

    .line 1846
    if-gt v4, v5, :cond_0

    .line 1847
    add-int/lit8 v4, v4, -0x30

    int-to-long v4, v4

    .line 1849
    :goto_4
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    const/16 v8, 0x30

    .line 1850
    if-ge v6, v8, :cond_9

    :cond_7
    const/16 v8, 0x2e

    .line 1852
    if-eq v6, v8, :cond_a

    .line 1856
    if-nez v0, :cond_b

    move v0, v6

    move v6, v7

    .line 1868
    :goto_5
    cmp-long v7, v4, v10

    if-ltz v7, :cond_d

    move v7, v2

    :goto_6
    if-nez v7, :cond_e

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v7, v4, v8

    if-nez v7, :cond_8

    if-nez v3, :cond_e

    .line 1869
    :cond_8
    :goto_7
    if-eqz v1, :cond_f

    move v1, v6

    .line 1912
    :goto_8
    if-eq v0, p1, :cond_16

    .line 1919
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1924
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1925
    return-wide v4

    :cond_9
    const/16 v8, 0x39

    .line 1850
    if-gt v6, v8, :cond_7

    const-wide/16 v8, 0xa

    .line 1851
    mul-long/2addr v4, v8

    add-int/lit8 v6, v6, -0x30

    int-to-long v8, v6

    add-long/2addr v4, v8

    move v6, v7

    goto :goto_4

    .line 1853
    :cond_a
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1854
    return-wide v10

    :cond_b
    const/16 v0, 0x22

    .line 1857
    if-ne v6, v0, :cond_c

    .line 1861
    add-int/lit8 v6, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    goto :goto_5

    .line 1858
    :cond_c
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1859
    return-wide v10

    :cond_d
    move v7, v1

    .line 1868
    goto :goto_6

    :cond_e
    move v1, v2

    goto :goto_7

    .line 1870
    :cond_f
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1871
    return-wide v10

    .line 1873
    :cond_10
    add-int/lit8 v1, v6, 0x1

    .line 1874
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x75

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 1875
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v2, 0x1

    .line 1876
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_1

    .line 1877
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1879
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1881
    if-nez v0, :cond_12

    :cond_11
    move v0, v1

    move v1, v2

    :goto_9
    const/16 v2, 0x2c

    .line 1886
    if-eq v0, v2, :cond_13

    const/16 v2, 0x5d

    .line 1892
    if-eq v0, v2, :cond_14

    .line 1898
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1904
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1905
    return-wide v10

    :cond_12
    const/16 v0, 0x22

    .line 1881
    if-ne v1, v0, :cond_11

    .line 1882
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    goto :goto_9

    .line 1887
    :cond_13
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1888
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1889
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 v0, 0x10

    .line 1890
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1891
    return-wide v10

    .line 1893
    :cond_14
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1894
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1895
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 v0, 0xf

    .line 1896
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1897
    return-wide v10

    .line 1899
    :cond_15
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v1, v2

    .line 1900
    goto :goto_9

    .line 1913
    :cond_16
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1914
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v0, 0x3

    .line 1915
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 v0, 0x10

    .line 1916
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1917
    if-nez v3, :cond_17

    :goto_a
    return-wide v4

    :cond_17
    neg-long v4, v4

    goto :goto_a

    .line 1920
    :cond_18
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v1, v2

    .line 1921
    goto/16 :goto_8
.end method

.method protected setTime(CCCCCC)V
    .locals 5

    .prologue
    .line 628
    add-int/lit8 v0, p1, -0x30

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, p2, -0x30

    add-int/2addr v0, v1

    .line 629
    add-int/lit8 v1, p3, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, p4, -0x30

    add-int/2addr v1, v2

    .line 630
    add-int/lit8 v2, p5, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, p6, -0x30

    add-int/2addr v2, v3

    .line 631
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 632
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 633
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 634
    return-void
.end method

.method protected setTimeZone(CCC)V
    .locals 6

    .prologue
    const/16 v4, 0x30

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    .line 637
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCCCC)V

    .line 638
    return-void
.end method

.method protected setTimeZone(CCCCC)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 641
    add-int/lit8 v0, p2, -0x30

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, p3, -0x30

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0xe10

    mul-int/lit16 v0, v0, 0x3e8

    .line 643
    add-int/lit8 v1, p4, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, p5, -0x30

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    const/16 v1, 0x2d

    .line 645
    if-eq p1, v1, :cond_1

    .line 649
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 656
    :cond_0
    :goto_1
    return-void

    .line 646
    :cond_1
    neg-int v0, v0

    goto :goto_0

    .line 650
    :cond_2
    invoke-static {v0}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v0

    .line 651
    array-length v1, v0

    if-lez v1, :cond_0

    .line 652
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 653
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_1
.end method

.method public final stringVal()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 141
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 142
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final subString(II)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 149
    sget-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p2

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v0, v0

    if-lt p2, v0, :cond_1

    .line 154
    new-array v0, p2, [C

    .line 155
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 156
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p2

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-virtual {v0, p1, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 152
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-direct {v0, v1, v3, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public final sub_chars(II)[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 164
    sget-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-nez v0, :cond_1

    .line 168
    :cond_0
    new-array v0, p2, [C

    .line 169
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 170
    return-object v0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p2

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-virtual {v0, p1, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 166
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    return-object v0
.end method
