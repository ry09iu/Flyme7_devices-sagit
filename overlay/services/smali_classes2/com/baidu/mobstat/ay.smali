.class Lcom/baidu/mobstat/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/ActivityLifeObserver;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/ActivityLifeObserver;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/baidu/mobstat/ay;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/baidu/mobstat/ay;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ay;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    monitor-exit v1

    .line 93
    return-void

    .line 89
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 90
    invoke-interface {v0, p1, p2}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/baidu/mobstat/ay;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ay;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    monitor-exit v1

    .line 129
    return-void

    .line 125
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 126
    invoke-interface {v0, p1}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivityDestroyed(Landroid/app/Activity;)V

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/baidu/mobstat/ay;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ay;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    monitor-exit v1

    .line 84
    return-void

    .line 80
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 81
    invoke-interface {v0, p1}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivityPaused(Landroid/app/Activity;)V

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/baidu/mobstat/ay;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ay;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    monitor-exit v1

    .line 75
    return-void

    .line 71
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 72
    invoke-interface {v0, p1}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivityResumed(Landroid/app/Activity;)V

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/baidu/mobstat/ay;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ay;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    monitor-exit v1

    .line 120
    return-void

    .line 116
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 117
    invoke-interface {v0, p1, p2}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/baidu/mobstat/ay;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ay;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    monitor-exit v1

    .line 102
    return-void

    .line 98
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 99
    invoke-interface {v0, p1}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivityStarted(Landroid/app/Activity;)V

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/baidu/mobstat/ay;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ay;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    monitor-exit v1

    .line 111
    return-void

    .line 107
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    .line 108
    invoke-interface {v0, p1}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivityStopped(Landroid/app/Activity;)V

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
