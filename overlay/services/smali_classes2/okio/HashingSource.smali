.class public final Lokio/HashingSource;
.super Lokio/ForwardingSource;
.source "HashingSource.java"


# instance fields
.field private final mac:Ljavax/crypto/Mac;

.field private final messageDigest:Ljava/security/MessageDigest;


# direct methods
.method private constructor <init>(Lokio/Source;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 73
    :try_start_0
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lokio/HashingSource;->mac:Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 76
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private constructor <init>(Lokio/Source;Lokio/ByteString;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 83
    :try_start_0
    invoke-static {p3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    iput-object v0, p0, Lokio/HashingSource;->mac:Ljavax/crypto/Mac;

    .line 84
    iget-object v0, p0, Lokio/HashingSource;->mac:Ljavax/crypto/Mac;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lokio/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 87
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catch_1
    move-exception v0

    .line 89
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static hmacSha1(Lokio/Source;Lokio/ByteString;)Lokio/HashingSource;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lokio/HashingSource;

    const-string/jumbo v1, "HmacSHA1"

    invoke-direct {v0, p0, p1, v1}, Lokio/HashingSource;-><init>(Lokio/Source;Lokio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha256(Lokio/Source;Lokio/ByteString;)Lokio/HashingSource;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lokio/HashingSource;

    const-string/jumbo v1, "HmacSHA256"

    invoke-direct {v0, p0, p1, v1}, Lokio/HashingSource;-><init>(Lokio/Source;Lokio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static md5(Lokio/Source;)Lokio/HashingSource;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lokio/HashingSource;

    const-string/jumbo v1, "MD5"

    invoke-direct {v0, p0, v1}, Lokio/HashingSource;-><init>(Lokio/Source;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha1(Lokio/Source;)Lokio/HashingSource;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lokio/HashingSource;

    const-string/jumbo v1, "SHA-1"

    invoke-direct {v0, p0, v1}, Lokio/HashingSource;-><init>(Lokio/Source;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha256(Lokio/Source;)Lokio/HashingSource;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lokio/HashingSource;

    const-string/jumbo v1, "SHA-256"

    invoke-direct {v0, p0, v1}, Lokio/HashingSource;-><init>(Lokio/Source;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final hash()Lokio/ByteString;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    if-nez v0, :cond_0

    iget-object v0, p0, Lokio/HashingSource;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    .line 132
    :goto_0
    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v0

    return-object v0

    .line 131
    :cond_0
    iget-object v0, p0, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    goto :goto_0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 94
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide v8

    const-wide/16 v0, -0x1

    .line 96
    cmp-long v0, v8, v0

    if-eqz v0, :cond_4

    .line 97
    iget-wide v0, p1, Lokio/Buffer;->size:J

    sub-long v4, v0, v8

    .line 100
    iget-wide v2, p1, Lokio/Buffer;->size:J

    .line 101
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 102
    :goto_0
    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    move v1, v6

    :goto_1
    if-nez v1, :cond_2

    .line 103
    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 104
    iget v1, v0, Lokio/Segment;->limit:I

    iget v10, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v10

    int-to-long v10, v1

    sub-long/2addr v2, v10

    goto :goto_0

    :cond_0
    move v1, v7

    .line 102
    goto :goto_1

    .line 111
    :cond_1
    iget-object v4, p0, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    iget-object v5, v0, Lokio/Segment;->data:[B

    iget v10, v0, Lokio/Segment;->limit:I

    sub-int/2addr v10, v1

    invoke-virtual {v4, v5, v1, v10}, Ljava/security/MessageDigest;->update([BII)V

    .line 115
    :goto_2
    iget v1, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 117
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-wide v4, v2

    .line 108
    :cond_2
    iget-wide v10, p1, Lokio/Buffer;->size:J

    cmp-long v1, v2, v10

    if-ltz v1, :cond_3

    move v1, v6

    :goto_3
    if-nez v1, :cond_4

    .line 109
    iget v1, v0, Lokio/Segment;->pos:I

    int-to-long v10, v1

    add-long/2addr v4, v10

    sub-long/2addr v4, v2

    long-to-int v1, v4

    .line 110
    iget-object v4, p0, Lokio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    if-nez v4, :cond_1

    .line 113
    iget-object v4, p0, Lokio/HashingSource;->mac:Ljavax/crypto/Mac;

    iget-object v5, v0, Lokio/Segment;->data:[B

    iget v10, v0, Lokio/Segment;->limit:I

    sub-int/2addr v10, v1

    invoke-virtual {v4, v5, v1, v10}, Ljavax/crypto/Mac;->update([BII)V

    goto :goto_2

    :cond_3
    move v1, v7

    .line 108
    goto :goto_3

    .line 121
    :cond_4
    return-wide v8
.end method
