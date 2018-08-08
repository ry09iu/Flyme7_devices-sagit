.class public Lcom/baidu/mobstat/ev$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public static a(I[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 39
    add-int/lit8 v0, p0, -0x1

    .line 40
    if-gez v0, :cond_1

    .line 50
    :cond_0
    new-array v0, v2, [B

    return-object v0

    .line 40
    :cond_1
    sget-object v1, Lcom/baidu/mobstat/ez;->a:[Ljava/lang/String;

    array-length v1, v1

    if-le v1, v0, :cond_0

    .line 41
    sget-object v1, Lcom/baidu/mobstat/ez;->a:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 42
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string/jumbo v0, "AES/ECB/PKCS5Padding"

    .line 44
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v2, 0x1

    .line 45
    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 47
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static b(I[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 63
    add-int/lit8 v0, p0, -0x1

    .line 64
    if-gez v0, :cond_1

    .line 74
    :cond_0
    new-array v0, v2, [B

    return-object v0

    .line 64
    :cond_1
    sget-object v1, Lcom/baidu/mobstat/ez;->a:[Ljava/lang/String;

    array-length v1, v1

    if-le v1, v0, :cond_0

    .line 65
    sget-object v1, Lcom/baidu/mobstat/ez;->a:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 66
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string/jumbo v0, "AES/ECB/PKCS5Padding"

    .line 68
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v2, 0x2

    .line 69
    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 71
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static c(I[B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    :try_start_0
    invoke-static {p0, p1}, Lcom/baidu/mobstat/ev$b;->a(I[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/ey;->b([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    .line 84
    return-object v0
.end method

.method public static d(I[B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    invoke-static {p0, p1}, Lcom/baidu/mobstat/ev$b;->c(I[B)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method
