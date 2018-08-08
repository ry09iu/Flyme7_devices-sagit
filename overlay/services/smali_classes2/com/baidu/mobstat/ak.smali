.class enum Lcom/baidu/mobstat/ak;
.super Lcom/baidu/mobstat/aj;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/mobstat/aj;-><init>(Ljava/lang/String;IILcom/baidu/mobstat/ak;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 19
    invoke-static {p1}, Lcom/baidu/mobstat/ap;->a(Landroid/content/Context;)Lcom/baidu/mobstat/i;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/mobstat/i;->b(Landroid/content/Context;)Z

    move-result v0

    .line 20
    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "com.baidu.bottom.service.BottomService"

    .line 25
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 26
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v0, "SDK_PRODUCT_LY"

    const-string/jumbo v2, "MS"

    .line 27
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 21
    :cond_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 31
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
