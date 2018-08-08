.class public Lcom/baidu/mobstat/ej;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/es$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/view/View;)Ljava/lang/String;
    .locals 3

    .prologue
    const-string/jumbo v0, ""

    .line 132
    if-nez p1, :cond_1

    .line 133
    :cond_0
    return-object v0

    .line 132
    :cond_1
    if-eqz p2, :cond_0

    .line 136
    invoke-static {p2}, Lcom/baidu/mobstat/eq;->o(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_2

    .line 142
    invoke-static {}, Lcom/baidu/mobstat/dc;->a()Lcom/baidu/mobstat/dc;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v1}, Lcom/baidu/mobstat/dc;->a(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    :goto_0
    return-object v0

    .line 138
    :cond_2
    return-object v0

    :cond_3
    move-object v0, v1

    .line 144
    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Landroid/view/View;Landroid/graphics/PointF;)Lorg/json/JSONObject;
    .locals 11

    .prologue
    const/high16 v10, 0x42c80000    # 100.0f

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 78
    if-eqz p3, :cond_3

    const/4 v0, 0x2

    .line 83
    new-array v0, v0, [I

    .line 84
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 89
    iget v2, p3, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    aget v3, v0, v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 90
    iget v3, p3, Landroid/graphics/PointF;->y:F

    const/4 v4, 0x1

    aget v0, v0, v4

    int-to-float v0, v0

    sub-float v0, v3, v0

    .line 93
    cmpg-float v3, v2, v1

    if-gez v3, :cond_0

    move v2, v1

    .line 96
    :cond_0
    cmpg-float v3, v0, v1

    if-gez v3, :cond_1

    move v0, v1

    .line 100
    :cond_1
    invoke-static {p1, v2}, Lcom/baidu/mobstat/ci;->b(Landroid/content/Context;F)F

    move-result v2

    .line 101
    invoke-static {p1, v0}, Lcom/baidu/mobstat/ci;->b(Landroid/content/Context;F)F

    move-result v0

    .line 103
    invoke-static {p2}, Lcom/baidu/mobstat/eq;->p(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1, v3}, Lcom/baidu/mobstat/ci;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    .line 104
    invoke-static {p2}, Lcom/baidu/mobstat/eq;->q(Landroid/view/View;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {p1, v4}, Lcom/baidu/mobstat/ci;->a(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    .line 107
    cmpl-float v5, v3, v1

    if-eqz v5, :cond_2

    cmpl-float v1, v4, v1

    if-nez v1, :cond_4

    .line 108
    :cond_2
    return-object v6

    .line 79
    :cond_3
    return-object v6

    .line 111
    :cond_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 113
    :try_start_0
    new-instance v5, Ljava/text/DecimalFormat;

    const-string/jumbo v6, "0.0"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "x"

    .line 114
    float-to-double v8, v2

    invoke-virtual {v5, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "y"

    .line 115
    float-to-double v8, v0

    invoke-virtual {v5, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    mul-float/2addr v2, v10

    div-float/2addr v2, v3

    const-string/jumbo v3, "xp"

    .line 118
    float-to-double v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    mul-float/2addr v0, v10

    div-float/2addr v0, v4

    const-string/jumbo v2, "yp"

    .line 121
    float-to-double v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-object v1

    .line 124
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;ZLandroid/app/Activity;)V
    .locals 34

    .prologue
    .line 26
    if-nez p3, :cond_1

    .line 27
    :cond_0
    return-void

    .line 26
    :cond_1
    if-eqz p1, :cond_0

    .line 30
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/baidu/mobstat/da;->a(Landroid/view/View;Landroid/app/Activity;)V

    .line 33
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mobstat/ei;->b()Z

    move-result v4

    if-nez v4, :cond_3

    .line 38
    :cond_2
    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mobstat/eo;->b()Z

    move-result v4

    if-nez v4, :cond_4

    .line 44
    :goto_1
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/eq;->a(Landroid/app/Activity;Landroid/view/View;)Lorg/json/JSONArray;

    move-result-object v12

    .line 45
    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/eq;->g(Landroid/view/View;)Ljava/lang/String;

    move-result-object v16

    .line 46
    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/eq;->h(Landroid/view/View;)Ljava/util/Map;

    move-result-object v17

    .line 47
    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/eq;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    .line 49
    invoke-virtual/range {p3 .. p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, ""

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 55
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 56
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, ""

    .line 59
    if-nez p2, :cond_5

    .line 64
    :goto_2
    invoke-static {}, Lcom/baidu/mobstat/ec;->a()Lcom/baidu/mobstat/ec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mobstat/ec;->b()Landroid/graphics/PointF;

    move-result-object v4

    .line 65
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v4}, Lcom/baidu/mobstat/ej;->a(Landroid/app/Activity;Landroid/view/View;Landroid/graphics/PointF;)Lorg/json/JSONObject;

    move-result-object v32

    .line 67
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/ej;->a(Landroid/app/Activity;Landroid/view/View;)Ljava/lang/String;

    move-result-object v33

    .line 71
    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/eq;->l(Landroid/view/View;)Ljava/lang/String;

    move-result-object v22

    .line 72
    invoke-static {}, Lcom/baidu/mobstat/dt;->a()Lcom/baidu/mobstat/dt;

    move-result-object v19

    const/16 v23, 0x1

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-wide/from16 v24, v10

    move-object/from16 v26, v14

    move-object/from16 v27, v12

    move-object/from16 v28, v15

    move-object/from16 v29, v13

    move-object/from16 v30, v16

    move-object/from16 v31, v17

    invoke-virtual/range {v19 .. v33}, Lcom/baidu/mobstat/dt;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 74
    return-void

    .line 33
    :cond_3
    if-eqz p2, :cond_2

    .line 34
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "OnEvent view:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 35
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; content:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/eq;->i(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; activity:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 36
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 34
    invoke-virtual {v4, v5}, Lcom/baidu/mobstat/ei;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 39
    :cond_4
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "OnEvent view:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 40
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; content:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/eq;->i(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; activity:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 41
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 39
    invoke-virtual {v4, v5}, Lcom/baidu/mobstat/eo;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 60
    :cond_5
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v5

    const/4 v9, 0x1

    invoke-virtual/range {v5 .. v17}, Lcom/baidu/mobstat/BDStatCore;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_2
.end method
