.class Lcom/baidu/mobstat/ee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/ec;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/ec;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/baidu/mobstat/ee;->a:Lcom/baidu/mobstat/ec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 236
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->a:Lcom/baidu/mobstat/ec;

    invoke-static {v0}, Lcom/baidu/mobstat/ec;->b(Lcom/baidu/mobstat/ec;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->a:Lcom/baidu/mobstat/ec;

    .line 241
    invoke-static {v0}, Lcom/baidu/mobstat/ec;->c(Lcom/baidu/mobstat/ec;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/ee;->a:Lcom/baidu/mobstat/ec;

    invoke-static {v1}, Lcom/baidu/mobstat/ec;->d(Lcom/baidu/mobstat/ec;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3, v2}, Lcom/baidu/mobstat/en;->a(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v0

    .line 242
    iget-object v1, p0, Lcom/baidu/mobstat/ee;->a:Lcom/baidu/mobstat/ec;

    invoke-static {v1, v3}, Lcom/baidu/mobstat/ec;->a(Lcom/baidu/mobstat/ec;Z)Z

    .line 244
    if-nez v0, :cond_1

    .line 247
    :goto_0
    return-void

    .line 237
    :cond_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/ee;->a:Lcom/baidu/mobstat/ec;

    iget-object v1, p0, Lcom/baidu/mobstat/ee;->a:Lcom/baidu/mobstat/ec;

    invoke-static {v1}, Lcom/baidu/mobstat/ec;->c(Lcom/baidu/mobstat/ec;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "mtj_autoTracker.js"

    invoke-static {v1, v2}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/ec;->a(Lcom/baidu/mobstat/ec;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
