.class public Lcom/baidu/mobstat/au;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/baidu/mobstat/au;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/baidu/mobstat/au;

    invoke-direct {v0}, Lcom/baidu/mobstat/au;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/au;->a:Lcom/baidu/mobstat/au;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 114
    new-instance v0, Lcom/baidu/mobstat/ax;

    invoke-direct {v0, p1}, Lcom/baidu/mobstat/ax;-><init>(Lorg/json/JSONObject;)V

    .line 116
    iget-boolean v1, v0, Lcom/baidu/mobstat/ax;->a:Z

    sput-boolean v1, Lcom/baidu/mobstat/aw;->b:Z

    .line 117
    iget-object v1, v0, Lcom/baidu/mobstat/ax;->b:Ljava/lang/String;

    sput-object v1, Lcom/baidu/mobstat/aw;->c:Ljava/lang/String;

    .line 118
    iget-boolean v0, v0, Lcom/baidu/mobstat/ax;->c:Z

    sput-boolean v0, Lcom/baidu/mobstat/aw;->d:Z

    .line 119
    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 261
    sget-object v0, Lcom/baidu/mobstat/t;->a:Lcom/baidu/mobstat/t;

    invoke-virtual {v0}, Lcom/baidu/mobstat/t;->b()Z

    move-result v0

    .line 262
    if-eqz v0, :cond_0

    .line 266
    sget-object v0, Lcom/baidu/mobstat/t;->b:Lcom/baidu/mobstat/t;

    invoke-virtual {v0}, Lcom/baidu/mobstat/t;->b()Z

    move-result v0

    .line 267
    if-eqz v0, :cond_1

    .line 271
    sget-object v0, Lcom/baidu/mobstat/t;->c:Lcom/baidu/mobstat/t;

    invoke-virtual {v0}, Lcom/baidu/mobstat/t;->b()Z

    move-result v0

    .line 272
    if-eqz v0, :cond_2

    .line 276
    sget-object v0, Lcom/baidu/mobstat/t;->d:Lcom/baidu/mobstat/t;

    invoke-virtual {v0}, Lcom/baidu/mobstat/t;->b()Z

    move-result v0

    .line 277
    if-eqz v0, :cond_3

    .line 281
    sget-object v0, Lcom/baidu/mobstat/t;->e:Lcom/baidu/mobstat/t;

    invoke-virtual {v0}, Lcom/baidu/mobstat/t;->b()Z

    move-result v0

    .line 282
    if-eqz v0, :cond_4

    .line 286
    return v1

    .line 263
    :cond_0
    return v2

    .line 268
    :cond_1
    return v2

    .line 273
    :cond_2
    return v2

    .line 278
    :cond_3
    return v2

    .line 283
    :cond_4
    return v2
.end method

.method private b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 292
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "he"

    .line 294
    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 297
    add-int/lit8 v0, v0, 0x0

    .line 305
    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    const-string/jumbo v3, "APP_MEM"

    invoke-virtual {v1, v3}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 306
    invoke-static {p1}, Lcom/baidu/mobstat/at;->a(Landroid/content/Context;)Lcom/baidu/mobstat/at;

    move-result-object v1

    .line 307
    invoke-virtual {v1}, Lcom/baidu/mobstat/at;->b()Z

    move-result v1

    .line 308
    if-eqz v1, :cond_0

    move v1, v0

    .line 326
    :goto_1
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    const-string/jumbo v3, "APP_APK"

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 327
    sget-object v0, Lcom/baidu/mobstat/t;->e:Lcom/baidu/mobstat/t;

    const/16 v3, 0x5000

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/t;->a(I)Ljava/util/List;

    move-result-object v0

    .line 328
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 329
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 334
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 345
    :goto_3
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    const-string/jumbo v3, "APP_CHANGE"

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 346
    sget-object v0, Lcom/baidu/mobstat/t;->d:Lcom/baidu/mobstat/t;

    const/16 v3, 0x2800

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/t;->a(I)Ljava/util/List;

    move-result-object v0

    .line 347
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 348
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 353
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_5

    .line 364
    :goto_5
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    const-string/jumbo v3, "APP_TRACE"

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 365
    sget-object v0, Lcom/baidu/mobstat/t;->c:Lcom/baidu/mobstat/t;

    const/16 v3, 0x3c00

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/t;->a(I)Ljava/util/List;

    move-result-object v0

    .line 366
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 367
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 372
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_7

    .line 384
    :goto_7
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    const-string/jumbo v3, "APP_LIST"

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 385
    sget-object v0, Lcom/baidu/mobstat/t;->b:Lcom/baidu/mobstat/t;

    const v3, 0xb400

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/t;->a(I)Ljava/util/List;

    move-result-object v0

    .line 386
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 387
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    .line 392
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_9

    .line 404
    :goto_9
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    const-string/jumbo v3, "AP_LIST"

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    const v0, 0x2d000

    .line 405
    sub-int/2addr v0, v1

    .line 406
    sget-object v3, Lcom/baidu/mobstat/t;->a:Lcom/baidu/mobstat/t;

    invoke-virtual {v3, v0}, Lcom/baidu/mobstat/t;->a(I)Ljava/util/List;

    move-result-object v0

    .line 407
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 408
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    .line 413
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_b

    .line 424
    :goto_b
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "log in bytes is almost :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 426
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 427
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 429
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string/jumbo v2, "payload"

    .line 431
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 432
    invoke-static {}, Lcom/baidu/mobstat/ag;->a()Lcom/baidu/mobstat/ag;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/ag;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 436
    :goto_c
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 299
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto/16 :goto_0

    .line 309
    :cond_0
    invoke-static {p1}, Lcom/baidu/mobstat/ff;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 310
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 311
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 314
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_1

    move v1, v0

    goto/16 :goto_1

    :cond_1
    :try_start_2
    const-string/jumbo v1, "app_mem3"

    .line 316
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    .line 319
    add-int/2addr v0, v1

    move v1, v0

    .line 322
    goto/16 :goto_1

    :catch_1
    move-exception v1

    .line 321
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/Throwable;)V

    move v1, v0

    goto/16 :goto_1

    .line 329
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 330
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_2

    :cond_3
    :try_start_3
    const-string/jumbo v0, "app_apk3"

    .line 336
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v0

    .line 339
    add-int/2addr v1, v0

    goto/16 :goto_3

    .line 342
    :catch_2
    move-exception v0

    .line 341
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 348
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 349
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_4

    :cond_5
    :try_start_4
    const-string/jumbo v0, "app_change3"

    .line 355
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v0

    .line 358
    add-int/2addr v1, v0

    goto/16 :goto_5

    .line 361
    :catch_3
    move-exception v0

    .line 360
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 367
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 368
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_6

    :cond_7
    :try_start_5
    const-string/jumbo v0, "app_trace3"

    .line 375
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v0

    .line 378
    add-int/2addr v1, v0

    goto/16 :goto_7

    .line 381
    :catch_4
    move-exception v0

    .line 380
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 387
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 388
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_8

    :cond_9
    :try_start_6
    const-string/jumbo v0, "app_list3"

    .line 395
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 397
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    move-result v0

    .line 398
    add-int/2addr v1, v0

    goto/16 :goto_9

    .line 401
    :catch_5
    move-exception v0

    .line 400
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 408
    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 409
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_a

    :cond_b
    :try_start_7
    const-string/jumbo v0, "ap_list3"

    .line 415
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 417
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6

    move-result v0

    .line 418
    add-int/2addr v1, v0

    goto/16 :goto_b

    .line 421
    :catch_6
    move-exception v0

    .line 420
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 435
    :catch_7
    move-exception v0

    .line 434
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_c
.end method

.method private c(Landroid/content/Context;)V
    .locals 9

    .prologue
    .line 128
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    const-string/jumbo v1, "collectAPWithStretegy 1"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 129
    invoke-static {p1}, Lcom/baidu/mobstat/at;->a(Landroid/content/Context;)Lcom/baidu/mobstat/at;

    move-result-object v0

    .line 130
    sget-object v1, Lcom/baidu/mobstat/p;->a:Lcom/baidu/mobstat/p;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/at;->a(Lcom/baidu/mobstat/p;)J

    move-result-wide v2

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 132
    invoke-virtual {v0}, Lcom/baidu/mobstat/at;->e()J

    move-result-wide v0

    .line 134
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "now time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": last time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "; time interval: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 135
    invoke-virtual {v6, v7}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    .line 137
    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    sub-long v2, v4, v2

    cmp-long v0, v2, v0

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 138
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    const-string/jumbo v1, "collectAPWithStretegy 2"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 140
    invoke-static {p1}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;)V

    .line 142
    :cond_1
    return-void

    .line 137
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Landroid/content/Context;)V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 151
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v2

    const-string/jumbo v3, "collectAPPListWithStretegy 1"

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 154
    invoke-static {p1}, Lcom/baidu/mobstat/at;->a(Landroid/content/Context;)Lcom/baidu/mobstat/at;

    move-result-object v3

    .line 156
    sget-object v2, Lcom/baidu/mobstat/p;->b:Lcom/baidu/mobstat/p;

    invoke-virtual {v3, v2}, Lcom/baidu/mobstat/at;->a(Lcom/baidu/mobstat/p;)J

    move-result-wide v6

    .line 157
    invoke-virtual {v3}, Lcom/baidu/mobstat/at;->f()J

    move-result-wide v8

    .line 158
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "now time: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ": last time: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "; userInterval : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 159
    invoke-virtual {v2, v10}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 160
    cmp-long v2, v6, v12

    if-eqz v2, :cond_4

    sub-long v10, v4, v6

    cmp-long v2, v10, v8

    if-lez v2, :cond_3

    move v2, v1

    :goto_0
    if-nez v2, :cond_4

    invoke-virtual {v3, v6, v7}, Lcom/baidu/mobstat/at;->a(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 166
    :goto_1
    sget-object v2, Lcom/baidu/mobstat/p;->c:Lcom/baidu/mobstat/p;

    invoke-virtual {v3, v2}, Lcom/baidu/mobstat/at;->a(Lcom/baidu/mobstat/p;)J

    move-result-wide v6

    .line 167
    invoke-virtual {v3}, Lcom/baidu/mobstat/at;->g()J

    move-result-wide v2

    .line 168
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "now time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": last time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "; sysInterval : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 169
    invoke-virtual {v8, v9}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 170
    cmp-long v8, v6, v12

    if-eqz v8, :cond_1

    sub-long/2addr v4, v6

    cmp-long v2, v4, v2

    if-gtz v2, :cond_0

    move v0, v1

    :cond_0
    if-nez v0, :cond_2

    .line 171
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    const-string/jumbo v2, "collectSysAPPListWithStretegy 2"

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 173
    invoke-static {p1, v1}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;Z)V

    .line 175
    :cond_2
    return-void

    :cond_3
    move v2, v0

    .line 160
    goto :goto_0

    .line 161
    :cond_4
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v2

    const-string/jumbo v6, "collectUserAPPListWithStretegy 2"

    invoke-virtual {v2, v6}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 163
    invoke-static {p1, v0}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;Z)V

    goto :goto_1
.end method

.method private e(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    const-string/jumbo v2, "collectAPPTraceWithStretegy 1"

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 187
    invoke-static {p1}, Lcom/baidu/mobstat/at;->a(Landroid/content/Context;)Lcom/baidu/mobstat/at;

    move-result-object v0

    .line 201
    sget-object v4, Lcom/baidu/mobstat/p;->e:Lcom/baidu/mobstat/p;

    invoke-virtual {v0, v4}, Lcom/baidu/mobstat/at;->a(Lcom/baidu/mobstat/p;)J

    move-result-wide v4

    .line 202
    invoke-virtual {v0}, Lcom/baidu/mobstat/at;->i()J

    move-result-wide v6

    .line 203
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "now time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": last time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "; time interval: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 204
    invoke-virtual {v0, v8}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    .line 205
    cmp-long v0, v4, v8

    if-eqz v0, :cond_0

    sub-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 206
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    const-string/jumbo v2, "collectAPPTraceWithStretegy 2"

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 208
    invoke-static {p1, v1}, Lcom/baidu/mobstat/k;->b(Landroid/content/Context;Z)V

    .line 210
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 205
    goto :goto_0
.end method

.method private f(Landroid/content/Context;)V
    .locals 9

    .prologue
    .line 218
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    const-string/jumbo v1, "collectAPKWithStretegy 1"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 221
    invoke-static {p1}, Lcom/baidu/mobstat/at;->a(Landroid/content/Context;)Lcom/baidu/mobstat/at;

    move-result-object v2

    .line 223
    sget-object v3, Lcom/baidu/mobstat/p;->g:Lcom/baidu/mobstat/p;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/at;->a(Lcom/baidu/mobstat/p;)J

    move-result-wide v4

    .line 224
    invoke-virtual {v2}, Lcom/baidu/mobstat/at;->h()J

    move-result-wide v2

    .line 225
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "now time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": last time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "; interval : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    .line 226
    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 227
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    const-string/jumbo v1, "collectAPKWithStretegy 2"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 229
    invoke-static {p1}, Lcom/baidu/mobstat/k;->b(Landroid/content/Context;)V

    .line 231
    :cond_1
    return-void

    .line 226
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 246
    invoke-static {p1}, Lcom/baidu/mobstat/at;->a(Landroid/content/Context;)Lcom/baidu/mobstat/at;

    move-result-object v1

    sget-object v2, Lcom/baidu/mobstat/p;->h:Lcom/baidu/mobstat/p;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/baidu/mobstat/at;->a(Lcom/baidu/mobstat/p;J)V

    .line 248
    invoke-static {p1}, Lcom/baidu/mobstat/q;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    .line 249
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "header: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 252
    :goto_0
    invoke-direct {p0}, Lcom/baidu/mobstat/au;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    return-void

    .line 253
    :cond_0
    add-int/lit8 v1, v0, 0x1

    if-gtz v0, :cond_1

    .line 256
    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/baidu/mobstat/au;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    move v0, v1

    goto :goto_0

    .line 254
    :cond_1
    invoke-static {v2}, Lcom/baidu/mobstat/q;->c(Lorg/json/JSONObject;)V

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 242
    invoke-static {p1}, Lcom/baidu/mobstat/at;->a(Landroid/content/Context;)Lcom/baidu/mobstat/at;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/p;->i:Lcom/baidu/mobstat/p;

    invoke-virtual {v0, v1, p2, p3}, Lcom/baidu/mobstat/at;->a(Lcom/baidu/mobstat/p;J)V

    .line 243
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 234
    invoke-static {p1}, Lcom/baidu/mobstat/at;->a(Landroid/content/Context;)Lcom/baidu/mobstat/at;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/at;->a(Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/16 v5, 0x2710

    .line 52
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    const-string/jumbo v1, "startDataAnynalyzed start"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 54
    invoke-direct {p0, p2}, Lcom/baidu/mobstat/au;->a(Lorg/json/JSONObject;)V

    .line 56
    invoke-static {p1}, Lcom/baidu/mobstat/at;->a(Landroid/content/Context;)Lcom/baidu/mobstat/at;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/baidu/mobstat/at;->a()Z

    move-result v1

    .line 58
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "is data collect closed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 60
    if-eqz v1, :cond_0

    .line 110
    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    const-string/jumbo v1, "startDataAnynalyzed finished"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 111
    return-void

    .line 61
    :cond_0
    sget-object v1, Lcom/baidu/mobstat/t;->a:Lcom/baidu/mobstat/t;

    invoke-virtual {v1, v5}, Lcom/baidu/mobstat/t;->b(I)Z

    move-result v1

    .line 62
    if-eqz v1, :cond_3

    .line 66
    :goto_1
    sget-object v1, Lcom/baidu/mobstat/t;->b:Lcom/baidu/mobstat/t;

    invoke-virtual {v1, v5}, Lcom/baidu/mobstat/t;->b(I)Z

    move-result v1

    .line 67
    if-eqz v1, :cond_4

    .line 71
    :goto_2
    sget-object v1, Lcom/baidu/mobstat/t;->c:Lcom/baidu/mobstat/t;

    invoke-virtual {v1, v5}, Lcom/baidu/mobstat/t;->b(I)Z

    move-result v1

    .line 72
    if-eqz v1, :cond_5

    .line 76
    :goto_3
    sget-boolean v1, Lcom/baidu/mobstat/aw;->e:Z

    if-nez v1, :cond_6

    .line 83
    :cond_1
    :goto_4
    invoke-static {p1}, Lcom/baidu/mobstat/ff;->q(Landroid/content/Context;)Z

    move-result v1

    .line 84
    if-nez v1, :cond_7

    .line 87
    :cond_2
    if-eqz v1, :cond_8

    .line 90
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    const-string/jumbo v1, "can not sendLog due to time stratergy"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_3
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/au;->c(Landroid/content/Context;)V

    goto :goto_1

    .line 68
    :cond_4
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/au;->d(Landroid/content/Context;)V

    goto :goto_2

    .line 73
    :cond_5
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/au;->e(Landroid/content/Context;)V

    goto :goto_3

    .line 77
    :cond_6
    sget-object v1, Lcom/baidu/mobstat/t;->e:Lcom/baidu/mobstat/t;

    invoke-virtual {v1, v5}, Lcom/baidu/mobstat/t;->b(I)Z

    move-result v1

    .line 78
    if-nez v1, :cond_1

    .line 79
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/au;->f(Landroid/content/Context;)V

    goto :goto_4

    .line 84
    :cond_7
    invoke-virtual {v0}, Lcom/baidu/mobstat/at;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    const-string/jumbo v1, "sendLog"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/au;->g(Landroid/content/Context;)V

    goto :goto_0

    .line 88
    :cond_8
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    const-string/jumbo v1, "isWifiAvailable = false, will not sendLog"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 443
    invoke-static {p1}, Lcom/baidu/mobstat/at;->a(Landroid/content/Context;)Lcom/baidu/mobstat/at;

    move-result-object v0

    .line 445
    sget-object v3, Lcom/baidu/mobstat/p;->i:Lcom/baidu/mobstat/p;

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/at;->a(Lcom/baidu/mobstat/p;)J

    move-result-wide v4

    .line 446
    invoke-virtual {v0}, Lcom/baidu/mobstat/at;->c()J

    move-result-wide v6

    .line 447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 449
    sub-long v10, v8, v4

    cmp-long v0, v10, v6

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 450
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "need to update, checkWithLastUpdateTime lastUpdateTime ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "nowTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";timeInteveral="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 451
    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 454
    return v1

    :cond_0
    move v0, v2

    .line 449
    goto :goto_0

    .line 457
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no need to update, checkWithLastUpdateTime lastUpdateTime ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "nowTime="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ";timeInteveral="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 458
    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 462
    return v2
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 238
    invoke-static {p1}, Lcom/baidu/mobstat/at;->a(Landroid/content/Context;)Lcom/baidu/mobstat/at;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/at;->b(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public b(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 466
    invoke-static {p1}, Lcom/baidu/mobstat/at;->a(Landroid/content/Context;)Lcom/baidu/mobstat/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/at;->a()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/au;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method
