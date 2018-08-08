.class public Lcom/baidu/mobstat/cy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:Z

.field private e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJZ)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/baidu/mobstat/cy;->a:Ljava/lang/String;

    .line 17
    iput-wide p2, p0, Lcom/baidu/mobstat/cy;->b:J

    .line 18
    iput-wide p4, p0, Lcom/baidu/mobstat/cy;->c:J

    .line 19
    iput-wide p6, p0, Lcom/baidu/mobstat/cy;->e:J

    .line 20
    iput-boolean p8, p0, Lcom/baidu/mobstat/cy;->d:Z

    .line 21
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/mobstat/cy;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 64
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "name"

    .line 66
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "s"

    .line 67
    iget-wide v4, p0, Lcom/baidu/mobstat/cy;->b:J

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "e"

    .line 68
    iget-wide v4, p0, Lcom/baidu/mobstat/cy;->c:J

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "user"

    .line 69
    iget-boolean v3, p0, Lcom/baidu/mobstat/cy;->d:Z

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_1
    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 69
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 71
    goto :goto_1
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/baidu/mobstat/cy;->c:J

    .line 33
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/baidu/mobstat/cy;->b:J

    return-wide v0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/baidu/mobstat/cy;->e:J

    .line 61
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/baidu/mobstat/cy;->c:J

    return-wide v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/baidu/mobstat/cy;->d:Z

    return v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/baidu/mobstat/cy;->e:J

    return-wide v0
.end method
