.class Lcom/baidu/mobstat/as;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/as$a;
    }
.end annotation


# static fields
.field private static volatile a:Ldalvik/system/DexClassLoader;

.field private static volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/mobstat/as;->b:Z

    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;)Ldalvik/system/DexClassLoader;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-class v1, Lcom/baidu/mobstat/as;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/baidu/mobstat/as;->a:Ldalvik/system/DexClassLoader;

    if-nez v0, :cond_1

    const-string/jumbo v0, ".remote.jar"

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 66
    if-nez v0, :cond_2

    .line 70
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/baidu/mobstat/as;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/baidu/mobstat/as;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "outdex"

    const/4 v3, 0x0

    .line 88
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 90
    :try_start_1
    new-instance v3, Ldalvik/system/DexClassLoader;

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v0, v2, v5, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v3, Lcom/baidu/mobstat/as;->a:Ldalvik/system/DexClassLoader;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :goto_0
    :try_start_2
    sget-object v0, Lcom/baidu/mobstat/as;->a:Ldalvik/system/DexClassLoader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    .line 62
    :cond_1
    :try_start_3
    sget-object v0, Lcom/baidu/mobstat/as;->a:Ldalvik/system/DexClassLoader;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    return-object v0

    .line 66
    :cond_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v1

    .line 67
    return-object v4

    .line 71
    :cond_3
    :try_start_5
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v2

    const-string/jumbo v3, "remote jar version lower than min limit, need delete"

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    :goto_1
    monitor-exit v1

    .line 76
    return-object v4

    .line 73
    :cond_4
    :try_start_6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 80
    :cond_5
    :try_start_7
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v2

    const-string/jumbo v3, "remote jar md5 is not right, need delete"

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v2

    if-nez v2, :cond_6

    :goto_2
    monitor-exit v1

    .line 85
    return-object v4

    .line 82
    :cond_6
    :try_start_8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 95
    :catch_0
    move-exception v0

    .line 94
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Ldalvik/system/DexClassLoader;)Ldalvik/system/DexClassLoader;
    .locals 0

    .prologue
    .line 39
    sput-object p0, Lcom/baidu/mobstat/as;->a:Ldalvik/system/DexClassLoader;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-static {p0}, Lcom/baidu/mobstat/as;->a(Landroid/content/Context;)Ldalvik/system/DexClassLoader;

    move-result-object v1

    .line 57
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-static {p0}, Lcom/baidu/mobstat/as;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/baidu/mobstat/i;)V
    .locals 3

    .prologue
    const-class v1, Lcom/baidu/mobstat/as;

    monitor-enter v1

    .line 122
    :try_start_0
    sget-boolean v0, Lcom/baidu/mobstat/as;->b:Z

    if-nez v0, :cond_0

    .line 126
    invoke-static {p0}, Lcom/baidu/mobstat/ff;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-interface {p1, p0}, Lcom/baidu/mobstat/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    const-string/jumbo v2, "can start update config"

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 138
    new-instance v0, Lcom/baidu/mobstat/as$a;

    invoke-direct {v0, p0, p1}, Lcom/baidu/mobstat/as$a;-><init>(Landroid/content/Context;Lcom/baidu/mobstat/i;)V

    .line 139
    invoke-virtual {v0}, Lcom/baidu/mobstat/as$a;->start()V

    .line 141
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/mobstat/as;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 142
    return-void

    :cond_0
    monitor-exit v1

    .line 123
    return-void

    .line 127
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    const-string/jumbo v2, "isWifiAvailable = false, will not to update"

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 128
    return-void

    .line 132
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    const-string/jumbo v2, "check time, will not to update"

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    .line 133
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 39
    sput-boolean p0, Lcom/baidu/mobstat/as;->b:Z

    return p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 190
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 195
    :goto_0
    new-instance v2, Ljava/util/jar/JarFile;

    invoke-direct {v2, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :try_start_1
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v0

    const-string/jumbo v1, "Plugin-Version"

    .line 198
    invoke-virtual {v0, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 203
    if-nez v2, :cond_1

    .line 198
    :goto_1
    return-object v0

    .line 192
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "file size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 200
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/Throwable;)V

    .line 201
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "baidu remote sdk is not ready"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    if-nez v1, :cond_2

    :goto_3
    const-string/jumbo v0, ""

    .line 212
    return-object v0

    .line 205
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 208
    :catch_1
    move-exception v1

    goto :goto_1

    .line 205
    :cond_2
    :try_start_5
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 208
    :catch_2
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 203
    :goto_4
    if-nez v1, :cond_3

    .line 210
    :goto_5
    throw v0

    .line 205
    :cond_3
    :try_start_6
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    .line 208
    :catch_3
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 198
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-static {p1}, Lcom/baidu/mobstat/as;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const/4 v2, 0x4

    .line 113
    if-ge v0, v2, :cond_1

    move v0, v1

    :goto_1
    return v0

    .line 103
    :cond_0
    return v1

    .line 111
    :catch_0
    move-exception v0

    .line 110
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 113
    goto :goto_1
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 145
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/baidu/mobstat/fb$b;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remote.jar local file digest value digest = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    invoke-static {p1}, Lcom/baidu/mobstat/as;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remote.jar local file digest value version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 154
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 158
    invoke-static {p0, v1}, Lcom/baidu/mobstat/as;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remote.jar config digest value remoteJarMd5 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 160
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 148
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    const-string/jumbo v1, "remote.jar local file digest value fail"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 149
    return v5

    .line 155
    :cond_1
    return v5

    .line 161
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    const-string/jumbo v1, "remote.jar config digest value lost"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 162
    return v5
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    invoke-static {p0}, Lcom/baidu/mobstat/at;->a(Landroid/content/Context;)Lcom/baidu/mobstat/at;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/at;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
