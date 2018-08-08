.class public Lcom/bumptech/glide/load/data/ExifOrientationStream;
.super Ljava/io/FilterInputStream;
.source "ExifOrientationStream.java"


# static fields
.field private static final EXIF_SEGMENT:[B

.field private static final ORIENTATION_POSITION:I

.field private static final SEGMENT_LENGTH:I

.field private static final SEGMENT_START_POSITION:I = 0x2


# instance fields
.field private final orientation:B

.field private position:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x12

    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x1d

    .line 17
    new-array v0, v0, [B

    const/4 v1, -0x1

    aput-byte v1, v0, v3

    const/16 v1, -0x1f

    aput-byte v1, v0, v4

    aput-byte v3, v0, v5

    const/4 v1, 0x3

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x78

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    aput-byte v3, v0, v6

    const/16 v1, 0x9

    aput-byte v3, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    aput-byte v3, v0, v1

    const/16 v1, 0xe

    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    aput-byte v6, v0, v1

    aput-byte v3, v0, v7

    const/16 v1, 0x13

    aput-byte v4, v0, v1

    const/16 v1, 0x14

    aput-byte v4, v0, v1

    const/16 v1, 0x15

    aput-byte v7, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v5, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    aput-byte v4, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    sput-object v0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->EXIF_SEGMENT:[B

    .line 60
    sget-object v0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->EXIF_SEGMENT:[B

    array-length v0, v0

    sput v0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->SEGMENT_LENGTH:I

    .line 61
    sget v0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->SEGMENT_LENGTH:I

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->ORIENTATION_POSITION:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3

    .prologue
    .line 66
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, -0x1

    .line 67
    if-ge p2, v0, :cond_1

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot add invalid orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0x8

    .line 67
    if-gt p2, v0, :cond_0

    .line 70
    int-to-byte v0, p2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->orientation:B

    .line 71
    return-void
.end method


# virtual methods
.method public mark(I)V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget v0, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 87
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    .line 93
    if-ne v0, v1, :cond_3

    .line 96
    :goto_1
    return v0

    .line 86
    :cond_1
    iget v0, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    sget v1, Lcom/bumptech/glide/load/data/ExifOrientationStream;->ORIENTATION_POSITION:I

    if-gt v0, v1, :cond_0

    .line 88
    iget v0, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    sget v1, Lcom/bumptech/glide/load/data/ExifOrientationStream;->ORIENTATION_POSITION:I

    if-eq v0, v1, :cond_2

    .line 91
    sget-object v0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->EXIF_SEGMENT:[B

    iget v1, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    add-int/lit8 v1, v1, -0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 89
    :cond_2
    iget-byte v0, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->orientation:B

    goto :goto_0

    .line 94
    :cond_3
    iget v1, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    goto :goto_1
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iget v0, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    sget v1, Lcom/bumptech/glide/load/data/ExifOrientationStream;->ORIENTATION_POSITION:I

    if-gt v0, v1, :cond_0

    .line 104
    iget v0, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    sget v1, Lcom/bumptech/glide/load/data/ExifOrientationStream;->ORIENTATION_POSITION:I

    if-eq v0, v1, :cond_1

    .line 107
    iget v0, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 110
    sget v0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->ORIENTATION_POSITION:I

    iget v1, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 111
    sget-object v1, Lcom/bumptech/glide/load/data/ExifOrientationStream;->EXIF_SEGMENT:[B

    iget v2, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    add-int/lit8 v2, v2, -0x2

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    :goto_0
    if-gtz v0, :cond_3

    .line 117
    :goto_1
    return v0

    .line 103
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    goto :goto_0

    .line 105
    :cond_1
    iget-byte v0, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->orientation:B

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    const/4 v0, 0x1

    .line 106
    goto :goto_0

    .line 108
    :cond_2
    iget v0, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    rsub-int/lit8 v0, v0, 0x2

    invoke-super {p0, p1, p2, v0}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    goto :goto_0

    .line 115
    :cond_3
    iget v1, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    goto :goto_1
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v2

    const-wide/16 v0, 0x0

    .line 123
    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    .line 124
    iget v0, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/bumptech/glide/load/data/ExifOrientationStream;->position:I

    .line 126
    :cond_0
    return-wide v2

    .line 123
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
