.class Lcom/bumptech/glide/gifencoder/NeuQuant;
.super Ljava/lang/Object;
.source "NeuQuant.java"


# static fields
.field protected static final alphabiasshift:I = 0xa

.field protected static final alpharadbias:I = 0x40000

.field protected static final alpharadbshift:I = 0x12

.field protected static final beta:I = 0x40

.field protected static final betagamma:I = 0x10000

.field protected static final betashift:I = 0xa

.field protected static final gamma:I = 0x400

.field protected static final gammashift:I = 0xa

.field protected static final initalpha:I = 0x400

.field protected static final initrad:I = 0x20

.field protected static final initradius:I = 0x800

.field protected static final intbias:I = 0x10000

.field protected static final intbiasshift:I = 0x10

.field protected static final maxnetpos:I = 0xff

.field protected static final minpicturebytes:I = 0x5e5

.field protected static final ncycles:I = 0x64

.field protected static final netbiasshift:I = 0x4

.field protected static final netsize:I = 0x100

.field protected static final prime1:I = 0x1f3

.field protected static final prime2:I = 0x1eb

.field protected static final prime3:I = 0x1e7

.field protected static final prime4:I = 0x1f7

.field protected static final radbias:I = 0x100

.field protected static final radbiasshift:I = 0x8

.field protected static final radiusbias:I = 0x40

.field protected static final radiusbiasshift:I = 0x6

.field protected static final radiusdec:I = 0x1e


# instance fields
.field protected alphadec:I

.field protected bias:[I

.field protected freq:[I

.field protected lengthcount:I

.field protected netindex:[I

.field protected network:[[I

.field protected radpower:[I

.field protected samplefac:I

.field protected thepicture:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x100

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    .line 127
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    .line 130
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    const/16 v0, 0x20

    .line 132
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    .line 145
    iput-object p1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->thepicture:[B

    .line 146
    iput p2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    .line 147
    iput p3, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    .line 149
    new-array v0, v5, [[I

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    move v0, v1

    .line 150
    :goto_0
    if-lt v0, v5, :cond_0

    .line 157
    return-void

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    const/4 v3, 0x4

    new-array v3, v3, [I

    aput-object v3, v2, v0

    .line 152
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v2, v2, v0

    .line 153
    shl-int/lit8 v3, v0, 0xc

    div-int/lit16 v3, v3, 0x100

    const/4 v4, 0x2

    aput v3, v2, v4

    const/4 v4, 0x1

    aput v3, v2, v4

    aput v3, v2, v1

    .line 154
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    aput v5, v2, v0

    .line 155
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    aput v1, v2, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected alterneigh(IIIII)V
    .locals 11

    .prologue
    .line 411
    sub-int v0, p2, p1

    const/4 v1, -0x1

    .line 412
    if-lt v0, v1, :cond_1

    .line 414
    :goto_0
    add-int v1, p2, p1

    const/16 v2, 0x100

    .line 415
    if-gt v1, v2, :cond_2

    .line 418
    :goto_1
    add-int/lit8 v4, p2, 0x1

    .line 419
    add-int/lit8 v3, p2, -0x1

    const/4 v2, 0x1

    move v5, v3

    move v3, v2

    move v2, v4

    .line 421
    :goto_2
    if-ge v2, v1, :cond_3

    .line 422
    :cond_0
    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    add-int/lit8 v4, v3, 0x1

    aget v6, v6, v3

    .line 423
    if-lt v2, v1, :cond_4

    .line 432
    :goto_3
    if-gt v5, v0, :cond_5

    move v3, v4

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    .line 413
    goto :goto_0

    :cond_2
    const/16 v1, 0x100

    .line 416
    goto :goto_1

    .line 421
    :cond_3
    if-gt v5, v0, :cond_0

    .line 442
    return-void

    .line 424
    :cond_4
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    add-int/lit8 v3, v2, 0x1

    aget-object v2, v7, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 426
    :try_start_0
    aget v8, v2, v8

    const/4 v9, 0x0

    aget v9, v2, v9

    sub-int/2addr v9, p3

    mul-int/2addr v9, v6

    const/high16 v10, 0x40000

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v2, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 427
    aget v8, v2, v8

    const/4 v9, 0x1

    aget v9, v2, v9

    sub-int/2addr v9, p4

    mul-int/2addr v9, v6

    const/high16 v10, 0x40000

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v2, v7

    const/4 v7, 0x2

    const/4 v8, 0x2

    .line 428
    aget v8, v2, v8

    const/4 v9, 0x2

    aget v9, v2, v9

    sub-int v9, v9, p5

    mul-int/2addr v9, v6

    const/high16 v10, 0x40000

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v2, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c

    :goto_4
    move v2, v3

    .line 430
    goto :goto_3

    .line 433
    :cond_5
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    add-int/lit8 v3, v5, -0x1

    aget-object v5, v7, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 435
    :try_start_1
    aget v8, v5, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v9, 0x0

    :try_start_2
    aget v9, v5, v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    sub-int/2addr v9, p3

    mul-int/2addr v9, v6

    const/high16 v10, 0x40000

    :try_start_3
    div-int/2addr v9, v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    sub-int/2addr v8, v9

    :try_start_4
    aput v8, v5, v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 436
    :try_start_5
    aget v8, v5, v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    const/4 v9, 0x1

    :try_start_6
    aget v9, v5, v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    sub-int/2addr v9, p4

    mul-int/2addr v9, v6

    const/high16 v10, 0x40000

    :try_start_7
    div-int/2addr v9, v10
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    sub-int/2addr v8, v9

    :try_start_8
    aput v8, v5, v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    const/4 v7, 0x2

    const/4 v8, 0x2

    .line 437
    :try_start_9
    aget v8, v5, v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    const/4 v9, 0x2

    :try_start_a
    aget v9, v5, v9
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    sub-int v9, v9, p5

    mul-int/2addr v6, v9

    const/high16 v9, 0x40000

    :try_start_b
    div-int/2addr v6, v9
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    sub-int v6, v8, v6

    :try_start_c
    aput v6, v5, v7
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    :goto_5
    move v5, v3

    move v3, v4

    .line 439
    goto/16 :goto_2

    :catch_0
    move-exception v5

    goto :goto_5

    :catch_1
    move-exception v5

    goto :goto_5

    :catch_2
    move-exception v5

    goto :goto_5

    :catch_3
    move-exception v5

    goto :goto_5

    :catch_4
    move-exception v5

    goto :goto_5

    :catch_5
    move-exception v5

    goto :goto_5

    :catch_6
    move-exception v5

    goto :goto_5

    :catch_7
    move-exception v5

    goto :goto_5

    :catch_8
    move-exception v5

    goto :goto_5

    :catch_9
    move-exception v5

    goto :goto_5

    :catch_a
    move-exception v5

    goto :goto_5

    :catch_b
    move-exception v5

    goto :goto_5

    .line 430
    :catch_c
    move-exception v2

    goto :goto_4
.end method

.method protected altersingle(IIIII)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 451
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v0, v0, p2

    .line 452
    aget v1, v0, v3

    aget v2, v0, v3

    sub-int/2addr v2, p3

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, v0, v3

    .line 453
    aget v1, v0, v4

    aget v2, v0, v4

    sub-int/2addr v2, p4

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, v0, v4

    .line 454
    aget v1, v0, v5

    aget v2, v0, v5

    sub-int/2addr v2, p5

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, v0, v5

    .line 455
    return-void
.end method

.method public colorMap()[B
    .locals 10

    .prologue
    const/16 v9, 0x100

    const/4 v1, 0x0

    const/16 v0, 0x300

    .line 160
    new-array v3, v0, [B

    .line 161
    new-array v4, v9, [I

    move v0, v1

    .line 162
    :goto_0
    if-lt v0, v9, :cond_0

    move v0, v1

    move v2, v1

    .line 165
    :goto_1
    if-lt v0, v9, :cond_1

    .line 171
    return-object v3

    .line 163
    :cond_0
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v2, v2, v0

    const/4 v5, 0x3

    aget v2, v2, v5

    aput v0, v4, v2

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_1
    aget v5, v4, v0

    .line 167
    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v7, v7, v5

    aget v7, v7, v1

    int-to-byte v7, v7

    int-to-byte v7, v7

    aput-byte v7, v3, v2

    .line 168
    add-int/lit8 v7, v6, 0x1

    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v2, v2, v5

    const/4 v8, 0x1

    aget v2, v2, v8

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v3, v6

    .line 169
    add-int/lit8 v2, v7, 0x1

    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v5, v6, v5

    const/4 v6, 0x2

    aget v5, v5, v6

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v3, v7

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected contest(III)I
    .locals 9

    .prologue
    const v7, 0x7fffffff

    const/4 v6, -0x1

    const/4 v8, 0x0

    move v3, v8

    move v2, v6

    move v4, v7

    :goto_0
    const/16 v0, 0x100

    .line 476
    if-lt v3, v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    aget v1, v0, v2

    add-int/lit8 v1, v1, 0x40

    aput v1, v0, v2

    .line 503
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    aget v1, v0, v2

    const/high16 v3, 0x10000

    sub-int/2addr v1, v3

    aput v1, v0, v2

    .line 504
    return v6

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v5, v0, v3

    .line 478
    aget v0, v5, v8

    sub-int/2addr v0, p1

    .line 479
    if-ltz v0, :cond_1

    :goto_1
    const/4 v1, 0x1

    .line 481
    aget v1, v5, v1

    sub-int/2addr v1, p2

    .line 482
    if-ltz v1, :cond_2

    .line 484
    :goto_2
    add-int/2addr v1, v0

    const/4 v0, 0x2

    .line 485
    aget v0, v5, v0

    sub-int/2addr v0, p3

    .line 486
    if-ltz v0, :cond_3

    .line 488
    :goto_3
    add-int v5, v1, v0

    .line 489
    if-lt v5, v4, :cond_4

    move v0, v2

    move v1, v4

    .line 493
    :goto_4
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    aget v2, v2, v3

    shr-int/lit8 v2, v2, 0xc

    sub-int v2, v5, v2

    .line 494
    if-lt v2, v7, :cond_5

    move v2, v6

    move v4, v7

    .line 498
    :goto_5
    iget-object v5, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    aget v5, v5, v3

    shr-int/lit8 v5, v5, 0xa

    .line 499
    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    aget v7, v6, v3

    sub-int/2addr v7, v5

    aput v7, v6, v3

    .line 500
    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    aget v7, v6, v3

    shl-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v7

    aput v5, v6, v3

    .line 476
    add-int/lit8 v3, v3, 0x1

    move v6, v2

    move v7, v4

    move v2, v0

    move v4, v1

    goto :goto_0

    .line 480
    :cond_1
    neg-int v0, v0

    goto :goto_1

    .line 483
    :cond_2
    neg-int v1, v1

    goto :goto_2

    .line 487
    :cond_3
    neg-int v0, v0

    goto :goto_3

    :cond_4
    move v0, v3

    move v1, v5

    .line 491
    goto :goto_4

    :cond_5
    move v4, v2

    move v2, v3

    .line 496
    goto :goto_5
.end method

.method public inxbuild()V
    .locals 14

    .prologue
    const/16 v13, 0x100

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    move v4, v6

    move v3, v6

    move v5, v6

    .line 188
    :goto_0
    if-lt v4, v13, :cond_0

    .line 225
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    add-int/lit16 v1, v3, 0xff

    shr-int/lit8 v1, v1, 0x1

    aput v1, v0, v5

    .line 226
    add-int/lit8 v0, v5, 0x1

    :goto_1
    if-lt v0, v13, :cond_6

    .line 228
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v7, v0, v4

    .line 191
    aget v0, v7, v10

    .line 193
    add-int/lit8 v2, v4, 0x1

    move v1, v4

    :goto_2
    if-lt v2, v13, :cond_1

    .line 200
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v2, v2, v1

    .line 202
    if-ne v4, v1, :cond_3

    .line 217
    :goto_3
    if-ne v0, v5, :cond_4

    move v0, v3

    move v1, v5

    .line 188
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v3, v0

    move v5, v1

    goto :goto_0

    .line 194
    :cond_1
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v8, v8, v2

    .line 195
    aget v9, v8, v10

    if-lt v9, v0, :cond_2

    .line 193
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 197
    :cond_2
    aget v0, v8, v10

    move v1, v2

    goto :goto_5

    .line 203
    :cond_3
    aget v1, v2, v6

    .line 204
    aget v8, v7, v6

    aput v8, v2, v6

    .line 205
    aput v1, v7, v6

    .line 206
    aget v1, v2, v10

    .line 207
    aget v8, v7, v10

    aput v8, v2, v10

    .line 208
    aput v1, v7, v10

    .line 209
    aget v1, v2, v11

    .line 210
    aget v8, v7, v11

    aput v8, v2, v11

    .line 211
    aput v1, v7, v11

    .line 212
    aget v1, v2, v12

    .line 213
    aget v8, v7, v12

    aput v8, v2, v12

    .line 214
    aput v1, v7, v12

    goto :goto_3

    .line 218
    :cond_4
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    add-int v2, v3, v4

    shr-int/lit8 v2, v2, 0x1

    aput v2, v1, v5

    .line 219
    add-int/lit8 v1, v5, 0x1

    :goto_6
    if-lt v1, v0, :cond_5

    move v1, v0

    move v0, v4

    .line 222
    goto :goto_4

    .line 220
    :cond_5
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    aput v4, v2, v1

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 227
    :cond_6
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    const/16 v2, 0xff

    aput v2, v1, v0

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public learn()V
    .locals 21

    .prologue
    .line 240
    move-object/from16 v0, p0

    iget v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    const/16 v2, 0x5e5

    if-lt v1, v2, :cond_0

    .line 242
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1e

    move-object/from16 v0, p0

    iput v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->alphadec:I

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->thepicture:[B

    move-object/from16 v18, v0

    const/4 v5, 0x0

    .line 245
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    move/from16 v19, v0

    .line 246
    move-object/from16 v0, p0

    iget v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    mul-int/lit8 v2, v2, 0x3

    div-int v20, v1, v2

    .line 247
    div-int/lit8 v14, v20, 0x64

    const/16 v4, 0x400

    const/16 v3, 0x800

    .line 251
    const/16 v1, 0x20

    const/4 v2, 0x0

    .line 254
    :goto_1
    if-lt v2, v1, :cond_1

    .line 259
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    const/16 v6, 0x5e5

    if-lt v2, v6, :cond_2

    .line 261
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    rem-int/lit16 v2, v2, 0x1f3

    if-nez v2, :cond_3

    .line 264
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    rem-int/lit16 v2, v2, 0x1eb

    if-nez v2, :cond_4

    .line 267
    move-object/from16 v0, p0

    iget v2, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    rem-int/lit16 v2, v2, 0x1e7

    if-nez v2, :cond_5

    const/16 v2, 0x5e5

    move v13, v2

    :goto_2
    const/4 v2, 0x0

    move v15, v2

    move v8, v1

    move/from16 v16, v3

    move/from16 v17, v5

    move v2, v4

    .line 275
    :goto_3
    move/from16 v0, v20

    if-lt v15, v0, :cond_6

    .line 304
    return-void

    :cond_0
    const/4 v1, 0x1

    .line 241
    move-object/from16 v0, p0

    iput v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    goto :goto_0

    .line 255
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    mul-int v7, v2, v2

    rsub-int v7, v7, 0x400

    mul-int/lit16 v7, v7, 0x100

    const/16 v8, 0x400

    div-int/2addr v7, v8

    mul-int/lit16 v7, v7, 0x400

    aput v7, v6, v2

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    move v13, v2

    .line 260
    goto :goto_2

    :cond_3
    const/16 v2, 0x5d9

    move v13, v2

    .line 262
    goto :goto_2

    :cond_4
    const/16 v2, 0x5c1

    move v13, v2

    .line 265
    goto :goto_2

    :cond_5
    const/16 v2, 0x5b5

    move v13, v2

    .line 268
    goto :goto_2

    .line 276
    :cond_6
    add-int/lit8 v1, v17, 0x0

    aget-byte v1, v18, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v4, v1, 0x4

    .line 277
    add-int/lit8 v1, v17, 0x1

    aget-byte v1, v18, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v5, v1, 0x4

    .line 278
    add-int/lit8 v1, v17, 0x2

    aget-byte v1, v18, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v6, v1, 0x4

    .line 279
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/bumptech/glide/gifencoder/NeuQuant;->contest(III)I

    move-result v3

    move-object/from16 v1, p0

    .line 281
    invoke-virtual/range {v1 .. v6}, Lcom/bumptech/glide/gifencoder/NeuQuant;->altersingle(IIIII)V

    .line 282
    if-nez v8, :cond_7

    .line 285
    :goto_4
    add-int v1, v17, v13

    .line 286
    move/from16 v0, v19

    if-ge v1, v0, :cond_8

    .line 289
    :goto_5
    add-int/lit8 v5, v15, 0x1

    .line 290
    if-eqz v14, :cond_9

    move v3, v14

    .line 292
    :goto_6
    rem-int v4, v5, v3

    if-eqz v4, :cond_a

    move v15, v5

    move v14, v3

    move/from16 v17, v1

    goto :goto_3

    :cond_7
    move-object/from16 v7, p0

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    .line 283
    invoke-virtual/range {v7 .. v12}, Lcom/bumptech/glide/gifencoder/NeuQuant;->alterneigh(IIIII)V

    goto :goto_4

    .line 287
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    sub-int/2addr v1, v3

    goto :goto_5

    :cond_9
    const/4 v3, 0x1

    .line 291
    goto :goto_6

    .line 293
    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->alphadec:I

    div-int v4, v2, v4

    sub-int v7, v2, v4

    .line 294
    div-int/lit8 v2, v16, 0x1e

    sub-int v6, v16, v2

    .line 295
    shr-int/lit8 v2, v6, 0x6

    const/4 v4, 0x1

    .line 296
    if-le v2, v4, :cond_b

    :goto_7
    const/4 v4, 0x0

    .line 298
    :goto_8
    if-lt v4, v2, :cond_c

    move v15, v5

    move v8, v2

    move/from16 v16, v6

    move v14, v3

    move/from16 v17, v1

    move v2, v7

    goto/16 :goto_3

    :cond_b
    const/4 v2, 0x0

    .line 297
    goto :goto_7

    .line 299
    :cond_c
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    mul-int v9, v2, v2

    mul-int v10, v4, v4

    sub-int/2addr v9, v10

    mul-int/lit16 v9, v9, 0x100

    mul-int v10, v2, v2

    div-int/2addr v9, v10

    mul-int/2addr v9, v7

    aput v9, v8, v4

    .line 298
    add-int/lit8 v4, v4, 0x1

    goto :goto_8
.end method

.method public map(III)I
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v7, -0x1

    const/16 v3, 0x100

    const/4 v9, 0x0

    const/16 v5, 0x3e8

    .line 319
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    aget v2, v0, p2

    .line 320
    add-int/lit8 v0, v2, -0x1

    move v6, v0

    move v1, v2

    move v4, v7

    .line 322
    :goto_0
    if-ge v1, v3, :cond_2

    .line 323
    :cond_0
    if-lt v1, v3, :cond_3

    move v2, v1

    .line 348
    :cond_1
    :goto_1
    if-gez v6, :cond_8

    move v1, v2

    goto :goto_0

    .line 322
    :cond_2
    if-gez v6, :cond_0

    .line 374
    return v4

    .line 324
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v8, v0, v1

    .line 325
    aget v0, v8, v10

    sub-int/2addr v0, p2

    .line 326
    if-ge v0, v5, :cond_4

    .line 329
    add-int/lit8 v2, v1, 0x1

    .line 330
    if-ltz v0, :cond_5

    .line 332
    :goto_2
    aget v1, v8, v9

    sub-int/2addr v1, p1

    .line 333
    if-ltz v1, :cond_6

    .line 335
    :goto_3
    add-int/2addr v1, v0

    .line 336
    if-ge v1, v5, :cond_1

    .line 337
    aget v0, v8, v11

    sub-int/2addr v0, p3

    .line 338
    if-ltz v0, :cond_7

    .line 340
    :goto_4
    add-int/2addr v1, v0

    .line 341
    if-ge v1, v5, :cond_1

    const/4 v0, 0x3

    .line 343
    aget v0, v8, v0

    move v4, v0

    move v5, v1

    goto :goto_1

    :cond_4
    move v2, v3

    .line 327
    goto :goto_1

    .line 331
    :cond_5
    neg-int v0, v0

    goto :goto_2

    .line 334
    :cond_6
    neg-int v1, v1

    goto :goto_3

    .line 339
    :cond_7
    neg-int v0, v0

    goto :goto_4

    .line 349
    :cond_8
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v8, v0, v6

    .line 350
    aget v0, v8, v10

    sub-int v0, p2, v0

    .line 351
    if-ge v0, v5, :cond_9

    .line 354
    add-int/lit8 v6, v6, -0x1

    .line 355
    if-ltz v0, :cond_a

    .line 357
    :goto_5
    aget v1, v8, v9

    sub-int/2addr v1, p1

    .line 358
    if-ltz v1, :cond_b

    .line 360
    :goto_6
    add-int/2addr v1, v0

    .line 361
    if-lt v1, v5, :cond_c

    move v1, v2

    goto :goto_0

    :cond_9
    move v6, v7

    move v1, v2

    .line 352
    goto :goto_0

    .line 356
    :cond_a
    neg-int v0, v0

    goto :goto_5

    .line 359
    :cond_b
    neg-int v1, v1

    goto :goto_6

    .line 362
    :cond_c
    aget v0, v8, v11

    sub-int/2addr v0, p3

    .line 363
    if-ltz v0, :cond_d

    .line 365
    :goto_7
    add-int/2addr v0, v1

    .line 366
    if-lt v0, v5, :cond_e

    move v1, v2

    goto :goto_0

    .line 364
    :cond_d
    neg-int v0, v0

    goto :goto_7

    :cond_e
    const/4 v1, 0x3

    .line 368
    aget v4, v8, v1

    move v1, v2

    move v5, v0

    goto :goto_0
.end method

.method public process()[B
    .locals 1

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/bumptech/glide/gifencoder/NeuQuant;->learn()V

    .line 379
    invoke-virtual {p0}, Lcom/bumptech/glide/gifencoder/NeuQuant;->unbiasnet()V

    .line 380
    invoke-virtual {p0}, Lcom/bumptech/glide/gifencoder/NeuQuant;->inxbuild()V

    .line 381
    invoke-virtual {p0}, Lcom/bumptech/glide/gifencoder/NeuQuant;->colorMap()[B

    move-result-object v0

    return-object v0
.end method

.method public unbiasnet()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    const/16 v2, 0x100

    .line 393
    if-lt v0, v2, :cond_0

    .line 399
    return-void

    .line 394
    :cond_0
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v2, v2, v0

    aget v3, v2, v1

    shr-int/lit8 v3, v3, 0x4

    aput v3, v2, v1

    .line 395
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v2, v2, v0

    aget v3, v2, v4

    shr-int/lit8 v3, v3, 0x4

    aput v3, v2, v4

    .line 396
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v2, v2, v0

    aget v3, v2, v5

    shr-int/lit8 v3, v3, 0x4

    aput v3, v2, v5

    .line 397
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x3

    aput v0, v2, v3

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
