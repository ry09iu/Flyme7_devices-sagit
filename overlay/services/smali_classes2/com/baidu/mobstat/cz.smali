.class public Lcom/baidu/mobstat/cz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lorg/json/JSONArray;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:J

.field private i:J

.field private j:J

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJJJLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/baidu/mobstat/cz;->a:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/baidu/mobstat/cz;->b:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/baidu/mobstat/cz;->c:Lorg/json/JSONArray;

    .line 34
    iput-object p4, p0, Lcom/baidu/mobstat/cz;->d:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/baidu/mobstat/cz;->e:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lcom/baidu/mobstat/cz;->f:Ljava/lang/String;

    .line 37
    iput-boolean p7, p0, Lcom/baidu/mobstat/cz;->g:Z

    .line 38
    iput p8, p0, Lcom/baidu/mobstat/cz;->k:I

    .line 39
    iput-wide p9, p0, Lcom/baidu/mobstat/cz;->h:J

    .line 40
    iput-wide p11, p0, Lcom/baidu/mobstat/cz;->i:J

    .line 41
    iput-wide p13, p0, Lcom/baidu/mobstat/cz;->j:J

    .line 42
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/baidu/mobstat/cz;->l:Ljava/lang/String;

    .line 43
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/baidu/mobstat/cz;->m:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, ""

    .line 190
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "id"

    .line 191
    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "p"

    .line 192
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "path"

    .line 193
    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "title"

    .line 195
    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "index"

    .line 196
    invoke-virtual {v2, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "n"

    .line 197
    invoke-virtual {v2, v3, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "user"

    .line 198
    if-nez p6, :cond_0

    :goto_0
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 200
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    const-string/jumbo v1, ""

    .line 206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 210
    :goto_2
    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 198
    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/fb$a;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 203
    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/baidu/mobstat/cz;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 155
    iget-object v0, p0, Lcom/baidu/mobstat/cz;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/mobstat/cz;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mobstat/cz;->c:Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/baidu/mobstat/cz;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/mobstat/cz;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/mobstat/cz;->f:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/baidu/mobstat/cz;->g:Z

    invoke-static/range {v0 .. v6}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "id"

    .line 164
    iget-object v3, p0, Lcom/baidu/mobstat/cz;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "d"

    .line 165
    iget-object v3, p0, Lcom/baidu/mobstat/cz;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "p"

    .line 166
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "path"

    .line 167
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "title"

    .line 169
    iget-object v3, p0, Lcom/baidu/mobstat/cz;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "index"

    .line 170
    iget-object v3, p0, Lcom/baidu/mobstat/cz;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "n"

    .line 171
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "user"

    .line 172
    iget-boolean v1, p0, Lcom/baidu/mobstat/cz;->g:Z

    if-nez v1, :cond_1

    move v1, v8

    :goto_0
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "c"

    .line 173
    iget v3, p0, Lcom/baidu/mobstat/cz;->k:I

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "t"

    .line 174
    iget-wide v4, p0, Lcom/baidu/mobstat/cz;->h:J

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "ps"

    .line 175
    iget-object v3, p0, Lcom/baidu/mobstat/cz;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "sign"

    .line 177
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_1
    return-object v0

    .line 158
    :cond_0
    return-object v7

    :cond_1
    const/4 v1, 0x1

    .line 172
    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    move-object v0, v7

    .line 179
    goto :goto_1
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 111
    iput p1, p0, Lcom/baidu/mobstat/cz;->k:I

    .line 112
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 127
    iput-wide p1, p0, Lcom/baidu/mobstat/cz;->i:J

    .line 128
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/baidu/mobstat/cz;->l:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/mobstat/cz;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 131
    iput-wide p1, p0, Lcom/baidu/mobstat/cz;->j:J

    .line 132
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/baidu/mobstat/cz;->m:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public c()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/mobstat/cz;->c:Lorg/json/JSONArray;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/baidu/mobstat/cz;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/mobstat/cz;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/mobstat/cz;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/baidu/mobstat/cz;->g:Z

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/baidu/mobstat/cz;->k:I

    return v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/baidu/mobstat/cz;->h:J

    return-wide v0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/baidu/mobstat/cz;->i:J

    return-wide v0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/baidu/mobstat/cz;->j:J

    return-wide v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/baidu/mobstat/cz;->l:Ljava/lang/String;

    return-object v0
.end method
