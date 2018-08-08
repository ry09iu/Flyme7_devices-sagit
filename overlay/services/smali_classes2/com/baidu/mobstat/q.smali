.class public Lcom/baidu/mobstat/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 22
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "s"

    .line 25
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "sv"

    .line 26
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "ii"

    const/4 v2, 0x2

    .line 27
    invoke-static {v2, p0}, Lcom/baidu/mobstat/ff;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "w"

    .line 28
    invoke-static {p0}, Lcom/baidu/mobstat/ff;->c(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "h"

    .line 29
    invoke-static {p0}, Lcom/baidu/mobstat/ff;->d(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "ly"

    .line 31
    sget-object v2, Lcom/baidu/mobstat/aw;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "pv"

    const-string/jumbo v2, "15"

    .line 32
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    const/4 v3, 0x0

    .line 38
    :try_start_1
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string/jumbo v2, "pn"

    const/4 v3, 0x2

    .line 39
    invoke-static {v3, p0}, Lcom/baidu/mobstat/ff;->h(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "a"

    .line 40
    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "n"

    .line 41
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    const-string/jumbo v0, "mc"

    const/4 v2, 0x2

    .line 46
    invoke-static {v2, p0}, Lcom/baidu/mobstat/ff;->b(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "bm"

    const/4 v2, 0x2

    .line 47
    invoke-static {v2, p0}, Lcom/baidu/mobstat/ff;->f(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "m"

    .line 48
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "dn"

    const/4 v2, 0x2

    .line 49
    invoke-static {p0, v2}, Lcom/baidu/mobstat/ff;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "failed_cnt"

    const/4 v3, 0x0

    .line 52
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "send_index"

    const/4 v3, 0x0

    .line 53
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    invoke-static {}, Lcom/baidu/mobstat/ff;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "rom"

    .line 56
    if-eqz v0, :cond_0

    :goto_1
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "trace"

    .line 58
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    :goto_2
    return-object v1

    .line 44
    :catch_0
    move-exception v0

    .line 43
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 61
    :catch_1
    move-exception v0

    .line 60
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_0
    :try_start_3
    const-string/jumbo v0, ""
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public static a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 68
    if-eqz p0, :cond_1

    :try_start_0
    const-string/jumbo v0, "payload"

    .line 73
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 75
    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 79
    :goto_0
    if-nez v0, :cond_3

    move-object v0, v1

    .line 86
    :goto_1
    return-object v0

    .line 69
    :cond_1
    return-object v1

    .line 75
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 76
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "he"

    .line 80
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 84
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public static b(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    :try_start_0
    const-string/jumbo v0, "trace"

    .line 91
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "failed_cnt"

    .line 92
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string/jumbo v1, "failed_cnt"

    const-wide/16 v4, 0x1

    .line 93
    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    :try_start_0
    const-string/jumbo v0, "trace"

    .line 101
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "send_index"

    .line 102
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string/jumbo v1, "send_index"

    const-wide/16 v4, 0x1

    .line 103
    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0
.end method
