.class Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;
.super Ljava/lang/Object;
.source "ImageHeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StreamReader"
.end annotation


# instance fields
.field private final is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    .line 331
    return-void
.end method


# virtual methods
.method public getByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public getUInt16()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public getUInt8()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public read([B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    array-length v0, p1

    .line 370
    :goto_0
    if-gtz v0, :cond_1

    .line 373
    :cond_0
    array-length v1, p1

    sub-int v0, v1, v0

    return v0

    .line 370
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-virtual {v1, p1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 371
    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public skip(J)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    .line 342
    cmp-long v0, p1, v8

    if-ltz v0, :cond_0

    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 343
    return-wide v8

    :cond_0
    move v0, v3

    .line 342
    goto :goto_0

    :cond_1
    move-wide v4, p1

    .line 347
    :goto_1
    cmp-long v0, v4, v8

    if-gtz v0, :cond_2

    move v0, v2

    :goto_2
    if-nez v0, :cond_5

    .line 348
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    invoke-virtual {v0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v6

    .line 349
    cmp-long v0, v6, v8

    if-gtz v0, :cond_3

    move v0, v2

    :goto_3
    if-nez v0, :cond_4

    .line 350
    sub-long v0, v4, v6

    :goto_4
    move-wide v4, v0

    .line 363
    goto :goto_1

    :cond_2
    move v0, v3

    .line 347
    goto :goto_2

    :cond_3
    move v0, v3

    .line 349
    goto :goto_3

    .line 356
    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    .line 357
    if-eq v0, v1, :cond_5

    const-wide/16 v0, 0x1

    .line 360
    sub-long v0, v4, v0

    goto :goto_4

    .line 364
    :cond_5
    sub-long v0, p1, v4

    return-wide v0
.end method
