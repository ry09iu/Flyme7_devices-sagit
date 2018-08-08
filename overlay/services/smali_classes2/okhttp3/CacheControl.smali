.class public final Lokhttp3/CacheControl;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/CacheControl$Builder;
    }
.end annotation


# static fields
.field public static final FORCE_CACHE:Lokhttp3/CacheControl;

.field public static final FORCE_NETWORK:Lokhttp3/CacheControl;


# instance fields
.field headerValue:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final immutable:Z

.field private final isPrivate:Z

.field private final isPublic:Z

.field private final maxAgeSeconds:I

.field private final maxStaleSeconds:I

.field private final minFreshSeconds:I

.field private final mustRevalidate:Z

.field private final noCache:Z

.field private final noStore:Z

.field private final noTransform:Z

.field private final onlyIfCached:Z

.field private final sMaxAgeSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noCache()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v0

    sput-object v0, Lokhttp3/CacheControl;->FORCE_NETWORK:Lokhttp3/CacheControl;

    .line 25
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    .line 26
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->onlyIfCached()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    const v1, 0x7fffffff

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 27
    invoke-virtual {v0, v1, v2}, Lokhttp3/CacheControl$Builder;->maxStale(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v0

    sput-object v0, Lokhttp3/CacheControl;->FORCE_CACHE:Lokhttp3/CacheControl;

    .line 25
    return-void
.end method

.method constructor <init>(Lokhttp3/CacheControl$Builder;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->noCache:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->noCache:Z

    .line 66
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->noStore:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->noStore:Z

    .line 67
    iget v0, p1, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I

    iput v0, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    .line 69
    iput-boolean v1, p0, Lokhttp3/CacheControl;->isPrivate:Z

    .line 70
    iput-boolean v1, p0, Lokhttp3/CacheControl;->isPublic:Z

    .line 71
    iput-boolean v1, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    .line 72
    iget v0, p1, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I

    iput v0, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    .line 73
    iget v0, p1, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I

    iput v0, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    .line 74
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->onlyIfCached:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    .line 75
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->noTransform:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->noTransform:Z

    .line 76
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->immutable:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->immutable:Z

    .line 77
    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZZLjava/lang/String;)V
    .locals 0
    .param p13    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean p1, p0, Lokhttp3/CacheControl;->noCache:Z

    .line 50
    iput-boolean p2, p0, Lokhttp3/CacheControl;->noStore:Z

    .line 51
    iput p3, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    .line 52
    iput p4, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    .line 53
    iput-boolean p5, p0, Lokhttp3/CacheControl;->isPrivate:Z

    .line 54
    iput-boolean p6, p0, Lokhttp3/CacheControl;->isPublic:Z

    .line 55
    iput-boolean p7, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    .line 56
    iput p8, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    .line 57
    iput p9, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    .line 58
    iput-boolean p10, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    .line 59
    iput-boolean p11, p0, Lokhttp3/CacheControl;->noTransform:Z

    .line 60
    iput-boolean p12, p0, Lokhttp3/CacheControl;->immutable:Z

    .line 61
    iput-object p13, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private headerValue()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    iget-boolean v1, p0, Lokhttp3/CacheControl;->noCache:Z

    if-nez v1, :cond_0

    .line 261
    :goto_0
    iget-boolean v1, p0, Lokhttp3/CacheControl;->noStore:Z

    if-nez v1, :cond_1

    .line 262
    :goto_1
    iget v1, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    if-ne v1, v3, :cond_2

    .line 263
    :goto_2
    iget v1, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    if-ne v1, v3, :cond_3

    .line 264
    :goto_3
    iget-boolean v1, p0, Lokhttp3/CacheControl;->isPrivate:Z

    if-nez v1, :cond_4

    .line 265
    :goto_4
    iget-boolean v1, p0, Lokhttp3/CacheControl;->isPublic:Z

    if-nez v1, :cond_5

    .line 266
    :goto_5
    iget-boolean v1, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    if-nez v1, :cond_6

    .line 267
    :goto_6
    iget v1, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    if-ne v1, v3, :cond_7

    .line 268
    :goto_7
    iget v1, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    if-ne v1, v3, :cond_8

    .line 269
    :goto_8
    iget-boolean v1, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    if-nez v1, :cond_9

    .line 270
    :goto_9
    iget-boolean v1, p0, Lokhttp3/CacheControl;->noTransform:Z

    if-nez v1, :cond_a

    .line 271
    :goto_a
    iget-boolean v1, p0, Lokhttp3/CacheControl;->immutable:Z

    if-nez v1, :cond_b

    .line 272
    :goto_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_c

    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v1, "no-cache, "

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "no-store, "

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "max-age="

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string/jumbo v1, "s-maxage="

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const-string/jumbo v1, "private, "

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    const-string/jumbo v1, "public, "

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_6
    const-string/jumbo v1, "must-revalidate, "

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_7
    const-string/jumbo v1, "max-stale="

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_8
    const-string/jumbo v1, "min-fresh="

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :cond_9
    const-string/jumbo v1, "only-if-cached, "

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_a
    const-string/jumbo v1, "no-transform, "

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :cond_b
    const-string/jumbo v1, "immutable, "

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    :cond_c
    const-string/jumbo v0, ""

    .line 272
    return-object v0
.end method

.method public static parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;
    .locals 24

    .prologue
    .line 153
    const/4 v15, 0x0

    .line 154
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    .line 157
    const/4 v7, 0x0

    .line 158
    const/4 v8, 0x0

    .line 159
    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    .line 162
    const/4 v12, 0x0

    .line 163
    const/4 v13, 0x0

    .line 164
    const/4 v14, 0x0

    .line 166
    const/16 v16, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 169
    invoke-virtual/range {p0 .. p0}, Lokhttp3/Headers;->size()I

    move-result v20

    move/from16 v19, v2

    move-object v2, v3

    move v3, v15

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_0

    .line 245
    if-eqz v16, :cond_15

    move-object v15, v2

    .line 248
    :goto_1
    new-instance v2, Lokhttp3/CacheControl;

    invoke-direct/range {v2 .. v15}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    return-object v2

    .line 170
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v17

    .line 171
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v18, "Cache-Control"

    .line 173
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    const-string/jumbo v18, "Pragma"

    .line 180
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 169
    :goto_2
    add-int/lit8 v15, v19, 0x1

    move/from16 v19, v15

    goto :goto_0

    .line 174
    :cond_1
    if-nez v2, :cond_3

    move-object v2, v15

    :goto_3
    const/16 v17, 0x0

    move/from16 v23, v17

    move/from16 v17, v3

    move/from16 v3, v23

    .line 188
    :cond_2
    :goto_4
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-lt v3, v0, :cond_5

    move/from16 v3, v17

    goto :goto_2

    .line 176
    :cond_3
    const/16 v16, 0x0

    goto :goto_3

    .line 182
    :cond_4
    const/16 v16, 0x0

    goto :goto_3

    :cond_5
    const-string/jumbo v18, "=,;"

    .line 190
    move-object/from16 v0, v18

    invoke-static {v15, v3, v0}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v18

    .line 191
    move/from16 v0, v18

    invoke-virtual {v15, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .line 194
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v18

    if-ne v0, v3, :cond_7

    .line 195
    :cond_6
    add-int/lit8 v18, v18, 0x1

    const/4 v3, 0x0

    move-object/from16 v23, v3

    move/from16 v3, v18

    move-object/from16 v18, v23

    :goto_5
    const-string/jumbo v22, "no-cache"

    .line 217
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_a

    const-string/jumbo v22, "no-store"

    .line 219
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_b

    const-string/jumbo v22, "max-age"

    .line 221
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_c

    const-string/jumbo v22, "s-maxage"

    .line 223
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_d

    const-string/jumbo v22, "private"

    .line 225
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_e

    const-string/jumbo v22, "public"

    .line 227
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_f

    const-string/jumbo v22, "must-revalidate"

    .line 229
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_10

    const-string/jumbo v22, "max-stale"

    .line 231
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_11

    const-string/jumbo v22, "min-fresh"

    .line 233
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_12

    const-string/jumbo v18, "only-if-cached"

    .line 235
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_13

    const-string/jumbo v18, "no-transform"

    .line 237
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_14

    const-string/jumbo v18, "immutable"

    .line 239
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 240
    const/4 v14, 0x1

    goto/16 :goto_4

    .line 194
    :cond_7
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v22, 0x2c

    move/from16 v0, v22

    if-eq v3, v0, :cond_6

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v22, 0x3b

    move/from16 v0, v22

    if-eq v3, v0, :cond_6

    .line 198
    add-int/lit8 v3, v18, 0x1

    .line 199
    invoke-static {v15, v3}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespace(Ljava/lang/String;I)I

    move-result v3

    .line 202
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-lt v3, v0, :cond_9

    :cond_8
    const-string/jumbo v18, ",;"

    .line 212
    move-object/from16 v0, v18

    invoke-static {v15, v3, v0}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v18

    .line 213
    move/from16 v0, v18

    invoke-virtual {v15, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v23, v3

    move/from16 v3, v18

    move-object/from16 v18, v23

    goto/16 :goto_5

    .line 202
    :cond_9
    invoke-virtual {v15, v3}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v22, 0x22

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 203
    add-int/lit8 v3, v3, 0x1

    const-string/jumbo v18, "\""

    .line 205
    move-object/from16 v0, v18

    invoke-static {v15, v3, v0}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v18

    .line 206
    move/from16 v0, v18

    invoke-virtual {v15, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 207
    add-int/lit8 v18, v18, 0x1

    move-object/from16 v23, v3

    move/from16 v3, v18

    move-object/from16 v18, v23

    .line 210
    goto/16 :goto_5

    .line 218
    :cond_a
    const/16 v17, 0x1

    goto/16 :goto_4

    .line 220
    :cond_b
    const/4 v4, 0x1

    goto/16 :goto_4

    :cond_c
    const/4 v5, -0x1

    .line 222
    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v5

    goto/16 :goto_4

    :cond_d
    const/4 v6, -0x1

    .line 224
    move-object/from16 v0, v18

    invoke-static {v0, v6}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v6

    goto/16 :goto_4

    .line 226
    :cond_e
    const/4 v7, 0x1

    goto/16 :goto_4

    .line 228
    :cond_f
    const/4 v8, 0x1

    goto/16 :goto_4

    .line 230
    :cond_10
    const/4 v9, 0x1

    goto/16 :goto_4

    :cond_11
    const v10, 0x7fffffff

    .line 232
    move-object/from16 v0, v18

    invoke-static {v0, v10}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v10

    goto/16 :goto_4

    :cond_12
    const/4 v11, -0x1

    .line 234
    move-object/from16 v0, v18

    invoke-static {v0, v11}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v11

    goto/16 :goto_4

    .line 236
    :cond_13
    const/4 v12, 0x1

    goto/16 :goto_4

    .line 238
    :cond_14
    const/4 v13, 0x1

    goto/16 :goto_4

    :cond_15
    const/4 v15, 0x0

    .line 246
    goto/16 :goto_1
.end method


# virtual methods
.method public immutable()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lokhttp3/CacheControl;->immutable:Z

    return v0
.end method

.method public isPrivate()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lokhttp3/CacheControl;->isPrivate:Z

    return v0
.end method

.method public isPublic()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lokhttp3/CacheControl;->isPublic:Z

    return v0
.end method

.method public maxAgeSeconds()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    return v0
.end method

.method public maxStaleSeconds()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    return v0
.end method

.method public minFreshSeconds()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    return v0
.end method

.method public mustRevalidate()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    return v0
.end method

.method public noCache()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lokhttp3/CacheControl;->noCache:Z

    return v0
.end method

.method public noStore()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lokhttp3/CacheControl;->noStore:Z

    return v0
.end method

.method public noTransform()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lokhttp3/CacheControl;->noTransform:Z

    return v0
.end method

.method public onlyIfCached()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    return v0
.end method

.method public sMaxAgeSeconds()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    .line 255
    if-nez v0, :cond_0

    invoke-direct {p0}, Lokhttp3/CacheControl;->headerValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    :cond_0
    return-object v0
.end method
