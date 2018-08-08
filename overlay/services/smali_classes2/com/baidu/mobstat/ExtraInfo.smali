.class public Lcom/baidu/mobstat/ExtraInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    .line 9
    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 10
    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 11
    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->c:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 12
    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->d:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 13
    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 14
    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->f:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 15
    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->g:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 16
    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->h:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 17
    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->i:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 18
    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->j:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/16 v0, 0x400

    .line 40
    invoke-static {p0, v0}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;I)Z

    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 45
    :goto_1
    return-object p0

    :cond_0
    const-string/jumbo p0, ""

    goto :goto_0

    :cond_1
    const-string/jumbo p0, ""

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 21
    if-eqz p0, :cond_0

    .line 27
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    if-gt v1, p1, :cond_1

    :goto_1
    return v0

    .line 22
    :cond_0
    return v0

    .line 30
    :catch_0
    move-exception v1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 32
    goto :goto_1
.end method


# virtual methods
.method public dumpToJson()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 129
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mobstat/ExtraInfo;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    :goto_0
    iget-object v1, p0, Lcom/baidu/mobstat/ExtraInfo;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    :goto_1
    iget-object v1, p0, Lcom/baidu/mobstat/ExtraInfo;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    :goto_2
    iget-object v1, p0, Lcom/baidu/mobstat/ExtraInfo;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    :goto_3
    iget-object v1, p0, Lcom/baidu/mobstat/ExtraInfo;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 146
    :goto_4
    iget-object v1, p0, Lcom/baidu/mobstat/ExtraInfo;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 149
    :goto_5
    iget-object v1, p0, Lcom/baidu/mobstat/ExtraInfo;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 152
    :goto_6
    iget-object v1, p0, Lcom/baidu/mobstat/ExtraInfo;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 155
    :goto_7
    iget-object v1, p0, Lcom/baidu/mobstat/ExtraInfo;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 158
    :goto_8
    iget-object v1, p0, Lcom/baidu/mobstat/ExtraInfo;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 165
    :goto_9
    return-object v0

    :cond_0
    const-string/jumbo v1, "v1"

    .line 132
    iget-object v2, p0, Lcom/baidu/mobstat/ExtraInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    goto :goto_9

    :cond_1
    const-string/jumbo v1, "v2"

    .line 135
    iget-object v2, p0, Lcom/baidu/mobstat/ExtraInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "v3"

    .line 138
    iget-object v2, p0, Lcom/baidu/mobstat/ExtraInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    const-string/jumbo v1, "v4"

    .line 141
    iget-object v2, p0, Lcom/baidu/mobstat/ExtraInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_4
    const-string/jumbo v1, "v5"

    .line 144
    iget-object v2, p0, Lcom/baidu/mobstat/ExtraInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_5
    const-string/jumbo v1, "v6"

    .line 147
    iget-object v2, p0, Lcom/baidu/mobstat/ExtraInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :cond_6
    const-string/jumbo v1, "v7"

    .line 150
    iget-object v2, p0, Lcom/baidu/mobstat/ExtraInfo;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    :cond_7
    const-string/jumbo v1, "v8"

    .line 153
    iget-object v2, p0, Lcom/baidu/mobstat/ExtraInfo;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7

    :cond_8
    const-string/jumbo v1, "v9"

    .line 156
    iget-object v2, p0, Lcom/baidu/mobstat/ExtraInfo;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_8

    :cond_9
    const-string/jumbo v1, "v10"

    .line 159
    iget-object v2, p0, Lcom/baidu/mobstat/ExtraInfo;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9
.end method

.method public getV1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getV10()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getV2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getV3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getV4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getV5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getV6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getV7()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getV8()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getV9()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public setV1(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    invoke-static {p1}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->a:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setV10(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 125
    invoke-static {p1}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->j:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setV2(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    invoke-static {p1}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->b:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setV3(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    invoke-static {p1}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->c:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setV4(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 77
    invoke-static {p1}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->d:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setV5(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    invoke-static {p1}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->e:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setV6(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 93
    invoke-static {p1}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->f:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setV7(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 101
    invoke-static {p1}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->g:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setV8(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 109
    invoke-static {p1}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->h:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setV9(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 117
    invoke-static {p1}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->i:Ljava/lang/String;

    .line 118
    return-void
.end method
