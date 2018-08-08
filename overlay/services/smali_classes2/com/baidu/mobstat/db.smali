.class public Lcom/baidu/mobstat/db;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:Lcom/baidu/mobstat/db;


# instance fields
.field private a:Z

.field private b:F

.field private c:J

.field private volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/baidu/mobstat/db;

    invoke-direct {v0}, Lcom/baidu/mobstat/db;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/db;->e:Lcom/baidu/mobstat/db;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/db;->a:Z

    const/high16 v0, 0x42480000    # 50.0f

    .line 15
    iput v0, p0, Lcom/baidu/mobstat/db;->b:F

    const-wide/16 v0, 0x1f4

    .line 17
    iput-wide v0, p0, Lcom/baidu/mobstat/db;->c:J

    return-void
.end method

.method public static a()Lcom/baidu/mobstat/db;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/baidu/mobstat/db;->e:Lcom/baidu/mobstat/db;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "sv"

    .line 43
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 45
    if-nez v0, :cond_2

    .line 72
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/baidu/mobstat/db;->d:Z

    .line 73
    return-void

    .line 38
    :cond_1
    return-void

    :cond_2
    :try_start_1
    const-string/jumbo v3, "close"

    .line 46
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "area"

    .line 47
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "duration"

    .line 48
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 50
    if-nez v3, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/baidu/mobstat/db;->a:Z

    .line 52
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    if-nez v0, :cond_0

    .line 62
    :try_start_2
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mobstat/db;->c:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 50
    goto :goto_1

    .line 54
    :cond_4
    :try_start_3
    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/baidu/mobstat/db;->b:F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 57
    :catch_1
    move-exception v0

    goto :goto_2

    .line 70
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/baidu/mobstat/db;->a:Z

    return v0
.end method

.method public c()F
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/high16 v1, 0x42c80000    # 100.0f

    .line 80
    iget v2, p0, Lcom/baidu/mobstat/db;->b:F

    .line 81
    cmpg-float v3, v2, v0

    if-gez v3, :cond_0

    .line 87
    :goto_0
    div-float/2addr v0, v1

    return v0

    .line 83
    :cond_0
    cmpl-float v0, v2, v1

    if-lez v0, :cond_1

    move v0, v1

    .line 84
    goto :goto_0

    :cond_1
    move v0, v2

    .line 83
    goto :goto_0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/baidu/mobstat/db;->c:J

    return-wide v0
.end method
