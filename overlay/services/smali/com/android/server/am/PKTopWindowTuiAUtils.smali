.class public Lcom/android/server/am/PKTopWindowTuiAUtils;
.super Ljava/lang/Object;
.source "PKTopWindowTuiAUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PKTopWindowTuiAUtils"

.field private static alphabet:[C

.field private static codes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x100

    .line 31
    const-string/jumbo v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/android/server/am/PKTopWindowTuiAUtils;->alphabet:[C

    .line 36
    new-array v1, v3, [B

    sput-object v1, Lcom/android/server/am/PKTopWindowTuiAUtils;->codes:[B

    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 40
    sget-object v1, Lcom/android/server/am/PKTopWindowTuiAUtils;->codes:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    .line 44
    sget-object v1, Lcom/android/server/am/PKTopWindowTuiAUtils;->codes:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 48
    :cond_1
    const/16 v0, 0x61

    :goto_2
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_2

    .line 49
    sget-object v1, Lcom/android/server/am/PKTopWindowTuiAUtils;->codes:[B

    add-int/lit8 v2, v0, 0x1a

    add-int/lit8 v2, v2, -0x61

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 52
    :cond_2
    const/16 v0, 0x30

    :goto_3
    const/16 v1, 0x39

    if-gt v0, v1, :cond_3

    .line 53
    sget-object v1, Lcom/android/server/am/PKTopWindowTuiAUtils;->codes:[B

    add-int/lit8 v2, v0, 0x34

    add-int/lit8 v2, v2, -0x30

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 56
    :cond_3
    sget-object v1, Lcom/android/server/am/PKTopWindowTuiAUtils;->codes:[B

    const/16 v2, 0x2b

    const/16 v3, 0x3e

    aput-byte v3, v1, v2

    .line 57
    sget-object v1, Lcom/android/server/am/PKTopWindowTuiAUtils;->codes:[B

    const/16 v2, 0x2f

    const/16 v3, 0x3f

    aput-byte v3, v1, v2

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 131
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/PKTopWindowTuiAUtils;->decode([C)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static decode(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 258
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 264
    :goto_0
    const/4 p0, 0x0

    .line 256
    .local p0, "file":Ljava/io/File;
    return-void

    .line 260
    .local p0, "file":Ljava/io/File;
    :cond_0
    invoke-static {p0}, Lcom/android/server/am/PKTopWindowTuiAUtils;->readChars(Ljava/io/File;)[C

    move-result-object v1

    .line 261
    .local v1, "encoded":[C
    invoke-static {v1}, Lcom/android/server/am/PKTopWindowTuiAUtils;->decode([C)[B

    move-result-object v0

    .line 262
    .local v0, "decoded":[B
    invoke-static {p0, v0}, Lcom/android/server/am/PKTopWindowTuiAUtils;->writeBytes(Ljava/io/File;[B)V

    goto :goto_0
.end method

.method public static decode([C)[B
    .locals 12
    .param p0, "data"    # [C

    .prologue
    const/16 v11, 0xff

    .line 180
    array-length v7, p0

    .line 181
    .local v7, "tempLen":I
    const/4 v3, 0x0

    .local v3, "ix":I
    :goto_0
    array-length v9, p0

    if-ge v3, v9, :cond_2

    .line 182
    aget-char v9, p0, v3

    if-gt v9, v11, :cond_0

    sget-object v9, Lcom/android/server/am/PKTopWindowTuiAUtils;->codes:[B

    aget-char v10, p0, v3

    aget-byte v9, v9, v10

    if-gez v9, :cond_1

    .line 183
    :cond_0
    add-int/lit8 v7, v7, -0x1

    .line 181
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    :cond_2
    div-int/lit8 v9, v7, 0x4

    mul-int/lit8 v4, v9, 0x3

    .line 192
    .local v4, "len":I
    rem-int/lit8 v9, v7, 0x4

    const/4 v10, 0x3

    if-ne v9, v10, :cond_3

    .line 193
    add-int/lit8 v4, v4, 0x2

    .line 195
    :cond_3
    rem-int/lit8 v9, v7, 0x4

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 196
    add-int/lit8 v4, v4, 0x1

    .line 199
    :cond_4
    new-array v5, v4, [B

    .line 201
    .local v5, "out":[B
    const/4 v6, 0x0

    .line 202
    .local v6, "shift":I
    const/4 v0, 0x0

    .line 203
    .local v0, "accum":I
    const/4 v1, 0x0

    .line 206
    .local v1, "index":I
    const/4 v3, 0x0

    :goto_1
    array-length v9, p0

    if-ge v3, v9, :cond_7

    .line 207
    aget-char v9, p0, v3

    if-le v9, v11, :cond_6

    const/4 v8, -0x1

    .line 209
    .local v8, "value":I
    :goto_2
    if-ltz v8, :cond_5

    .line 210
    shl-int/lit8 v0, v0, 0x6

    .line 211
    add-int/lit8 v6, v6, 0x6

    .line 212
    or-int/2addr v0, v8

    .line 213
    const/16 v9, 0x8

    if-lt v6, v9, :cond_5

    .line 214
    add-int/lit8 v6, v6, -0x8

    .line 215
    add-int/lit8 v2, v1, 0x1

    .line 216
    .end local v1    # "index":I
    .local v2, "index":I
    shr-int v9, v0, v6

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    .line 215
    aput-byte v9, v5, v1

    move v1, v2

    .line 206
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 207
    .end local v8    # "value":I
    :cond_6
    sget-object v9, Lcom/android/server/am/PKTopWindowTuiAUtils;->codes:[B

    aget-char v10, p0, v3

    aget-byte v8, v9, v10

    goto :goto_2

    .line 222
    :cond_7
    array-length v9, v5

    if-eq v1, v9, :cond_8

    .line 223
    new-instance v9, Ljava/lang/Error;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Miscalculated data length (wrote "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 224
    const-string/jumbo v11, " instead of "

    .line 223
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 224
    array-length v11, v5

    .line 223
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 224
    const-string/jumbo v11, ")"

    .line 223
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v9

    .line 227
    :cond_8
    return-object v5
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 119
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/PKTopWindowTuiAUtils;->encode([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static encode(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 239
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 245
    :goto_0
    const/4 p0, 0x0

    .line 237
    .local p0, "file":Ljava/io/File;
    return-void

    .line 241
    .local p0, "file":Ljava/io/File;
    :cond_0
    invoke-static {p0}, Lcom/android/server/am/PKTopWindowTuiAUtils;->readBytes(Ljava/io/File;)[B

    move-result-object v0

    .line 242
    .local v0, "decoded":[B
    invoke-static {v0}, Lcom/android/server/am/PKTopWindowTuiAUtils;->encode([B)[C

    move-result-object v1

    .line 243
    .local v1, "encoded":[C
    invoke-static {p0, v1}, Lcom/android/server/am/PKTopWindowTuiAUtils;->writeChars(Ljava/io/File;[C)V

    goto :goto_0
.end method

.method public static encode([B)[C
    .locals 10
    .param p0, "data"    # [B

    .prologue
    const/16 v7, 0x40

    .line 143
    array-length v6, p0

    add-int/lit8 v6, v6, 0x2

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x4

    new-array v2, v6, [C

    .line 144
    .local v2, "out":[C
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v6, p0

    if-ge v0, v6, :cond_4

    .line 145
    const/4 v3, 0x0

    .line 146
    .local v3, "quad":Z
    const/4 v4, 0x0

    .line 148
    .local v4, "trip":Z
    aget-byte v6, p0, v0

    and-int/lit16 v5, v6, 0xff

    .line 149
    .local v5, "val":I
    shl-int/lit8 v5, v5, 0x8

    .line 150
    add-int/lit8 v6, v0, 0x1

    array-length v8, p0

    if-ge v6, v8, :cond_0

    .line 151
    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    .line 152
    const/4 v4, 0x1

    .line 154
    :cond_0
    shl-int/lit8 v5, v5, 0x8

    .line 155
    add-int/lit8 v6, v0, 0x2

    array-length v8, p0

    if-ge v6, v8, :cond_1

    .line 156
    add-int/lit8 v6, v0, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    .line 157
    const/4 v3, 0x1

    .line 159
    :cond_1
    add-int/lit8 v8, v1, 0x3

    sget-object v9, Lcom/android/server/am/PKTopWindowTuiAUtils;->alphabet:[C

    if-eqz v3, :cond_2

    and-int/lit8 v6, v5, 0x3f

    :goto_1
    aget-char v6, v9, v6

    aput-char v6, v2, v8

    .line 160
    shr-int/lit8 v5, v5, 0x6

    .line 161
    add-int/lit8 v8, v1, 0x2

    sget-object v9, Lcom/android/server/am/PKTopWindowTuiAUtils;->alphabet:[C

    if-eqz v4, :cond_3

    and-int/lit8 v6, v5, 0x3f

    :goto_2
    aget-char v6, v9, v6

    aput-char v6, v2, v8

    .line 162
    shr-int/lit8 v5, v5, 0x6

    .line 163
    add-int/lit8 v6, v1, 0x1

    sget-object v8, Lcom/android/server/am/PKTopWindowTuiAUtils;->alphabet:[C

    and-int/lit8 v9, v5, 0x3f

    aget-char v8, v8, v9

    aput-char v8, v2, v6

    .line 164
    shr-int/lit8 v5, v5, 0x6

    .line 165
    add-int/lit8 v6, v1, 0x0

    sget-object v8, Lcom/android/server/am/PKTopWindowTuiAUtils;->alphabet:[C

    and-int/lit8 v9, v5, 0x3f

    aget-char v8, v8, v9

    aput-char v8, v2, v6

    .line 144
    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_2
    move v6, v7

    .line 159
    goto :goto_1

    :cond_3
    move v6, v7

    .line 161
    goto :goto_2

    .line 167
    .end local v3    # "quad":Z
    .end local v4    # "trip":Z
    .end local v5    # "val":I
    :cond_4
    return-object v2
.end method

.method private static readBytes(Ljava/io/File;)[B
    .locals 10
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 269
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .line 270
    .local v0, "b":[B
    const/4 v5, 0x0

    .line 271
    .local v5, "fis":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 273
    .local v7, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 274
    .local v6, "fis":Ljava/io/InputStream;
    :try_start_1
    new-instance v8, Ljava/io/BufferedInputStream;

    .end local v5    # "fis":Ljava/io/InputStream;
    invoke-direct {v8, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 275
    .local v8, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 276
    .local v3, "count":I
    const/16 v9, 0x4000

    :try_start_2
    new-array v2, v9, [B

    .line 277
    .end local v7    # "is":Ljava/io/InputStream;
    .local v2, "buf":[B
    :cond_0
    :goto_0
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v9, -0x1

    if-eq v3, v9, :cond_4

    .line 278
    if-lez v3, :cond_0

    .line 279
    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 284
    .end local v2    # "buf":[B
    :catchall_0
    move-exception v9

    move-object v7, v8

    .end local v8    # "is":Ljava/io/InputStream;
    .local v7, "is":Ljava/io/InputStream;
    move-object v5, v6

    .line 286
    .end local v3    # "count":I
    .end local v6    # "fis":Ljava/io/InputStream;
    .end local v7    # "is":Ljava/io/InputStream;
    :goto_1
    if-eqz v5, :cond_1

    .line 287
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 288
    :cond_1
    if-eqz v7, :cond_2

    .line 289
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 290
    :cond_2
    if-eqz v1, :cond_3

    .line 291
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 284
    :cond_3
    :goto_2
    throw v9

    .line 282
    .restart local v2    # "buf":[B
    .restart local v3    # "count":I
    .restart local v6    # "fis":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    :cond_4
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 286
    .local v0, "b":[B
    if-eqz v6, :cond_5

    .line 287
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 288
    :cond_5
    if-eqz v8, :cond_6

    .line 289
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 290
    :cond_6
    if-eqz v1, :cond_7

    .line 291
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 297
    :cond_7
    :goto_3
    return-object v0

    .line 292
    .end local v2    # "buf":[B
    .end local v3    # "count":I
    .end local v6    # "fis":Ljava/io/InputStream;
    .end local v8    # "is":Ljava/io/InputStream;
    .local v0, "b":[B
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    goto :goto_2

    .line 284
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "fis":Ljava/io/InputStream;
    .local v7, "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v9

    goto :goto_1

    .end local v5    # "fis":Ljava/io/InputStream;
    .restart local v6    # "fis":Ljava/io/InputStream;
    :catchall_2
    move-exception v9

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/InputStream;
    .local v5, "fis":Ljava/io/InputStream;
    goto :goto_1

    .line 292
    .end local v5    # "fis":Ljava/io/InputStream;
    .end local v7    # "is":Ljava/io/InputStream;
    .local v0, "b":[B
    .restart local v2    # "buf":[B
    .restart local v3    # "count":I
    .restart local v6    # "fis":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    goto :goto_3
.end method

.method private static readChars(Ljava/io/File;)[C
    .locals 9
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 302
    .local v1, "caw":Ljava/io/CharArrayWriter;
    const/4 v4, 0x0

    .line 303
    .local v4, "fr":Ljava/io/Reader;
    const/4 v6, 0x0

    .line 305
    .local v6, "in":Ljava/io/Reader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 306
    .local v5, "fr":Ljava/io/Reader;
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    .end local v4    # "fr":Ljava/io/Reader;
    invoke-direct {v7, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 307
    .local v7, "in":Ljava/io/Reader;
    const/4 v2, 0x0

    .line 308
    .local v2, "count":I
    const/16 v8, 0x4000

    :try_start_2
    new-array v0, v8, [C

    .line 309
    .end local v6    # "in":Ljava/io/Reader;
    .local v0, "buf":[C
    :cond_0
    :goto_0
    invoke-virtual {v7, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_4

    .line 310
    if-lez v2, :cond_0

    .line 311
    const/4 v8, 0x0

    invoke-virtual {v1, v0, v8, v2}, Ljava/io/CharArrayWriter;->write([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 315
    .end local v0    # "buf":[C
    :catchall_0
    move-exception v8

    move-object v6, v7

    .end local v7    # "in":Ljava/io/Reader;
    .local v6, "in":Ljava/io/Reader;
    move-object v4, v5

    .line 317
    .end local v2    # "count":I
    .end local v5    # "fr":Ljava/io/Reader;
    .end local v6    # "in":Ljava/io/Reader;
    :goto_1
    if-eqz v1, :cond_1

    .line 318
    :try_start_3
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->close()V

    .line 319
    :cond_1
    if-eqz v6, :cond_2

    .line 320
    invoke-virtual {v6}, Ljava/io/Reader;->close()V

    .line 321
    :cond_2
    if-eqz v4, :cond_3

    .line 322
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 315
    :cond_3
    :goto_2
    throw v8

    .line 317
    .restart local v0    # "buf":[C
    .restart local v2    # "count":I
    .restart local v5    # "fr":Ljava/io/Reader;
    .restart local v7    # "in":Ljava/io/Reader;
    :cond_4
    if-eqz v1, :cond_5

    .line 318
    :try_start_4
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->close()V

    .line 319
    :cond_5
    if-eqz v7, :cond_6

    .line 320
    invoke-virtual {v7}, Ljava/io/Reader;->close()V

    .line 321
    :cond_6
    if-eqz v5, :cond_7

    .line 322
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 328
    :cond_7
    :goto_3
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v8

    return-object v8

    .line 323
    .end local v0    # "buf":[C
    .end local v2    # "count":I
    .end local v5    # "fr":Ljava/io/Reader;
    .end local v7    # "in":Ljava/io/Reader;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    goto :goto_2

    .line 315
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "fr":Ljava/io/Reader;
    .local v6, "in":Ljava/io/Reader;
    :catchall_1
    move-exception v8

    goto :goto_1

    .end local v4    # "fr":Ljava/io/Reader;
    .restart local v5    # "fr":Ljava/io/Reader;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/Reader;
    .local v4, "fr":Ljava/io/Reader;
    goto :goto_1

    .line 323
    .end local v4    # "fr":Ljava/io/Reader;
    .end local v6    # "in":Ljava/io/Reader;
    .restart local v0    # "buf":[C
    .restart local v2    # "count":I
    .restart local v5    # "fr":Ljava/io/Reader;
    .restart local v7    # "in":Ljava/io/Reader;
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_3
.end method

.method public static sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 101
    const-string/jumbo v4, "SHA1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 102
    .local v1, "mDigest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 103
    .local v2, "result":[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 104
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 105
    aget-byte v4, v2, v0

    and-int/lit16 v4, v4, 0xff

    add-int/lit16 v4, v4, 0x100

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static signatureUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "jsonString"    # Ljava/lang/String;
    .param p1, "appSecret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/PKTopWindowTuiAUtils;->zip([B)[B

    move-result-object v7

    .line 72
    .local v7, "zipByte":[B
    new-instance v0, Ljava/lang/String;

    invoke-static {v7}, Lcom/android/server/am/PKTopWindowTuiAUtils;->encode([B)[C

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([C)V

    .line 73
    .local v0, "base64String":Ljava/lang/String;
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 74
    .local v4, "rnd":Ljava/util/Random;
    const v8, 0xdbba0

    invoke-virtual {v4, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    int-to-long v8, v8

    const-wide/32 v10, 0x186a0

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 75
    .local v3, "nonce":Ljava/lang/Long;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 76
    .local v5, "timestamp":Ljava/lang/Long;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "appSecret="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "&md="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "&nonce="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "&timestamp="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 79
    .local v6, "unSecret":Ljava/lang/String;
    const/4 v2, 0x0

    .line 81
    .local v2, "hashCode":Ljava/lang/String;
    :try_start_0
    invoke-static {v6}, Lcom/android/server/am/PKTopWindowTuiAUtils;->sha1(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 85
    .end local v2    # "hashCode":Ljava/lang/String;
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "md="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "UTF-8"

    invoke-static {v0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "&timestamp="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "&nonce="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 86
    const-string/jumbo v9, "&signature="

    .line 85
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 82
    .restart local v2    # "hashCode":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {v1}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private static writeBytes(Ljava/io/File;[B)V
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    const/4 v1, 0x0

    .line 333
    .local v1, "fos":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 335
    .local v3, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    .local v2, "fos":Ljava/io/OutputStream;
    :try_start_1
    new-instance v4, Ljava/io/BufferedOutputStream;

    .end local v1    # "fos":Ljava/io/OutputStream;
    invoke-direct {v4, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 337
    .local v4, "os":Ljava/io/OutputStream;
    :try_start_2
    invoke-virtual {v4, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 341
    .end local v3    # "os":Ljava/io/OutputStream;
    if-eqz v4, :cond_0

    .line 342
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 343
    :cond_0
    if-eqz v2, :cond_1

    .line 344
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 331
    :cond_1
    :goto_0
    return-void

    .line 339
    .end local v2    # "fos":Ljava/io/OutputStream;
    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v1    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception v5

    .line 341
    .end local v1    # "fos":Ljava/io/OutputStream;
    .end local v3    # "os":Ljava/io/OutputStream;
    :goto_1
    if-eqz v3, :cond_2

    .line 342
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 343
    :cond_2
    if-eqz v1, :cond_3

    .line 344
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 339
    :cond_3
    :goto_2
    throw v5

    .line 345
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_2

    .line 339
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/OutputStream;
    .local v1, "fos":Ljava/io/OutputStream;
    goto :goto_1

    .end local v1    # "fos":Ljava/io/OutputStream;
    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .local v3, "os":Ljava/io/OutputStream;
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v1    # "fos":Ljava/io/OutputStream;
    goto :goto_1

    .line 345
    .end local v1    # "fos":Ljava/io/OutputStream;
    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static writeChars(Ljava/io/File;[C)V
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    const/4 v1, 0x0

    .line 353
    .local v1, "fos":Ljava/io/Writer;
    const/4 v3, 0x0

    .line 355
    .local v3, "os":Ljava/io/Writer;
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    .local v2, "fos":Ljava/io/Writer;
    :try_start_1
    new-instance v4, Ljava/io/BufferedWriter;

    .end local v1    # "fos":Ljava/io/Writer;
    invoke-direct {v4, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 357
    .local v4, "os":Ljava/io/Writer;
    :try_start_2
    invoke-virtual {v4, p1}, Ljava/io/Writer;->write([C)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 361
    .end local v3    # "os":Ljava/io/Writer;
    if-eqz v4, :cond_0

    .line 362
    :try_start_3
    invoke-virtual {v4}, Ljava/io/Writer;->close()V

    .line 363
    :cond_0
    if-eqz v2, :cond_1

    .line 364
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 351
    :cond_1
    :goto_0
    return-void

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    goto :goto_0

    .line 359
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "fos":Ljava/io/Writer;
    .end local v4    # "os":Ljava/io/Writer;
    .restart local v1    # "fos":Ljava/io/Writer;
    .restart local v3    # "os":Ljava/io/Writer;
    :catchall_0
    move-exception v5

    .line 361
    .end local v1    # "fos":Ljava/io/Writer;
    .end local v3    # "os":Ljava/io/Writer;
    :goto_1
    if-eqz v3, :cond_2

    .line 362
    :try_start_4
    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 363
    :cond_2
    if-eqz v1, :cond_3

    .line 364
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 359
    :cond_3
    :goto_2
    throw v5

    .line 365
    :catch_1
    move-exception v0

    .line 366
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/am/PKTopWindowConfig$StackTrace;->print(Ljava/lang/Exception;)V

    goto :goto_2

    .line 359
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "fos":Ljava/io/Writer;
    .restart local v3    # "os":Ljava/io/Writer;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/Writer;
    .local v1, "fos":Ljava/io/Writer;
    goto :goto_1

    .end local v1    # "fos":Ljava/io/Writer;
    .end local v3    # "os":Ljava/io/Writer;
    .restart local v2    # "fos":Ljava/io/Writer;
    .restart local v4    # "os":Ljava/io/Writer;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "os":Ljava/io/Writer;
    .local v3, "os":Ljava/io/Writer;
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/Writer;
    .restart local v1    # "fos":Ljava/io/Writer;
    goto :goto_1
.end method

.method public static zip([B)[B
    .locals 4
    .param p0, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 90
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 91
    :cond_0
    new-array v2, v3, [B

    return-object v2

    .line 93
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 94
    .local v0, "byteOut":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 95
    .local v1, "gzipOut":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 96
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 97
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method
