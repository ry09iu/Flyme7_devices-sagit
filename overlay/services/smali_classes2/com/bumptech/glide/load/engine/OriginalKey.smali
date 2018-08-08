.class Lcom/bumptech/glide/load/engine/OriginalKey;
.super Ljava/lang/Object;
.source "OriginalKey.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# instance fields
.field private final id:Ljava/lang/String;

.field private final signature:Lcom/bumptech/glide/load/Key;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/load/Key;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->id:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->signature:Lcom/bumptech/glide/load/Key;

    .line 19
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    if-eq p0, p1, :cond_1

    .line 26
    if-nez p1, :cond_2

    .line 27
    :cond_0
    return v2

    .line 24
    :cond_1
    return v3

    .line 26
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 30
    check-cast p1, Lcom/bumptech/glide/load/engine/OriginalKey;

    .line 32
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/bumptech/glide/load/engine/OriginalKey;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->signature:Lcom/bumptech/glide/load/Key;

    iget-object v1, p1, Lcom/bumptech/glide/load/engine/OriginalKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 39
    return v3

    .line 33
    :cond_3
    return v2

    .line 36
    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 45
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-interface {v1}, Lcom/bumptech/glide/load/Key;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    return v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->id:Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 52
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 53
    return-void
.end method
