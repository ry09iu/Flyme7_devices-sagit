.class public Lcom/baidu/mobstat/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/baidu/mobstat/i;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;)Lcom/baidu/mobstat/i;
    .locals 5

    .prologue
    const-class v2, Lcom/baidu/mobstat/ap;

    monitor-enter v2

    .line 26
    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    const-string/jumbo v1, "getBPStretegyController begin"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/baidu/mobstat/ap;->a:Lcom/baidu/mobstat/i;

    .line 32
    if-eqz v0, :cond_1

    .line 47
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 52
    :goto_1
    sput-object v0, Lcom/baidu/mobstat/ap;->a:Lcom/baidu/mobstat/i;

    .line 55
    invoke-static {p0, v0}, Lcom/baidu/mobstat/as;->a(Landroid/content/Context;Lcom/baidu/mobstat/i;)V

    .line 58
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    const-string/jumbo v3, "getBPStretegyController end"

    invoke-virtual {v1, v3}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 59
    return-object v0

    :cond_1
    :try_start_1
    const-string/jumbo v1, "com.baidu.bottom.remote.BPStretegyController2"

    .line 34
    invoke-static {p0, v1}, Lcom/baidu/mobstat/as;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 37
    new-instance v1, Lcom/baidu/mobstat/ar;

    invoke-direct {v1, v3}, Lcom/baidu/mobstat/ar;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :try_start_2
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    const-string/jumbo v3, "Get BPStretegyController load remote class v2"

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 42
    :catch_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 41
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 48
    :cond_2
    new-instance v0, Lcom/baidu/mobstat/aq;

    invoke-direct {v0}, Lcom/baidu/mobstat/aq;-><init>()V

    .line 49
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    const-string/jumbo v3, "Get BPStretegyController load local class"

    invoke-virtual {v1, v3}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 42
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static declared-synchronized a()V
    .locals 2

    .prologue
    const-class v0, Lcom/baidu/mobstat/ap;

    monitor-enter v0

    const/4 v1, 0x0

    .line 63
    :try_start_0
    sput-object v1, Lcom/baidu/mobstat/ap;->a:Lcom/baidu/mobstat/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 64
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
