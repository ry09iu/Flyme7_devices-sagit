.class public Lcom/baidu/mobstat/EventAnalysis;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/EventAnalysis$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/mobstat/EventAnalysis$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/EventAnalysis;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "__sdk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "$|$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJ",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const-string/jumbo v12, ""

    const-string/jumbo v13, ""

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    move/from16 v18, p13

    .line 104
    invoke-static/range {v2 .. v18}, Lcom/baidu/mobstat/EventAnalysis;->getEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;IILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 106
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Lcom/baidu/mobstat/DataCore;->putEvent(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 107
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    .line 108
    return-void
.end method

.method private a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;I)V
    .locals 19

    .prologue
    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 114
    const/16 v18, 0x0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    invoke-static/range {v2 .. v18}, Lcom/baidu/mobstat/EventAnalysis;->getEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;IILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 116
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Lcom/baidu/mobstat/DataCore;->putEvent(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 117
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method private static a(Lorg/json/JSONArray;Lorg/json/JSONObject;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 27

    .prologue
    .line 386
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 389
    if-nez p6, :cond_1

    :cond_0
    :try_start_0
    const-string/jumbo v2, "s"

    const-string/jumbo v3, "0|"

    .line 390
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    const/4 v3, 0x0

    move v2, v9

    .line 398
    :goto_1
    if-lt v3, v9, :cond_2

    .line 492
    :goto_2
    if-lt v2, v9, :cond_a

    .line 498
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v9, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 502
    :goto_3
    return-void

    :cond_1
    :try_start_2
    const-string/jumbo v2, ""

    .line 389
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 400
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v4, "ss"

    .line 402
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string/jumbo v4, "i"

    .line 403
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v4, "l"

    .line 404
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v4, "t"

    .line 405
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    div-long v16, v4, v6
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v4, 0x0

    :try_start_4
    const-string/jumbo v5, "d"

    .line 409
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v4

    :goto_4
    move v8, v4

    :try_start_5
    const-string/jumbo v4, "h"

    .line 414
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v4, "p"

    .line 415
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v4, "p2"

    .line 416
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v4, "rn"

    .line 417
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v4, "v"

    .line 418
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v21

    const-string/jumbo v4, "at"

    .line 419
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v22

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string/jumbo v5, ""

    const-string/jumbo v4, ""

    const/16 v23, 0x3

    .line 425
    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    const-string/jumbo v4, "h2"

    .line 429
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v4, "h3"

    .line 430
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_5
    const-string/jumbo v23, "ext"

    .line 433
    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v24, "attribute"

    .line 434
    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "h5"

    .line 436
    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v25

    const-string/jumbo v26, "sign"

    .line 437
    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 441
    cmp-long v16, v16, p7

    if-nez v16, :cond_3

    if-nez v8, :cond_3

    .line 446
    invoke-static/range {v23 .. v24}, Lcom/baidu/mobstat/EventAnalysis;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 451
    cmp-long v8, v12, p2

    if-nez v8, :cond_3

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 398
    :cond_3
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v6, "h2"

    .line 426
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const-string/jumbo v6, "h3"

    .line 427
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    goto :goto_5

    .line 451
    :cond_5
    move-object/from16 v0, p5

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 452
    move-object/from16 v0, p9

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object/from16 v0, v18

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 453
    move-object/from16 v0, v19

    move-object/from16 v1, p13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object/from16 v0, p10

    invoke-static {v7, v0}, Lcom/baidu/mobstat/EventAnalysis;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 454
    move-object/from16 v0, p11

    invoke-static {v6, v0}, Lcom/baidu/mobstat/EventAnalysis;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object/from16 v0, v20

    move-object/from16 v1, p14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move/from16 v0, v21

    move/from16 v1, p15

    if-ne v0, v1, :cond_3

    move/from16 v0, v22

    move/from16 v1, p16

    if-ne v0, v1, :cond_3

    .line 456
    move-object/from16 v0, p17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 457
    move-object/from16 v0, p18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move/from16 v0, v25

    move/from16 v1, p19

    if-ne v0, v1, :cond_3

    .line 458
    move-object/from16 v0, v26

    move-object/from16 v1, p20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "c"

    .line 460
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "c"

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    add-int v8, v4, v5

    const-string/jumbo v4, "s"

    .line 461
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 462
    if-nez v4, :cond_8

    :cond_6
    const-string/jumbo v4, "0|"

    move-object v7, v4

    :goto_7
    const-string/jumbo v4, "t"

    .line 466
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v6, "t"

    .line 467
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 468
    sub-long/2addr v4, v12

    const-wide/16 v12, 0x0

    .line 471
    cmp-long v6, v4, v12

    if-ltz v6, :cond_9

    const/4 v6, 0x1

    :goto_8
    if-nez v6, :cond_7

    const-wide/16 v4, 0x0

    .line 475
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v2

    :try_start_6
    const-string/jumbo v4, "c"

    .line 478
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "c"

    .line 479
    invoke-virtual {v10, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v4, "s"

    .line 480
    invoke-virtual {v10, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 483
    move-object/from16 v0, p1

    invoke-static {v10, v0}, Lcom/baidu/mobstat/EventAnalysis;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    move v2, v3

    .line 485
    goto/16 :goto_2

    :cond_8
    :try_start_7
    const-string/jumbo v5, ""

    .line 462
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    move-result v5

    if-nez v5, :cond_6

    move-object v7, v4

    goto :goto_7

    .line 471
    :cond_9
    const/4 v6, 0x0

    goto :goto_8

    .line 493
    :cond_a
    return-void

    .line 501
    :catch_0
    move-exception v2

    goto/16 :goto_3

    .line 489
    :catch_1
    move-exception v4

    goto/16 :goto_6

    :catch_2
    move-exception v2

    move v2, v3

    goto/16 :goto_6

    .line 412
    :catch_3
    move-exception v5

    goto/16 :goto_4

    .line 394
    :catch_4
    move-exception v2

    goto/16 :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 505
    if-nez p0, :cond_1

    .line 506
    :cond_0
    return-void

    .line 505
    :cond_1
    if-eqz p1, :cond_0

    .line 509
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v0, "point"

    .line 511
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 512
    if-nez v3, :cond_5

    .line 522
    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/16 v3, 0xa

    if-lt v0, v3, :cond_6

    .line 535
    :cond_3
    if-nez v2, :cond_7

    .line 542
    :cond_4
    :goto_0
    return-void

    .line 512
    :cond_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 513
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 515
    :try_start_0
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 513
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    const-string/jumbo v0, "point"

    .line 523
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 524
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 525
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 527
    :try_start_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 525
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 535
    :cond_7
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_4

    :try_start_2
    const-string/jumbo v0, "point"

    .line 537
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 540
    :catch_0
    move-exception v0

    goto :goto_0

    .line 530
    :catch_1
    move-exception v3

    goto :goto_4

    .line 518
    :catch_2
    move-exception v4

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 246
    if-eqz p0, :cond_0

    .line 252
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    if-gt v1, p1, :cond_1

    :goto_1
    return v0

    .line 247
    :cond_0
    return v0

    .line 255
    :catch_0
    move-exception v1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 257
    goto :goto_1
.end method

.method private static a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 547
    if-eqz p0, :cond_2

    .line 549
    :goto_0
    if-nez p0, :cond_3

    :cond_0
    :goto_1
    move v0, v1

    .line 553
    :cond_1
    return v0

    .line 547
    :cond_2
    if-eqz p1, :cond_1

    goto :goto_0

    .line 549
    :cond_3
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 269
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    :cond_1
    return v1

    .line 269
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    return v2

    .line 273
    :cond_3
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    return v2
.end method

.method public static doEventMerge(Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    .locals 25

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v3, ""

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string/jumbo v19, ""

    const-string/jumbo v20, ""

    const-string/jumbo v3, ""

    const-string/jumbo v3, ""

    const-string/jumbo v3, ""

    .line 299
    sget-object v3, Lcom/baidu/mobstat/Config$EventViewType;->EDIT:Lcom/baidu/mobstat/Config$EventViewType;

    invoke-virtual {v3}, Lcom/baidu/mobstat/Config$EventViewType;->getValue()I

    const-string/jumbo v3, ""

    const-string/jumbo v3, ""

    const-string/jumbo v3, ""

    :try_start_0
    const-string/jumbo v3, "ss"

    .line 310
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v3, "i"

    .line 311
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v3, "l"

    .line 312
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v3, "t"

    .line 313
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/32 v10, 0x36ee80

    div-long v9, v8, v10

    const-string/jumbo v3, "s"

    .line 314
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v3, "at"

    .line 316
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    const-string/jumbo v3, "h"

    .line 318
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v3, 0x3

    .line 320
    move/from16 v0, v18

    if-ne v0, v3, :cond_1

    const-string/jumbo v3, "h2"

    .line 324
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v3, "h3"

    .line 325
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    :goto_0
    const-string/jumbo v3, "p"

    .line 328
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v3, "p2"

    .line 329
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v3, "rn"

    .line 331
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v3, "v"

    .line 333
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    const-string/jumbo v3, "ext"

    .line 334
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v21, "attribute"

    .line 335
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v21, "h5"

    .line 337
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v21

    const-string/jumbo v22, "sign"

    .line 339
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    :try_start_1
    const-string/jumbo v24, "d"

    .line 346
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    .line 352
    :goto_1
    if-eqz v2, :cond_2

    .line 358
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    :try_start_2
    const-string/jumbo v3, "s"

    const-string/jumbo v4, "0"

    .line 360
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 374
    :goto_2
    return-void

    :cond_1
    :try_start_3
    const-string/jumbo v3, "h2"

    .line 321
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    const-string/jumbo v3, "h3"

    .line 322
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v13

    goto/16 :goto_0

    .line 343
    :catch_0
    move-exception v2

    .line 342
    return-void

    .line 352
    :cond_2
    move-object/from16 v0, v23

    invoke-static {v3, v0}, Lcom/baidu/mobstat/EventAnalysis;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 353
    invoke-static/range {v2 .. v22}, Lcom/baidu/mobstat/EventAnalysis;->a(Lorg/json/JSONArray;Lorg/json/JSONObject;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 364
    :catch_1
    move-exception v2

    goto :goto_2

    .line 349
    :catch_2
    move-exception v24

    goto :goto_1
.end method

.method public static getEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;IILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)Lorg/json/JSONObject;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    const-string/jumbo v20, ""

    const-string/jumbo v21, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v13, p11

    move/from16 v16, p12

    move/from16 v17, p13

    move-object/from16 v18, p14

    move-object/from16 v19, p15

    move/from16 v22, p16

    .line 149
    invoke-static/range {v0 .. v22}, Lcom/baidu/mobstat/EventAnalysis;->getEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static getEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJ",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    const-string/jumbo v24, ""

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move/from16 v22, p22

    .line 159
    invoke-static/range {v0 .. v24}, Lcom/baidu/mobstat/EventAnalysis;->getEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static getEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJ",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 171
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "ss"

    .line 174
    invoke-virtual {v4, v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "i"

    .line 175
    invoke-virtual {v4, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "l"

    .line 176
    invoke-virtual {v4, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "c"

    .line 177
    invoke-virtual {v4, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "t"

    .line 178
    move-wide/from16 v0, p6

    invoke-virtual {v4, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "d"

    .line 179
    move-wide/from16 v0, p8

    invoke-virtual {v4, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "h"

    .line 180
    move-object/from16 v0, p10

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v2, 0x3

    .line 183
    move/from16 v0, p17

    if-ne v0, v2, :cond_3

    const-string/jumbo v2, "h2"

    .line 187
    move-object/from16 v0, p20

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "h3"

    .line 188
    move-object/from16 v0, p21

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string/jumbo v2, "p"

    .line 191
    move-object/from16 v0, p13

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "p2"

    .line 192
    move-object/from16 v0, p14

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "rn"

    .line 193
    move-object/from16 v0, p15

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "v"

    .line 194
    move/from16 v0, p16

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "at"

    .line 195
    move/from16 v0, p17

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v3, "h5"

    .line 196
    if-nez p22, :cond_4

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 198
    if-nez p18, :cond_5

    .line 202
    :cond_0
    :goto_2
    if-nez p19, :cond_6

    .line 231
    :cond_1
    :goto_3
    if-nez p23, :cond_9

    :cond_2
    :goto_4
    const-string/jumbo v2, "sign"

    .line 237
    invoke-static/range {p24 .. p24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    :goto_5
    move-object/from16 v0, p24

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    :goto_6
    return-object v4

    :cond_3
    const-string/jumbo v2, "h2"

    .line 184
    move-object/from16 v0, p11

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "h3"

    .line 185
    move-object/from16 v0, p12

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 240
    :catch_0
    move-exception v2

    goto :goto_6

    :cond_4
    const/4 v2, 0x1

    .line 196
    goto :goto_1

    .line 198
    :cond_5
    invoke-virtual/range {p18 .. p18}, Lcom/baidu/mobstat/ExtraInfo;->dumpToJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ext"

    .line 199
    invoke-virtual/range {p18 .. p18}, Lcom/baidu/mobstat/ExtraInfo;->dumpToJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 203
    :cond_6
    invoke-interface/range {p19 .. p19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 204
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 205
    :cond_7
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_8

    .line 225
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "attribute"

    .line 226
    invoke-virtual {v4, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 206
    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 207
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 208
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 210
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    const/16 v7, 0x400

    .line 214
    invoke-static {v2, v7}, Lcom/baidu/mobstat/EventAnalysis;->a(Ljava/lang/String;I)Z

    move-result v7

    .line 215
    if-nez v7, :cond_7

    .line 219
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v8, "k"

    .line 220
    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "v"

    .line 221
    invoke-virtual {v7, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_7

    .line 231
    :cond_9
    invoke-virtual/range {p23 .. p23}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 232
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 233
    move-object/from16 v0, p23

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string/jumbo v3, "point"

    .line 234
    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    :cond_a
    const-string/jumbo p24, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5
.end method


# virtual methods
.method public flushEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const-string/jumbo v12, ""

    .line 125
    sget-object v2, Lcom/baidu/mobstat/Config$EventViewType;->EDIT:Lcom/baidu/mobstat/Config$EventViewType;

    .line 127
    invoke-virtual {v2}, Lcom/baidu/mobstat/Config$EventViewType;->getValue()I

    move-result v18

    const/16 v19, 0x2

    const-string/jumbo v22, ""

    const-string/jumbo v23, ""

    const/16 v20, 0x0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    move-object/from16 v17, p13

    move-object/from16 v21, p14

    move/from16 v24, p15

    .line 126
    invoke-static/range {v2 .. v24}, Lcom/baidu/mobstat/EventAnalysis;->getEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 129
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Lcom/baidu/mobstat/DataCore;->putEvent(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 130
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    .line 131
    return-void
.end method

.method public onEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    .line 29
    invoke-direct/range {v1 .. v14}, Lcom/baidu/mobstat/EventAnalysis;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V

    .line 30
    return-void
.end method

.method public onEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;IZ)V
    .locals 15

    .prologue
    const-wide/16 v10, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    .line 36
    invoke-direct/range {v1 .. v14}, Lcom/baidu/mobstat/EventAnalysis;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;I)V

    .line 37
    return-void
.end method

.method public onEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual/range {p0 .. p15}, Lcom/baidu/mobstat/EventAnalysis;->flushEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 45
    return-void
.end method

.method public onEventDuration(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JJLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 93
    cmp-long v0, p8, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 94
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    .line 97
    invoke-direct/range {v1 .. v14}, Lcom/baidu/mobstat/EventAnalysis;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V

    .line 98
    return-void
.end method

.method public onEventEnd(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 67
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/EventAnalysis;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 68
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mobstat/EventAnalysis;->a:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mobstat/EventAnalysis$a;

    .line 69
    if-eqz v4, :cond_2

    .line 74
    if-nez p4, :cond_3

    :cond_0
    if-nez p5, :cond_5

    .line 80
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/mobstat/EventAnalysis;->a:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-wide v6, v4, Lcom/baidu/mobstat/EventAnalysis$a;->c:J

    sub-long v12, p6, v6

    const-wide/16 v6, 0x0

    .line 83
    cmp-long v5, v12, v6

    if-ltz v5, :cond_6

    const/4 v5, 0x1

    :goto_1
    if-nez v5, :cond_1

    .line 84
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v5

    const-string/jumbo v6, "[WARNING] onEventEnd must be invoked after onEventStart"

    invoke-virtual {v5, v6}, Lcom/baidu/mobstat/eh;->b(Ljava/lang/String;)V

    .line 87
    :cond_1
    iget-wide v10, v4, Lcom/baidu/mobstat/EventAnalysis$a;->c:J

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move/from16 v16, p10

    invoke-virtual/range {v4 .. v16}, Lcom/baidu/mobstat/EventAnalysis;->onEventDuration(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JJLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V

    .line 89
    :goto_2
    return-void

    .line 70
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[WARNING] eventId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", with label: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is not started or alread ended"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 71
    invoke-virtual {v4, v5}, Lcom/baidu/mobstat/eh;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 74
    :cond_3
    iget-object v6, v4, Lcom/baidu/mobstat/EventAnalysis$a;->a:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 76
    :cond_4
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v4

    const-string/jumbo v5, "[WARNING] eventId/label pair not match"

    invoke-virtual {v4, v5}, Lcom/baidu/mobstat/eh;->b(Ljava/lang/String;)V

    .line 77
    return-void

    .line 74
    :cond_5
    iget-object v6, v4, Lcom/baidu/mobstat/EventAnalysis$a;->b:Ljava/lang/String;

    .line 75
    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_0

    .line 83
    :cond_6
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    .prologue
    .line 49
    new-instance v0, Lcom/baidu/mobstat/EventAnalysis$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/EventAnalysis$a;-><init>(Lcom/baidu/mobstat/bv;)V

    .line 50
    iput-wide p4, v0, Lcom/baidu/mobstat/EventAnalysis$a;->c:J

    .line 51
    iput-object p2, v0, Lcom/baidu/mobstat/EventAnalysis$a;->a:Ljava/lang/String;

    .line 52
    iput-object p3, v0, Lcom/baidu/mobstat/EventAnalysis$a;->b:Ljava/lang/String;

    .line 53
    invoke-direct {p0, p2, p3}, Lcom/baidu/mobstat/EventAnalysis;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/baidu/mobstat/EventAnalysis;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    :goto_0
    iget-object v2, p0, Lcom/baidu/mobstat/EventAnalysis;->a:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void

    .line 55
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[WARNING] eventId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", with label: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is duplicated, older is removed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/eh;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
