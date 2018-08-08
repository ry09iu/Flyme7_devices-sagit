.class public final Lcom/baidu/mobstat/ex;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/net/Proxy;

.field private static final b:Ljava/net/Proxy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x50

    .line 27
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    const-string/jumbo v3, "10.0.0.172"

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    sput-object v0, Lcom/baidu/mobstat/ex;->a:Ljava/net/Proxy;

    .line 29
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    const-string/jumbo v3, "10.0.0.200"

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    sput-object v0, Lcom/baidu/mobstat/ex;->b:Ljava/net/Proxy;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-static {}, Lcom/baidu/mobstat/ex;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "mounted"

    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 61
    :goto_0
    if-eqz v0, :cond_1

    .line 65
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 50
    :cond_0
    return-object v1

    .line 59
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 62
    :cond_1
    return-object v1
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 39
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    .line 42
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 108
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 109
    :try_start_1
    invoke-static {v0}, Lcom/baidu/mobstat/ex;->a(Ljava/io/InputStream;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 110
    if-nez v1, :cond_0

    .line 116
    invoke-static {v0}, Lcom/baidu/mobstat/fc;->a(Ljava/io/Closeable;)V

    :goto_0
    const-string/jumbo v0, ""

    .line 119
    return-object v0

    .line 111
    :cond_0
    :try_start_2
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 116
    invoke-static {v0}, Lcom/baidu/mobstat/fc;->a(Ljava/io/Closeable;)V

    .line 111
    return-object v2

    .line 117
    :catch_0
    move-exception v1

    .line 116
    invoke-static {v0}, Lcom/baidu/mobstat/fc;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 116
    :goto_1
    invoke-static {v1}, Lcom/baidu/mobstat/fc;->a(Ljava/io/Closeable;)V

    .line 117
    throw v0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;II)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 179
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "connectivity"

    .line 181
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 182
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    const/4 v4, 0x1

    .line 183
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 186
    if-nez v0, :cond_2

    .line 188
    :cond_0
    if-nez v3, :cond_3

    :cond_1
    move-object v0, v1

    .line 199
    :goto_0
    if-eqz v0, :cond_8

    .line 203
    :goto_1
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 204
    invoke-virtual {v0, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 206
    return-object v0

    .line 186
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 188
    :cond_3
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 190
    if-nez v0, :cond_5

    const-string/jumbo v0, ""

    :goto_2
    const-string/jumbo v3, "cmwap"

    .line 192
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 193
    :cond_4
    sget-object v0, Lcom/baidu/mobstat/ex;->a:Ljava/net/Proxy;

    invoke-virtual {v2, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 190
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    const-string/jumbo v3, "uniwap"

    .line 192
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "3gwap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "ctwap"

    .line 194
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_0

    .line 195
    :cond_7
    sget-object v0, Lcom/baidu/mobstat/ex;->b:Ljava/net/Proxy;

    invoke-virtual {v2, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 200
    :cond_8
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 69
    if-eqz p0, :cond_0

    .line 75
    if-nez p3, :cond_1

    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 76
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v2, "utf-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1, v0}, Lcom/baidu/mobstat/fc;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    invoke-static {v0}, Lcom/baidu/mobstat/fc;->a(Ljava/io/Closeable;)V

    .line 82
    :goto_1
    return-void

    .line 70
    :cond_0
    return-void

    :cond_1
    const v1, 0x8000

    .line 75
    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    .line 80
    invoke-static {v0}, Lcom/baidu/mobstat/fc;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 81
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 80
    :goto_2
    invoke-static {v1}, Lcom/baidu/mobstat/fc;->a(Ljava/io/Closeable;)V

    .line 81
    throw v0

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 87
    :try_start_0
    invoke-static {p0}, Lcom/baidu/mobstat/ex;->a(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 88
    if-nez v2, :cond_0

    .line 101
    :goto_0
    invoke-static {v0}, Lcom/baidu/mobstat/fc;->a(Ljava/io/Closeable;)V

    .line 103
    :goto_1
    return-void

    .line 89
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    :cond_1
    :goto_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :try_start_2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, v1}, Lcom/baidu/mobstat/fc;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    goto :goto_0

    .line 90
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 91
    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 102
    :catch_0
    move-exception v1

    .line 101
    :goto_3
    invoke-static {v0}, Lcom/baidu/mobstat/fc;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 102
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 101
    :goto_4
    invoke-static {v1}, Lcom/baidu/mobstat/fc;->a(Ljava/io/Closeable;)V

    .line 102
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_3
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 145
    invoke-static {p0, v0}, Lcom/baidu/mobstat/fc;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-static {p0}, Lcom/baidu/mobstat/ex;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 124
    if-nez v2, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v0, ""

    .line 139
    return-object v0

    .line 124
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :try_start_1
    invoke-static {v0}, Lcom/baidu/mobstat/ex;->a(Ljava/io/InputStream;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 129
    if-nez v1, :cond_2

    .line 135
    invoke-static {v0}, Lcom/baidu/mobstat/fc;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 130
    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 135
    invoke-static {v0}, Lcom/baidu/mobstat/fc;->a(Ljava/io/Closeable;)V

    .line 130
    return-object v2

    .line 136
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 135
    :goto_1
    invoke-static {v0}, Lcom/baidu/mobstat/fc;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    .line 135
    :goto_2
    invoke-static {v1}, Lcom/baidu/mobstat/fc;->a(Ljava/io/Closeable;)V

    .line 136
    throw v0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-static {p0}, Lcom/baidu/mobstat/ex;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 154
    if-nez v0, :cond_1

    .line 158
    :cond_0
    return v2

    .line 154
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v0, 0xc350

    .line 172
    invoke-static {p0, p1, v0, v0}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;II)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 213
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    :goto_0
    if-eqz v0, :cond_1

    .line 223
    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 213
    goto :goto_0

    .line 216
    :catch_0
    move-exception v1

    goto :goto_0

    .line 219
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[WARNING] not have permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", please add it in AndroidManifest.xml according our developer doc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/eh;->b(Ljava/lang/String;)V

    goto :goto_1
.end method
