.class Lcom/baidu/mobstat/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 955
    iput-object p1, p0, Lcom/baidu/mobstat/bn;->b:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/bn;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 959
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/bn;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mobstat/aj;->b(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/bn;->b:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v0, v2}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;Z)Z

    .line 967
    return-void

    :cond_0
    const/4 v0, 0x2

    .line 960
    :try_start_1
    invoke-static {v0}, Lcom/baidu/mobstat/aj;->a(I)Lcom/baidu/mobstat/aj;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/bn;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/aj;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 964
    :catch_0
    move-exception v0

    goto :goto_0
.end method
