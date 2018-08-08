.class public Lcom/baidu/mobstat/ds;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/ds$a;,
        Lcom/baidu/mobstat/ds$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/baidu/mobstat/cg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/baidu/mobstat/dt;->a()Lcom/baidu/mobstat/dt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/dt;->a(Landroid/content/Context;)V

    .line 73
    return-void

    .line 69
    :cond_0
    return-void
.end method

.method public static a(Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;)V
    .locals 0

    .prologue
    .line 41
    invoke-static {p0}, Lcom/baidu/mobstat/da;->a(Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;)V

    .line 42
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/baidu/mobstat/cg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Lcom/baidu/mobstat/ec;->a()Lcom/baidu/mobstat/ec;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/ec;->a(Ljava/lang/String;)V

    .line 32
    return-void

    .line 28
    :cond_0
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/baidu/mobstat/cg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/baidu/mobstat/dt;->a()Lcom/baidu/mobstat/dt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/dt;->a(Lorg/json/JSONObject;)V

    .line 55
    return-void

    .line 51
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/baidu/mobstat/cg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lcom/baidu/mobstat/dt;->a()Lcom/baidu/mobstat/dt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/dt;->b(Landroid/content/Context;)V

    .line 91
    return-void

    .line 87
    :cond_0
    return-void
.end method
