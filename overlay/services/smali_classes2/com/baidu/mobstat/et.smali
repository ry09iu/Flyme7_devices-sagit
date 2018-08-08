.class public Lcom/baidu/mobstat/et;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lorg/json/JSONObject;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 198
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "matchAll"

    const/4 v2, 0x1

    .line 199
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 201
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "meta"

    .line 202
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 209
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, ""

    .line 65
    sput-object v0, Lcom/baidu/mobstat/et;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 68
    invoke-static {p0, p1, p2}, Lcom/baidu/mobstat/et;->b(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    .line 72
    :goto_0
    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0xf

    if-lt v1, v3, :cond_0

    .line 85
    :goto_1
    return-object v0

    :cond_0
    const-wide/16 v4, 0x14

    .line 74
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_2
    sget-object v1, Lcom/baidu/mobstat/et;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    goto :goto_2

    .line 80
    :cond_1
    sget-object v0, Lcom/baidu/mobstat/et;->a:Ljava/lang/String;

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 36

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 248
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "h3"

    .line 250
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string/jumbo v6, "p2"

    .line 251
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "l"

    .line 252
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    move-object v5, v2

    move-object v15, v3

    move v2, v4

    .line 258
    :goto_0
    if-eqz v2, :cond_1

    .line 262
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 266
    :goto_1
    invoke-static/range {p2 .. p3}, Lcom/baidu/mobstat/eq;->a(Landroid/app/Activity;Landroid/view/View;)Lorg/json/JSONArray;

    move-result-object v14

    .line 268
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    .line 270
    invoke-static {v14}, Lcom/baidu/mobstat/eq;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v6

    .line 271
    invoke-static {v15}, Lcom/baidu/mobstat/eq;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v7

    .line 272
    invoke-static/range {p3 .. p3}, Lcom/baidu/mobstat/eq;->g(Landroid/view/View;)Ljava/lang/String;

    move-result-object v18

    .line 273
    invoke-static/range {p3 .. p3}, Lcom/baidu/mobstat/eq;->h(Landroid/view/View;)Ljava/util/Map;

    move-result-object v19

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, ""

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobstat/et;->d:Lorg/json/JSONObject;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/baidu/mobstat/et;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 286
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/ei;->b()Z

    move-result v2

    if-nez v2, :cond_4

    .line 293
    :cond_0
    :goto_2
    invoke-static {}, Lcom/baidu/mobstat/dt;->a()Lcom/baidu/mobstat/dt;

    move-result-object v21

    const/16 v25, 0x1

    const-string/jumbo v35, ""

    const/16 v34, 0x1

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v28, v16

    move-object/from16 v29, v14

    move-object/from16 v30, v5

    move-object/from16 v31, v15

    move-object/from16 v32, v18

    move-object/from16 v33, v19

    invoke-virtual/range {v21 .. v35}, Lcom/baidu/mobstat/dt;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V

    .line 295
    return-void

    .line 255
    :catch_0
    move-exception v4

    const/4 v4, 0x0

    move-object v5, v2

    move-object v15, v3

    move v2, v4

    .line 254
    goto :goto_0

    .line 259
    :cond_1
    return-void

    :cond_2
    const-string/jumbo v5, "/"

    goto :goto_1

    .line 283
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v7

    const/4 v11, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/16 v20, 0x1

    move-object/from16 v17, v5

    invoke-virtual/range {v7 .. v20}, Lcom/baidu/mobstat/BDStatCore;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_2

    .line 286
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/mobstat/et;->f:Z

    if-eqz v2, :cond_0

    .line 287
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v2

    const-string/jumbo v3, "setEventToNative: not circle event, will not take effect"

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/ei;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private a(Landroid/webkit/WebView;Z)Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/baidu/mobstat/et;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 193
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/et;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 188
    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/baidu/mobstat/et;->e:Z

    if-eq v0, p2, :cond_0

    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 300
    if-nez p1, :cond_1

    .line 301
    :cond_0
    return v3

    .line 300
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 306
    :cond_2
    return v3

    .line 304
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 305
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    const-string/jumbo v0, "meta"

    .line 310
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v1, "matchAll"

    .line 311
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 312
    if-nez v0, :cond_4

    :goto_0
    :try_start_1
    const-string/jumbo v0, "data"

    .line 321
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    move v5, v3

    .line 322
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v5, v1, :cond_5

    .line 341
    :goto_2
    return v3

    .line 314
    :cond_4
    return v4

    .line 323
    :cond_5
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    const-string/jumbo v2, "page"

    .line 325
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v2, "layout"

    .line 326
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v2, "url"

    .line 327
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v8, "webLayout"

    .line 328
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 332
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    move v1, v3

    .line 322
    :goto_3
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v1

    goto :goto_1

    .line 332
    :cond_7
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 333
    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_8

    move v1, v3

    goto :goto_3

    :cond_8
    move v1, v4

    .line 334
    goto :goto_3

    .line 339
    :catch_0
    move-exception v0

    goto :goto_2

    .line 318
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static b(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/graphics/Rect;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 94
    if-nez p2, :cond_0

    move v1, v0

    move v2, v0

    move v3, v0

    .line 101
    :goto_0
    invoke-static {p0}, Lcom/baidu/mobstat/eq;->c(Landroid/app/Activity;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {p0, v4}, Lcom/baidu/mobstat/ci;->a(Landroid/content/Context;F)I

    move-result v4

    .line 102
    invoke-static {p0}, Lcom/baidu/mobstat/eq;->d(Landroid/app/Activity;)I

    move-result v5

    int-to-float v5, v5

    invoke-static {p0, v5}, Lcom/baidu/mobstat/ci;->a(Landroid/content/Context;F)I

    move-result v5

    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "{\"x\": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ", \"y\": "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", \"w\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", \"h\": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", \"sw\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", \"sh\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "javascript:window._automtj.getViewportTree(\'android\', \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', \'window.WebViewInterface.setViewportTreeToNative\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    new-instance v1, Lcom/baidu/mobstat/eu;

    invoke-direct {v1, p1, v0}, Lcom/baidu/mobstat/eu;-><init>(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 129
    return-void

    .line 95
    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/ci;->a(Landroid/content/Context;F)I

    move-result v3

    .line 96
    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/ci;->a(Landroid/content/Context;F)I

    move-result v2

    .line 97
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/ci;->a(Landroid/content/Context;F)I

    move-result v1

    .line 98
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/ci;->a(Landroid/content/Context;F)I

    move-result v0

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .locals 4

    .prologue
    .line 132
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    if-nez p5, :cond_2

    .line 142
    :goto_0
    if-nez p5, :cond_3

    .line 147
    :goto_1
    invoke-direct {p0, p2, p5}, Lcom/baidu/mobstat/et;->a(Landroid/webkit/WebView;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 157
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/et;->c:Ljava/lang/ref/WeakReference;

    .line 158
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/et;->b:Ljava/lang/ref/WeakReference;

    .line 159
    iput-boolean p5, p0, Lcom/baidu/mobstat/et;->e:Z

    const-string/jumbo v0, ""

    .line 163
    invoke-direct {p0}, Lcom/baidu/mobstat/et;->a()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 171
    :goto_2
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/ei;->b()Z

    move-result v1

    if-nez v1, :cond_7

    .line 174
    :cond_0
    :goto_3
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/eo;->b()Z

    move-result v1

    if-nez v1, :cond_8

    .line 178
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(function(){var h5conf = {\"sdkAPI\": \"window.WebViewInterface.setEventToNative\", \"sdkType\": \"android\", \"events\": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "};"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "})()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 183
    return-void

    .line 133
    :cond_1
    return-void

    .line 138
    :cond_2
    iput-boolean p5, p0, Lcom/baidu/mobstat/et;->f:Z

    .line 139
    iput-object p4, p0, Lcom/baidu/mobstat/et;->d:Lorg/json/JSONObject;

    goto :goto_0

    .line 143
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "injectTrackJs circleConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ei;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 148
    :cond_4
    if-nez p5, :cond_5

    .line 151
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v0

    const-string/jumbo v1, "injectTrackJs, no need to entry"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eo;->a(Ljava/lang/String;)V

    .line 154
    :goto_5
    return-void

    .line 149
    :cond_5
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    const-string/jumbo v1, "injectTrackJs, no need to entry"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ei;->a(Ljava/lang/String;)V

    goto :goto_5

    .line 168
    :cond_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 171
    :cond_7
    iget-boolean v1, p0, Lcom/baidu/mobstat/et;->f:Z

    if-eqz v1, :cond_0

    .line 172
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "injectTrackJs h5Config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/ei;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 175
    :cond_8
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "injectTrackJs h5Config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/eo;->a(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 45
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 50
    return-void

    .line 46
    :cond_0
    return-void
.end method

.method public setEventToNative(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 215
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/ei;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/eo;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 222
    :goto_1
    iget-object v0, p0, Lcom/baidu/mobstat/et;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 225
    iget-object v0, p0, Lcom/baidu/mobstat/et;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 226
    if-eqz v0, :cond_4

    .line 230
    iget-object v1, p0, Lcom/baidu/mobstat/et;->b:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_5

    .line 233
    iget-object v1, p0, Lcom/baidu/mobstat/et;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 234
    if-eqz v1, :cond_6

    .line 238
    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/mobstat/et;->a(Ljava/lang/String;Landroid/app/Activity;Landroid/webkit/WebView;)V

    .line 239
    return-void

    .line 215
    :cond_1
    iget-boolean v0, p0, Lcom/baidu/mobstat/et;->f:Z

    if-eqz v0, :cond_0

    .line 216
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEventToNative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ei;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEventToNative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eo;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 223
    :cond_3
    return-void

    .line 227
    :cond_4
    return-void

    .line 231
    :cond_5
    return-void

    .line 235
    :cond_6
    return-void
.end method

.method public setViewportTreeToNative(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 56
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/ei;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    :goto_0
    sput-object p1, Lcom/baidu/mobstat/et;->a:Ljava/lang/String;

    .line 61
    return-void

    .line 57
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setViewportTreeToNative "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ei;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
