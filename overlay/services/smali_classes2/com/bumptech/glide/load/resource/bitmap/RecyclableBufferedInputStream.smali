.class public Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
.super Ljava/io/FilterInputStream;
.source "RecyclableBufferedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BufferedIs"


# instance fields
.field private volatile buf:[B

.field private count:I

.field private marklimit:I

.field private markpos:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[B)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    .line 71
    if-nez p2, :cond_1

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "buffer is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    array-length v0, p2

    if-eqz v0, :cond_0

    .line 74
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 75
    return-void
.end method

.method private fillbuf(Ljava/io/InputStream;[B)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 130
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    if-ne v0, v2, :cond_1

    .line 132
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 133
    if-gtz v0, :cond_3

    .line 138
    :goto_0
    return v0

    .line 130
    :cond_1
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    if-ge v0, v1, :cond_0

    .line 145
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    if-eqz v0, :cond_4

    .line 159
    :cond_2
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    if-gtz v0, :cond_7

    .line 164
    :goto_1
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 165
    iput v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    iput v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    .line 166
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    array-length v1, p2

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 167
    if-lez v1, :cond_8

    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    add-int/2addr v0, v1

    :goto_2
    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    .line 168
    return v1

    .line 134
    :cond_3
    iput v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    .line 135
    iput v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 136
    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    goto :goto_0

    .line 145
    :cond_4
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    array-length v1, p2

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    array-length v1, p2

    if-ne v0, v1, :cond_2

    .line 147
    array-length v0, p2

    mul-int/lit8 v0, v0, 0x2

    .line 148
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    if-gt v0, v1, :cond_5

    :goto_3
    const-string/jumbo v1, "BufferedIs"

    const/4 v2, 0x3

    .line 151
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 154
    :goto_4
    new-array v0, v0, [B

    .line 155
    array-length v1, p2

    invoke-static {p2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    move-object p2, v0

    .line 159
    goto :goto_1

    .line 149
    :cond_5
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    goto :goto_3

    :cond_6
    const-string/jumbo v1, "BufferedIs"

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "allocate buffer of length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 160
    :cond_7
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    array-length v1, p2

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    sub-int/2addr v1, v2

    invoke-static {p2, v0, p2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 167
    :cond_8
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    goto :goto_2
.end method

.method private static streamClosed()Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "BufferedInputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    .line 90
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-nez v1, :cond_1

    .line 91
    :cond_0
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 90
    :cond_1
    if-eqz v0, :cond_0

    .line 93
    :try_start_1
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 120
    iput-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 121
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    .line 122
    iput-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    .line 123
    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method public declared-synchronized fixMarkLimit()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    array-length v0, v0

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 109
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    .prologue
    monitor-enter p0

    .line 190
    :try_start_0
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    .line 191
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 192
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    monitor-enter p0

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 223
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    .line 224
    if-nez v0, :cond_1

    .line 225
    :cond_0
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 224
    :cond_1
    if-eqz v1, :cond_0

    .line 229
    :try_start_1
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    if-ge v2, v3, :cond_4

    .line 234
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-ne v0, v1, :cond_5

    .line 242
    :cond_3
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v1, v2

    if-gtz v1, :cond_6

    monitor-exit p0

    .line 245
    return v4

    .line 229
    :cond_4
    :try_start_2
    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-ne v1, v4, :cond_2

    monitor-exit p0

    .line 231
    return v4

    .line 235
    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 236
    if-nez v0, :cond_3

    .line 237
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 243
    :cond_6
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    aget-byte v0, v0, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    monitor-enter p0

    .line 271
    :try_start_0
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 272
    if-eqz v3, :cond_3

    .line 276
    if-eqz p3, :cond_4

    .line 279
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;

    .line 280
    if-eqz v4, :cond_5

    .line 285
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    if-lt v0, v2, :cond_6

    move v2, p3

    .line 303
    :goto_0
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    if-eq v0, v1, :cond_a

    .line 309
    :cond_0
    invoke-direct {p0, v4, v3}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    move-result v0

    if-eq v0, v1, :cond_c

    .line 313
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-ne v3, v0, :cond_e

    .line 320
    :cond_1
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v5, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v0, v5

    if-ge v0, v2, :cond_f

    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v5, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v0, v5

    .line 321
    :goto_1
    iget v5, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    invoke-static {v3, v5, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    iget v5, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 324
    :cond_2
    sub-int/2addr v2, v0

    .line 325
    if-eqz v2, :cond_10

    .line 328
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v5

    if-eqz v5, :cond_11

    .line 331
    add-int/2addr p2, v0

    goto :goto_0

    .line 273
    :cond_3
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    monitor-exit p0

    .line 277
    return v0

    .line 281
    :cond_5
    :try_start_1
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 287
    :cond_6
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v0, v2

    if-ge v0, p3, :cond_8

    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v0, v2

    .line 288
    :goto_2
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    invoke-static {v3, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    if-ne v0, p3, :cond_9

    :cond_7
    monitor-exit p0

    .line 291
    return v0

    :cond_8
    move v0, p3

    .line 287
    goto :goto_2

    .line 290
    :cond_9
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v2

    if-eqz v2, :cond_7

    .line 293
    add-int/2addr p2, v0

    .line 294
    sub-int v2, p3, v0

    goto :goto_0

    .line 303
    :cond_a
    array-length v0, v3

    if-lt v2, v0, :cond_0

    .line 304
    invoke-virtual {v4, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 305
    if-ne v0, v1, :cond_2

    .line 306
    if-eq v2, p3, :cond_b

    sub-int v0, p3, v2

    :goto_3
    monitor-exit p0

    return v0

    :cond_b
    move v0, v1

    goto :goto_3

    .line 310
    :cond_c
    if-eq v2, p3, :cond_d

    sub-int v1, p3, v2

    :cond_d
    monitor-exit p0

    return v1

    .line 314
    :cond_e
    :try_start_3
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 315
    if-nez v3, :cond_1

    .line 316
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_f
    move v0, v2

    .line 320
    goto :goto_1

    :cond_10
    monitor-exit p0

    .line 326
    return p3

    .line 329
    :cond_11
    sub-int v0, p3, v2

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    if-eqz v0, :cond_0

    .line 349
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_1

    .line 352
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 353
    return-void

    .line 347
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 350
    :cond_1
    :try_start_2
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;

    const-string/jumbo v1, "Mark has been invalidated"

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized skip(J)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    .line 370
    :try_start_0
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 371
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->in:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    if-eqz v3, :cond_0

    const-wide/16 v6, 0x1

    .line 375
    cmp-long v2, p1, v6

    if-ltz v2, :cond_1

    move v2, v0

    :goto_0
    if-nez v2, :cond_2

    const-wide/16 v0, 0x0

    monitor-exit p0

    .line 376
    return-wide v0

    .line 373
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v2, v1

    .line 375
    goto :goto_0

    .line 378
    :cond_2
    if-eqz v4, :cond_3

    .line 382
    :try_start_2
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v5, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v2, v5

    int-to-long v6, v2

    cmp-long v2, v6, p1

    if-gez v2, :cond_4

    move v2, v0

    :goto_1
    if-nez v2, :cond_5

    .line 383
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 384
    return-wide p1

    .line 379
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_4
    move v2, v1

    .line 382
    goto :goto_1

    .line 386
    :cond_5
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v5, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v2, v5

    int-to-long v6, v2

    .line 387
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iput v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    .line 389
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markpos:I

    if-ne v2, v10, :cond_7

    .line 402
    :cond_6
    sub-long v0, p1, v6

    invoke-virtual {v4, v0, v1}, Ljava/io/InputStream;->skip(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v0

    add-long/2addr v0, v6

    monitor-exit p0

    return-wide v0

    .line 389
    :cond_7
    :try_start_4
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I

    int-to-long v8, v2

    cmp-long v2, p1, v8

    if-lez v2, :cond_8

    move v2, v0

    :goto_2
    if-nez v2, :cond_6

    .line 390
    invoke-direct {p0, v4, v3}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I

    move-result v2

    if-eq v2, v10, :cond_9

    .line 393
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    sub-long v4, p1, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_a

    :goto_3
    if-nez v0, :cond_b

    .line 394
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    int-to-long v0, v0

    sub-long v2, p1, v6

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 395
    return-wide p1

    :cond_8
    move v2, v1

    .line 389
    goto :goto_2

    :cond_9
    monitor-exit p0

    .line 391
    return-wide v6

    :cond_a
    move v0, v1

    .line 393
    goto :goto_3

    .line 398
    :cond_b
    :try_start_5
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    int-to-long v0, v0

    add-long/2addr v0, v6

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 399
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->count:I

    iput v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->pos:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    .line 400
    return-wide v0
.end method
