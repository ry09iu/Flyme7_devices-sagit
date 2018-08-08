.class public Lcom/baidu/mobstat/da;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;Z)V
    .locals 1

    .prologue
    .line 28
    if-eqz p1, :cond_0

    .line 32
    invoke-static {}, Lcom/baidu/mobstat/db;->a()Lcom/baidu/mobstat/db;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/db;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 36
    invoke-static {}, Lcom/baidu/mobstat/dc;->a()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 40
    invoke-static {}, Lcom/baidu/mobstat/dc;->a()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/dc;->a(Landroid/app/Activity;)V

    .line 41
    return-void

    .line 29
    :cond_0
    return-void

    .line 33
    :cond_1
    return-void

    .line 37
    :cond_2
    return-void
.end method

.method public static a(Landroid/view/KeyEvent;)V
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lcom/baidu/mobstat/db;->a()Lcom/baidu/mobstat/db;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/db;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-static {}, Lcom/baidu/mobstat/dc;->a()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    invoke-static {}, Lcom/baidu/mobstat/dc;->a()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/dc;->a(Landroid/view/KeyEvent;)V

    .line 125
    return-void

    .line 117
    :cond_0
    return-void

    .line 121
    :cond_1
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/baidu/mobstat/db;->a()Lcom/baidu/mobstat/db;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/db;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-static {}, Lcom/baidu/mobstat/dc;->a()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    invoke-static {}, Lcom/baidu/mobstat/dc;->a()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/dc;->a(Landroid/view/View;Landroid/app/Activity;)V

    .line 109
    return-void

    .line 101
    :cond_0
    return-void

    .line 105
    :cond_1
    return-void
.end method

.method public static a(Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;)V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/baidu/mobstat/dc;->a()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/dc;->a(Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;)V

    .line 18
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/baidu/mobstat/dc;->a()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    invoke-static {}, Lcom/baidu/mobstat/dc;->a()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    .line 143
    return-void

    .line 139
    :cond_0
    return-void
.end method

.method public static b(Landroid/app/Activity;Z)V
    .locals 1

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 55
    invoke-static {}, Lcom/baidu/mobstat/db;->a()Lcom/baidu/mobstat/db;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/db;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    invoke-static {}, Lcom/baidu/mobstat/dc;->a()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 63
    invoke-static {}, Lcom/baidu/mobstat/dc;->a()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/dc;->b(Landroid/app/Activity;)V

    .line 64
    return-void

    .line 52
    :cond_0
    return-void

    .line 56
    :cond_1
    return-void

    .line 60
    :cond_2
    return-void
.end method

.method public static c(Landroid/app/Activity;Z)V
    .locals 1

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 78
    invoke-static {}, Lcom/baidu/mobstat/db;->a()Lcom/baidu/mobstat/db;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/db;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    invoke-static {}, Lcom/baidu/mobstat/dc;->a()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    invoke-static {}, Lcom/baidu/mobstat/dc;->a()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/dc;->c(Landroid/app/Activity;)V

    .line 87
    return-void

    .line 75
    :cond_0
    return-void

    .line 79
    :cond_1
    return-void

    .line 83
    :cond_2
    return-void
.end method
