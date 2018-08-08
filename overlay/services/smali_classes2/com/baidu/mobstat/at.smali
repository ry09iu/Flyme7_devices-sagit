.class public Lcom/baidu/mobstat/at;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/baidu/mobstat/at;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lorg/json/JSONObject;

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0xf

    const-wide/16 v4, 0x18

    const-wide/16 v2, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/at;->c:Lorg/json/JSONObject;

    .line 50
    iput-wide v4, p0, Lcom/baidu/mobstat/at;->d:J

    .line 52
    iput-wide v2, p0, Lcom/baidu/mobstat/at;->e:J

    .line 54
    iput-wide v2, p0, Lcom/baidu/mobstat/at;->f:J

    .line 56
    iput-wide v2, p0, Lcom/baidu/mobstat/at;->g:J

    const-wide/16 v0, 0x5

    .line 58
    iput-wide v0, p0, Lcom/baidu/mobstat/at;->h:J

    .line 60
    iput-wide v4, p0, Lcom/baidu/mobstat/at;->i:J

    .line 62
    iput-wide v6, p0, Lcom/baidu/mobstat/at;->j:J

    .line 64
    iput-wide v6, p0, Lcom/baidu/mobstat/at;->k:J

    const-wide/16 v0, 0x1e

    .line 66
    iput-wide v0, p0, Lcom/baidu/mobstat/at;->l:J

    const-wide/16 v0, 0xc

    .line 68
    iput-wide v0, p0, Lcom/baidu/mobstat/at;->m:J

    const-wide/16 v0, 0x1

    .line 70
    iput-wide v0, p0, Lcom/baidu/mobstat/at;->n:J

    .line 72
    iput-wide v4, p0, Lcom/baidu/mobstat/at;->o:J

    const-string/jumbo v0, ""

    .line 74
    iput-object v0, p0, Lcom/baidu/mobstat/at;->p:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 76
    iput-object v0, p0, Lcom/baidu/mobstat/at;->q:Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcom/baidu/mobstat/at;->b:Landroid/content/Context;

    .line 81
    invoke-direct {p0}, Lcom/baidu/mobstat/at;->m()V

    .line 83
    invoke-virtual {p0}, Lcom/baidu/mobstat/at;->j()V

    .line 84
    invoke-virtual {p0}, Lcom/baidu/mobstat/at;->k()V

    .line 85
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/mobstat/at;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/baidu/mobstat/at;->a:Lcom/baidu/mobstat/at;

    if-eqz v0, :cond_0

    .line 43
    :goto_0
    sget-object v0, Lcom/baidu/mobstat/at;->a:Lcom/baidu/mobstat/at;

    return-object v0

    :cond_0
    const-class v1, Lcom/baidu/mobstat/at;

    .line 36
    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lcom/baidu/mobstat/at;->a:Lcom/baidu/mobstat/at;

    if-eqz v0, :cond_1

    .line 40
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 38
    :cond_1
    :try_start_1
    new-instance v0, Lcom/baidu/mobstat/at;

    invoke-direct {v0, p0}, Lcom/baidu/mobstat/at;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/mobstat/at;->a:Lcom/baidu/mobstat/at;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private b(J)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 405
    sub-long v2, p1, v2

    cmp-long v2, v2, v0

    if-gtz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_0

    move-wide p1, v0

    :cond_0
    return-wide p1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private m()V
    .locals 2

    .prologue
    const-string/jumbo v0, "backups/system/.timestamp"

    .line 88
    invoke-static {v0}, Lcom/baidu/mobstat/ex;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/baidu/mobstat/at;->c:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/baidu/mobstat/p;)J
    .locals 4

    .prologue
    .line 353
    iget-wide v0, p1, Lcom/baidu/mobstat/p;->j:J

    .line 356
    :try_start_0
    invoke-virtual {p1}, Lcom/baidu/mobstat/p;->toString()Ljava/lang/String;

    move-result-object v2

    .line 357
    iget-object v3, p0, Lcom/baidu/mobstat/at;->c:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 365
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/at;->b(J)J

    move-result-wide v0

    return-wide v0

    .line 358
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/baidu/mobstat/at;->c:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 363
    :catch_0
    move-exception v2

    .line 362
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/baidu/mobstat/p;J)V
    .locals 4

    .prologue
    .line 369
    iput-wide p2, p1, Lcom/baidu/mobstat/p;->j:J

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/at;->c:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/baidu/mobstat/p;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string/jumbo v0, "backups/system/.timestamp"

    .line 380
    iget-object v1, p0, Lcom/baidu/mobstat/at;->c:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/ex;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 384
    :goto_1
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 375
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 383
    :catch_1
    move-exception v0

    .line 382
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/baidu/mobstat/at;->b:Landroid/content/Context;

    const-string/jumbo v1, ".config2"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 335
    invoke-virtual {p0}, Lcom/baidu/mobstat/at;->j()V

    .line 336
    return-void
.end method

.method public a()Z
    .locals 4

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/baidu/mobstat/at;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(J)Z
    .locals 5

    .prologue
    .line 396
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 339
    iget-object v0, p0, Lcom/baidu/mobstat/at;->b:Landroid/content/Context;

    const-string/jumbo v1, ".sign"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 341
    invoke-virtual {p0}, Lcom/baidu/mobstat/at;->k()V

    .line 342
    return-void
.end method

.method public b()Z
    .locals 4

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/baidu/mobstat/at;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x3c

    .line 140
    iget-wide v0, p0, Lcom/baidu/mobstat/at;->d:J

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/baidu/mobstat/at;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    .line 349
    return-object v0

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/at;->p:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/at;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/baidu/mobstat/at;->q:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x3c

    .line 149
    iget-wide v0, p0, Lcom/baidu/mobstat/at;->o:J

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public e()J
    .locals 4

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/baidu/mobstat/at;->h:J

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public f()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x3c

    .line 167
    iget-wide v0, p0, Lcom/baidu/mobstat/at;->i:J

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public g()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x3c

    .line 176
    iget-wide v0, p0, Lcom/baidu/mobstat/at;->j:J

    const-wide/16 v2, 0x18

    mul-long/2addr v0, v2

    mul-long/2addr v0, v4

    mul-long/2addr v0, v4

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public h()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x3c

    .line 185
    iget-wide v0, p0, Lcom/baidu/mobstat/at;->k:J

    const-wide/16 v2, 0x18

    mul-long/2addr v0, v2

    mul-long/2addr v0, v4

    mul-long/2addr v0, v4

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public i()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x3c

    .line 212
    iget-wide v0, p0, Lcom/baidu/mobstat/at;->m:J

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public j()V
    .locals 4

    .prologue
    .line 216
    iget-object v0, p0, Lcom/baidu/mobstat/at;->b:Landroid/content/Context;

    const-string/jumbo v1, ".config2"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/ez;->a()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/ey;->a([B)[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3, v2, v0}, Lcom/baidu/mobstat/fd;->b(Z[B[B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 221
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v0, "c"

    .line 227
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mobstat/at;->e:J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    const-string/jumbo v0, "d"

    .line 233
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mobstat/at;->h:J
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    :try_start_3
    const-string/jumbo v0, "e"

    .line 239
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mobstat/at;->i:J
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    :try_start_4
    const-string/jumbo v0, "i"

    .line 245
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mobstat/at;->j:J
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_3
    :try_start_5
    const-string/jumbo v0, "f"

    .line 251
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mobstat/at;->d:J
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_4
    :try_start_6
    const-string/jumbo v0, "s"

    .line 257
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mobstat/at;->o:J
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :goto_5
    :try_start_7
    const-string/jumbo v0, "pk"

    .line 263
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mobstat/at;->k:J
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :goto_6
    :try_start_8
    const-string/jumbo v0, "at"

    .line 269
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mobstat/at;->l:J
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :goto_7
    :try_start_9
    const-string/jumbo v0, "as"

    .line 275
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mobstat/at;->m:J
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :goto_8
    :try_start_a
    const-string/jumbo v0, "ac"

    .line 281
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mobstat/at;->n:J
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :goto_9
    :try_start_b
    const-string/jumbo v0, "mc"

    .line 287
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mobstat/at;->f:J
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    :goto_a
    :try_start_c
    const-string/jumbo v0, "lsc"

    .line 293
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mobstat/at;->g:J
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 301
    :goto_b
    return-void

    .line 222
    :cond_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 229
    :try_start_d
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_0

    .line 300
    :catch_1
    move-exception v0

    .line 299
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    goto :goto_b

    .line 236
    :catch_2
    move-exception v0

    .line 235
    :try_start_e
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 242
    :catch_3
    move-exception v0

    .line 241
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 248
    :catch_4
    move-exception v0

    .line 247
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 254
    :catch_5
    move-exception v0

    .line 253
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 260
    :catch_6
    move-exception v0

    .line 259
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 266
    :catch_7
    move-exception v0

    .line 265
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 272
    :catch_8
    move-exception v0

    .line 271
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 278
    :catch_9
    move-exception v0

    .line 277
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 284
    :catch_a
    move-exception v0

    .line 283
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    goto :goto_9

    .line 290
    :catch_b
    move-exception v0

    .line 289
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    goto :goto_a

    .line 296
    :catch_c
    move-exception v0

    .line 295
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_b
.end method

.method public k()V
    .locals 4

    .prologue
    .line 304
    iget-object v0, p0, Lcom/baidu/mobstat/at;->b:Landroid/content/Context;

    const-string/jumbo v1, ".sign"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/ez;->a()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/ey;->a([B)[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3, v2, v0}, Lcom/baidu/mobstat/fd;->b(Z[B[B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 309
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v0, "sign"

    .line 316
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/at;->q:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    const-string/jumbo v0, "ver"

    .line 322
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/at;->p:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 330
    :goto_1
    return-void

    .line 310
    :cond_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 318
    :try_start_3
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 329
    :catch_1
    move-exception v0

    .line 328
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 325
    :catch_2
    move-exception v0

    .line 324
    :try_start_4
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1
.end method

.method public l()Z
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 388
    sget-object v4, Lcom/baidu/mobstat/p;->h:Lcom/baidu/mobstat/p;

    invoke-virtual {p0, v4}, Lcom/baidu/mobstat/at;->a(Lcom/baidu/mobstat/p;)J

    move-result-wide v4

    .line 389
    invoke-virtual {p0}, Lcom/baidu/mobstat/at;->d()J

    move-result-wide v6

    .line 390
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "canSend now="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";lastSendTime="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";sendLogTimeInterval="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 392
    sub-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {p0, v4, v5}, Lcom/baidu/mobstat/at;->a(J)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
