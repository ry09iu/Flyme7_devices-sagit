.class public Lcom/baidu/mobstat/LogSender;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/baidu/mobstat/LogSender;


# instance fields
.field private b:Z

.field private c:I

.field private d:I

.field private e:Lcom/baidu/mobstat/SendStrategyEnum;

.field private f:Ljava/util/Timer;

.field private g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/baidu/mobstat/LogSender;

    invoke-direct {v0}, Lcom/baidu/mobstat/LogSender;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/LogSender;->a:Lcom/baidu/mobstat/LogSender;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/baidu/mobstat/LogSender;->b:Z

    .line 42
    iput v0, p0, Lcom/baidu/mobstat/LogSender;->c:I

    const/4 v0, 0x1

    .line 43
    iput v0, p0, Lcom/baidu/mobstat/LogSender;->d:I

    .line 45
    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->APP_START:Lcom/baidu/mobstat/SendStrategyEnum;

    iput-object v0, p0, Lcom/baidu/mobstat/LogSender;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    .line 54
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "LogSenderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 57
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/baidu/mobstat/LogSender;->g:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/LogSender;I)I
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/baidu/mobstat/LogSender;->d:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/mobstat/LogSender;Lcom/baidu/mobstat/SendStrategyEnum;)Lcom/baidu/mobstat/SendStrategyEnum;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/baidu/mobstat/LogSender;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    return-object p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 195
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 196
    if-eqz p1, :cond_1

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 201
    if-nez v3, :cond_2

    .line 202
    :cond_0
    return-object v2

    .line 197
    :cond_1
    return-object v2

    .line 201
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    new-instance v4, Lcom/baidu/mobstat/ca;

    invoke-direct {v4, p0, p2}, Lcom/baidu/mobstat/ca;-><init>(Lcom/baidu/mobstat/LogSender;Ljava/lang/String;)V

    .line 217
    :try_start_0
    invoke-virtual {v3, v4}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 221
    :goto_0
    if-nez v1, :cond_4

    .line 222
    :cond_3
    return-object v2

    .line 220
    :catch_0
    move-exception v3

    goto :goto_0

    .line 221
    :cond_4
    array-length v3, v1

    if-eqz v3, :cond_3

    .line 227
    :try_start_1
    new-instance v3, Lcom/baidu/mobstat/cb;

    invoke-direct {v3, p0}, Lcom/baidu/mobstat/cb;-><init>(Lcom/baidu/mobstat/LogSender;)V

    invoke-static {v1, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 237
    :goto_1
    array-length v3, v1

    :goto_2
    if-lt v0, v3, :cond_5

    .line 241
    return-object v2

    .line 237
    :cond_5
    aget-object v4, v1, v0

    .line 238
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 235
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method static synthetic a(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/LogSender;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/LogSender;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/mobstat/LogSender;->f:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/LogSender;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/baidu/mobstat/LogSender;->f:Ljava/util/Timer;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/baidu/mobstat/LogSender;->b:Z

    if-nez v0, :cond_1

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/LogSender;->g:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/cc;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mobstat/cc;-><init>(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 300
    return-void

    .line 245
    :cond_1
    invoke-static {p1}, Lcom/baidu/mobstat/ff;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    return-void
.end method

.method private a(Landroid/content/Context;JLjava/lang/String;)V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 161
    move-object/from16 v0, p4

    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/LogSender;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    const-wide/16 v6, 0x0

    .line 165
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v8, v2

    move-object v3, v5

    .line 166
    :goto_0
    if-gez v8, :cond_1

    :cond_0
    move v3, v4

    .line 189
    :goto_1
    if-le v3, v8, :cond_6

    .line 192
    return-void

    .line 168
    :cond_1
    :try_start_0
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 169
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    int-to-long v10, v3

    .line 170
    add-long/2addr v6, v10

    .line 174
    if-nez v2, :cond_3

    :cond_2
    move-object v3, v2

    .line 184
    :goto_2
    cmp-long v2, v6, p2

    if-gtz v2, :cond_5

    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_0

    .line 166
    add-int/lit8 v2, v8, -0x1

    move v8, v2

    goto :goto_0

    .line 176
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_4
    move-object v3, v5

    .line 180
    goto :goto_2

    .line 179
    :catch_0
    move-exception v2

    goto :goto_4

    .line 180
    :catch_1
    move-exception v2

    move-object v2, v3

    .line 174
    :goto_5
    if-eqz v2, :cond_2

    .line 176
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 179
    :catch_2
    move-exception v2

    goto :goto_4

    .line 180
    :catchall_0
    move-exception v2

    .line 174
    :goto_6
    if-nez v3, :cond_4

    .line 182
    :goto_7
    throw v2

    .line 176
    :cond_4
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    .line 179
    :catch_3
    move-exception v3

    goto :goto_7

    :cond_5
    move v2, v4

    .line 184
    goto :goto_3

    .line 190
    :cond_6
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/baidu/mobstat/ex;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 189
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 180
    :catchall_1
    move-exception v3

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    goto :goto_6

    :catch_4
    move-exception v3

    goto :goto_5
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Lcom/baidu/mobstat/LogSender;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/LogSender;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 381
    if-eqz p3, :cond_1

    .line 386
    :goto_0
    iget-boolean v0, p0, Lcom/baidu/mobstat/LogSender;->b:Z

    if-nez v0, :cond_2

    .line 392
    :cond_0
    sget-object v0, Lcom/baidu/mobstat/Config;->LOG_SEND_URL:Ljava/lang/String;

    .line 393
    if-nez p3, :cond_3

    .line 399
    :goto_1
    :try_start_0
    invoke-direct {p0, p1, v0, p2}, Lcom/baidu/mobstat/LogSender;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    move v1, v0

    .line 406
    :goto_2
    if-eqz p3, :cond_4

    .line 412
    :goto_3
    return v1

    .line 382
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Start send log \n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_2
    invoke-static {p1}, Lcom/baidu/mobstat/ff;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v2, "[WARNING] wifi not available, log will be cached, next time will try to resend"

    .line 388
    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    .line 389
    return v1

    :cond_3
    const-string/jumbo v0, "https://hmma.baidu.com/auto.gif"

    goto :goto_1

    .line 403
    :catch_0
    move-exception v0

    .line 402
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 407
    :cond_4
    if-nez v1, :cond_5

    const-string/jumbo v0, "failed"

    .line 408
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Send log "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string/jumbo v0, "success"

    goto :goto_4
.end method

.method static synthetic a(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/LogSender;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/LogSender;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/baidu/mobstat/LogSender;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/mobstat/LogSender;)Lcom/baidu/mobstat/SendStrategyEnum;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/mobstat/LogSender;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    return-object v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/mobstat/Config;->PREFIX_SEND_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-static {p1, v0, p2, v4}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 324
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/LogSender;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 325
    if-nez v1, :cond_0

    .line 329
    invoke-static {p1, v0, p2}, Lcom/baidu/mobstat/LogSender;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-static {p1, v0}, Lcom/baidu/mobstat/ex;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 339
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v0

    .line 344
    :goto_0
    if-eqz v1, :cond_0

    :try_start_1
    const-string/jumbo v0, "trace"

    .line 351
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "failed_cnt"

    .line 352
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string/jumbo v4, "failed_cnt"

    const-wide/16 v6, 0x1

    .line 353
    add-long/2addr v2, v6

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 358
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 359
    return-void

    .line 345
    :cond_0
    return-void

    .line 356
    :catch_0
    move-exception v0

    goto :goto_1

    .line 342
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/LogSender;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/mobstat/LogSender;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/baidu/mobstat/LogSender;->c:I

    return v0
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "https://"

    .line 416
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/LogSender;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 417
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/LogSender;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/mobstat/LogSender;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/LogSender;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/baidu/mobstat/LogSender;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/mobstat/LogSender;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 429
    invoke-static {p1, p2}, Lcom/baidu/mobstat/ex;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 432
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 433
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 434
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string/jumbo v0, "Content-Type"

    const-string/jumbo v2, "gzip"

    .line 435
    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 440
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    .line 441
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 442
    invoke-virtual {v0, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 444
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 448
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 455
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    .line 456
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0xc8

    if-eq v2, v4, :cond_2

    .line 457
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "http code = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "; contentResponse = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    :catchall_0
    move-exception v0

    .line 462
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 463
    throw v0

    .line 452
    :cond_1
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 456
    :cond_2
    if-nez v0, :cond_0

    .line 460
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 462
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 460
    return-object v0
.end method

.method private e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 472
    invoke-static {p1, p2}, Lcom/baidu/mobstat/ex;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 475
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 476
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 477
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string/jumbo v0, "Content-Type"

    const-string/jumbo v2, "gzip"

    .line 478
    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-static {}, Lcom/baidu/mobstat/ev$a;->a()[B

    move-result-object v0

    .line 481
    invoke-static {}, Lcom/baidu/mobstat/ev$a;->b()[B

    move-result-object v2

    const-string/jumbo v3, "key"

    .line 483
    invoke-static {v0}, Lcom/baidu/mobstat/fd;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "iv"

    .line 484
    invoke-static {v2}, Lcom/baidu/mobstat/fd;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "utf-8"

    .line 486
    invoke-virtual {p3, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/baidu/mobstat/ev$a;->a([B[B[B)[B

    move-result-object v0

    .line 488
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 491
    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 492
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 493
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 494
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 497
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 499
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 504
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    .line 505
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0xc8

    if-eq v2, v4, :cond_2

    .line 506
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "http code = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "; contentResponse = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    :catchall_0
    move-exception v0

    .line 511
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 512
    throw v0

    .line 501
    :cond_1
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 505
    :cond_2
    if-nez v0, :cond_0

    .line 509
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 511
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 509
    return-object v0
.end method

.method public static instance()Lcom/baidu/mobstat/LogSender;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/baidu/mobstat/LogSender;->a:Lcom/baidu/mobstat/LogSender;

    return-object v0
.end method


# virtual methods
.method public onSend(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 91
    :goto_0
    if-eqz p1, :cond_1

    .line 95
    iget-object v0, p0, Lcom/baidu/mobstat/LogSender;->g:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/bx;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mobstat/bx;-><init>(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    return-void

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    .line 92
    :cond_1
    return-void
.end method

.method public saveLogData(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 147
    if-nez p3, :cond_0

    sget-object v0, Lcom/baidu/mobstat/Config;->PREFIX_SEND_DATA:Ljava/lang/String;

    .line 148
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {p1, v0, p2, v4}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 151
    if-nez p3, :cond_1

    .line 158
    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "__track_send_data_"

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0xa00000

    const-string/jumbo v2, "__track_send_data_"

    .line 152
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/baidu/mobstat/LogSender;->a(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_1
.end method

.method public sendEmptyLogData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 362
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/baidu/mobstat/LogSender;->g:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/mobstat/ce;

    invoke-direct {v2, p0, v0, p2}, Lcom/baidu/mobstat/ce;-><init>(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 373
    return-void
.end method

.method public sendLogData(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 303
    if-nez p1, :cond_1

    .line 304
    :cond_0
    return-void

    .line 303
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 308
    if-nez p3, :cond_2

    .line 311
    iget-object v1, p0, Lcom/baidu/mobstat/LogSender;->g:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/mobstat/cd;

    invoke-direct {v2, p0, v0, p2}, Lcom/baidu/mobstat/cd;-><init>(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 318
    :goto_0
    return-void

    .line 309
    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/baidu/mobstat/LogSender;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLogSenderDelayed(I)V
    .locals 1

    .prologue
    .line 61
    if-gez p1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x1e

    .line 61
    if-gt p1, v0, :cond_0

    .line 62
    iput p1, p0, Lcom/baidu/mobstat/LogSender;->c:I

    goto :goto_0
.end method

.method public setSendLogStrategy(Landroid/content/Context;Lcom/baidu/mobstat/SendStrategyEnum;IZ)V
    .locals 3

    .prologue
    const/16 v2, 0x18

    .line 67
    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {p2, v0}, Lcom/baidu/mobstat/SendStrategyEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    iput-object p2, p0, Lcom/baidu/mobstat/LogSender;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    .line 76
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/LogSender;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v1}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/BasicStoreTools;->setSendStrategy(Landroid/content/Context;I)V

    .line 77
    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {p2, v0}, Lcom/baidu/mobstat/SendStrategyEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    :cond_0
    :goto_0
    iput-boolean p4, p0, Lcom/baidu/mobstat/LogSender;->b:Z

    .line 82
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/mobstat/LogSender;->b:Z

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/BasicStoreTools;->setOnlyWifi(Landroid/content/Context;Z)V

    .line 83
    return-void

    .line 68
    :cond_1
    if-lez p3, :cond_0

    if-gt p3, v2, :cond_0

    .line 69
    iput p3, p0, Lcom/baidu/mobstat/LogSender;->d:I

    .line 70
    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    iput-object v0, p0, Lcom/baidu/mobstat/LogSender;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    .line 71
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/LogSender;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v1}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/BasicStoreTools;->setSendStrategy(Landroid/content/Context;I)V

    .line 72
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    iget v1, p0, Lcom/baidu/mobstat/LogSender;->d:I

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/BasicStoreTools;->setSendStrategyTime(Landroid/content/Context;I)V

    goto :goto_0

    .line 78
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/baidu/mobstat/BasicStoreTools;->setSendStrategyTime(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public setSendingLogTimer(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 128
    iget v0, p0, Lcom/baidu/mobstat/LogSender;->d:I

    const v1, 0x36ee80

    mul-int/2addr v0, v1

    int-to-long v2, v0

    .line 130
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/LogSender;->f:Ljava/util/Timer;

    .line 131
    iget-object v0, p0, Lcom/baidu/mobstat/LogSender;->f:Ljava/util/Timer;

    new-instance v1, Lcom/baidu/mobstat/bz;

    invoke-direct {v1, p0, v4}, Lcom/baidu/mobstat/bz;-><init>(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 138
    return-void
.end method
