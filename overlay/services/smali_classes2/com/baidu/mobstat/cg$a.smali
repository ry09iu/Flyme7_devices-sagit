.class public Lcom/baidu/mobstat/cg$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/cg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/ei;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/ct;->a()Lcom/baidu/mobstat/ct;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ct;->b(Landroid/app/Activity;)V

    .line 89
    return-void

    .line 85
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    const-string/jumbo v1, "onActivityPaused"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ei;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 71
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/ei;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/ct;->a()Lcom/baidu/mobstat/ct;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ct;->a(Landroid/app/Activity;)V

    .line 76
    return-void

    .line 72
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    const-string/jumbo v1, "onActivityResumed"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ei;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method
