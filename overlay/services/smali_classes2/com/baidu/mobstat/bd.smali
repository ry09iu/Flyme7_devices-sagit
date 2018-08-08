.class Lcom/baidu/mobstat/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Landroid/app/Fragment;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/ref/WeakReference;Landroid/app/Fragment;Landroid/app/Activity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/baidu/mobstat/bd;->e:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/bd;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/baidu/mobstat/bd;->b:Landroid/app/Fragment;

    iput-object p4, p0, Lcom/baidu/mobstat/bd;->c:Landroid/app/Activity;

    iput-object p5, p0, Lcom/baidu/mobstat/bd;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 517
    iget-object v0, p0, Lcom/baidu/mobstat/bd;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 518
    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 523
    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/baidu/mobstat/bd;->b:Landroid/app/Fragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 528
    iget-object v0, p0, Lcom/baidu/mobstat/bd;->b:Landroid/app/Fragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 530
    iget-object v0, p0, Lcom/baidu/mobstat/bd;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 531
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 533
    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "End page view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    .line 534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 535
    iget-object v0, p0, Lcom/baidu/mobstat/bd;->e:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v0}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/bd;->d:Landroid/content/Context;

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/mobstat/SessionAnalysis;->onPageEndFrag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 536
    return-void

    .line 519
    :cond_0
    return-void

    .line 524
    :cond_1
    return-void

    :cond_2
    const-string/jumbo v5, ""

    goto :goto_0
.end method
