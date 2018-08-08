.class public Lcom/baidu/mobstat/fb$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/fb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .prologue
    :try_start_0
    const-string/jumbo v0, "SHA-256"

    .line 53
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/baidu/mobstat/fb;->a(Ljava/security/MessageDigest;Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    .line 58
    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 1

    .prologue
    :try_start_0
    const-string/jumbo v0, "SHA-256"

    .line 43
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/baidu/mobstat/fb;->a(Ljava/security/MessageDigest;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    .line 48
    return-object v0
.end method
