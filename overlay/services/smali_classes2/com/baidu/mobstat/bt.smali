.class Lcom/baidu/mobstat/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Z

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/ref/WeakReference;ZLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/baidu/mobstat/bt;->d:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/bt;->a:Ljava/lang/ref/WeakReference;

    iput-boolean p3, p0, Lcom/baidu/mobstat/bt;->b:Z

    iput-object p4, p0, Lcom/baidu/mobstat/bt;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 292
    iget-object v0, p0, Lcom/baidu/mobstat/bt;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 293
    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 298
    if-eqz v1, :cond_1

    .line 302
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 305
    iget-boolean v0, p0, Lcom/baidu/mobstat/bt;->b:Z

    if-eqz v0, :cond_2

    .line 308
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/bt;->d:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v0}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/bt;->c:Landroid/content/Context;

    iget-boolean v6, p0, Lcom/baidu/mobstat/bt;->b:Z

    invoke-virtual/range {v1 .. v6}, Lcom/baidu/mobstat/SessionAnalysis;->onPageStartAct(Landroid/content/Context;Ljava/lang/String;JZ)V

    .line 309
    return-void

    .line 294
    :cond_0
    return-void

    .line 299
    :cond_1
    return-void

    .line 306
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Start page view "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
