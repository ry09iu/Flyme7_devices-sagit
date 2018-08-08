.class public Lcom/baidu/mobstat/ao;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/baidu/mobstat/fe;

.field final synthetic d:Lcom/baidu/bottom/service/BottomReceiver;


# direct methods
.method public constructor <init>(Lcom/baidu/bottom/service/BottomReceiver;Landroid/content/Context;Landroid/content/Intent;Lcom/baidu/mobstat/fe;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/baidu/mobstat/ao;->d:Lcom/baidu/bottom/service/BottomReceiver;

    iput-object p2, p0, Lcom/baidu/mobstat/ao;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mobstat/ao;->b:Landroid/content/Intent;

    iput-object p4, p0, Lcom/baidu/mobstat/ao;->c:Lcom/baidu/mobstat/fe;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ao;->d:Lcom/baidu/bottom/service/BottomReceiver;

    iget-object v1, p0, Lcom/baidu/mobstat/ao;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mobstat/ao;->b:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/baidu/bottom/service/BottomReceiver;->a(Lcom/baidu/bottom/service/BottomReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 50
    iget-object v0, p0, Lcom/baidu/mobstat/ao;->d:Lcom/baidu/bottom/service/BottomReceiver;

    iget-object v1, p0, Lcom/baidu/mobstat/ao;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mobstat/ao;->b:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/baidu/bottom/service/BottomReceiver;->b(Lcom/baidu/bottom/service/BottomReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 54
    invoke-static {}, Lcom/baidu/bottom/service/BottomReceiver;->a()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/16 v4, 0x7530

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 55
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    const-string/jumbo v1, "No need to handle receiver due to time strategy"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget-object v0, p0, Lcom/baidu/mobstat/ao;->c:Lcom/baidu/mobstat/fe;

    invoke-virtual {v0}, Lcom/baidu/mobstat/fe;->b()V

    .line 66
    invoke-static {v6}, Lcom/baidu/bottom/service/BottomReceiver;->a(Lcom/baidu/mobstat/fe;)Lcom/baidu/mobstat/fe;

    .line 56
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 59
    :cond_1
    :try_start_1
    invoke-static {v2, v3}, Lcom/baidu/bottom/service/BottomReceiver;->a(J)J

    .line 61
    sget-object v0, Lcom/baidu/mobstat/aj;->c:Lcom/baidu/mobstat/aj;

    iget-object v1, p0, Lcom/baidu/mobstat/ao;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/aj;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    iget-object v0, p0, Lcom/baidu/mobstat/ao;->c:Lcom/baidu/mobstat/fe;

    invoke-virtual {v0}, Lcom/baidu/mobstat/fe;->b()V

    .line 66
    invoke-static {v6}, Lcom/baidu/bottom/service/BottomReceiver;->a(Lcom/baidu/mobstat/fe;)Lcom/baidu/mobstat/fe;

    .line 68
    :goto_1
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 65
    iget-object v0, p0, Lcom/baidu/mobstat/ao;->c:Lcom/baidu/mobstat/fe;

    invoke-virtual {v0}, Lcom/baidu/mobstat/fe;->b()V

    .line 66
    invoke-static {v6}, Lcom/baidu/bottom/service/BottomReceiver;->a(Lcom/baidu/mobstat/fe;)Lcom/baidu/mobstat/fe;

    goto :goto_1

    .line 67
    :catchall_0
    move-exception v0

    .line 65
    iget-object v1, p0, Lcom/baidu/mobstat/ao;->c:Lcom/baidu/mobstat/fe;

    invoke-virtual {v1}, Lcom/baidu/mobstat/fe;->b()V

    .line 66
    invoke-static {v6}, Lcom/baidu/bottom/service/BottomReceiver;->a(Lcom/baidu/mobstat/fe;)Lcom/baidu/mobstat/fe;

    .line 67
    throw v0
.end method
