.class public final Lokhttp3/Cookie;
.super Ljava/lang/Object;
.source "Cookie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Cookie$Builder;
    }
.end annotation


# static fields
.field private static final DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final YEAR_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final domain:Ljava/lang/String;

.field private final expiresAt:J

.field private final hostOnly:Z

.field private final httpOnly:Z

.field private final name:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final persistent:Z

.field private final secure:Z

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "(\\d{2,4})[^\\d]*"

    .line 48
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*"

    .line 50
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "(\\d{1,2})[^\\d]*"

    .line 52
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*"

    .line 54
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 53
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    .line 71
    iput-wide p3, p0, Lokhttp3/Cookie;->expiresAt:J

    .line 72
    iput-object p5, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    .line 73
    iput-object p6, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    .line 74
    iput-boolean p7, p0, Lokhttp3/Cookie;->secure:Z

    .line 75
    iput-boolean p8, p0, Lokhttp3/Cookie;->httpOnly:Z

    .line 76
    iput-boolean p9, p0, Lokhttp3/Cookie;->hostOnly:Z

    .line 77
    iput-boolean p10, p0, Lokhttp3/Cookie;->persistent:Z

    .line 78
    return-void
.end method

.method constructor <init>(Lokhttp3/Cookie$Builder;)V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iget-object v0, p1, Lokhttp3/Cookie$Builder;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p1, Lokhttp3/Cookie$Builder;->value:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p1, Lokhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p1, Lokhttp3/Cookie$Builder;->name:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    .line 86
    iget-object v0, p1, Lokhttp3/Cookie$Builder;->value:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    .line 87
    iget-wide v0, p1, Lokhttp3/Cookie$Builder;->expiresAt:J

    iput-wide v0, p0, Lokhttp3/Cookie;->expiresAt:J

    .line 88
    iget-object v0, p1, Lokhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    .line 89
    iget-object v0, p1, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    .line 90
    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->secure:Z

    iput-boolean v0, p0, Lokhttp3/Cookie;->secure:Z

    .line 91
    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->httpOnly:Z

    iput-boolean v0, p0, Lokhttp3/Cookie;->httpOnly:Z

    .line 92
    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->persistent:Z

    iput-boolean v0, p0, Lokhttp3/Cookie;->persistent:Z

    .line 93
    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->hostOnly:Z

    iput-boolean v0, p0, Lokhttp3/Cookie;->hostOnly:Z

    .line 94
    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "builder.name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "builder.value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "builder.domain == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static dateCharacterOffset(Ljava/lang/String;IIZ)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 389
    :goto_0
    if-lt p1, p2, :cond_0

    .line 398
    return p2

    .line 390
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x20

    .line 391
    if-lt v0, v3, :cond_3

    :cond_1
    const/16 v3, 0x7f

    if-lt v0, v3, :cond_4

    :cond_2
    :goto_1
    move v0, v1

    .line 396
    :goto_2
    if-eqz p3, :cond_b

    move v3, v2

    :goto_3
    if-eq v0, v3, :cond_c

    .line 389
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    const/16 v3, 0x9

    .line 391
    if-eq v0, v3, :cond_1

    goto :goto_1

    :cond_4
    const/16 v3, 0x30

    if-ge v0, v3, :cond_8

    :cond_5
    const/16 v3, 0x61

    if-ge v0, v3, :cond_9

    :cond_6
    const/16 v3, 0x41

    if-ge v0, v3, :cond_a

    :cond_7
    const/16 v3, 0x3a

    if-eq v0, v3, :cond_2

    move v0, v2

    goto :goto_2

    :cond_8
    const/16 v3, 0x39

    if-gt v0, v3, :cond_5

    goto :goto_1

    :cond_9
    const/16 v3, 0x7a

    if-gt v0, v3, :cond_6

    goto :goto_1

    :cond_a
    const/16 v3, 0x5a

    if-gt v0, v3, :cond_7

    goto :goto_1

    :cond_b
    move v3, v1

    .line 396
    goto :goto_3

    :cond_c
    return p1
.end method

.method private static domainMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 186
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 196
    :cond_0
    return v2

    .line 187
    :cond_1
    return v3

    .line 191
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 192
    invoke-static {p0}, Lokhttp3/internal/Util;->verifyAsIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    return v3
.end method

.method static parse(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    .locals 20
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 224
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v16

    const/4 v2, 0x0

    .line 225
    const/16 v3, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-static {v0, v2, v1, v3}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v2

    const/4 v3, 0x0

    .line 227
    const/16 v4, 0x3d

    move-object/from16 v0, p3

    invoke-static {v0, v3, v2, v4}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v3

    .line 228
    if-eq v3, v2, :cond_1

    const/4 v4, 0x0

    .line 230
    move-object/from16 v0, p3

    invoke-static {v0, v4, v3}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    .line 231
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v2, 0x0

    return-object v2

    :cond_1
    const/4 v2, 0x0

    .line 228
    return-object v2

    .line 231
    :cond_2
    invoke-static {v4}, Lokhttp3/internal/Util;->indexOfControlOrNonAscii(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 233
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p3

    invoke-static {v0, v3, v2}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 234
    invoke-static {v5}, Lokhttp3/internal/Util;->indexOfControlOrNonAscii(Ljava/lang/String;)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_6

    const-wide v14, 0xe677d21fdbffL

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 240
    const/4 v10, 0x0

    .line 241
    const/4 v11, 0x0

    .line 242
    const/4 v12, 0x1

    .line 243
    const/4 v13, 0x0

    .line 245
    add-int/lit8 v2, v2, 0x1

    .line 246
    :goto_0
    move/from16 v0, v16

    if-lt v2, v0, :cond_7

    const-wide/high16 v16, -0x8000000000000000L

    .line 289
    cmp-long v2, v6, v16

    if-nez v2, :cond_f

    const-wide/high16 v6, -0x8000000000000000L

    .line 302
    :cond_3
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    .line 303
    if-eqz v8, :cond_16

    .line 305
    invoke-static {v2, v8}, Lokhttp3/Cookie;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 310
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v2, v9, :cond_18

    .line 317
    :cond_4
    if-nez v3, :cond_19

    .line 318
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    .line 319
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 320
    if-nez v3, :cond_1a

    const-string/jumbo v2, "/"

    :goto_3
    move-object v9, v2

    .line 323
    :goto_4
    new-instance v3, Lokhttp3/Cookie;

    invoke-direct/range {v3 .. v13}, Lokhttp3/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    return-object v3

    :cond_6
    const/4 v2, 0x0

    .line 234
    return-object v2

    .line 247
    :cond_7
    const/16 v9, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-static {v0, v2, v1, v9}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v17

    .line 249
    const/16 v9, 0x3d

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-static {v0, v2, v1, v9}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v9

    .line 250
    move-object/from16 v0, p3

    invoke-static {v0, v2, v9}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v18

    .line 251
    move/from16 v0, v17

    if-lt v9, v0, :cond_8

    const-string/jumbo v2, ""

    :goto_5
    const-string/jumbo v9, "expires"

    .line 255
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string/jumbo v9, "max-age"

    .line 262
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string/jumbo v9, "domain"

    .line 269
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string/jumbo v9, "path"

    .line 276
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string/jumbo v2, "secure"

    .line 278
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string/jumbo v2, "httponly"

    .line 280
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    move-object v2, v3

    move-object v3, v8

    move-wide v8, v14

    .line 284
    :goto_6
    add-int/lit8 v14, v17, 0x1

    move-object/from16 v19, v2

    move v2, v14

    move-wide v14, v8

    move-object v8, v3

    move-object/from16 v3, v19

    .line 285
    goto/16 :goto_0

    .line 252
    :cond_8
    add-int/lit8 v2, v9, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-static {v0, v2, v1}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_9
    const/4 v9, 0x0

    .line 257
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-static {v2, v9, v0}, Lokhttp3/Cookie;->parseExpires(Ljava/lang/String;II)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v14

    .line 258
    const/4 v13, 0x1

    :goto_7
    move-object v2, v3

    move-object v3, v8

    move-wide v8, v14

    .line 261
    goto :goto_6

    .line 264
    :cond_a
    :try_start_1
    invoke-static {v2}, Lokhttp3/Cookie;->parseMaxAge(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v6

    .line 265
    const/4 v13, 0x1

    :goto_8
    move-object v2, v3

    move-object v3, v8

    move-wide v8, v14

    .line 268
    goto :goto_6

    :catch_0
    move-exception v2

    goto :goto_8

    .line 271
    :cond_b
    :try_start_2
    invoke-static {v2}, Lokhttp3/Cookie;->parseDomain(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 272
    const/4 v12, 0x0

    move-wide v8, v14

    move-object/from16 v19, v2

    move-object v2, v3

    move-object/from16 v3, v19

    .line 275
    goto :goto_6

    :catch_1
    move-exception v2

    move-object v2, v3

    move-object v3, v8

    move-wide v8, v14

    goto :goto_6

    :cond_c
    move-object v3, v8

    move-wide v8, v14

    .line 277
    goto :goto_6

    .line 279
    :cond_d
    const/4 v10, 0x1

    move-object v2, v3

    move-object v3, v8

    move-wide v8, v14

    goto :goto_6

    .line 281
    :cond_e
    const/4 v11, 0x1

    move-object v2, v3

    move-object v3, v8

    move-wide v8, v14

    goto :goto_6

    :cond_f
    const-wide/16 v16, -0x1

    .line 291
    cmp-long v2, v6, v16

    if-eqz v2, :cond_11

    const-wide v14, 0x20c49ba5e353f7L

    .line 292
    cmp-long v2, v6, v14

    if-lez v2, :cond_12

    const/4 v2, 0x1

    :goto_9
    if-nez v2, :cond_13

    const-wide/16 v14, 0x3e8

    .line 293
    mul-long/2addr v6, v14

    .line 295
    :goto_a
    add-long v6, v6, p0

    .line 296
    cmp-long v2, v6, p0

    if-gez v2, :cond_14

    const/4 v2, 0x1

    :goto_b
    if-nez v2, :cond_10

    const-wide v14, 0xe677d21fdbffL

    cmp-long v2, v6, v14

    if-gtz v2, :cond_15

    const/4 v2, 0x1

    :goto_c
    if-nez v2, :cond_3

    :cond_10
    const-wide v6, 0xe677d21fdbffL

    .line 297
    goto/16 :goto_1

    :cond_11
    move-wide v6, v14

    .line 291
    goto/16 :goto_1

    .line 292
    :cond_12
    const/4 v2, 0x0

    goto :goto_9

    :cond_13
    const-wide v6, 0x7fffffffffffffffL

    .line 294
    goto :goto_a

    .line 296
    :cond_14
    const/4 v2, 0x0

    goto :goto_b

    :cond_15
    const/4 v2, 0x0

    goto :goto_c

    :cond_16
    move-object v8, v2

    .line 304
    goto/16 :goto_2

    :cond_17
    const/4 v2, 0x0

    .line 306
    return-object v2

    .line 311
    :cond_18
    invoke-static {}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    move-result-object v2

    invoke-virtual {v2, v8}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    .line 312
    return-object v2

    :cond_19
    const-string/jumbo v2, "/"

    .line 317
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v9, v3

    goto/16 :goto_4

    :cond_1a
    const/4 v9, 0x0

    .line 320
    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 261
    :catch_2
    move-exception v2

    goto/16 :goto_7
.end method

.method public static parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Lokhttp3/Cookie;->parse(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object v0

    return-object v0
.end method

.method public static parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "Set-Cookie"

    .line 441
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    .line 444
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 451
    if-nez v1, :cond_3

    .line 453
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 451
    :goto_1
    return-object v0

    .line 445
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lokhttp3/Cookie;->parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object v5

    .line 446
    if-eqz v5, :cond_1

    .line 447
    if-eqz v1, :cond_2

    move-object v0, v1

    .line 448
    :goto_2
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 446
    goto :goto_3

    .line 447
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    .line 452
    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method private static parseDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "."

    .line 426
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "."

    .line 429
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 432
    :goto_0
    invoke-static {p0}, Lokhttp3/internal/Util;->canonicalizeHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 433
    if-eqz v0, :cond_2

    .line 436
    return-object v0

    .line 427
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x1

    .line 430
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 434
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static parseExpires(Ljava/lang/String;II)J
    .locals 10

    .prologue
    .line 329
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lokhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v6

    const/4 v5, -0x1

    const/4 v4, -0x1

    const/4 v3, -0x1

    const/4 v2, -0x1

    const/4 v1, -0x1

    const/4 v0, -0x1

    .line 337
    sget-object v7, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 339
    :goto_0
    if-lt v6, p2, :cond_3

    const/16 v6, 0x46

    .line 360
    if-ge v0, v6, :cond_c

    .line 361
    :cond_0
    :goto_1
    if-gez v0, :cond_d

    :cond_1
    :goto_2
    const/16 v6, 0x641

    .line 365
    if-lt v0, v6, :cond_e

    const/4 v6, -0x1

    .line 366
    if-eq v1, v6, :cond_f

    const/4 v6, 0x1

    .line 367
    if-ge v2, v6, :cond_10

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 340
    :cond_3
    add-int/lit8 v8, v6, 0x1

    const/4 v9, 0x1

    invoke-static {p0, v8, p2, v9}, Lokhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v8

    .line 341
    invoke-virtual {v7, v6, v8}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v6, -0x1

    .line 343
    if-eq v5, v6, :cond_8

    :cond_4
    const/4 v6, -0x1

    .line 347
    if-eq v2, v6, :cond_9

    :cond_5
    const/4 v6, -0x1

    .line 349
    if-eq v1, v6, :cond_a

    :cond_6
    const/4 v6, -0x1

    .line 352
    if-eq v0, v6, :cond_b

    .line 356
    :cond_7
    :goto_3
    add-int/lit8 v6, v8, 0x1

    const/4 v8, 0x0

    invoke-static {p0, v6, p2, v8}, Lokhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v6

    goto :goto_0

    .line 343
    :cond_8
    sget-object v6, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v3, 0x1

    .line 344
    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v3, 0x2

    .line 345
    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v3, 0x3

    .line 346
    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_3

    .line 347
    :cond_9
    sget-object v6, Lokhttp3/Cookie;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v2, 0x1

    .line 348
    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_3

    .line 349
    :cond_a
    sget-object v6, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v1, 0x1

    .line 350
    invoke-virtual {v7, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 351
    sget-object v6, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    goto :goto_3

    .line 352
    :cond_b
    sget-object v6, Lokhttp3/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v0, 0x1

    .line 353
    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    :cond_c
    const/16 v6, 0x63

    .line 360
    if-gt v0, v6, :cond_0

    add-int/lit16 v0, v0, 0x76c

    goto/16 :goto_1

    :cond_d
    const/16 v6, 0x45

    .line 361
    if-gt v0, v6, :cond_1

    add-int/lit16 v0, v0, 0x7d0

    goto/16 :goto_2

    .line 365
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 366
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_10
    const/16 v6, 0x1f

    .line 367
    if-gt v2, v6, :cond_2

    .line 368
    if-gez v5, :cond_12

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_12
    const/16 v6, 0x17

    if-gt v5, v6, :cond_11

    .line 369
    if-gez v4, :cond_14

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_14
    const/16 v6, 0x3b

    if-gt v4, v6, :cond_13

    .line 370
    if-gez v3, :cond_16

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_16
    const/16 v6, 0x3b

    if-gt v3, v6, :cond_15

    .line 372
    new-instance v6, Ljava/util/GregorianCalendar;

    sget-object v7, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    invoke-direct {v6, v7}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 373
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->setLenient(Z)V

    const/4 v7, 0x1

    .line 374
    invoke-virtual {v6, v7, v0}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x2

    .line 375
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    .line 376
    invoke-virtual {v6, v0, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xb

    .line 377
    invoke-virtual {v6, v0, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 378
    invoke-virtual {v6, v0, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 379
    invoke-virtual {v6, v0, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    const/4 v1, 0x0

    .line 380
    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 381
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private static parseMaxAge(Ljava/lang/String;)J
    .locals 8

    .prologue
    const-wide/high16 v0, -0x8000000000000000L

    const/4 v4, 0x0

    .line 410
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    const-wide/16 v6, 0x0

    .line 411
    cmp-long v5, v2, v6

    if-lez v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    if-nez v4, :cond_1

    :goto_0
    return-wide v0

    :cond_1
    move-wide v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "-?\\d+"

    .line 414
    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 417
    throw v2

    :cond_2
    const-string/jumbo v2, "-"

    .line 415
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-wide v0, 0x7fffffffffffffffL

    :cond_3
    return-wide v0
.end method

.method private static pathMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 200
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 211
    :cond_0
    return v2

    .line 203
    :cond_1
    return v3

    :cond_2
    const-string/jumbo v1, "/"

    .line 207
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 208
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    return v3

    .line 207
    :cond_3
    return v3
.end method


# virtual methods
.method public domain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 586
    instance-of v1, p1, Lokhttp3/Cookie;

    if-eqz v1, :cond_1

    .line 587
    check-cast p1, Lokhttp3/Cookie;

    .line 588
    iget-object v1, p1, Lokhttp3/Cookie;->name:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    return v0

    .line 586
    :cond_1
    return v0

    .line 588
    :cond_2
    iget-object v1, p1, Lokhttp3/Cookie;->value:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    .line 589
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    .line 590
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lokhttp3/Cookie;->path:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    .line 591
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p1, Lokhttp3/Cookie;->expiresAt:J

    iget-wide v4, p0, Lokhttp3/Cookie;->expiresAt:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lokhttp3/Cookie;->secure:Z

    iget-boolean v2, p0, Lokhttp3/Cookie;->secure:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p1, Lokhttp3/Cookie;->httpOnly:Z

    iget-boolean v2, p0, Lokhttp3/Cookie;->httpOnly:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p1, Lokhttp3/Cookie;->persistent:Z

    iget-boolean v2, p0, Lokhttp3/Cookie;->persistent:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p1, Lokhttp3/Cookie;->hostOnly:Z

    iget-boolean v2, p0, Lokhttp3/Cookie;->hostOnly:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public expiresAt()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lokhttp3/Cookie;->expiresAt:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 601
    iget-object v0, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 602
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 603
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 604
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 605
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lokhttp3/Cookie;->expiresAt:J

    iget-wide v6, p0, Lokhttp3/Cookie;->expiresAt:J

    const/16 v3, 0x20

    ushr-long/2addr v6, v3

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int/2addr v0, v3

    .line 606
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lokhttp3/Cookie;->secure:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    .line 607
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lokhttp3/Cookie;->httpOnly:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    .line 608
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lokhttp3/Cookie;->persistent:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    .line 609
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lokhttp3/Cookie;->hostOnly:Z

    if-nez v3, :cond_3

    :goto_3
    add-int/2addr v0, v1

    .line 610
    return v0

    :cond_0
    move v0, v2

    .line 606
    goto :goto_0

    :cond_1
    move v0, v2

    .line 607
    goto :goto_1

    :cond_2
    move v0, v2

    .line 608
    goto :goto_2

    :cond_3
    move v1, v2

    .line 609
    goto :goto_3
.end method

.method public hostOnly()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lokhttp3/Cookie;->hostOnly:Z

    return v0
.end method

.method public httpOnly()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lokhttp3/Cookie;->httpOnly:Z

    return v0
.end method

.method public matches(Lokhttp3/HttpUrl;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    iget-boolean v0, p0, Lokhttp3/Cookie;->hostOnly:Z

    if-nez v0, :cond_1

    .line 175
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-static {v0, v1}, Lokhttp3/Cookie;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 176
    :goto_0
    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-static {p1, v0}, Lokhttp3/Cookie;->pathMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    iget-boolean v0, p0, Lokhttp3/Cookie;->secure:Z

    if-nez v0, :cond_4

    .line 182
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 174
    :cond_1
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 176
    :cond_2
    return v2

    .line 178
    :cond_3
    return v2

    .line 180
    :cond_4
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result v0

    if-nez v0, :cond_0

    return v2
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method public persistent()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lokhttp3/Cookie;->persistent:Z

    return v0
.end method

.method public secure()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lokhttp3/Cookie;->secure:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/Cookie;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Z)Ljava/lang/String;
    .locals 6

    .prologue
    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    iget-object v1, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 554
    iget-object v1, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    iget-boolean v1, p0, Lokhttp3/Cookie;->persistent:Z

    if-nez v1, :cond_0

    .line 564
    :goto_0
    iget-boolean v1, p0, Lokhttp3/Cookie;->hostOnly:Z

    if-eqz v1, :cond_2

    :goto_1
    const-string/jumbo v1, "; path="

    .line 572
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    iget-boolean v1, p0, Lokhttp3/Cookie;->secure:Z

    if-nez v1, :cond_4

    .line 578
    :goto_2
    iget-boolean v1, p0, Lokhttp3/Cookie;->httpOnly:Z

    if-nez v1, :cond_5

    .line 582
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 557
    :cond_0
    iget-wide v2, p0, Lokhttp3/Cookie;->expiresAt:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const-string/jumbo v1, "; max-age=0"

    .line 558
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "; expires="

    .line 560
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lokhttp3/Cookie;->expiresAt:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lokhttp3/internal/http/HttpDate;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "; domain="

    .line 565
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    if-nez p1, :cond_3

    .line 569
    :goto_4
    iget-object v1, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "."

    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    const-string/jumbo v1, "; secure"

    .line 575
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const-string/jumbo v1, "; httponly"

    .line 579
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public value()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    return-object v0
.end method
