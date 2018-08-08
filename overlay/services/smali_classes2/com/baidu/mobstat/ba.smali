.class Lcom/baidu/mobstat/ba;
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
    .line 380
    iput-object p1, p0, Lcom/baidu/mobstat/ba;->c:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/ba;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/baidu/mobstat/ba;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 384
    iget-object v0, p0, Lcom/baidu/mobstat/ba;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 385
    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 390
    if-eqz v1, :cond_1

    .line 394
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 397
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

    .line 398
    iget-object v1, p0, Lcom/baidu/mobstat/ba;->c:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v1}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v1

    iget-object v4, p0, Lcom/baidu/mobstat/ba;->b:Landroid/content/Context;

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/baidu/mobstat/SessionAnalysis;->onPageStartFrag(Landroid/content/Context;Ljava/lang/String;J)V

    .line 399
    return-void

    .line 386
    :cond_0
    return-void

    .line 391
    :cond_1
    return-void
.end method
