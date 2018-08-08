.class public final Lokio/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Lokio/BufferedSource;
.implements Lokio/BufferedSink;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Buffer$UnsafeCursor;
    }
.end annotation


# static fields
.field private static final DIGITS:[B

.field static final REPLACEMENT_CHARACTER:I = 0xfffd


# instance fields
.field head:Lokio/Segment;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field size:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v0, 0x10

    .line 55
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    sput-object v0, Lokio/Buffer;->DIGITS:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method private digest(Ljava/lang/String;)Lokio/ByteString;
    .locals 6

    .prologue
    .line 1622
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 1623
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_1

    .line 1629
    :cond_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v0

    return-object v0

    .line 1624
    :cond_1
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->data:[B

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->pos:I

    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v3, v3, Lokio/Segment;->limit:I

    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v4, v4, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 1625
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    :goto_0
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v0, v2, :cond_0

    .line 1626
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    iget v4, v0, Lokio/Segment;->limit:I

    iget v5, v0, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 1625
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1629
    :catch_0
    move-exception v0

    .line 1631
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    .locals 6

    .prologue
    .line 1652
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 1653
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lokio/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 1654
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_1

    .line 1660
    :cond_0
    invoke-virtual {v1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v0

    return-object v0

    .line 1655
    :cond_1
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->data:[B

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->pos:I

    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v3, v3, Lokio/Segment;->limit:I

    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v4, v4, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Ljavax/crypto/Mac;->update([BII)V

    .line 1656
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    :goto_0
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v0, v2, :cond_0

    .line 1657
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    iget v4, v0, Lokio/Segment;->limit:I

    iget v5, v0, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljavax/crypto/Mac;->update([BII)V

    .line 1656
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1660
    :catch_0
    move-exception v0

    .line 1662
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catch_1
    move-exception v0

    .line 1664
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private rangeEquals(Lokio/Segment;ILokio/ByteString;II)Z
    .locals 6

    .prologue
    .line 1553
    iget v1, p1, Lokio/Segment;->limit:I

    .line 1554
    iget-object v0, p1, Lokio/Segment;->data:[B

    move v2, p2

    move-object v3, p1

    .line 1556
    :goto_0
    if-lt p4, p5, :cond_0

    .line 1572
    const/4 v0, 0x1

    return v0

    .line 1557
    :cond_0
    if-eq v2, v1, :cond_1

    .line 1564
    :goto_1
    aget-byte v4, v0, v2

    invoke-virtual {p3, p4}, Lokio/ByteString;->getByte(I)B

    move-result v5

    if-ne v4, v5, :cond_2

    .line 1568
    add-int/lit8 v2, v2, 0x1

    .line 1569
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 1558
    :cond_1
    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    .line 1559
    iget-object v0, v3, Lokio/Segment;->data:[B

    .line 1560
    iget v2, v3, Lokio/Segment;->pos:I

    .line 1561
    iget v1, v3, Lokio/Segment;->limit:I

    goto :goto_1

    .line 1565
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private readFrom(Ljava/io/InputStream;JZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 246
    if-eqz p1, :cond_0

    :goto_0
    const-wide/16 v4, 0x0

    .line 247
    cmp-long v0, p2, v4

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    if-nez p4, :cond_2

    .line 259
    return-void

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v2

    .line 247
    goto :goto_1

    .line 248
    :cond_2
    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    .line 249
    iget v3, v0, Lokio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    int-to-long v4, v3

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v3, v4

    .line 250
    iget-object v4, v0, Lokio/Segment;->data:[B

    iget v5, v0, Lokio/Segment;->limit:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    .line 251
    if-eq v3, v4, :cond_3

    .line 255
    iget v4, v0, Lokio/Segment;->limit:I

    add-int/2addr v4, v3

    iput v4, v0, Lokio/Segment;->limit:I

    .line 256
    iget-wide v4, p0, Lokio/Buffer;->size:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lokio/Buffer;->size:J

    .line 257
    int-to-long v4, v3

    sub-long/2addr p2, v4

    goto :goto_0

    .line 252
    :cond_3
    if-nez p4, :cond_4

    .line 253
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 252
    :cond_4
    return-void
.end method


# virtual methods
.method public buffer()Lokio/Buffer;
    .locals 0

    .prologue
    .line 71
    return-object p0
.end method

.method public final clear()V
    .locals 2

    .prologue
    .line 840
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    return-void

    .line 843
    :catch_0
    move-exception v0

    .line 842
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lokio/Buffer;
    .locals 6

    .prologue
    .line 1724
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 1725
    iget-wide v2, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    return-object v1

    .line 1727
    :cond_0
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-virtual {v0}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v0

    iput-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1728
    iget-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v1, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v3, v1, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v3, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 1729
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    :goto_0
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v0, v2, :cond_1

    .line 1732
    iget-wide v2, p0, Lokio/Buffer;->size:J

    iput-wide v2, v1, Lokio/Buffer;->size:J

    .line 1733
    return-object v1

    .line 1730
    :cond_1
    iget-object v2, v1, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v0}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 1729
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 1583
    return-void
.end method

.method public final completeSegmentByteCount()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 267
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 268
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    return-wide v4

    .line 271
    :cond_0
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 272
    iget v3, v2, Lokio/Segment;->limit:I

    const/16 v4, 0x2000

    if-lt v3, v4, :cond_2

    .line 276
    :cond_1
    :goto_0
    return-wide v0

    .line 272
    :cond_2
    iget-boolean v3, v2, Lokio/Segment;->owner:Z

    if-eqz v3, :cond_1

    .line 273
    iget v3, v2, Lokio/Segment;->limit:I

    iget v2, v2, Lokio/Segment;->pos:I

    sub-int v2, v3, v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public final copyTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 142
    iget-wide v4, p0, Lokio/Buffer;->size:J

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    .line 150
    if-eqz p1, :cond_0

    .line 151
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 152
    cmp-long v0, p4, v8

    if-nez v0, :cond_1

    return-object p0

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_1
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 156
    :goto_0
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p2, v2

    if-gez v1, :cond_2

    move v1, v6

    :goto_1
    if-nez v1, :cond_3

    .line 157
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    sub-long/2addr p2, v2

    .line 156
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    :cond_2
    move v1, v7

    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 161
    :goto_2
    cmp-long v0, p4, v8

    if-gtz v0, :cond_4

    move v0, v6

    :goto_3
    if-nez v0, :cond_5

    .line 162
    iget v0, v1, Lokio/Segment;->pos:I

    int-to-long v2, v0

    add-long/2addr v2, p2

    long-to-int v0, v2

    .line 163
    iget v2, v1, Lokio/Segment;->limit:I

    sub-int/2addr v2, v0

    int-to-long v2, v2

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 164
    iget-object v3, v1, Lokio/Segment;->data:[B

    invoke-virtual {p1, v3, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 165
    int-to-long v2, v2

    sub-long/2addr p4, v2

    .line 161
    iget-object v0, v1, Lokio/Segment;->next:Lokio/Segment;

    move-object v1, v0

    move-wide p2, v8

    goto :goto_2

    :cond_4
    move v0, v7

    goto :goto_3

    .line 169
    :cond_5
    return-object p0
.end method

.method public final copyTo(Lokio/Buffer;JJ)Lokio/Buffer;
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    .line 174
    if-eqz p1, :cond_0

    .line 175
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 176
    cmp-long v0, p4, v8

    if-nez v0, :cond_1

    return-object p0

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_1
    iget-wide v0, p1, Lokio/Buffer;->size:J

    add-long/2addr v0, p4

    iput-wide v0, p1, Lokio/Buffer;->size:J

    .line 181
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 182
    :goto_0
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p2, v2

    if-gez v1, :cond_2

    move v1, v6

    :goto_1
    if-nez v1, :cond_3

    .line 183
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    sub-long/2addr p2, v2

    .line 182
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    :cond_2
    move v1, v7

    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 187
    :goto_2
    cmp-long v0, p4, v8

    if-gtz v0, :cond_4

    move v0, v6

    :goto_3
    if-nez v0, :cond_6

    .line 188
    invoke-virtual {v1}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v0

    .line 189
    iget v2, v0, Lokio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int v2, v2

    iput v2, v0, Lokio/Segment;->pos:I

    .line 190
    iget v2, v0, Lokio/Segment;->pos:I

    long-to-int v3, p4

    add-int/2addr v2, v3

    iget v3, v0, Lokio/Segment;->limit:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lokio/Segment;->limit:I

    .line 191
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v2, :cond_5

    .line 194
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v2, v0}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 196
    :goto_4
    iget v2, v0, Lokio/Segment;->limit:I

    iget v0, v0, Lokio/Segment;->pos:I

    sub-int v0, v2, v0

    int-to-long v2, v0

    sub-long/2addr p4, v2

    .line 187
    iget-object v0, v1, Lokio/Segment;->next:Lokio/Segment;

    move-object v1, v0

    move-wide p2, v8

    goto :goto_2

    :cond_4
    move v0, v7

    goto :goto_3

    .line 192
    :cond_5
    iput-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    iput-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    goto :goto_4

    .line 200
    :cond_6
    return-object p0
.end method

.method public emit()Lokio/BufferedSink;
    .locals 0

    .prologue
    .line 101
    return-object p0
.end method

.method public emitCompleteSegments()Lokio/Buffer;
    .locals 0

    .prologue
    .line 97
    return-object p0
.end method

.method public bridge synthetic emitCompleteSegments()Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lokio/Buffer;->emitCompleteSegments()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 14

    .prologue
    const-wide/16 v0, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1669
    if-eq p0, p1, :cond_0

    .line 1670
    instance-of v2, p1, Lokio/Buffer;

    if-eqz v2, :cond_1

    .line 1671
    check-cast p1, Lokio/Buffer;

    .line 1672
    iget-wide v2, p0, Lokio/Buffer;->size:J

    iget-wide v4, p1, Lokio/Buffer;->size:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    return v8

    .line 1669
    :cond_0
    return v7

    .line 1670
    :cond_1
    return v8

    .line 1673
    :cond_2
    iget-wide v2, p0, Lokio/Buffer;->size:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    return v7

    .line 1675
    :cond_3
    iget-object v5, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1676
    iget-object v4, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1677
    iget v3, v5, Lokio/Segment;->pos:I

    .line 1678
    iget v2, v4, Lokio/Segment;->pos:I

    .line 1680
    :goto_0
    iget-wide v10, p0, Lokio/Buffer;->size:J

    cmp-long v6, v0, v10

    if-ltz v6, :cond_4

    move v6, v7

    :goto_1
    if-nez v6, :cond_a

    .line 1681
    iget v6, v5, Lokio/Segment;->limit:I

    sub-int/2addr v6, v3

    iget v9, v4, Lokio/Segment;->limit:I

    sub-int/2addr v9, v2

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-long v10, v6

    move v9, v8

    .line 1683
    :goto_2
    int-to-long v12, v9

    cmp-long v6, v12, v10

    if-ltz v6, :cond_5

    move v6, v7

    :goto_3
    if-nez v6, :cond_7

    .line 1684
    iget-object v12, v5, Lokio/Segment;->data:[B

    add-int/lit8 v6, v3, 0x1

    aget-byte v12, v12, v3

    iget-object v13, v4, Lokio/Segment;->data:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v13, v2

    if-ne v12, v2, :cond_6

    .line 1683
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move v2, v3

    move v3, v6

    goto :goto_2

    :cond_4
    move v6, v8

    .line 1680
    goto :goto_1

    :cond_5
    move v6, v8

    .line 1683
    goto :goto_3

    .line 1684
    :cond_6
    return v8

    .line 1687
    :cond_7
    iget v6, v5, Lokio/Segment;->limit:I

    if-eq v3, v6, :cond_8

    .line 1692
    :goto_4
    iget v6, v4, Lokio/Segment;->limit:I

    if-eq v2, v6, :cond_9

    .line 1680
    :goto_5
    add-long/2addr v0, v10

    goto :goto_0

    .line 1688
    :cond_8
    iget-object v5, v5, Lokio/Segment;->next:Lokio/Segment;

    .line 1689
    iget v3, v5, Lokio/Segment;->pos:I

    goto :goto_4

    .line 1693
    :cond_9
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    .line 1694
    iget v2, v4, Lokio/Segment;->pos:I

    goto :goto_5

    .line 1698
    :cond_a
    return v7
.end method

.method public exhausted()Z
    .locals 4

    .prologue
    .line 105
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 1576
    return-void
.end method

.method public final getByte(J)B
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 302
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 303
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sub-long/2addr v0, p1

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    move v0, v6

    :goto_0
    if-nez v0, :cond_3

    .line 304
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 305
    :goto_1
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int v2, v1, v2

    .line 306
    int-to-long v4, v2

    cmp-long v1, p1, v4

    if-ltz v1, :cond_1

    move v1, v6

    :goto_2
    if-nez v1, :cond_2

    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v0, v0, Lokio/Segment;->pos:I

    long-to-int v2, p1

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    return v0

    :cond_0
    move v0, v7

    .line 303
    goto :goto_0

    :cond_1
    move v1, v7

    .line 306
    goto :goto_2

    .line 307
    :cond_2
    int-to-long v2, v2

    sub-long/2addr p1, v2

    .line 304
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1

    .line 310
    :cond_3
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sub-long v2, p1, v0

    .line 311
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 312
    :goto_3
    iget v1, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-wide/16 v4, 0x0

    .line 313
    cmp-long v1, v2, v4

    if-gez v1, :cond_4

    move v1, v6

    :goto_4
    if-nez v1, :cond_5

    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v0, v0, Lokio/Segment;->pos:I

    long-to-int v2, v2

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    return v0

    :cond_4
    move v1, v7

    goto :goto_4

    .line 311
    :cond_5
    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    goto :goto_3
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 1702
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1703
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 1706
    :cond_0
    iget v2, v1, Lokio/Segment;->pos:I

    iget v4, v1, Lokio/Segment;->limit:I

    :goto_0
    if-lt v2, v4, :cond_2

    .line 1709
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 1710
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v1, v2, :cond_0

    .line 1711
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 1703
    return v0

    .line 1707
    :cond_2
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, v1, Lokio/Segment;->data:[B

    aget-byte v3, v3, v2

    add-int/2addr v3, v0

    .line 1706
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_0
.end method

.method public final hmacSha1(Lokio/ByteString;)Lokio/ByteString;
    .locals 1

    .prologue
    const-string/jumbo v0, "HmacSHA1"

    .line 1637
    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final hmacSha256(Lokio/ByteString;)Lokio/ByteString;
    .locals 1

    .prologue
    const-string/jumbo v0, "HmacSHA256"

    .line 1642
    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final hmacSha512(Lokio/ByteString;)Lokio/ByteString;
    .locals 1

    .prologue
    const-string/jumbo v0, "HmacSHA512"

    .line 1647
    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(B)J
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    .line 1323
    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJ)J
    .locals 6

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 1331
    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJJ)J
    .locals 10

    .prologue
    const-wide/16 v0, 0x0

    .line 1335
    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    cmp-long v0, p4, p2

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 1336
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size=%s fromIndex=%s toIndex=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lokio/Buffer;->size:J

    .line 1337
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1335
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1340
    :cond_3
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, p4, v0

    if-gtz v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_4

    iget-wide p4, p0, Lokio/Buffer;->size:J

    .line 1341
    :cond_4
    cmp-long v0, p2, p4

    if-nez v0, :cond_6

    const-wide/16 v0, -0x1

    return-wide v0

    .line 1340
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 1349
    :cond_6
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1350
    if-eqz v2, :cond_7

    .line 1353
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sub-long/2addr v0, p2

    cmp-long v0, v0, p2

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_b

    .line 1355
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-object v4, v2

    .line 1356
    :goto_4
    cmp-long v2, v0, p2

    if-gtz v2, :cond_9

    const/4 v2, 0x1

    :goto_5
    if-nez v2, :cond_a

    .line 1357
    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    .line 1358
    iget v2, v4, Lokio/Segment;->limit:I

    iget v3, v4, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_4

    :cond_7
    const-wide/16 v0, -0x1

    .line 1352
    return-wide v0

    .line 1353
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 1356
    :cond_9
    const/4 v2, 0x0

    goto :goto_5

    :cond_a
    move-wide v2, v0

    .line 1371
    :goto_6
    cmp-long v0, v2, p4

    if-ltz v0, :cond_e

    const/4 v0, 0x1

    :goto_7
    if-nez v0, :cond_11

    .line 1372
    iget-object v1, v4, Lokio/Segment;->data:[B

    .line 1373
    iget v0, v4, Lokio/Segment;->limit:I

    int-to-long v6, v0

    iget v0, v4, Lokio/Segment;->pos:I

    int-to-long v8, v0

    add-long/2addr v8, p4

    sub-long/2addr v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v5, v6

    .line 1374
    iget v0, v4, Lokio/Segment;->pos:I

    int-to-long v6, v0

    add-long/2addr v6, p2

    sub-long/2addr v6, v2

    long-to-int v0, v6

    .line 1375
    :goto_8
    if-lt v0, v5, :cond_f

    .line 1382
    iget v0, v4, Lokio/Segment;->limit:I

    iget v1, v4, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v2

    .line 1384
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    move-wide v2, v0

    move-wide p2, v0

    .line 1385
    goto :goto_6

    :cond_b
    const-wide/16 v0, 0x0

    move-object v4, v2

    .line 1363
    :goto_9
    iget v2, v4, Lokio/Segment;->limit:I

    iget v3, v4, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    cmp-long v5, v2, p2

    if-ltz v5, :cond_c

    const/4 v5, 0x1

    :goto_a
    if-nez v5, :cond_d

    .line 1364
    iget-object v0, v4, Lokio/Segment;->next:Lokio/Segment;

    move-object v4, v0

    move-wide v0, v2

    .line 1365
    goto :goto_9

    .line 1363
    :cond_c
    const/4 v5, 0x0

    goto :goto_a

    :cond_d
    move-wide v2, v0

    goto :goto_6

    .line 1371
    :cond_e
    const/4 v0, 0x0

    goto :goto_7

    .line 1376
    :cond_f
    aget-byte v6, v1, v0

    if-eq v6, p1, :cond_10

    .line 1375
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1377
    :cond_10
    iget v1, v4, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v2

    return-wide v0

    :cond_11
    const-wide/16 v0, -0x1

    .line 1387
    return-wide v0
.end method

.method public indexOf(Lokio/ByteString;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 1391
    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOf(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(Lokio/ByteString;J)J
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1395
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    .line 1396
    cmp-long v2, p2, v2

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "fromIndex < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1395
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "bytes is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1396
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1404
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1405
    if-eqz v4, :cond_3

    .line 1408
    move-object/from16 v0, p0

    iget-wide v2, v0, Lokio/Buffer;->size:J

    sub-long v2, v2, p2

    cmp-long v2, v2, p2

    if-ltz v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_6

    .line 1410
    move-object/from16 v0, p0

    iget-wide v2, v0, Lokio/Buffer;->size:J

    move-object v6, v4

    .line 1411
    :goto_2
    cmp-long v4, v2, p2

    if-gtz v4, :cond_5

    const/4 v4, 0x1

    :goto_3
    if-nez v4, :cond_8

    .line 1412
    iget-object v6, v6, Lokio/Segment;->prev:Lokio/Segment;

    .line 1413
    iget v4, v6, Lokio/Segment;->limit:I

    iget v5, v6, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr v2, v4

    goto :goto_2

    :cond_3
    const-wide/16 v2, -0x1

    .line 1407
    return-wide v2

    .line 1408
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 1411
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    :cond_6
    const-wide/16 v2, 0x0

    move-object v6, v4

    .line 1418
    :goto_4
    iget v4, v6, Lokio/Segment;->limit:I

    iget v5, v6, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v4, v2

    cmp-long v7, v4, p2

    if-ltz v7, :cond_7

    const/4 v7, 0x1

    :goto_5
    if-nez v7, :cond_8

    .line 1419
    iget-object v2, v6, Lokio/Segment;->next:Lokio/Segment;

    move-object v6, v2

    move-wide v2, v4

    .line 1420
    goto :goto_4

    .line 1418
    :cond_7
    const/4 v7, 0x0

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    .line 1427
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lokio/ByteString;->getByte(I)B

    move-result v9

    .line 1428
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v7

    .line 1429
    move-object/from16 v0, p0

    iget-wide v4, v0, Lokio/Buffer;->size:J

    int-to-long v10, v7

    sub-long/2addr v4, v10

    const-wide/16 v10, 0x1

    add-long v12, v4, v10

    move-wide v10, v2

    move-object v3, v6

    .line 1430
    :goto_6
    cmp-long v2, v10, v12

    if-ltz v2, :cond_9

    const/4 v2, 0x1

    :goto_7
    if-nez v2, :cond_d

    .line 1432
    iget-object v14, v3, Lokio/Segment;->data:[B

    .line 1433
    iget v2, v3, Lokio/Segment;->limit:I

    int-to-long v4, v2

    iget v2, v3, Lokio/Segment;->pos:I

    int-to-long v0, v2

    move-wide/from16 v16, v0

    add-long v16, v16, v12

    sub-long v16, v16, v10

    move-wide/from16 v0, v16

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v15, v4

    .line 1434
    iget v2, v3, Lokio/Segment;->pos:I

    int-to-long v4, v2

    add-long v4, v4, p2

    sub-long/2addr v4, v10

    long-to-int v2, v4

    move v8, v2

    :goto_8
    if-lt v8, v15, :cond_a

    .line 1441
    iget v2, v3, Lokio/Segment;->limit:I

    iget v4, v3, Lokio/Segment;->pos:I

    sub-int/2addr v2, v4

    int-to-long v4, v2

    add-long/2addr v4, v10

    .line 1443
    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    move-wide v10, v4

    move-wide/from16 p2, v4

    .line 1444
    goto :goto_6

    .line 1430
    :cond_9
    const/4 v2, 0x0

    goto :goto_7

    .line 1435
    :cond_a
    aget-byte v2, v14, v8

    if-eq v2, v9, :cond_c

    .line 1434
    :cond_b
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_8

    .line 1435
    :cond_c
    add-int/lit8 v4, v8, 0x1

    const/4 v6, 0x1

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lokio/Buffer;->rangeEquals(Lokio/Segment;ILokio/ByteString;II)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1436
    iget v2, v3, Lokio/Segment;->pos:I

    sub-int v2, v8, v2

    int-to-long v2, v2

    add-long/2addr v2, v10

    return-wide v2

    :cond_d
    const-wide/16 v2, -0x1

    .line 1446
    return-wide v2
.end method

.method public indexOfElement(Lokio/ByteString;)J
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 1450
    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfElement(Lokio/ByteString;J)J
    .locals 12

    .prologue
    const-wide/16 v0, 0x0

    .line 1454
    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fromIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1462
    :cond_1
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1463
    if-eqz v2, :cond_2

    .line 1466
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sub-long/2addr v0, p2

    cmp-long v0, v0, p2

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_5

    .line 1468
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-object v4, v2

    .line 1469
    :goto_2
    cmp-long v2, v0, p2

    if-gtz v2, :cond_4

    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_7

    .line 1470
    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    .line 1471
    iget v2, v4, Lokio/Segment;->limit:I

    iget v3, v4, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_2

    :cond_2
    const-wide/16 v0, -0x1

    .line 1465
    return-wide v0

    .line 1466
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1469
    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    const-wide/16 v0, 0x0

    move-object v4, v2

    .line 1476
    :goto_4
    iget v2, v4, Lokio/Segment;->limit:I

    iget v3, v4, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    cmp-long v5, v2, p2

    if-ltz v5, :cond_6

    const/4 v5, 0x1

    :goto_5
    if-nez v5, :cond_7

    .line 1477
    iget-object v0, v4, Lokio/Segment;->next:Lokio/Segment;

    move-object v4, v0

    move-wide v0, v2

    .line 1478
    goto :goto_4

    .line 1476
    :cond_6
    const/4 v5, 0x0

    goto :goto_5

    .line 1486
    :cond_7
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8

    .line 1506
    invoke-virtual {p1}, Lokio/ByteString;->internalArray()[B

    move-result-object v5

    .line 1507
    :goto_6
    iget-wide v2, p0, Lokio/Buffer;->size:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_d

    const/4 v2, 0x1

    :goto_7
    if-nez v2, :cond_11

    .line 1508
    iget-object v6, v4, Lokio/Segment;->data:[B

    .line 1509
    iget v2, v4, Lokio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    iget v7, v4, Lokio/Segment;->limit:I

    move v3, v2

    :goto_8
    if-lt v3, v7, :cond_e

    .line 1517
    iget v2, v4, Lokio/Segment;->limit:I

    iget v3, v4, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1519
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    move-wide p2, v0

    .line 1520
    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    .line 1488
    invoke-virtual {p1, v2}, Lokio/ByteString;->getByte(I)B

    move-result v3

    const/4 v2, 0x1

    .line 1489
    invoke-virtual {p1, v2}, Lokio/ByteString;->getByte(I)B

    move-result v5

    .line 1490
    :goto_9
    iget-wide v6, p0, Lokio/Buffer;->size:J

    cmp-long v2, v0, v6

    if-ltz v2, :cond_9

    const/4 v2, 0x1

    :goto_a
    if-nez v2, :cond_11

    .line 1491
    iget-object v6, v4, Lokio/Segment;->data:[B

    .line 1492
    iget v2, v4, Lokio/Segment;->pos:I

    int-to-long v8, v2

    add-long/2addr v8, p2

    sub-long/2addr v8, v0

    long-to-int v2, v8

    iget v7, v4, Lokio/Segment;->limit:I

    :goto_b
    if-lt v2, v7, :cond_a

    .line 1500
    iget v2, v4, Lokio/Segment;->limit:I

    iget v6, v4, Lokio/Segment;->pos:I

    sub-int/2addr v2, v6

    int-to-long v6, v2

    add-long/2addr v0, v6

    .line 1502
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    move-wide p2, v0

    .line 1503
    goto :goto_9

    .line 1490
    :cond_9
    const/4 v2, 0x0

    goto :goto_a

    .line 1493
    :cond_a
    aget-byte v8, v6, v2

    .line 1494
    if-ne v8, v3, :cond_c

    .line 1495
    :cond_b
    iget v3, v4, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0

    .line 1494
    :cond_c
    if-eq v8, v5, :cond_b

    .line 1492
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1507
    :cond_d
    const/4 v2, 0x0

    goto :goto_7

    .line 1510
    :cond_e
    aget-byte v8, v6, v3

    .line 1511
    array-length v9, v5

    const/4 v2, 0x0

    :goto_c
    if-lt v2, v9, :cond_f

    .line 1509
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_8

    .line 1511
    :cond_f
    aget-byte v10, v5, v2

    .line 1512
    if-eq v8, v10, :cond_10

    .line 1511
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1512
    :cond_10
    iget v2, v4, Lokio/Segment;->pos:I

    sub-int v2, v3, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_11
    const-wide/16 v0, -0x1

    .line 1523
    return-wide v0
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lokio/Buffer$2;

    invoke-direct {v0, p0}, Lokio/Buffer$2;-><init>(Lokio/Buffer;)V

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 1579
    const/4 v0, 0x1

    return v0
.end method

.method public final md5()Lokio/ByteString;
    .locals 1

    .prologue
    const-string/jumbo v0, "MD5"

    .line 1602
    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lokio/Buffer$1;

    invoke-direct {v0, p0}, Lokio/Buffer$1;-><init>(Lokio/Buffer;)V

    return-object v0
.end method

.method public rangeEquals(JLokio/ByteString;)Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1527
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lokio/Buffer;->rangeEquals(JLokio/ByteString;II)Z

    move-result v0

    return v0
.end method

.method public rangeEquals(JLokio/ByteString;II)Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    .line 1532
    cmp-long v0, p1, v4

    if-gez v0, :cond_1

    move v0, v2

    :goto_0
    if-nez v0, :cond_0

    if-gez p4, :cond_2

    .line 1537
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 1532
    goto :goto_0

    :cond_2
    if-ltz p5, :cond_0

    iget-wide v4, p0, Lokio/Buffer;->size:J

    sub-long/2addr v4, p1

    int-to-long v6, p5

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    move v0, v2

    :goto_1
    if-nez v0, :cond_0

    .line 1536
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v0

    sub-int/2addr v0, p4

    if-lt v0, p5, :cond_0

    move v0, v1

    .line 1539
    :goto_2
    if-lt v0, p5, :cond_4

    .line 1544
    return v2

    :cond_3
    move v0, v1

    .line 1532
    goto :goto_1

    .line 1540
    :cond_4
    int-to-long v4, v0

    add-long/2addr v4, p1

    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v3

    add-int v4, p4, v0

    invoke-virtual {p3, v4}, Lokio/ByteString;->getByte(I)B

    move-result v4

    if-ne v3, v4, :cond_5

    .line 1539
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1541
    :cond_5
    return v1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 817
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 818
    if-eqz v0, :cond_0

    .line 820
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v2, v0, Lokio/Segment;->limit:I

    iget v3, v0, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 821
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 823
    iget v2, v0, Lokio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->pos:I

    .line 824
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 826
    iget v2, v0, Lokio/Segment;->pos:I

    iget v3, v0, Lokio/Segment;->limit:I

    if-eq v2, v3, :cond_1

    .line 831
    :goto_0
    return v1

    :cond_0
    const/4 v0, -0x1

    .line 818
    return v0

    .line 827
    :cond_1
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 828
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0
.end method

.method public read([B)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 785
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6

    .prologue
    .line 798
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 800
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 801
    if-eqz v0, :cond_0

    .line 802
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 803
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 805
    iget v2, v0, Lokio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->pos:I

    .line 806
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 808
    iget v2, v0, Lokio/Segment;->pos:I

    iget v3, v0, Lokio/Segment;->limit:I

    if-eq v2, v3, :cond_1

    .line 813
    :goto_0
    return v1

    :cond_0
    const/4 v0, -0x1

    .line 801
    return v0

    .line 809
    :cond_1
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 810
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1314
    if-eqz p1, :cond_0

    .line 1315
    cmp-long v2, p2, v4

    if-ltz v2, :cond_1

    move v2, v0

    :goto_0
    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1314
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v2, v1

    .line 1315
    goto :goto_0

    .line 1316
    :cond_2
    iget-wide v2, p0, Lokio/Buffer;->size:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    const-wide/16 v0, -0x1

    return-wide v0

    .line 1317
    :cond_3
    iget-wide v2, p0, Lokio/Buffer;->size:J

    cmp-long v2, p2, v2

    if-gtz v2, :cond_5

    :goto_1
    if-nez v0, :cond_4

    iget-wide p2, p0, Lokio/Buffer;->size:J

    .line 1318
    :cond_4
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 1319
    return-wide p2

    :cond_5
    move v0, v1

    .line 1317
    goto :goto_1
.end method

.method public readAll(Lokio/Sink;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 593
    iget-wide v2, p0, Lokio/Buffer;->size:J

    const-wide/16 v0, 0x0

    .line 594
    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    .line 595
    invoke-interface {p1, p0, v2, v3}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 597
    :cond_0
    return-wide v2

    .line 594
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final readAndWriteUnsafe()Lokio/Buffer$UnsafeCursor;
    .locals 1

    .prologue
    .line 1767
    new-instance v0, Lokio/Buffer$UnsafeCursor;

    invoke-direct {v0}, Lokio/Buffer$UnsafeCursor;-><init>()V

    invoke-virtual {p0, v0}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    return-object v0
.end method

.method public final readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 2

    .prologue
    .line 1771
    iget-object v0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v0, :cond_0

    .line 1775
    iput-object p0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 1776
    const/4 v0, 0x1

    iput-boolean v0, p1, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    .line 1777
    return-object p1

    .line 1772
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "already attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readByte()B
    .locals 10

    .prologue
    .line 280
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 283
    iget v1, v0, Lokio/Segment;->pos:I

    .line 284
    iget v2, v0, Lokio/Segment;->limit:I

    .line 286
    iget-object v3, v0, Lokio/Segment;->data:[B

    .line 287
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    .line 288
    iget-wide v6, p0, Lokio/Buffer;->size:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lokio/Buffer;->size:J

    .line 290
    if-eq v4, v2, :cond_1

    .line 294
    iput v4, v0, Lokio/Segment;->pos:I

    .line 297
    :goto_0
    return v1

    .line 291
    :cond_1
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 292
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0
.end method

.method public readByteArray()[B
    .locals 2

    .prologue
    .line 767
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readByteArray(J)[B
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 769
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readByteArray(J)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 774
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    const-wide/32 v0, 0x7fffffff

    .line 775
    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 776
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 775
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 779
    :cond_1
    long-to-int v0, p1

    new-array v0, v0, [B

    .line 780
    invoke-virtual {p0, v0}, Lokio/Buffer;->readFully([B)V

    .line 781
    return-object v0
.end method

.method public readByteString()Lokio/ByteString;
    .locals 2

    .prologue
    .line 540
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/Buffer;->readByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readByteString(J)Lokio/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 544
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readDecimalLong()J
    .locals 18

    .prologue
    .line 426
    move-object/from16 v0, p0

    iget-wide v2, v0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "size == 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 431
    const/4 v5, 0x0

    .line 432
    const/4 v4, 0x0

    const-wide/16 v2, -0x7

    .line 438
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 440
    iget-object v12, v11, Lokio/Segment;->data:[B

    .line 441
    iget v7, v11, Lokio/Segment;->pos:I

    .line 442
    iget v13, v11, Lokio/Segment;->limit:I

    move v10, v7

    .line 444
    :goto_1
    if-lt v10, v13, :cond_3

    .line 471
    :goto_2
    if-eq v10, v13, :cond_e

    .line 475
    iput v10, v11, Lokio/Segment;->pos:I

    .line 477
    :goto_3
    if-eqz v4, :cond_f

    .line 479
    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lokio/Buffer;->size:J

    int-to-long v6, v6

    sub-long/2addr v2, v6

    move-object/from16 v0, p0

    iput-wide v2, v0, Lokio/Buffer;->size:J

    .line 480
    if-nez v5, :cond_2

    neg-long v8, v8

    :cond_2
    return-wide v8

    .line 445
    :cond_3
    aget-byte v14, v12, v10

    const/16 v7, 0x30

    .line 446
    if-ge v14, v7, :cond_6

    :cond_4
    const/16 v7, 0x2d

    .line 457
    if-eq v14, v7, :cond_c

    .line 461
    :cond_5
    if-eqz v6, :cond_d

    .line 466
    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/16 v7, 0x39

    .line 446
    if-gt v14, v7, :cond_4

    .line 447
    rsub-int/lit8 v15, v14, 0x30

    const-wide v16, -0xcccccccccccccccL

    .line 450
    cmp-long v7, v8, v16

    if-gez v7, :cond_8

    const/4 v7, 0x1

    :goto_4
    if-nez v7, :cond_7

    const-wide v16, -0xcccccccccccccccL

    cmp-long v7, v8, v16

    if-nez v7, :cond_b

    int-to-long v0, v15

    move-wide/from16 v16, v0

    cmp-long v7, v16, v2

    if-ltz v7, :cond_9

    const/4 v7, 0x1

    :goto_5
    if-nez v7, :cond_b

    .line 451
    :cond_7
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    invoke-virtual {v2, v8, v9}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v2

    invoke-virtual {v2, v14}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v2

    .line 452
    if-eqz v5, :cond_a

    .line 453
    :goto_6
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Number too large: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 450
    :cond_8
    const/4 v7, 0x0

    goto :goto_4

    :cond_9
    const/4 v7, 0x0

    goto :goto_5

    .line 452
    :cond_a
    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    goto :goto_6

    :cond_b
    const-wide/16 v16, 0xa

    .line 455
    mul-long v8, v8, v16

    .line 456
    int-to-long v14, v15

    add-long/2addr v8, v14

    .line 444
    :goto_7
    add-int/lit8 v7, v10, 0x1

    add-int/lit8 v6, v6, 0x1

    move v10, v7

    goto/16 :goto_1

    .line 457
    :cond_c
    if-nez v6, :cond_5

    .line 458
    const/4 v5, 0x1

    const-wide/16 v14, 0x1

    .line 459
    sub-long/2addr v2, v14

    goto :goto_7

    .line 462
    :cond_d
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 463
    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 472
    :cond_e
    invoke-virtual {v11}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 473
    invoke-static {v11}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto/16 :goto_3

    .line 477
    :cond_f
    move-object/from16 v0, p0

    iget-object v7, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v7, :cond_1

    goto/16 :goto_0
.end method

.method public final readFrom(Ljava/io/InputStream;)Lokio/Buffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    .line 234
    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    .line 235
    return-object p0
.end method

.method public final readFrom(Ljava/io/InputStream;J)Lokio/Buffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 240
    cmp-long v0, p2, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 241
    :cond_1
    invoke-direct {p0, p1, p2, p3, v1}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    .line 242
    return-object p0
.end method

.method public readFully(Lokio/Buffer;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 585
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, p2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 586
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p1, p0, v0, v1}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 587
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 585
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 589
    :cond_1
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 590
    return-void
.end method

.method public readFully([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 790
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 795
    return-void

    .line 791
    :cond_0
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    .line 792
    if-eq v1, v2, :cond_1

    .line 793
    add-int/2addr v0, v1

    goto :goto_0

    .line 792
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readHexadecimalUnsignedLong()J
    .locals 18

    .prologue
    .line 484
    move-object/from16 v0, p0

    iget-wide v2, v0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "size == 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 488
    const/4 v2, 0x0

    .line 491
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 493
    iget-object v11, v10, Lokio/Segment;->data:[B

    .line 494
    iget v6, v10, Lokio/Segment;->pos:I

    .line 495
    iget v12, v10, Lokio/Segment;->limit:I

    move v7, v6

    .line 497
    :goto_1
    if-lt v7, v12, :cond_2

    .line 527
    :goto_2
    if-eq v7, v12, :cond_b

    .line 531
    iput v7, v10, Lokio/Segment;->pos:I

    .line 533
    :goto_3
    if-eqz v2, :cond_c

    .line 535
    :cond_1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lokio/Buffer;->size:J

    int-to-long v2, v3

    sub-long v2, v6, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lokio/Buffer;->size:J

    .line 536
    return-wide v4

    .line 500
    :cond_2
    aget-byte v8, v11, v7

    const/16 v6, 0x30

    .line 501
    if-ge v8, v6, :cond_6

    :cond_3
    const/16 v6, 0x61

    .line 503
    if-ge v8, v6, :cond_7

    :cond_4
    const/16 v6, 0x41

    .line 505
    if-ge v8, v6, :cond_8

    .line 508
    :cond_5
    if-eqz v3, :cond_9

    .line 513
    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/16 v6, 0x39

    .line 501
    if-gt v8, v6, :cond_3

    .line 502
    add-int/lit8 v6, v8, -0x30

    :goto_4
    const-wide/high16 v14, -0x1000000000000000L    # -3.105036184601418E231

    .line 518
    and-long/2addr v14, v4

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-eqz v9, :cond_a

    .line 519
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v2

    invoke-virtual {v2, v8}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v2

    .line 520
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Number too large: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    const/16 v6, 0x66

    .line 503
    if-gt v8, v6, :cond_4

    .line 504
    add-int/lit8 v6, v8, -0x61

    add-int/lit8 v6, v6, 0xa

    goto :goto_4

    :cond_8
    const/16 v6, 0x46

    .line 505
    if-gt v8, v6, :cond_5

    .line 506
    add-int/lit8 v6, v8, -0x41

    add-int/lit8 v6, v6, 0xa

    goto :goto_4

    .line 509
    :cond_9
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 510
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    const/4 v8, 0x4

    .line 523
    shl-long/2addr v4, v8

    .line 524
    int-to-long v8, v6

    or-long/2addr v8, v4

    .line 497
    add-int/lit8 v4, v7, 0x1

    add-int/lit8 v3, v3, 0x1

    move v7, v4

    move-wide v4, v8

    goto/16 :goto_1

    .line 528
    :cond_b
    invoke-virtual {v10}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 529
    invoke-static {v10}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto/16 :goto_3

    .line 533
    :cond_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v6, :cond_1

    goto/16 :goto_0
.end method

.method public readInt()I
    .locals 10

    .prologue
    const-wide/16 v8, 0x4

    .line 348
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, v8

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size < 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 350
    :cond_1
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 351
    iget v1, v0, Lokio/Segment;->pos:I

    .line 352
    iget v2, v0, Lokio/Segment;->limit:I

    .line 355
    sub-int v3, v2, v1

    const/4 v4, 0x4

    if-lt v3, v4, :cond_2

    .line 362
    iget-object v3, v0, Lokio/Segment;->data:[B

    .line 363
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v1, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v1, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 367
    iget-wide v6, p0, Lokio/Buffer;->size:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lokio/Buffer;->size:J

    .line 369
    if-eq v5, v2, :cond_3

    .line 373
    iput v5, v0, Lokio/Segment;->pos:I

    .line 376
    :goto_1
    return v1

    .line 356
    :cond_2
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 357
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 358
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 359
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 356
    return v0

    .line 370
    :cond_3
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 371
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_1
.end method

.method public readIntLe()I
    .locals 1

    .prologue
    .line 418
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lokio/Util;->reverseBytesInt(I)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 12

    .prologue
    .line 380
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size < 8: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 382
    :cond_1
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 383
    iget v1, v0, Lokio/Segment;->pos:I

    .line 384
    iget v2, v0, Lokio/Segment;->limit:I

    .line 387
    sub-int v3, v2, v1

    const/16 v4, 0x8

    if-lt v3, v4, :cond_2

    .line 392
    iget-object v3, v0, Lokio/Segment;->data:[B

    .line 393
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    int-to-long v6, v1

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    const/16 v1, 0x38

    shl-long/2addr v6, v1

    add-int/lit8 v1, v4, 0x1

    aget-byte v4, v3, v4

    int-to-long v4, v4

    const-wide/16 v8, 0xff

    and-long/2addr v4, v8

    const/16 v8, 0x30

    shl-long/2addr v4, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, v3, v1

    int-to-long v8, v1

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    const/16 v1, 0x28

    shl-long/2addr v8, v1

    or-long/2addr v4, v8

    add-int/lit8 v1, v6, 0x1

    aget-byte v6, v3, v6

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, v3, v1

    int-to-long v8, v1

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    const/16 v1, 0x18

    shl-long/2addr v8, v1

    or-long/2addr v4, v8

    add-int/lit8 v1, v6, 0x1

    aget-byte v6, v3, v6

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, v3, v1

    int-to-long v8, v1

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    const/16 v1, 0x8

    shl-long/2addr v8, v1

    or-long/2addr v4, v8

    add-int/lit8 v1, v6, 0x1

    aget-byte v3, v3, v6

    int-to-long v6, v3

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    .line 401
    iget-wide v6, p0, Lokio/Buffer;->size:J

    const-wide/16 v8, 0x8

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lokio/Buffer;->size:J

    .line 403
    if-eq v1, v2, :cond_3

    .line 407
    iput v1, v0, Lokio/Segment;->pos:I

    .line 410
    :goto_1
    return-wide v4

    .line 388
    :cond_2
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    .line 389
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 388
    return-wide v0

    .line 404
    :cond_3
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 405
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_1
.end method

.method public readLongLe()J
    .locals 2

    .prologue
    .line 422
    invoke-virtual {p0}, Lokio/Buffer;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lokio/Util;->reverseBytesLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 10

    .prologue
    const-wide/16 v8, 0x2

    .line 319
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, v8

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size < 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 321
    :cond_1
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 322
    iget v1, v0, Lokio/Segment;->pos:I

    .line 323
    iget v2, v0, Lokio/Segment;->limit:I

    .line 326
    sub-int v3, v2, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 332
    iget-object v3, v0, Lokio/Segment;->data:[B

    .line 333
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 335
    iget-wide v6, p0, Lokio/Buffer;->size:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lokio/Buffer;->size:J

    .line 337
    if-eq v5, v2, :cond_3

    .line 341
    iput v5, v0, Lokio/Segment;->pos:I

    .line 344
    :goto_1
    int-to-short v0, v1

    return v0

    .line 327
    :cond_2
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 328
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 329
    int-to-short v0, v0

    return v0

    .line 338
    :cond_3
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 339
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_1
.end method

.method public readShortLe()S
    .locals 1

    .prologue
    .line 414
    invoke-virtual {p0}, Lokio/Buffer;->readShort()S

    move-result v0

    invoke-static {v0}, Lokio/Util;->reverseBytesShort(S)S

    move-result v0

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 621
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 622
    if-eqz p3, :cond_0

    const-wide/32 v0, 0x7fffffff

    .line 623
    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    move v0, v6

    :goto_0
    if-nez v0, :cond_2

    .line 624
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v7

    .line 623
    goto :goto_0

    .line 626
    :cond_2
    cmp-long v0, p1, v2

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    return-object v0

    .line 628
    :cond_3
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 629
    iget v0, v1, Lokio/Segment;->pos:I

    int-to-long v2, v0

    add-long/2addr v2, p1

    iget v0, v1, Lokio/Segment;->limit:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_4

    move v0, v6

    :goto_1
    if-nez v0, :cond_5

    .line 631
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_4
    move v0, v7

    .line 629
    goto :goto_1

    .line 634
    :cond_5
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lokio/Segment;->data:[B

    iget v3, v1, Lokio/Segment;->pos:I

    long-to-int v4, p1

    invoke-direct {v0, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 635
    iget v2, v1, Lokio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, v1, Lokio/Segment;->pos:I

    .line 636
    iget-wide v2, p0, Lokio/Buffer;->size:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 638
    iget v2, v1, Lokio/Segment;->pos:I

    iget v3, v1, Lokio/Segment;->limit:I

    if-eq v2, v3, :cond_6

    .line 643
    :goto_2
    return-object v0

    .line 639
    :cond_6
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 640
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_2
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 614
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1, p1}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 616
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final readUnsafe()Lokio/Buffer$UnsafeCursor;
    .locals 1

    .prologue
    .line 1753
    new-instance v0, Lokio/Buffer$UnsafeCursor;

    invoke-direct {v0}, Lokio/Buffer$UnsafeCursor;-><init>()V

    invoke-virtual {p0, v0}, Lokio/Buffer;->readUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    return-object v0
.end method

.method public final readUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 2

    .prologue
    .line 1757
    iget-object v0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v0, :cond_0

    .line 1761
    iput-object p0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 1762
    const/4 v0, 0x0

    iput-boolean v0, p1, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    .line 1763
    return-object p1

    .line 1758
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "already attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readUtf8()Ljava/lang/String;
    .locals 3

    .prologue
    .line 602
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sget-object v2, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 604
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readUtf8(J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 609
    sget-object v0, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8CodePoint()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/16 v1, 0x80

    const/4 v4, 0x1

    const/4 v2, 0x0

    const v12, 0xfffd

    .line 691
    iget-wide v6, p0, Lokio/Buffer;->size:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 693
    :cond_0
    invoke-virtual {p0, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v6

    .line 698
    and-int/lit16 v0, v6, 0x80

    if-eqz v0, :cond_1

    .line 704
    and-int/lit16 v0, v6, 0xe0

    const/16 v3, 0xc0

    if-eq v0, v3, :cond_3

    .line 710
    and-int/lit16 v0, v6, 0xf0

    const/16 v3, 0xe0

    if-eq v0, v3, :cond_4

    .line 716
    and-int/lit16 v0, v6, 0xf8

    const/16 v3, 0xf0

    if-eq v0, v3, :cond_5

    const-wide/16 v0, 0x1

    .line 724
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    .line 725
    return v12

    .line 700
    :cond_1
    and-int/lit8 v0, v6, 0x7f

    move v3, v4

    move v5, v0

    move v0, v2

    .line 728
    :goto_0
    iget-wide v8, p0, Lokio/Buffer;->size:J

    int-to-long v10, v3

    cmp-long v7, v8, v10

    if-ltz v7, :cond_2

    move v2, v4

    :cond_2
    if-nez v2, :cond_7

    .line 729
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (to read code point prefixed 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 730
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_3
    and-int/lit8 v3, v6, 0x1f

    const/4 v0, 0x2

    move v5, v3

    move v3, v0

    move v0, v1

    .line 708
    goto :goto_0

    .line 712
    :cond_4
    and-int/lit8 v5, v6, 0xf

    const/4 v3, 0x3

    const/16 v0, 0x800

    .line 714
    goto :goto_0

    .line 718
    :cond_5
    and-int/lit8 v5, v6, 0x7

    const/4 v3, 0x4

    const/high16 v0, 0x10000

    .line 720
    goto :goto_0

    .line 740
    :cond_6
    shl-int/lit8 v5, v5, 0x6

    .line 741
    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v5, v2

    .line 736
    add-int/lit8 v4, v4, 0x1

    :cond_7
    if-lt v4, v3, :cond_9

    .line 748
    int-to-long v2, v3

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->skip(J)V

    const v1, 0x10ffff

    .line 750
    if-gt v5, v1, :cond_a

    const v1, 0xd800

    .line 754
    if-ge v5, v1, :cond_b

    .line 758
    :cond_8
    if-lt v5, v0, :cond_c

    .line 762
    return v5

    .line 737
    :cond_9
    int-to-long v6, v4

    invoke-virtual {p0, v6, v7}, Lokio/Buffer;->getByte(J)B

    move-result v2

    .line 738
    and-int/lit16 v6, v2, 0xc0

    if-eq v6, v1, :cond_6

    .line 743
    int-to-long v0, v4

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    .line 744
    return v12

    .line 751
    :cond_a
    return v12

    :cond_b
    const v1, 0xdfff

    .line 754
    if-gt v5, v1, :cond_8

    .line 755
    return v12

    .line 759
    :cond_c
    return v12
.end method

.method public readUtf8Line()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 647
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lokio/Buffer;->indexOf(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    .line 649
    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 650
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 653
    :cond_1
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method readUtf8Line(J)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x1

    const-wide/16 v0, 0x0

    .line 676
    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    .line 684
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    .line 685
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->skip(J)V

    .line 686
    return-object v0

    .line 676
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 678
    :cond_2
    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x2

    .line 679
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->skip(J)V

    .line 680
    return-object v0
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    .line 657
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 661
    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    .line 662
    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    const-wide v4, 0x7fffffffffffffffL

    :goto_1
    const-wide/16 v2, 0x0

    .line 663
    const/16 v1, 0xa

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    .line 664
    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-wide/16 v0, 0x1

    .line 662
    add-long v4, p1, v0

    goto :goto_1

    .line 665
    :cond_3
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-ltz v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_4

    const-wide/16 v0, 0x1

    sub-long v0, v4, v0

    .line 666
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_6

    .line 669
    :cond_4
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    .line 670
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 671
    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\\n not found: limit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 672
    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2026

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 666
    :cond_6
    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 667
    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(J)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    iget-wide v2, p0, Lokio/Buffer;->size:J

    cmp-long v2, v2, p1

    if-gez v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public require(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 109
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 110
    :cond_1
    return-void
.end method

.method segmentSizes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1591
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_0

    .line 1592
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1593
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->limit:I

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->pos:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1594
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    :goto_0
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v0, v2, :cond_1

    .line 1597
    return-object v1

    .line 1591
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1595
    :cond_1
    iget v2, v0, Lokio/Segment;->limit:I

    iget v3, v0, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1594
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0
.end method

.method public select(Lokio/Options;)I
    .locals 14

    .prologue
    const/4 v4, 0x0

    .line 548
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 549
    if-eqz v1, :cond_0

    .line 551
    iget-object v7, p1, Lokio/Options;->byteStrings:[Lokio/ByteString;

    .line 552
    array-length v8, v7

    move v6, v4

    :goto_0
    if-lt v6, v8, :cond_1

    const/4 v0, -0x1

    .line 563
    return v0

    .line 549
    :cond_0
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-virtual {p1, v0}, Lokio/Options;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 553
    :cond_1
    aget-object v3, v7, v6

    .line 554
    iget-wide v10, p0, Lokio/Buffer;->size:J

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v12, v0

    cmp-long v0, v10, v12

    if-gez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    iget v2, v1, Lokio/Segment;->pos:I

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lokio/Buffer;->rangeEquals(Lokio/Segment;ILokio/ByteString;II)Z

    move-result v0

    if-nez v0, :cond_4

    .line 552
    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_3
    move v0, v4

    .line 554
    goto :goto_1

    .line 556
    :cond_4
    :try_start_0
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    return v6

    :catch_0
    move-exception v0

    .line 559
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method selectPrefix(Lokio/Options;)I
    .locals 14

    .prologue
    const/4 v4, 0x0

    .line 572
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 573
    iget-object v7, p1, Lokio/Options;->byteStrings:[Lokio/ByteString;

    .line 574
    array-length v8, v7

    move v6, v4

    :goto_0
    if-lt v6, v8, :cond_0

    const/4 v0, -0x1

    .line 581
    return v0

    .line 575
    :cond_0
    aget-object v3, v7, v6

    .line 576
    iget-wide v10, p0, Lokio/Buffer;->size:J

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v12, v0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v5, v10

    .line 577
    if-nez v5, :cond_2

    .line 578
    :cond_1
    return v6

    .line 577
    :cond_2
    iget v2, v1, Lokio/Segment;->pos:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lokio/Buffer;->rangeEquals(Lokio/Segment;ILokio/ByteString;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 574
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method

.method public final sha1()Lokio/ByteString;
    .locals 1

    .prologue
    const-string/jumbo v0, "SHA-1"

    .line 1607
    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final sha256()Lokio/ByteString;
    .locals 1

    .prologue
    const-string/jumbo v0, "SHA-256"

    .line 1612
    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final sha512()Lokio/ByteString;
    .locals 1

    .prologue
    const-string/jumbo v0, "SHA-512"

    .line 1617
    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final size()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lokio/Buffer;->size:J

    return-wide v0
.end method

.method public skip(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    .line 848
    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 849
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_2

    .line 851
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->limit:I

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 852
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 853
    int-to-long v2, v0

    sub-long/2addr p1, v2

    .line 854
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v1, Lokio/Segment;->pos:I

    add-int/2addr v0, v2

    iput v0, v1, Lokio/Segment;->pos:I

    .line 856
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->pos:I

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->limit:I

    if-ne v0, v1, :cond_0

    .line 857
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 858
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 859
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 848
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 849
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 862
    :cond_3
    return-void
.end method

.method public final snapshot()Lokio/ByteString;
    .locals 4

    .prologue
    .line 1738
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 1739
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1738
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1741
    :cond_1
    iget-wide v0, p0, Lokio/Buffer;->size:J

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final snapshot(I)Lokio/ByteString;
    .locals 1

    .prologue
    .line 1748
    if-eqz p1, :cond_0

    .line 1749
    new-instance v0, Lokio/SegmentedByteString;

    invoke-direct {v0, p0, p1}, Lokio/SegmentedByteString;-><init>(Lokio/Buffer;I)V

    return-object v0

    .line 1748
    :cond_0
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    return-object v0
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .prologue
    .line 1586
    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1719
    invoke-virtual {p0}, Lokio/Buffer;->snapshot()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writableSegment(I)Lokio/Segment;
    .locals 3

    .prologue
    const/16 v2, 0x2000

    const/4 v0, 0x1

    .line 1208
    if-ge p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    if-gt p1, v2, :cond_0

    .line 1210
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_3

    .line 1215
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 1216
    iget v1, v0, Lokio/Segment;->limit:I

    add-int/2addr v1, p1

    if-le v1, v2, :cond_4

    .line 1217
    :cond_2
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v0

    .line 1219
    :goto_0
    return-object v0

    .line 1211
    :cond_3
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v0

    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1212
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v2, v1, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v2, v0, Lokio/Segment;->next:Lokio/Segment;

    return-object v2

    .line 1216
    :cond_4
    iget-boolean v1, v0, Lokio/Segment;->owner:Z

    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1032
    if-eqz p1, :cond_0

    .line 1034
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    move v0, v1

    .line 1036
    :goto_0
    if-gtz v0, :cond_1

    .line 1046
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 1047
    return v1

    .line 1032
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v2, 0x1

    .line 1037
    invoke-virtual {p0, v2}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v2

    .line 1039
    iget v3, v2, Lokio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1040
    iget-object v4, v2, Lokio/Segment;->data:[B

    iget v5, v2, Lokio/Segment;->limit:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1042
    sub-int/2addr v0, v3

    .line 1043
    iget v4, v2, Lokio/Segment;->limit:I

    add-int/2addr v3, v4

    iput v3, v2, Lokio/Segment;->limit:I

    goto :goto_0
.end method

.method public write(Lokio/ByteString;)Lokio/Buffer;
    .locals 2

    .prologue
    .line 865
    if-eqz p1, :cond_0

    .line 866
    invoke-virtual {p1, p0}, Lokio/ByteString;->write(Lokio/Buffer;)V

    .line 867
    return-object p0

    .line 865
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "byteString == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([B)Lokio/Buffer;
    .locals 2

    .prologue
    .line 1008
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1009
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v0

    return-object v0

    .line 1008
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)Lokio/Buffer;
    .locals 6

    .prologue
    .line 1013
    if-eqz p1, :cond_0

    .line 1014
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 1016
    add-int v0, p2, p3

    .line 1017
    :goto_0
    if-lt p2, v0, :cond_1

    .line 1027
    iget-wide v0, p0, Lokio/Buffer;->size:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 1028
    return-object p0

    .line 1013
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v1, 0x1

    .line 1018
    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v1

    .line 1020
    sub-int v2, v0, p2

    iget v3, v1, Lokio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1021
    iget-object v3, v1, Lokio/Segment;->data:[B

    iget v4, v1, Lokio/Segment;->limit:I

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1023
    add-int/2addr p2, v2

    .line 1024
    iget v3, v1, Lokio/Segment;->limit:I

    add-int/2addr v2, v3

    iput v2, v1, Lokio/Segment;->limit:I

    goto :goto_0
.end method

.method public bridge synthetic write(Lokio/ByteString;)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Source;J)Lokio/BufferedSink;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :goto_0
    const-wide/16 v0, 0x0

    .line 1060
    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 1061
    invoke-interface {p1, p0, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    .line 1062
    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 1060
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1063
    :cond_1
    sub-long/2addr p2, v0

    goto :goto_0

    .line 1065
    :cond_2
    return-object p0
.end method

.method public bridge synthetic write([B)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic write([BII)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 12

    .prologue
    const-wide/16 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 1273
    if-eqz p1, :cond_2

    .line 1274
    if-eq p1, p0, :cond_3

    .line 1275
    iget-wide v0, p1, Lokio/Buffer;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 1277
    :goto_0
    cmp-long v0, p2, v2

    if-gtz v0, :cond_4

    move v0, v7

    :goto_1
    if-nez v0, :cond_b

    .line 1279
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->limit:I

    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_5

    move v0, v7

    :goto_2
    if-nez v0, :cond_1

    .line 1280
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_6

    move-object v0, v6

    .line 1281
    :goto_3
    if-nez v0, :cond_7

    .line 1291
    :cond_0
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lokio/Segment;->split(I)Lokio/Segment;

    move-result-object v0

    iput-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1296
    :cond_1
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1297
    iget v1, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    .line 1298
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1299
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v1, :cond_a

    .line 1303
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    .line 1304
    invoke-virtual {v1, v0}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v0

    .line 1305
    invoke-virtual {v0}, Lokio/Segment;->compact()V

    .line 1307
    :goto_4
    iget-wide v0, p1, Lokio/Buffer;->size:J

    sub-long/2addr v0, v4

    iput-wide v0, p1, Lokio/Buffer;->size:J

    .line 1308
    iget-wide v0, p0, Lokio/Buffer;->size:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 1309
    sub-long/2addr p2, v4

    goto :goto_0

    .line 1273
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1274
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v8

    .line 1277
    goto :goto_1

    :cond_5
    move v0, v8

    .line 1279
    goto :goto_2

    .line 1280
    :cond_6
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    goto :goto_3

    .line 1281
    :cond_7
    iget-boolean v1, v0, Lokio/Segment;->owner:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lokio/Segment;->limit:I

    int-to-long v4, v1

    add-long/2addr v4, p2

    iget-boolean v1, v0, Lokio/Segment;->shared:Z

    if-nez v1, :cond_8

    .line 1282
    iget v1, v0, Lokio/Segment;->pos:I

    :goto_5
    int-to-long v10, v1

    sub-long/2addr v4, v10

    const-wide/16 v10, 0x2000

    cmp-long v1, v4, v10

    if-lez v1, :cond_9

    move v1, v7

    :goto_6
    if-nez v1, :cond_0

    .line 1284
    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 1285
    iget-wide v0, p1, Lokio/Buffer;->size:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lokio/Buffer;->size:J

    .line 1286
    iget-wide v0, p0, Lokio/Buffer;->size:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 1287
    return-void

    :cond_8
    move v1, v8

    .line 1282
    goto :goto_5

    :cond_9
    move v1, v8

    goto :goto_6

    .line 1300
    :cond_a
    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1301
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v9, p0, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v9, v1, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v9, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_4

    .line 1311
    :cond_b
    return-void
.end method

.method public writeAll(Lokio/Source;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1051
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x2000

    .line 1053
    invoke-interface {p1, p0, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 1054
    add-long/2addr v0, v2

    goto :goto_0

    .line 1051
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1056
    :cond_1
    return-wide v0
.end method

.method public writeByte(I)Lokio/Buffer;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1069
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    .line 1070
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lokio/Segment;->limit:I

    int-to-byte v0, p1

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 1071
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 1072
    return-object p0
.end method

.method public bridge synthetic writeByte(I)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeDecimalLong(J)Lokio/Buffer;
    .locals 11

    .prologue
    const-wide/16 v0, 0x0

    .line 1129
    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/16 v0, 0x30

    .line 1131
    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v0

    return-object v0

    .line 1134
    :cond_0
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    .line 1135
    cmp-long v1, p1, v2

    if-ltz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_2

    .line 1136
    neg-long v2, p1

    const-wide/16 v0, 0x0

    .line 1137
    cmp-long v0, v2, v0

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    const-string/jumbo v0, "-9223372036854775808"

    .line 1138
    invoke-virtual {p0, v0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v0

    return-object v0

    .line 1135
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v4, v0

    move-wide v2, p1

    :goto_2
    const-wide/32 v0, 0x5f5e100

    .line 1144
    cmp-long v0, v2, v0

    if-ltz v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_14

    const-wide/16 v0, 0x2710

    .line 1147
    cmp-long v0, v2, v0

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_d

    const-wide/16 v0, 0x64

    .line 1148
    cmp-long v0, v2, v0

    if-ltz v0, :cond_7

    const/4 v0, 0x1

    :goto_5
    if-nez v0, :cond_a

    const-wide/16 v0, 0xa

    cmp-long v0, v2, v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    if-nez v0, :cond_9

    const/4 v0, 0x1

    .line 1163
    :goto_7
    if-nez v4, :cond_29

    .line 1167
    :goto_8
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v5

    .line 1168
    iget-object v6, v5, Lokio/Segment;->data:[B

    .line 1169
    iget v1, v5, Lokio/Segment;->limit:I

    add-int/2addr v1, v0

    :goto_9
    const-wide/16 v8, 0x0

    .line 1170
    cmp-long v7, v2, v8

    if-eqz v7, :cond_2a

    const-wide/16 v8, 0xa

    .line 1171
    rem-long v8, v2, v8

    long-to-int v7, v8

    .line 1172
    add-int/lit8 v1, v1, -0x1

    sget-object v8, Lokio/Buffer;->DIGITS:[B

    aget-byte v7, v8, v7

    int-to-byte v7, v7

    aput-byte v7, v6, v1

    const-wide/16 v8, 0xa

    .line 1173
    div-long/2addr v2, v8

    goto :goto_9

    .line 1137
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1140
    :cond_4
    const/4 v0, 0x1

    move v4, v0

    goto :goto_2

    .line 1144
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 1147
    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    .line 1148
    :cond_7
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :cond_9
    const/4 v0, 0x2

    goto :goto_7

    :cond_a
    const-wide/16 v0, 0x3e8

    .line 1149
    cmp-long v0, v2, v0

    if-ltz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    if-nez v0, :cond_c

    const/4 v0, 0x3

    goto :goto_7

    :cond_b
    const/4 v0, 0x0

    goto :goto_a

    :cond_c
    const/4 v0, 0x4

    goto :goto_7

    :cond_d
    const-wide/32 v0, 0xf4240

    .line 1151
    cmp-long v0, v2, v0

    if-ltz v0, :cond_e

    const/4 v0, 0x1

    :goto_b
    if-nez v0, :cond_11

    const-wide/32 v0, 0x186a0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_f

    const/4 v0, 0x1

    :goto_c
    if-nez v0, :cond_10

    const/4 v0, 0x5

    goto :goto_7

    :cond_e
    const/4 v0, 0x0

    goto :goto_b

    :cond_f
    const/4 v0, 0x0

    goto :goto_c

    :cond_10
    const/4 v0, 0x6

    goto :goto_7

    :cond_11
    const-wide/32 v0, 0x989680

    .line 1152
    cmp-long v0, v2, v0

    if-ltz v0, :cond_12

    const/4 v0, 0x1

    :goto_d
    if-nez v0, :cond_13

    const/4 v0, 0x7

    goto :goto_7

    :cond_12
    const/4 v0, 0x0

    goto :goto_d

    :cond_13
    const/16 v0, 0x8

    goto :goto_7

    :cond_14
    const-wide v0, 0xe8d4a51000L

    .line 1154
    cmp-long v0, v2, v0

    if-ltz v0, :cond_15

    const/4 v0, 0x1

    :goto_e
    if-nez v0, :cond_1c

    const-wide v0, 0x2540be400L

    .line 1155
    cmp-long v0, v2, v0

    if-ltz v0, :cond_16

    const/4 v0, 0x1

    :goto_f
    if-nez v0, :cond_19

    const-wide/32 v0, 0x3b9aca00

    cmp-long v0, v2, v0

    if-ltz v0, :cond_17

    const/4 v0, 0x1

    :goto_10
    if-nez v0, :cond_18

    const/16 v0, 0x9

    goto/16 :goto_7

    .line 1154
    :cond_15
    const/4 v0, 0x0

    goto :goto_e

    .line 1155
    :cond_16
    const/4 v0, 0x0

    goto :goto_f

    :cond_17
    const/4 v0, 0x0

    goto :goto_10

    :cond_18
    const/16 v0, 0xa

    goto/16 :goto_7

    :cond_19
    const-wide v0, 0x174876e800L

    .line 1156
    cmp-long v0, v2, v0

    if-ltz v0, :cond_1a

    const/4 v0, 0x1

    :goto_11
    if-nez v0, :cond_1b

    const/16 v0, 0xb

    goto/16 :goto_7

    :cond_1a
    const/4 v0, 0x0

    goto :goto_11

    :cond_1b
    const/16 v0, 0xc

    goto/16 :goto_7

    :cond_1c
    const-wide v0, 0x38d7ea4c68000L

    .line 1158
    cmp-long v0, v2, v0

    if-ltz v0, :cond_1d

    const/4 v0, 0x1

    :goto_12
    if-nez v0, :cond_22

    const-wide v0, 0x9184e72a000L

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1e

    const/4 v0, 0x1

    :goto_13
    if-nez v0, :cond_1f

    const/16 v0, 0xd

    goto/16 :goto_7

    :cond_1d
    const/4 v0, 0x0

    goto :goto_12

    :cond_1e
    const/4 v0, 0x0

    goto :goto_13

    :cond_1f
    const-wide v0, 0x5af3107a4000L

    .line 1159
    cmp-long v0, v2, v0

    if-ltz v0, :cond_20

    const/4 v0, 0x1

    :goto_14
    if-nez v0, :cond_21

    const/16 v0, 0xe

    goto/16 :goto_7

    :cond_20
    const/4 v0, 0x0

    goto :goto_14

    :cond_21
    const/16 v0, 0xf

    goto/16 :goto_7

    :cond_22
    const-wide v0, 0x16345785d8a0000L

    .line 1161
    cmp-long v0, v2, v0

    if-ltz v0, :cond_23

    const/4 v0, 0x1

    :goto_15
    if-nez v0, :cond_26

    const-wide v0, 0x2386f26fc10000L

    cmp-long v0, v2, v0

    if-ltz v0, :cond_24

    const/4 v0, 0x1

    :goto_16
    if-nez v0, :cond_25

    const/16 v0, 0x10

    goto/16 :goto_7

    :cond_23
    const/4 v0, 0x0

    goto :goto_15

    :cond_24
    const/4 v0, 0x0

    goto :goto_16

    :cond_25
    const/16 v0, 0x11

    goto/16 :goto_7

    :cond_26
    const-wide v0, 0xde0b6b3a7640000L

    .line 1162
    cmp-long v0, v2, v0

    if-ltz v0, :cond_27

    const/4 v0, 0x1

    :goto_17
    if-nez v0, :cond_28

    const/16 v0, 0x12

    goto/16 :goto_7

    :cond_27
    const/4 v0, 0x0

    goto :goto_17

    :cond_28
    const/16 v0, 0x13

    goto/16 :goto_7

    .line 1164
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    .line 1175
    :cond_2a
    if-nez v4, :cond_2b

    .line 1179
    :goto_18
    iget v1, v5, Lokio/Segment;->limit:I

    add-int/2addr v1, v0

    iput v1, v5, Lokio/Segment;->limit:I

    .line 1180
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 1181
    return-object p0

    .line 1176
    :cond_2b
    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2d

    aput-byte v2, v6, v1

    goto :goto_18
.end method

.method public bridge synthetic writeDecimalLong(J)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeHexadecimalUnsignedLong(J)Lokio/Buffer;
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    .line 1185
    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/16 v0, 0x30

    .line 1187
    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v0

    return-object v0

    .line 1190
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x1

    .line 1192
    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v2

    .line 1193
    iget-object v3, v2, Lokio/Segment;->data:[B

    .line 1194
    iget v0, v2, Lokio/Segment;->limit:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v4, v2, Lokio/Segment;->limit:I

    :goto_0
    if-ge v0, v4, :cond_1

    .line 1198
    iget v0, v2, Lokio/Segment;->limit:I

    add-int/2addr v0, v1

    iput v0, v2, Lokio/Segment;->limit:I

    .line 1199
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v0, v1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 1200
    return-object p0

    .line 1195
    :cond_1
    sget-object v5, Lokio/Buffer;->DIGITS:[B

    const-wide/16 v6, 0xf

    and-long/2addr v6, p1

    long-to-int v6, v6

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    const/4 v5, 0x4

    .line 1196
    ushr-long/2addr p1, v5

    .line 1194
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeInt(I)Lokio/Buffer;
    .locals 5

    .prologue
    const/4 v0, 0x4

    .line 1091
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    .line 1092
    iget-object v1, v0, Lokio/Segment;->data:[B

    .line 1093
    iget v2, v0, Lokio/Segment;->limit:I

    .line 1094
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1095
    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1096
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1097
    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1098
    iput v2, v0, Lokio/Segment;->limit:I

    .line 1099
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 1100
    return-object p0
.end method

.method public bridge synthetic writeInt(I)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeIntLe(I)Lokio/Buffer;
    .locals 1

    .prologue
    .line 1104
    invoke-static {p1}, Lokio/Util;->reverseBytesInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeIntLe(I)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeIntLe(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeLong(J)Lokio/Buffer;
    .locals 9

    .prologue
    const/16 v8, 0x8

    const-wide/16 v6, 0xff

    .line 1108
    invoke-virtual {p0, v8}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    .line 1109
    iget-object v1, v0, Lokio/Segment;->data:[B

    .line 1110
    iget v2, v0, Lokio/Segment;->limit:I

    .line 1111
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x38

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1112
    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x30

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1113
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x28

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1114
    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x20

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1115
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x18

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1116
    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x10

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1117
    add-int/lit8 v3, v2, 0x1

    ushr-long v4, p1, v8

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1118
    add-int/lit8 v2, v3, 0x1

    and-long v4, p1, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1119
    iput v2, v0, Lokio/Segment;->limit:I

    .line 1120
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 1121
    return-object p0
.end method

.method public bridge synthetic writeLong(J)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeLongLe(J)Lokio/Buffer;
    .locals 3

    .prologue
    .line 1125
    invoke-static {p1, p2}, Lokio/Util;->reverseBytesLong(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeLongLe(J)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLongLe(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeShort(I)Lokio/Buffer;
    .locals 5

    .prologue
    const/4 v0, 0x2

    .line 1076
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    .line 1077
    iget-object v1, v0, Lokio/Segment;->data:[B

    .line 1078
    iget v2, v0, Lokio/Segment;->limit:I

    .line 1079
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1080
    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1081
    iput v2, v0, Lokio/Segment;->limit:I

    .line 1082
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 1083
    return-object p0
.end method

.method public bridge synthetic writeShort(I)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeShortLe(I)Lokio/Buffer;
    .locals 1

    .prologue
    .line 1087
    int-to-short v0, p1

    invoke-static {v0}, Lokio/Util;->reverseBytesShort(S)S

    move-result v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeShortLe(I)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShortLe(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 992
    if-eqz p1, :cond_0

    .line 993
    if-ltz p2, :cond_1

    .line 994
    if-lt p3, p2, :cond_2

    .line 997
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_3

    .line 1001
    if-eqz p4, :cond_4

    .line 1002
    sget-object v0, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1003
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 1004
    array-length v1, v0

    invoke-virtual {p0, v0, v2, v1}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v0

    return-object v0

    .line 992
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 993
    :cond_1
    new-instance v0, Ljava/lang/IllegalAccessError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 995
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 998
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 999
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1001
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1002
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 987
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2, p3, p4}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 210
    if-eqz p1, :cond_1

    .line 211
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 213
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 214
    :cond_0
    :goto_0
    cmp-long v1, p2, v2

    if-gtz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    .line 215
    iget v1, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 216
    iget-object v4, v0, Lokio/Segment;->data:[B

    iget v5, v0, Lokio/Segment;->pos:I

    invoke-virtual {p1, v4, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 218
    iget v4, v0, Lokio/Segment;->pos:I

    add-int/2addr v4, v1

    iput v4, v0, Lokio/Segment;->pos:I

    .line 219
    iget-wide v4, p0, Lokio/Buffer;->size:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lokio/Buffer;->size:J

    .line 220
    int-to-long v4, v1

    sub-long/2addr p2, v4

    .line 222
    iget v1, v0, Lokio/Segment;->pos:I

    iget v4, v0, Lokio/Segment;->limit:I

    if-ne v1, v4, :cond_0

    .line 224
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 225
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    move-object v0, v1

    goto :goto_0

    .line 210
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 229
    :cond_3
    return-object p0
.end method

.method public writeUtf8(Ljava/lang/String;)Lokio/Buffer;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 871
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;II)Lokio/Buffer;
    .locals 10

    .prologue
    const v9, 0xdfff

    const/16 v8, 0x80

    const/4 v1, 0x0

    .line 875
    if-eqz p1, :cond_0

    .line 876
    if-ltz p2, :cond_1

    .line 877
    if-lt p3, p2, :cond_2

    .line 880
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_3

    .line 886
    :goto_0
    if-lt p2, p3, :cond_4

    .line 947
    return-object p0

    .line 875
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 876
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 878
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 881
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 882
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 889
    if-lt v2, v8, :cond_6

    const/16 v0, 0x800

    .line 910
    if-lt v2, v0, :cond_9

    const v0, 0xd800

    .line 916
    if-ge v2, v0, :cond_a

    .line 918
    :cond_5
    shr-int/lit8 v0, v2, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 919
    shr-int/lit8 v0, v2, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 920
    and-int/lit8 v0, v2, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 921
    add-int/lit8 v0, p2, 0x1

    :goto_1
    move p2, v0

    .line 945
    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x1

    .line 890
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v3

    .line 891
    iget-object v4, v3, Lokio/Segment;->data:[B

    .line 892
    iget v0, v3, Lokio/Segment;->limit:I

    sub-int v5, v0, p2

    .line 893
    rsub-int v0, v5, 0x2000

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 896
    add-int/lit8 v0, p2, 0x1

    add-int v7, v5, p2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v4, v7

    .line 900
    :goto_2
    if-lt v0, v6, :cond_8

    .line 906
    :cond_7
    add-int v2, v0, v5

    iget v4, v3, Lokio/Segment;->limit:I

    sub-int/2addr v2, v4

    .line 907
    iget v4, v3, Lokio/Segment;->limit:I

    add-int/2addr v4, v2

    iput v4, v3, Lokio/Segment;->limit:I

    .line 908
    iget-wide v4, p0, Lokio/Buffer;->size:J

    int-to-long v2, v2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    goto :goto_1

    .line 901
    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 902
    if-ge v7, v8, :cond_7

    .line 903
    add-int/lit8 v2, v0, 0x1

    add-int/2addr v0, v5

    int-to-byte v7, v7

    int-to-byte v7, v7

    aput-byte v7, v4, v0

    move v0, v2

    goto :goto_2

    .line 912
    :cond_9
    shr-int/lit8 v0, v2, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 913
    and-int/lit8 v0, v2, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 914
    add-int/lit8 v0, p2, 0x1

    goto :goto_1

    .line 916
    :cond_a
    if-gt v2, v9, :cond_5

    .line 926
    add-int/lit8 v0, p2, 0x1

    if-lt v0, p3, :cond_c

    move v0, v1

    :goto_3
    const v3, 0xdbff

    .line 927
    if-le v2, v3, :cond_d

    :cond_b
    const/16 v0, 0x3f

    .line 928
    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 929
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    .line 926
    :cond_c
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3

    :cond_d
    const v3, 0xdc00

    .line 927
    if-lt v0, v3, :cond_b

    if-gt v0, v9, :cond_b

    const v3, -0xd801

    .line 936
    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0xa

    const v3, -0xdc01

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    const/high16 v2, 0x10000

    add-int/2addr v0, v2

    .line 939
    shr-int/lit8 v2, v0, 0x12

    or-int/lit16 v2, v2, 0xf0

    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 940
    shr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 941
    shr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 942
    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 943
    add-int/lit8 v0, p2, 0x2

    goto/16 :goto_1
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8CodePoint(I)Lokio/Buffer;
    .locals 3

    .prologue
    const/16 v0, 0x80

    .line 951
    if-lt p1, v0, :cond_0

    const/16 v0, 0x800

    .line 955
    if-lt p1, v0, :cond_1

    const/high16 v0, 0x10000

    .line 960
    if-lt p1, v0, :cond_2

    const v0, 0x10ffff

    .line 971
    if-le p1, v0, :cond_5

    .line 979
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 980
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 953
    :cond_0
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 983
    :goto_0
    return-object p0

    .line 957
    :cond_1
    shr-int/lit8 v0, p1, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 958
    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_0

    :cond_2
    const v0, 0xd800

    .line 961
    if-ge p1, v0, :cond_4

    .line 966
    :cond_3
    shr-int/lit8 v0, p1, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 967
    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 968
    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_0

    :cond_4
    const v0, 0xdfff

    .line 961
    if-gt p1, v0, :cond_3

    const/16 v0, 0x3f

    .line 963
    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_0

    .line 973
    :cond_5
    shr-int/lit8 v0, p1, 0x12

    or-int/lit16 v0, v0, 0xf0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 974
    shr-int/lit8 v0, p1, 0xc

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 975
    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 976
    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_0
.end method

.method public bridge synthetic writeUtf8CodePoint(I)Lokio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method
