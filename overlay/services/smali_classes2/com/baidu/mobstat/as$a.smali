.class Lcom/baidu/mobstat/as$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/baidu/mobstat/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/mobstat/i;)V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 220
    iput-object p1, p0, Lcom/baidu/mobstat/as$a;->a:Landroid/content/Context;

    .line 221
    iput-object p2, p0, Lcom/baidu/mobstat/as$a;->b:Lcom/baidu/mobstat/i;

    .line 222
    return-void
.end method

.method private declared-synchronized a()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 249
    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    const-string/jumbo v2, "start get config and download jar"

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 251
    iget-object v2, p0, Lcom/baidu/mobstat/as$a;->a:Landroid/content/Context;

    .line 252
    iget-object v3, p0, Lcom/baidu/mobstat/as$a;->b:Lcom/baidu/mobstat/i;

    .line 254
    invoke-direct {p0, v2}, Lcom/baidu/mobstat/as$a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update req url is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mobstat/eg;->c(Ljava/lang/String;)V

    .line 257
    invoke-static {v2, v0}, Lcom/baidu/mobstat/ex;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 259
    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    const-string/jumbo v0, "X-CONFIG"

    .line 261
    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 262
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "config is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "X-SIGN"

    .line 264
    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 265
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sign is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 268
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update response code is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    .line 271
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "update response content length is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    const/16 v8, 0xc8

    .line 273
    if-eq v0, v8, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 290
    invoke-static {v0}, Lcom/baidu/mobstat/as;->a(Ldalvik/system/DexClassLoader;)Ldalvik/system/DexClassLoader;

    .line 291
    invoke-static {}, Lcom/baidu/mobstat/ap;->a()V

    .line 293
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    .line 302
    :goto_2
    :try_start_2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 305
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    const-string/jumbo v1, "finish get config and download jar"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 306
    return-void

    .line 273
    :cond_1
    if-lez v7, :cond_0

    :try_start_3
    const-string/jumbo v0, ".remote.jar"

    const/4 v7, 0x0

    .line 276
    invoke-virtual {v2, v0, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 277
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/baidu/mobstat/fc;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v0

    .line 279
    if-nez v0, :cond_2

    .line 285
    :goto_3
    :try_start_4
    invoke-static {v1}, Lcom/baidu/mobstat/fc;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    .line 302
    :try_start_5
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 303
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 280
    :cond_2
    :try_start_6
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    const-string/jumbo v7, "save remote jar success"

    invoke-virtual {v0, v7}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    .line 286
    :catch_0
    move-exception v0

    .line 283
    :try_start_7
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 285
    :try_start_8
    invoke-static {v1}, Lcom/baidu/mobstat/fc;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 286
    :catchall_2
    move-exception v0

    .line 285
    invoke-static {v1}, Lcom/baidu/mobstat/fc;->a(Ljava/io/Closeable;)V

    .line 286
    throw v0

    .line 294
    :cond_3
    invoke-interface {v3, v2, v5}, Lcom/baidu/mobstat/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 298
    :cond_4
    invoke-interface {v3, v2, v6}, Lcom/baidu/mobstat/i;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 241
    iget-object v0, p0, Lcom/baidu/mobstat/as$a;->b:Lcom/baidu/mobstat/i;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Lcom/baidu/mobstat/i;->a(Landroid/content/Context;J)V

    .line 242
    return-void
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const-string/jumbo v0, ".remote.jar"

    .line 309
    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v0, "15"

    .line 312
    if-nez v1, :cond_1

    .line 323
    :cond_0
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 324
    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "dynamicVersion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v2, "packageName"

    invoke-static {p1}, Lcom/baidu/mobstat/ff;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v2, "appVersion"

    invoke-static {p1}, Lcom/baidu/mobstat/ff;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v2, "cuid"

    invoke-static {p1}, Lcom/baidu/mobstat/ff;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v2, "platform"

    const-string/jumbo v3, "Android"

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v2, "m"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v2, "s"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v2, "o"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v2, "i"

    const-string/jumbo v3, "15"

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/mobstat/av;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    return-object v0

    .line 312
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ".remote.jar"

    .line 313
    invoke-virtual {p1, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 314
    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/as;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startDownload remote jar file version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 317
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 318
    goto/16 :goto_0

    .line 337
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 339
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 340
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 345
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 349
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 343
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 227
    :try_start_0
    sget-boolean v0, Lcom/baidu/mobstat/av;->a:Z

    if-nez v0, :cond_0

    const/16 v0, 0xa

    .line 228
    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start version check in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 229
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/baidu/mobstat/as$a;->sleep(J)V

    .line 231
    invoke-direct {p0}, Lcom/baidu/mobstat/as$a;->a()V

    .line 232
    iget-object v0, p0, Lcom/baidu/mobstat/as$a;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/as$a;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_1
    invoke-static {v4}, Lcom/baidu/mobstat/as;->a(Z)Z

    .line 238
    return-void

    :cond_0
    const/4 v0, 0x3

    .line 227
    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 234
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
