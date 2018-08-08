.class public Lcom/baidu/mobstat/Session;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/Session$a;
    }
.end annotation


# instance fields
.field private volatile a:J

.field private volatile b:J

.field private volatile c:J

.field private volatile d:J

.field private volatile e:J

.field private volatile f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mobstat/Session$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide v0, p0, Lcom/baidu/mobstat/Session;->a:J

    .line 20
    iput-wide v0, p0, Lcom/baidu/mobstat/Session;->b:J

    .line 23
    iput-wide v0, p0, Lcom/baidu/mobstat/Session;->c:J

    .line 26
    iput-wide v0, p0, Lcom/baidu/mobstat/Session;->d:J

    .line 29
    iput-wide v0, p0, Lcom/baidu/mobstat/Session;->e:J

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/baidu/mobstat/Session;->f:I

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/Session;->g:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/util/List;Lcom/baidu/mobstat/Session$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mobstat/Session$a;",
            ">;",
            "Lcom/baidu/mobstat/Session$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    if-eqz p1, :cond_1

    .line 84
    if-eqz p2, :cond_2

    .line 88
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 89
    if-eqz v0, :cond_3

    .line 94
    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/Session$a;

    .line 96
    invoke-static {v0}, Lcom/baidu/mobstat/Session$a;->b(Lcom/baidu/mobstat/Session$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 97
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-void

    .line 81
    :cond_1
    return-void

    .line 85
    :cond_2
    return-void

    .line 90
    :cond_3
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-void

    .line 96
    :cond_4
    invoke-static {p2}, Lcom/baidu/mobstat/Session$a;->b(Lcom/baidu/mobstat/Session$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    invoke-static {v0}, Lcom/baidu/mobstat/Session$a;->b(Lcom/baidu/mobstat/Session$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/baidu/mobstat/Session$a;->b(Lcom/baidu/mobstat/Session$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 102
    :cond_5
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    return-void

    .line 101
    :cond_6
    invoke-static {v0}, Lcom/baidu/mobstat/Session$a;->c(Lcom/baidu/mobstat/Session$a;)Z

    move-result v1

    invoke-static {p2}, Lcom/baidu/mobstat/Session$a;->c(Lcom/baidu/mobstat/Session$a;)Z

    move-result v2

    if-eq v1, v2, :cond_5

    .line 106
    invoke-static {v0}, Lcom/baidu/mobstat/Session$a;->c(Lcom/baidu/mobstat/Session$a;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_7
    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/Session$a;->a(Lcom/baidu/mobstat/Session$a;)V

    goto :goto_0
.end method

.method public static getPVJson(Lcom/baidu/mobstat/Session$a;J)Lorg/json/JSONObject;
    .locals 11

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 212
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v4, "n"

    .line 215
    invoke-virtual {p0}, Lcom/baidu/mobstat/Session$a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "d"

    .line 216
    invoke-virtual {p0}, Lcom/baidu/mobstat/Session$a;->c()J

    move-result-wide v8

    invoke-virtual {v7, v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 218
    invoke-virtual {p0}, Lcom/baidu/mobstat/Session$a;->d()J

    move-result-wide v4

    sub-long/2addr v4, p1

    const-string/jumbo v8, "ps"

    .line 219
    cmp-long v6, v4, v2

    if-ltz v6, :cond_1

    move v6, v1

    :goto_0
    if-nez v6, :cond_2

    :goto_1
    invoke-virtual {v7, v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "t"

    .line 221
    invoke-virtual {p0}, Lcom/baidu/mobstat/Session$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "at"

    .line 222
    invoke-virtual {p0}, Lcom/baidu/mobstat/Session$a;->f()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v0

    :goto_2
    invoke-virtual {v7, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 224
    invoke-virtual {p0}, Lcom/baidu/mobstat/Session$a;->e()Lorg/json/JSONObject;

    move-result-object v2

    .line 225
    if-nez v2, :cond_4

    :cond_0
    :goto_3
    const-string/jumbo v2, "h5"

    .line 229
    invoke-static {p0}, Lcom/baidu/mobstat/Session$a;->d(Lcom/baidu/mobstat/Session$a;)Z

    move-result v3

    if-nez v3, :cond_5

    :goto_4
    invoke-virtual {v7, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 234
    :goto_5
    return-object v7

    :cond_1
    move v6, v0

    .line 219
    goto :goto_0

    :cond_2
    move-wide v2, v4

    goto :goto_1

    :cond_3
    move v2, v1

    .line 222
    goto :goto_2

    .line 225
    :cond_4
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "ext"

    .line 226
    invoke-virtual {v7, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 232
    :catch_0
    move-exception v0

    goto :goto_5

    :cond_5
    move v0, v1

    .line 229
    goto :goto_4
.end method


# virtual methods
.method public addPageView(Lcom/baidu/mobstat/Session$a;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/mobstat/Session;->g:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/baidu/mobstat/Session;->a(Ljava/util/List;Lcom/baidu/mobstat/Session$a;)V

    .line 77
    return-void
.end method

.method public addPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/baidu/mobstat/ExtraInfo;Z)V
    .locals 12

    .prologue
    .line 71
    new-instance v0, Lcom/baidu/mobstat/Session$a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/baidu/mobstat/Session$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/baidu/mobstat/ExtraInfo;Z)V

    .line 72
    iget-object v1, p0, Lcom/baidu/mobstat/Session;->g:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/baidu/mobstat/Session;->a(Ljava/util/List;Lcom/baidu/mobstat/Session$a;)V

    .line 73
    return-void
.end method

.method public constructJSONObject()Lorg/json/JSONObject;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 160
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "s"

    .line 163
    iget-wide v4, p0, Lcom/baidu/mobstat/Session;->a:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "e"

    .line 164
    iget-wide v4, p0, Lcom/baidu/mobstat/Session;->b:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "i"

    .line 165
    iget-wide v4, p0, Lcom/baidu/mobstat/Session;->e:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "c"

    const/4 v1, 0x1

    .line 167
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v3, "s2"

    .line 168
    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->c:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->a:J

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v3, "e2"

    .line 169
    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->d:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->b:J

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "pc"

    .line 170
    iget v1, p0, Lcom/baidu/mobstat/Session;->f:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 172
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 173
    :goto_2
    iget-object v0, p0, Lcom/baidu/mobstat/Session;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    const-string/jumbo v0, "p"

    .line 179
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    :goto_3
    return-object v2

    .line 168
    :cond_0
    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->c:J

    goto :goto_0

    .line 169
    :cond_1
    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->d:J

    goto :goto_1

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/Session;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/Session$a;

    .line 175
    iget-wide v4, p0, Lcom/baidu/mobstat/Session;->a:J

    invoke-static {v0, v4, v5}, Lcom/baidu/mobstat/Session;->getPVJson(Lcom/baidu/mobstat/Session$a;J)Lorg/json/JSONObject;

    move-result-object v0

    .line 176
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 182
    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method public getPageSessionHead()Lorg/json/JSONObject;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 188
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "s"

    .line 191
    iget-wide v4, p0, Lcom/baidu/mobstat/Session;->a:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "e"

    .line 192
    iget-wide v4, p0, Lcom/baidu/mobstat/Session;->b:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "i"

    .line 193
    iget-wide v4, p0, Lcom/baidu/mobstat/Session;->e:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "c"

    const/4 v1, 0x1

    .line 195
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v3, "s2"

    .line 196
    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->c:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->a:J

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v3, "e2"

    .line 197
    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->d:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->b:J

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "pc"

    .line 198
    iget v1, p0, Lcom/baidu/mobstat/Session;->f:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 203
    :goto_2
    return-object v2

    .line 196
    :cond_0
    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->c:J

    goto :goto_0

    .line 197
    :cond_1
    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->d:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 201
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->a:J

    return-wide v0
.end method

.method public hasEnd()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 144
    iget-wide v2, p0, Lcom/baidu/mobstat/Session;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public hasStart()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 135
    iget-wide v2, p0, Lcom/baidu/mobstat/Session;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Lcom/baidu/mobstat/Session;->a:J

    .line 43
    iput-wide v0, p0, Lcom/baidu/mobstat/Session;->b:J

    .line 45
    iput-wide v0, p0, Lcom/baidu/mobstat/Session;->c:J

    .line 47
    iput-wide v0, p0, Lcom/baidu/mobstat/Session;->d:J

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/baidu/mobstat/Session;->f:I

    .line 51
    iget-object v0, p0, Lcom/baidu/mobstat/Session;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    return-void
.end method

.method public setEndTime(J)V
    .locals 1

    .prologue
    .line 153
    iput-wide p1, p0, Lcom/baidu/mobstat/Session;->b:J

    .line 154
    return-void
.end method

.method public setInvokeType(I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/baidu/mobstat/Session;->f:I

    .line 67
    return-void
.end method

.method public setStartTime(J)V
    .locals 5

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 118
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 121
    :cond_1
    iput-wide p1, p0, Lcom/baidu/mobstat/Session;->a:J

    .line 122
    iput-wide p1, p0, Lcom/baidu/mobstat/Session;->e:J

    .line 123
    return-void
.end method

.method public setTrackEndTime(J)V
    .locals 1

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/baidu/mobstat/Session;->d:J

    .line 63
    return-void
.end method

.method public setTrackStartTime(J)V
    .locals 5

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 56
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :cond_1
    iput-wide p1, p0, Lcom/baidu/mobstat/Session;->c:J

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/baidu/mobstat/Session;->constructJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
