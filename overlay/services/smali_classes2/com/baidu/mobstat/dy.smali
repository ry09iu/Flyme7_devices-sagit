.class Lcom/baidu/mobstat/dy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/mobstat/cx;

.field final synthetic c:Lcom/baidu/mobstat/dt;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/dt;Landroid/content/Context;Lcom/baidu/mobstat/cx;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/baidu/mobstat/dy;->c:Lcom/baidu/mobstat/dt;

    iput-object p2, p0, Lcom/baidu/mobstat/dy;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mobstat/dy;->b:Lcom/baidu/mobstat/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 550
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/BDStatCore;->getSessionStartTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 551
    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 552
    return-void

    .line 551
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/dy;->c:Lcom/baidu/mobstat/dt;

    iget-object v1, p0, Lcom/baidu/mobstat/dy;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mobstat/dy;->b:Lcom/baidu/mobstat/cx;

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/dt;->a(Lcom/baidu/mobstat/dt;Landroid/content/Context;Lcom/baidu/mobstat/cx;)V

    .line 556
    return-void
.end method
