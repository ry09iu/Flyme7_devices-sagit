.class Lcom/baidu/mobstat/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/baidu/mobstat/ag;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/ag;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/baidu/mobstat/ah;->c:Lcom/baidu/mobstat/ag;

    iput-object p2, p0, Lcom/baidu/mobstat/ah;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mobstat/ah;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ah;->c:Lcom/baidu/mobstat/ag;

    iget-object v1, p0, Lcom/baidu/mobstat/ah;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/ag;->a(Lcom/baidu/mobstat/ag;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/baidu/mobstat/ah;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/baidu/mobstat/ah;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/baidu/mobstat/ah;->c:Lcom/baidu/mobstat/ag;

    invoke-static {v1, v0}, Lcom/baidu/mobstat/ag;->a(Lcom/baidu/mobstat/ag;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 70
    :cond_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 76
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
