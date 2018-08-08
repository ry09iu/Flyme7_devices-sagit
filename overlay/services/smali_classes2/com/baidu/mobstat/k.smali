.class public Lcom/baidu/mobstat/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 26
    sget-object v0, Lcom/baidu/mobstat/j;->a:Lcom/baidu/mobstat/j;

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/j;->a(Landroid/content/Context;)V

    .line 28
    invoke-static {p0}, Lcom/baidu/mobstat/at;->a(Landroid/content/Context;)Lcom/baidu/mobstat/at;

    move-result-object v0

    .line 29
    sget-object v1, Lcom/baidu/mobstat/p;->a:Lcom/baidu/mobstat/p;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mobstat/at;->a(Lcom/baidu/mobstat/p;J)V

    .line 30
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 38
    sget-object v0, Lcom/baidu/mobstat/m;->a:Lcom/baidu/mobstat/m;

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/mobstat/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {p0}, Lcom/baidu/mobstat/at;->a(Landroid/content/Context;)Lcom/baidu/mobstat/at;

    move-result-object v0

    .line 41
    sget-object v1, Lcom/baidu/mobstat/p;->f:Lcom/baidu/mobstat/p;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mobstat/at;->a(Lcom/baidu/mobstat/p;J)V

    .line 42
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    .line 50
    sget-object v0, Lcom/baidu/mobstat/n;->a:Lcom/baidu/mobstat/n;

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/n;->a(Landroid/content/Context;Z)V

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 53
    invoke-static {p0}, Lcom/baidu/mobstat/at;->a(Landroid/content/Context;)Lcom/baidu/mobstat/at;

    move-result-object v1

    .line 54
    if-nez p1, :cond_0

    sget-object v0, Lcom/baidu/mobstat/p;->b:Lcom/baidu/mobstat/p;

    :goto_0
    invoke-virtual {v1, v0, v2, v3}, Lcom/baidu/mobstat/at;->a(Lcom/baidu/mobstat/p;J)V

    .line 55
    return-void

    .line 54
    :cond_0
    sget-object v0, Lcom/baidu/mobstat/p;->c:Lcom/baidu/mobstat/p;

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 76
    sget-object v0, Lcom/baidu/mobstat/l;->a:Lcom/baidu/mobstat/l;

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/l;->a(Landroid/content/Context;)V

    .line 78
    invoke-static {p0}, Lcom/baidu/mobstat/at;->a(Landroid/content/Context;)Lcom/baidu/mobstat/at;

    move-result-object v0

    .line 79
    sget-object v1, Lcom/baidu/mobstat/p;->g:Lcom/baidu/mobstat/p;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mobstat/at;->a(Lcom/baidu/mobstat/p;J)V

    .line 80
    return-void
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    .line 63
    sget-object v0, Lcom/baidu/mobstat/o;->a:Lcom/baidu/mobstat/o;

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/o;->a(Landroid/content/Context;Z)V

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 66
    invoke-static {p0}, Lcom/baidu/mobstat/at;->a(Landroid/content/Context;)Lcom/baidu/mobstat/at;

    move-result-object v1

    .line 67
    if-nez p1, :cond_0

    sget-object v0, Lcom/baidu/mobstat/p;->e:Lcom/baidu/mobstat/p;

    :goto_0
    invoke-virtual {v1, v0, v2, v3}, Lcom/baidu/mobstat/at;->a(Lcom/baidu/mobstat/p;J)V

    .line 68
    return-void

    .line 67
    :cond_0
    sget-object v0, Lcom/baidu/mobstat/p;->d:Lcom/baidu/mobstat/p;

    goto :goto_0
.end method
