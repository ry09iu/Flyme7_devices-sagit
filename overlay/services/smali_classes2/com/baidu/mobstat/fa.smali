.class public Lcom/baidu/mobstat/fa;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([B)[B
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 12
    if-eqz p0, :cond_0

    .line 16
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 19
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 20
    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 21
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 13
    :cond_0
    return-object v0

    .line 24
    :catch_0
    move-exception v1

    goto :goto_0
.end method
