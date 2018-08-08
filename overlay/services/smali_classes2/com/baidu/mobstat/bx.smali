.class Lcom/baidu/mobstat/bx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/mobstat/LogSender;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/baidu/mobstat/bx;->b:Lcom/baidu/mobstat/LogSender;

    iput-object p2, p0, Lcom/baidu/mobstat/bx;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lcom/baidu/mobstat/bx;->b:Lcom/baidu/mobstat/LogSender;

    invoke-static {v0}, Lcom/baidu/mobstat/LogSender;->a(Lcom/baidu/mobstat/LogSender;)Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/bx;->b:Lcom/baidu/mobstat/LogSender;

    invoke-static {}, Lcom/baidu/mobstat/SendStrategyEnum;->values()[Lcom/baidu/mobstat/SendStrategyEnum;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobstat/bx;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/BasicStoreTools;->getSendStrategy(Landroid/content/Context;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/baidu/mobstat/LogSender;->a(Lcom/baidu/mobstat/LogSender;Lcom/baidu/mobstat/SendStrategyEnum;)Lcom/baidu/mobstat/SendStrategyEnum;

    .line 104
    iget-object v0, p0, Lcom/baidu/mobstat/bx;->b:Lcom/baidu/mobstat/LogSender;

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/bx;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/BasicStoreTools;->getSendStrategyTime(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/LogSender;->a(Lcom/baidu/mobstat/LogSender;I)I

    .line 105
    iget-object v0, p0, Lcom/baidu/mobstat/bx;->b:Lcom/baidu/mobstat/LogSender;

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/bx;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/BasicStoreTools;->getOnlyWifiChannel(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/LogSender;->a(Lcom/baidu/mobstat/LogSender;Z)Z

    .line 107
    iget-object v0, p0, Lcom/baidu/mobstat/bx;->b:Lcom/baidu/mobstat/LogSender;

    invoke-static {v0}, Lcom/baidu/mobstat/LogSender;->b(Lcom/baidu/mobstat/LogSender;)Lcom/baidu/mobstat/SendStrategyEnum;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/SendStrategyEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/baidu/mobstat/bx;->b:Lcom/baidu/mobstat/LogSender;

    invoke-static {v0}, Lcom/baidu/mobstat/LogSender;->b(Lcom/baidu/mobstat/LogSender;)Lcom/baidu/mobstat/SendStrategyEnum;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/SendStrategyEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    :goto_1
    iget-object v0, p0, Lcom/baidu/mobstat/bx;->b:Lcom/baidu/mobstat/LogSender;

    invoke-static {v0}, Lcom/baidu/mobstat/LogSender;->d(Lcom/baidu/mobstat/LogSender;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/baidu/mobstat/by;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/by;-><init>(Lcom/baidu/mobstat/bx;)V

    iget-object v2, p0, Lcom/baidu/mobstat/bx;->b:Lcom/baidu/mobstat/LogSender;

    .line 117
    invoke-static {v2}, Lcom/baidu/mobstat/LogSender;->c(Lcom/baidu/mobstat/LogSender;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 113
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/bx;->b:Lcom/baidu/mobstat/LogSender;

    invoke-static {v0}, Lcom/baidu/mobstat/LogSender;->a(Lcom/baidu/mobstat/LogSender;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 100
    iget-object v0, p0, Lcom/baidu/mobstat/bx;->b:Lcom/baidu/mobstat/LogSender;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/LogSender;->a(Lcom/baidu/mobstat/LogSender;Ljava/util/Timer;)Ljava/util/Timer;

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/bx;->b:Lcom/baidu/mobstat/LogSender;

    iget-object v1, p0, Lcom/baidu/mobstat/bx;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/LogSender;->setSendingLogTimer(Landroid/content/Context;)V

    goto :goto_1

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/bx;->b:Lcom/baidu/mobstat/LogSender;

    iget-object v1, p0, Lcom/baidu/mobstat/bx;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/LogSender;->setSendingLogTimer(Landroid/content/Context;)V

    goto :goto_1
.end method
