.class Lcom/baidu/mobstat/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lcom/baidu/mobstat/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/baidu/mobstat/j;

    invoke-direct {v0}, Lcom/baidu/mobstat/j;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/j;->a:Lcom/baidu/mobstat/j;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    .prologue
    monitor-enter p0

    .line 28
    :try_start_0
    invoke-static {p1}, Lcom/baidu/mobstat/ff;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit p0

    .line 32
    return-void

    .line 30
    :cond_0
    :try_start_1
    sget-object v1, Lcom/baidu/mobstat/t;->a:Lcom/baidu/mobstat/t;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/baidu/mobstat/t;->a(JLjava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
