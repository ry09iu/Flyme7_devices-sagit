.class final Lokhttp3/internal/tls/DistinguishedNameParser;
.super Ljava/lang/Object;
.source "DistinguishedNameParser.java"


# instance fields
.field private beg:I

.field private chars:[C

.field private cur:I

.field private final dn:Ljava/lang/String;

.field private end:I

.field private final length:I

.field private pos:I


# direct methods
.method constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "RFC2253"

    .line 42
    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    .line 44
    return-void
.end method

.method private escapedAV()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 187
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    .line 188
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    .line 190
    :goto_0
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_0

    .line 195
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 224
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v2, v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 225
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_0

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    iget v4, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 200
    :sswitch_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    iget v4, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 203
    :sswitch_1
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    invoke-direct {p0}, Lokhttp3/internal/tls/DistinguishedNameParser;->getEscaped()C

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 204
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_0

    .line 209
    :sswitch_2
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->cur:I

    .line 211
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 212
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    aput-char v4, v0, v1

    .line 214
    :goto_1
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_3

    .line 217
    :cond_1
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ne v0, v1, :cond_4

    .line 220
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->cur:I

    iget v4, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 214
    :cond_3
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v4, :cond_1

    .line 215
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    aput-char v4, v0, v1

    .line 214
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_1

    .line 217
    :cond_4
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    .line 195
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_2
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method private getByte(I)I
    .locals 8

    .prologue
    const/16 v7, 0x61

    const/16 v6, 0x46

    const/16 v5, 0x41

    const/16 v4, 0x39

    const/16 v3, 0x30

    .line 311
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_3

    .line 317
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v0, v0, p1

    .line 318
    if-ge v0, v3, :cond_4

    .line 320
    :cond_0
    if-ge v0, v7, :cond_8

    .line 322
    :cond_1
    if-ge v0, v5, :cond_9

    .line 325
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Malformed DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Malformed DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_4
    if-gt v0, v4, :cond_0

    .line 319
    add-int/lit8 v0, v0, -0x30

    .line 328
    :goto_0
    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    add-int/lit8 v2, p1, 0x1

    aget-char v1, v1, v2

    .line 329
    if-ge v1, v3, :cond_a

    .line 331
    :cond_5
    if-ge v1, v7, :cond_b

    .line 333
    :cond_6
    if-ge v1, v5, :cond_c

    .line 336
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Malformed DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/16 v1, 0x66

    .line 320
    if-gt v0, v1, :cond_1

    .line 321
    add-int/lit8 v0, v0, -0x57

    goto :goto_0

    .line 322
    :cond_9
    if-gt v0, v6, :cond_2

    .line 323
    add-int/lit8 v0, v0, -0x37

    goto :goto_0

    .line 329
    :cond_a
    if-gt v1, v4, :cond_5

    .line 330
    add-int/lit8 v1, v1, -0x30

    .line 339
    :goto_1
    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    return v0

    :cond_b
    const/16 v2, 0x66

    .line 331
    if-gt v1, v2, :cond_6

    .line 332
    add-int/lit8 v1, v1, -0x57

    goto :goto_1

    .line 333
    :cond_c
    if-gt v1, v6, :cond_7

    .line 334
    add-int/lit8 v1, v1, -0x37

    goto :goto_1
.end method

.method private getEscaped()C
    .locals 3

    .prologue
    .line 232
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 233
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_0

    .line 237
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 256
    invoke-direct {p0}, Lokhttp3/internal/tls/DistinguishedNameParser;->getUTF8()C

    move-result v0

    return v0

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :sswitch_0
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    return v0

    .line 237
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x5c -> :sswitch_0
        0x5f -> :sswitch_0
    .end sparse-switch
.end method

.method private getUTF8()C
    .locals 8

    .prologue
    const/16 v6, 0x80

    const/16 v5, 0x3f

    .line 263
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    invoke-direct {p0, v0}, Lokhttp3/internal/tls/DistinguishedNameParser;->getByte(I)I

    move-result v1

    .line 264
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 266
    if-lt v1, v6, :cond_1

    const/16 v0, 0xc0

    .line 268
    if-ge v1, v0, :cond_2

    .line 300
    :cond_0
    return v5

    .line 267
    :cond_1
    int-to-char v0, v1

    return v0

    :cond_2
    const/16 v0, 0xf7

    .line 268
    if-gt v1, v0, :cond_0

    const/16 v0, 0xdf

    .line 271
    if-le v1, v0, :cond_3

    const/16 v0, 0xef

    .line 274
    if-le v1, v0, :cond_4

    const/4 v0, 0x3

    .line 279
    and-int/lit8 v1, v1, 0x7

    :goto_0
    const/4 v2, 0x0

    move v7, v2

    move v2, v1

    move v1, v7

    .line 283
    :goto_1
    if-lt v1, v0, :cond_5

    .line 298
    int-to-char v0, v2

    return v0

    :cond_3
    const/4 v0, 0x1

    .line 273
    and-int/lit8 v1, v1, 0x1f

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    .line 276
    and-int/lit8 v1, v1, 0xf

    goto :goto_0

    .line 284
    :cond_5
    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 285
    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v4, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ne v3, v4, :cond_7

    .line 286
    :cond_6
    return v5

    .line 285
    :cond_7
    iget-object v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v4, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_6

    .line 288
    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 290
    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    invoke-direct {p0, v3}, Lokhttp3/internal/tls/DistinguishedNameParser;->getByte(I)I

    move-result v3

    .line 291
    iget v4, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 292
    and-int/lit16 v4, v3, 0xc0

    if-ne v4, v6, :cond_8

    .line 296
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v3, v3, 0x3f

    add-int/2addr v2, v3

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 293
    :cond_8
    return v5
.end method

.method private hexAV()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/4 v1, 0x0

    .line 137
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x4

    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v2, :cond_3

    .line 142
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    .line 143
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 148
    :goto_0
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ne v0, v2, :cond_4

    .line 150
    :cond_0
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    .line 171
    :cond_1
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    sub-int v2, v0, v2

    const/4 v0, 0x5

    .line 172
    if-ge v2, v0, :cond_8

    .line 173
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_4
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v2

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v2

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v2

    const/16 v2, 0x3b

    if-eq v0, v2, :cond_0

    .line 154
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v2

    if-eq v0, v4, :cond_6

    .line 162
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v2

    const/16 v2, 0x41

    if-ge v0, v2, :cond_7

    .line 166
    :cond_5
    :goto_1
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    goto/16 :goto_0

    .line 155
    :cond_6
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    .line 156
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 159
    :goto_2
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v2

    if-ne v0, v4, :cond_1

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_2

    .line 162
    :cond_7
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v2

    const/16 v2, 0x46

    if-gt v0, v2, :cond_5

    .line 163
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v3, v0, v2

    add-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, v0, v2

    goto :goto_1

    .line 172
    :cond_8
    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_2

    .line 177
    div-int/lit8 v0, v2, 0x2

    new-array v3, v0, [B

    .line 178
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    add-int/lit8 v0, v0, 0x1

    :goto_3
    array-length v4, v3

    if-lt v1, v4, :cond_9

    .line 182
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 179
    :cond_9
    invoke-direct {p0, v0}, Lokhttp3/internal/tls/DistinguishedNameParser;->getByte(I)I

    move-result v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 178
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private nextAT()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v3, 0x3d

    const/16 v2, 0x20

    .line 50
    :goto_0
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_4

    .line 52
    :cond_0
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_5

    .line 57
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    .line 60
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 61
    :goto_1
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_6

    .line 65
    :cond_1
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_7

    .line 70
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    .line 74
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v2, :cond_9

    .line 83
    :goto_2
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 87
    :goto_3
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_e

    .line 92
    :cond_2
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-gt v0, v1, :cond_f

    .line 99
    :cond_3
    :goto_4
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    iget v4, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 50
    :cond_4
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 53
    return-object v0

    .line 61
    :cond_6
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v2, :cond_1

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_1

    .line 66
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_8
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    :cond_9
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_c

    .line 78
    :cond_a
    :goto_5
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_d

    .line 79
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_c
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_a

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v2, :cond_8

    goto :goto_5

    .line 78
    :cond_d
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_b

    goto/16 :goto_2

    .line 87
    :cond_e
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_2

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    goto/16 :goto_3

    .line 92
    :cond_f
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    aget-char v0, v0, v1

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_13

    :cond_10
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x49

    if-ne v0, v1, :cond_14

    :cond_11
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x44

    if-ne v0, v1, :cond_15

    .line 96
    :cond_12
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    goto/16 :goto_4

    .line 92
    :cond_13
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    aget-char v0, v0, v1

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_10

    goto/16 :goto_4

    :cond_14
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x69

    if-eq v0, v1, :cond_11

    goto/16 :goto_4

    :cond_15
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x64

    if-eq v0, v1, :cond_12

    goto/16 :goto_4
.end method

.method private quotedAV()Ljava/lang/String;
    .locals 5

    .prologue
    .line 104
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 105
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    .line 106
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    .line 109
    :goto_0
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    .line 117
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_3

    .line 121
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v2, v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 123
    :goto_1
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 124
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    goto :goto_0

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 129
    :goto_2
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_4

    .line 132
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    iget v4, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 118
    :cond_3
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    invoke-direct {p0}, Lokhttp3/internal/tls/DistinguishedNameParser;->getEscaped()C

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    goto :goto_1

    .line 129
    :cond_4
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_2
.end method


# virtual methods
.method public findMostSpecific(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 350
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 351
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->beg:I

    .line 352
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->end:I

    .line 353
    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->cur:I

    .line 354
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    .line 356
    invoke-direct {p0}, Lokhttp3/internal/tls/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v1, ""

    .line 363
    iget v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-eq v2, v3, :cond_3

    .line 367
    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v3, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 380
    invoke-direct {p0}, Lokhttp3/internal/tls/DistinguishedNameParser;->escapedAV()Ljava/lang/String;

    move-result-object v1

    .line 386
    :goto_0
    :sswitch_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 390
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_5

    .line 394
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_6

    .line 399
    :cond_1
    iget v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    .line 400
    invoke-direct {p0}, Lokhttp3/internal/tls/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    .line 401
    if-nez v0, :cond_0

    .line 402
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Malformed DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_2
    return-object v4

    .line 364
    :cond_3
    return-object v4

    .line 369
    :sswitch_1
    invoke-direct {p0}, Lokhttp3/internal/tls/DistinguishedNameParser;->quotedAV()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 372
    :sswitch_2
    invoke-direct {p0}, Lokhttp3/internal/tls/DistinguishedNameParser;->hexAV()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 387
    :cond_4
    return-object v1

    .line 391
    :cond_5
    return-object v4

    .line 394
    :cond_6
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_1

    .line 395
    iget-object v0, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    .line 396
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Malformed DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x23 -> :sswitch_2
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
    .end sparse-switch
.end method
