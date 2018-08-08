.class public Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/AutoTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyActivityLifeCallback"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;->a:I

    .line 19
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    iget v1, p0, Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 40
    iget v1, p0, Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;->a:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 43
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/BDStatCore;->autoTrackSessionEndTime(Landroid/content/Context;)V

    goto :goto_0

    .line 41
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/BDStatCore;->doSendLogCheck(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 23
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 25
    iget v1, p0, Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 28
    iget v0, p0, Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 31
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/BDStatCore;->autoTrackSessionStartTime(Landroid/content/Context;)V

    goto :goto_0

    .line 29
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/BDStatCore;->cancelSendLogCheck()V

    goto :goto_0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method
