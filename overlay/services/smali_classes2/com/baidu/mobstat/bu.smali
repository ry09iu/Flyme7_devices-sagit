.class Lcom/baidu/mobstat/bu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/ref/WeakReference;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/baidu/mobstat/bu;->c:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/bu;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/baidu/mobstat/bu;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 339
    iget-object v0, p0, Lcom/baidu/mobstat/bu;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 340
    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 345
    if-eqz v1, :cond_1

    .line 349
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 352
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Start page view "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lcom/baidu/mobstat/bu;->c:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v1}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v1

    iget-object v4, p0, Lcom/baidu/mobstat/bu;->b:Landroid/content/Context;

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/baidu/mobstat/SessionAnalysis;->onPageStartFrag(Landroid/content/Context;Ljava/lang/String;J)V

    .line 354
    return-void

    .line 341
    :cond_0
    return-void

    .line 346
    :cond_1
    return-void
.end method
