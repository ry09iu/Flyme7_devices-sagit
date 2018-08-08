.class public Lcom/bumptech/glide/signature/MediaStoreSignature;
.super Ljava/lang/Object;
.source "MediaStoreSignature.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# instance fields
.field private final dateModified:J

.field private final mimeType:Ljava/lang/String;

.field private final orientation:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    .line 32
    iput-wide p2, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    .line 33
    iput p4, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    if-eq p0, p1, :cond_1

    .line 41
    if-nez p1, :cond_2

    .line 42
    :cond_0
    return v4

    .line 39
    :cond_1
    return v5

    .line 41
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 45
    check-cast p1, Lcom/bumptech/glide/signature/MediaStoreSignature;

    .line 47
    iget-wide v0, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    iget-wide v2, p1, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 48
    return v4

    .line 50
    :cond_3
    iget v0, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    iget v1, p1, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    if-ne v0, v1, :cond_5

    .line 53
    iget-object v0, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 57
    :cond_4
    return v5

    .line 51
    :cond_5
    return v4

    .line 53
    :cond_6
    iget-object v0, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    iget-object v1, p1, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 54
    :cond_7
    return v4
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 62
    iget-object v0, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 63
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    iget-wide v4, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    add-int/2addr v0, v1

    .line 65
    return v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v0, 0xc

    .line 70
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v2, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 74
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 75
    iget-object v0, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 76
    return-void
.end method
