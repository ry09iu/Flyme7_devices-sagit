.class public final Lcom/baidu/mobstat/fb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/fb$a;,
        Lcom/baidu/mobstat/fb$b;
    }
.end annotation


# direct methods
.method static synthetic a(Ljava/security/MessageDigest;Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-static {p0, p1}, Lcom/baidu/mobstat/fb;->b(Ljava/security/MessageDigest;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/security/MessageDigest;[B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-static {p0, p1}, Lcom/baidu/mobstat/fb;->b(Ljava/security/MessageDigest;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 104
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105
    :cond_0
    aget-byte v1, p0, v0

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    .line 106
    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    .line 108
    if-ge v1, v4, :cond_1

    add-int/lit8 v1, v1, 0x30

    :goto_1
    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    if-ge v3, v4, :cond_2

    add-int/lit8 v1, v3, 0x30

    :goto_2
    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_1
    add-int/lit8 v1, v1, 0x61

    add-int/lit8 v1, v1, -0xa

    goto :goto_1

    .line 109
    :cond_2
    add-int/lit8 v1, v3, 0x61

    add-int/lit8 v1, v1, -0xa

    goto :goto_2
.end method

.method private static b(Ljava/security/MessageDigest;Ljava/io/File;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 99
    return-object v0

    .line 73
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0xfd0

    .line 75
    :try_start_1
    new-array v1, v1, [B

    .line 77
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    .line 78
    if-eq v2, v3, :cond_2

    const/4 v3, 0x0

    .line 82
    invoke-virtual {p0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 87
    :goto_1
    if-nez v0, :cond_3

    .line 96
    :cond_1
    :goto_2
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/fb;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 87
    :cond_2
    if-eqz v0, :cond_1

    .line 89
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 92
    :catch_1
    move-exception v0

    goto :goto_2

    .line 89
    :cond_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 92
    :catch_2
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 87
    :goto_3
    if-nez v1, :cond_4

    .line 94
    :goto_4
    throw v0

    .line 89
    :cond_4
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 92
    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private static b(Ljava/security/MessageDigest;[B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 65
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/fb;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
