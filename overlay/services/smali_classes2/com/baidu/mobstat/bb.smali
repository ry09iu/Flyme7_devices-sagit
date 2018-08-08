.class Lcom/baidu/mobstat/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Z

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/baidu/mobstat/ExtraInfo;

.field final synthetic e:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/ref/WeakReference;ZLandroid/content/Context;Lcom/baidu/mobstat/ExtraInfo;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/baidu/mobstat/bb;->e:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/bb;->a:Ljava/lang/ref/WeakReference;

    iput-boolean p3, p0, Lcom/baidu/mobstat/bb;->b:Z

    iput-object p4, p0, Lcom/baidu/mobstat/bb;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/baidu/mobstat/bb;->d:Lcom/baidu/mobstat/ExtraInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 421
    iget-object v0, p0, Lcom/baidu/mobstat/bb;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 422
    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 427
    if-eqz v1, :cond_1

    .line 431
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 432
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 434
    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 435
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 437
    :goto_0
    iget-boolean v0, p0, Lcom/baidu/mobstat/bb;->b:Z

    if-eqz v0, :cond_3

    .line 440
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 441
    iget-object v0, p0, Lcom/baidu/mobstat/bb;->e:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v0}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/bb;->c:Landroid/content/Context;

    iget-boolean v8, p0, Lcom/baidu/mobstat/bb;->b:Z

    iget-object v9, p0, Lcom/baidu/mobstat/bb;->d:Lcom/baidu/mobstat/ExtraInfo;

    invoke-virtual/range {v1 .. v9}, Lcom/baidu/mobstat/SessionAnalysis;->onPageEndAct(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLcom/baidu/mobstat/ExtraInfo;)V

    .line 442
    return-void

    .line 423
    :cond_0
    return-void

    .line 428
    :cond_1
    return-void

    :cond_2
    const-string/jumbo v5, ""

    goto :goto_0

    .line 438
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "End page view "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
