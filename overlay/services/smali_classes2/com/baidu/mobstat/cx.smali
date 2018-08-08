.class public Lcom/baidu/mobstat/cx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJFFFFLjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/baidu/mobstat/cx;->a:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/baidu/mobstat/cx;->b:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/baidu/mobstat/cx;->c:Ljava/lang/String;

    .line 48
    iput-wide p4, p0, Lcom/baidu/mobstat/cx;->d:J

    .line 49
    iput-wide p6, p0, Lcom/baidu/mobstat/cx;->e:J

    .line 50
    iput p8, p0, Lcom/baidu/mobstat/cx;->f:F

    .line 51
    iput p9, p0, Lcom/baidu/mobstat/cx;->g:F

    .line 52
    iput p10, p0, Lcom/baidu/mobstat/cx;->h:F

    .line 53
    iput p11, p0, Lcom/baidu/mobstat/cx;->i:F

    .line 55
    iput-object p12, p0, Lcom/baidu/mobstat/cx;->j:Ljava/lang/String;

    .line 56
    iput-boolean p13, p0, Lcom/baidu/mobstat/cx;->k:Z

    .line 58
    iput-object p14, p0, Lcom/baidu/mobstat/cx;->l:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/baidu/mobstat/cx;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 11

    .prologue
    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 74
    iget-object v0, p0, Lcom/baidu/mobstat/cx;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "n"

    .line 81
    invoke-virtual {v4, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "t"

    .line 82
    iget-object v1, p0, Lcom/baidu/mobstat/cx;->b:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "d"

    .line 87
    iget-wide v8, p0, Lcom/baidu/mobstat/cx;->d:J

    invoke-virtual {v4, v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 89
    iget-wide v0, p0, Lcom/baidu/mobstat/cx;->e:J

    sub-long/2addr v0, p1

    .line 90
    cmp-long v8, v0, v2

    if-gtz v8, :cond_1

    :goto_0
    if-nez v6, :cond_2

    :goto_1
    const-string/jumbo v2, "ps"

    .line 91
    invoke-virtual {v4, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "at"

    const/4 v1, 0x1

    .line 94
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 96
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "xc"

    .line 97
    iget v2, p0, Lcom/baidu/mobstat/cx;->f:F

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "yc"

    .line 98
    iget v2, p0, Lcom/baidu/mobstat/cx;->g:F

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "xt"

    .line 99
    iget v2, p0, Lcom/baidu/mobstat/cx;->h:F

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "yt"

    .line 100
    iget v2, p0, Lcom/baidu/mobstat/cx;->i:F

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "h5"

    const/4 v1, 0x0

    .line 109
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "sign"

    .line 110
    iget-object v1, p0, Lcom/baidu/mobstat/cx;->l:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 115
    :goto_2
    return-object v0

    .line 75
    :cond_0
    return-object v5

    :cond_1
    move v6, v7

    .line 90
    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1

    .line 113
    :catch_0
    move-exception v0

    move-object v0, v5

    .line 112
    goto :goto_2
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/baidu/mobstat/cx;->j:Ljava/lang/String;

    return-object v0
.end method
