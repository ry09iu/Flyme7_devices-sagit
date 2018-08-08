.class Lcom/baidu/mobstat/az;
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
    .line 100
    iput-object p1, p0, Lcom/baidu/mobstat/az;->b:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/az;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/baidu/mobstat/az;->b:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v0}, Lcom/baidu/mobstat/BDStatCore;->a(Lcom/baidu/mobstat/BDStatCore;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/baidu/mobstat/az;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mobstat/PrefOperate;->loadMetaDataConfig(Landroid/content/Context;)V

    .line 110
    iget-object v0, p0, Lcom/baidu/mobstat/az;->b:Lcom/baidu/mobstat/BDStatCore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/BDStatCore;->a(Lcom/baidu/mobstat/BDStatCore;Z)Z

    .line 111
    return-void

    .line 105
    :cond_0
    return-void
.end method
