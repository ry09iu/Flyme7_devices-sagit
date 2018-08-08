.class public Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
.super Ljava/lang/Object;
.source "ImageHeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;,
        Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;,
        Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;
    }
.end annotation


# static fields
.field private static final BYTES_PER_FORMAT:[I

.field private static final EXIF_MAGIC_NUMBER:I = 0xffd8

.field private static final EXIF_SEGMENT_TYPE:I = 0xe1

.field private static final GIF_HEADER:I = 0x474946

.field private static final INTEL_TIFF_MAGIC_NUMBER:I = 0x4949

.field private static final JPEG_EXIF_SEGMENT_PREAMBLE:Ljava/lang/String; = "Exif\u0000\u0000"

.field private static final JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

.field private static final MARKER_EOI:I = 0xd9

.field private static final MOTOROLA_TIFF_MAGIC_NUMBER:I = 0x4d4d

.field private static final ORIENTATION_TAG_TYPE:I = 0x112

.field private static final PNG_HEADER:I = -0x76afb1b9

.field private static final SEGMENT_SOS:I = 0xda

.field private static final SEGMENT_START_ID:I = 0xff

.field private static final TAG:Ljava/lang/String; = "ImageHeaderParser"


# instance fields
.field private final streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/16 v0, 0xd

    .line 62
    new-array v0, v0, [I

    aput v5, v0, v5

    aput v2, v0, v2

    aput v2, v0, v6

    const/4 v1, 0x3

    aput v6, v0, v1

    aput v3, v0, v3

    const/4 v1, 0x5

    aput v4, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    aput v6, v0, v4

    const/16 v1, 0x9

    aput v3, v0, v1

    const/16 v1, 0xa

    aput v4, v0, v1

    const/16 v1, 0xb

    aput v3, v0, v1

    const/16 v1, 0xc

    aput v4, v0, v1

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->BYTES_PER_FORMAT:[I

    .line 67
    new-array v0, v5, [B

    :try_start_0
    const-string/jumbo v1, "Exif\u0000\u0000"

    const-string/jumbo v2, "UTF-8"

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 73
    :goto_0
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    .line 74
    return-void

    .line 72
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    .line 78
    return-void
.end method

.method private static calcTagOffset(II)I
    .locals 2

    .prologue
    .line 291
    add-int/lit8 v0, p0, 0x2

    mul-int/lit8 v1, p1, 0xc

    add-int/2addr v0, v1

    return v0
.end method

.method private getExifSegment()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt8()S

    move-result v0

    const/16 v1, 0xff

    .line 152
    if-ne v0, v1, :cond_1

    .line 159
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt8()S

    move-result v0

    const/16 v1, 0xda

    .line 161
    if-eq v0, v1, :cond_3

    const/16 v1, 0xd9

    .line 163
    if-eq v0, v1, :cond_4

    .line 171
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt16()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/16 v2, 0xe1

    .line 173
    if-ne v0, v2, :cond_6

    .line 185
    new-array v2, v1, [B

    .line 186
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->read([B)I

    move-result v3

    .line 187
    if-ne v3, v1, :cond_8

    .line 196
    return-object v2

    :cond_1
    const-string/jumbo v1, "ImageHeaderParser"

    .line 153
    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 156
    :goto_0
    return-object v7

    :cond_2
    const-string/jumbo v1, "ImageHeaderParser"

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown segmentId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    :cond_3
    return-object v7

    :cond_4
    const-string/jumbo v0, "ImageHeaderParser"

    .line 164
    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 167
    :goto_1
    return-object v7

    :cond_5
    const-string/jumbo v0, "ImageHeaderParser"

    const-string/jumbo v1, "Found MARKER_EOI in exif segment"

    .line 165
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 174
    :cond_6
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->skip(J)J

    move-result-wide v2

    .line 175
    int-to-long v4, v1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "ImageHeaderParser"

    .line 176
    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 182
    :goto_2
    return-object v7

    :cond_7
    const-string/jumbo v4, "ImageHeaderParser"

    .line 177
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to skip enough data, type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ", wanted to skip: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", but actually skipped: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    const-string/jumbo v2, "ImageHeaderParser"

    .line 188
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_9

    .line 194
    :goto_3
    return-object v7

    :cond_9
    const-string/jumbo v2, "ImageHeaderParser"

    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to read segment data, type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", length: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", actually read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private static handles(I)Z
    .locals 2

    .prologue
    const v1, 0xffd8

    .line 295
    and-int v0, p0, v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x4d4d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4949

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseExifSegment(Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;)I
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v1, 0x0

    const-string/jumbo v0, "Exif\u0000\u0000"

    .line 203
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 205
    invoke-virtual {p0, v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v0

    const/16 v3, 0x4d4d

    .line 207
    if-eq v0, v3, :cond_0

    const/16 v3, 0x4949

    .line 209
    if-eq v0, v3, :cond_1

    const-string/jumbo v3, "ImageHeaderParser"

    .line 212
    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 215
    :goto_0
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 218
    :goto_1
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->order(Ljava/nio/ByteOrder;)V

    .line 220
    add-int/lit8 v0, v2, 0x4

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt32(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 221
    invoke-virtual {p0, v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v3

    move v0, v1

    .line 224
    :goto_2
    if-lt v0, v3, :cond_3

    const/4 v0, -0x1

    .line 287
    return v0

    .line 208
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_1

    .line 210
    :cond_1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_1

    :cond_2
    const-string/jumbo v3, "ImageHeaderParser"

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown endianness = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    :cond_3
    invoke-static {v2, v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->calcTagOffset(II)I

    move-result v1

    .line 227
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v4

    const/16 v5, 0x112

    .line 230
    if-ne v4, v5, :cond_5

    .line 234
    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p0, v5}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v5

    const/4 v6, 0x1

    .line 237
    if-ge v5, v6, :cond_6

    :cond_4
    const-string/jumbo v1, "ImageHeaderParser"

    .line 238
    invoke-static {v1, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 224
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    const/16 v6, 0xc

    .line 237
    if-gt v5, v6, :cond_4

    .line 244
    add-int/lit8 v6, v1, 0x4

    invoke-virtual {p0, v6}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt32(I)I

    move-result v6

    .line 246
    if-ltz v6, :cond_9

    const-string/jumbo v7, "ImageHeaderParser"

    .line 253
    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_a

    .line 258
    :goto_4
    sget-object v7, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->BYTES_PER_FORMAT:[I

    aget v7, v7, v5

    add-int/2addr v6, v7

    const/4 v7, 0x4

    .line 260
    if-gt v6, v7, :cond_b

    .line 267
    add-int/lit8 v1, v1, 0x8

    .line 269
    if-gez v1, :cond_c

    :cond_7
    const-string/jumbo v5, "ImageHeaderParser"

    .line 270
    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "ImageHeaderParser"

    .line 271
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Illegal tagValueOffset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " tagType="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    const-string/jumbo v1, "ImageHeaderParser"

    .line 239
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Got invalid format code="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    const-string/jumbo v1, "ImageHeaderParser"

    .line 247
    invoke-static {v1, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "ImageHeaderParser"

    const-string/jumbo v4, "Negative tiff component count"

    .line 248
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    const-string/jumbo v7, "ImageHeaderParser"

    .line 254
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Got tagIndex="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " tagType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " formatCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " componentCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_b
    const-string/jumbo v1, "ImageHeaderParser"

    .line 261
    invoke-static {v1, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "ImageHeaderParser"

    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Got byte count > 4, not orientation, continuing, formatCode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 269
    :cond_c
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->length()I

    move-result v5

    if-gt v1, v5, :cond_7

    .line 276
    if-gez v6, :cond_e

    :cond_d
    const-string/jumbo v1, "ImageHeaderParser"

    .line 277
    invoke-static {v1, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "ImageHeaderParser"

    .line 278
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Illegal number of bytes for TI tag data tagType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 276
    :cond_e
    add-int v5, v1, v6

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->length()I

    move-result v6

    if-gt v5, v6, :cond_d

    .line 284
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v0

    return v0
.end method


# virtual methods
.method public getOrientation()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt16()I

    move-result v0

    .line 122
    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->handles(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getExifSegment()[B

    move-result-object v3

    .line 126
    if-nez v3, :cond_3

    :cond_0
    move v0, v1

    .line 129
    :goto_0
    if-nez v0, :cond_4

    .line 138
    :cond_1
    :goto_1
    if-nez v0, :cond_6

    .line 141
    return v6

    .line 123
    :cond_2
    return v6

    .line 126
    :cond_3
    array-length v0, v3

    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    array-length v2, v2

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v2, v1

    .line 130
    :goto_2
    sget-object v4, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 131
    aget-byte v4, v3, v2

    sget-object v5, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    aget-byte v5, v5, v2

    if-ne v4, v5, :cond_5

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v0, v1

    .line 133
    goto :goto_1

    .line 139
    :cond_6
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;

    invoke-direct {v0, v3}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;-><init>([B)V

    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->parseExifSegment(Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;)I

    move-result v0

    return v0
.end method

.method public getType()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt16()I

    move-result v0

    const v1, 0xffd8

    .line 90
    if-eq v0, v1, :cond_0

    .line 94
    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt16()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const v1, -0x76afb1b9

    .line 96
    if-eq v0, v1, :cond_1

    .line 105
    shr-int/lit8 v0, v0, 0x8

    const v1, 0x474946

    if-eq v0, v1, :cond_3

    .line 109
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    return-object v0

    .line 91
    :cond_0
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    return-object v0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    const-wide/16 v2, 0x15

    invoke-virtual {v0, v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->skip(J)J

    .line 99
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getByte()I

    move-result v0

    const/4 v1, 0x3

    .line 101
    if-ge v0, v1, :cond_2

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    goto :goto_0

    .line 106
    :cond_3
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    return-object v0
.end method

.method public hasAlpha()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getType()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->hasAlpha()Z

    move-result v0

    return v0
.end method
