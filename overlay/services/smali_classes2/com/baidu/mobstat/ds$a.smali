.class public Lcom/baidu/mobstat/ds$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Lcom/baidu/mobstat/cg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/eo;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/ec;->a()Lcom/baidu/mobstat/ec;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ec;->b(Landroid/app/Activity;)V

    .line 142
    return-void

    .line 134
    :cond_0
    return-void

    .line 138
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v0

    const-string/jumbo v1, "onActivityPaused"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eo;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lcom/baidu/mobstat/cg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/eo;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/ec;->a()Lcom/baidu/mobstat/ec;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ec;->a(Landroid/app/Activity;)V

    .line 124
    return-void

    .line 116
    :cond_0
    return-void

    .line 120
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v0

    const-string/jumbo v1, "onActivityResumed"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eo;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 146
    return-void
.end method
