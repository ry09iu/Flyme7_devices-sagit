.class public Lcom/android/server/location/AESCrypt;
.super Ljava/lang/Object;
.source "AESCrypt.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final encBytes([B[B[B)[B
    .locals 5
    .param p0, "srcBytes"    # [B
    .param p1, "key"    # [B
    .param p2, "newIv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    const-string/jumbo v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 20
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v4, "AES"

    invoke-direct {v3, p1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 21
    .local v3, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 22
    .local v2, "iv":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 23
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 24
    .local v1, "encrypted":[B
    return-object v1
.end method

.method public static final encText(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "sSrc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v5, 0x10

    .line 29
    new-array v2, v5, [B

    .local v2, "key":[B
    fill-array-data v2, :array_0

    .line 30
    new-array v1, v5, [B

    .local v1, "ivk":[B
    fill-array-data v1, :array_1

    .line 31
    const-string/jumbo v5, "utf-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 32
    .local v4, "srcBytes":[B
    invoke-static {v4, v2, v1}, Lcom/android/server/location/AESCrypt;->encBytes([B[B[B)[B

    move-result-object v0

    .line 33
    .local v0, "encrypted":[B
    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "outPut":Ljava/lang/String;
    const-string/jumbo v5, "\n"

    const-string/jumbo v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\r"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 35
    return-object v3

    .line 29
    nop

    :array_0
    .array-data 1
        0x61t
        0x72t
        0x65t
        0x79t
        0x6ft
        0x75t
        0x6ft
        0x6bt
        0x61t
        0x72t
        0x65t
        0x79t
        0x6ft
        0x75t
        0x6ft
        0x6bt
    .end array-data

    .line 30
    :array_1
    .array-data 1
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
    .end array-data
.end method
