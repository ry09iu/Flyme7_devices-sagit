.class Lcom/baidu/mobstat/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/i;


# instance fields
.field private a:Lcom/baidu/mobstat/au;

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/baidu/mobstat/au;->a:Lcom/baidu/mobstat/au;

    iput-object v0, p0, Lcom/baidu/mobstat/ar;->a:Lcom/baidu/mobstat/au;

    .line 31
    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "com.baidu.bottom.remote.BPStretegyController2"

    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iput-object p1, p0, Lcom/baidu/mobstat/ar;->b:Ljava/lang/Object;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ar;->c:Ljava/lang/Class;

    .line 42
    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "proxy is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "class isn\'t com.baidu.bottom.remote.BPStretegyController2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/baidu/mobstat/ar;->c:Ljava/lang/Class;

    invoke-virtual {v0, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/baidu/mobstat/ar;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;J)V
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    .line 86
    new-array v1, v2, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    :try_start_0
    const-string/jumbo v2, "setLastUpdateTime"

    .line 89
    invoke-direct {p0, v0, v2, v1}, Lcom/baidu/mobstat/ar;->a([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 91
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    .line 92
    iget-object v0, p0, Lcom/baidu/mobstat/ar;->a:Lcom/baidu/mobstat/au;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/mobstat/au;->a(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v3

    aput-object p2, v0, v4

    .line 60
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v4

    :try_start_0
    const-string/jumbo v2, "saveRemoteConfig2"

    .line 63
    invoke-direct {p0, v0, v2, v1}, Lcom/baidu/mobstat/ar;->a([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 65
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    .line 66
    iget-object v0, p0, Lcom/baidu/mobstat/ar;->a:Lcom/baidu/mobstat/au;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/au;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v3

    aput-object p2, v0, v4

    .line 47
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    const-class v2, Lorg/json/JSONObject;

    aput-object v2, v1, v4

    :try_start_0
    const-string/jumbo v2, "startDataAnynalyze"

    .line 50
    invoke-direct {p0, v0, v2, v1}, Lcom/baidu/mobstat/ar;->a([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 52
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    .line 53
    iget-object v0, p0, Lcom/baidu/mobstat/ar;->a:Lcom/baidu/mobstat/au;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/au;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 111
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 112
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    :try_start_0
    const-string/jumbo v2, "needUpdate"

    .line 115
    invoke-direct {p0, v0, v2, v1}, Lcom/baidu/mobstat/ar;->a([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 117
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    .line 118
    iget-object v0, p0, Lcom/baidu/mobstat/ar;->a:Lcom/baidu/mobstat/au;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/au;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v3

    aput-object p2, v0, v4

    .line 73
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v4

    :try_start_0
    const-string/jumbo v2, "saveRemoteSign"

    .line 76
    invoke-direct {p0, v0, v2, v1}, Lcom/baidu/mobstat/ar;->a([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 78
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    .line 79
    iget-object v0, p0, Lcom/baidu/mobstat/ar;->a:Lcom/baidu/mobstat/au;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/au;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 124
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 125
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    :try_start_0
    const-string/jumbo v2, "canStartService"

    .line 128
    invoke-direct {p0, v0, v2, v1}, Lcom/baidu/mobstat/ar;->a([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 130
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    .line 131
    iget-object v0, p0, Lcom/baidu/mobstat/ar;->a:Lcom/baidu/mobstat/au;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/au;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
