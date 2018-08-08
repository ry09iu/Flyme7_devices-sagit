.class public final Lcom/baidu/mobstat/fc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 67
    if-nez p0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 69
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 45
    if-nez p0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v3

    .line 45
    :cond_1
    if-eqz p1, :cond_0

    const/16 v0, 0xfd0

    .line 46
    new-array v0, v0, [B

    .line 49
    :goto_1
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    .line 50
    if-eq v1, v2, :cond_2

    const/4 v2, 0x0

    .line 54
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 57
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method
