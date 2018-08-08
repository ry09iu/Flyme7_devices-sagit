.class Lcom/baidu/mobstat/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 903
    iput-object p1, p0, Lcom/baidu/mobstat/bm;->e:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/bm;->a:Landroid/content/Context;

    iput-wide p3, p0, Lcom/baidu/mobstat/bm;->b:J

    iput-object p5, p0, Lcom/baidu/mobstat/bm;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/mobstat/bm;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v11, 0x0

    .line 907
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/bm;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/DataCore;->init(Landroid/content/Context;)V

    .line 909
    iget-object v0, p0, Lcom/baidu/mobstat/bm;->e:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v0}, Lcom/baidu/mobstat/BDStatCore;->c(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/EventAnalysis;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/bm;->a:Landroid/content/Context;

    iget-wide v2, p0, Lcom/baidu/mobstat/bm;->b:J

    iget-object v4, p0, Lcom/baidu/mobstat/bm;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/mobstat/bm;->d:Ljava/lang/String;

    iget-wide v7, p0, Lcom/baidu/mobstat/bm;->b:J

    move-object v10, v9

    invoke-virtual/range {v0 .. v11}, Lcom/baidu/mobstat/EventAnalysis;->onEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V

    .line 911
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/mobstat/bm;->a:Landroid/content/Context;

    iget-wide v8, p0, Lcom/baidu/mobstat/bm;->b:J

    move v7, v11

    move v10, v11

    invoke-virtual/range {v4 .. v10}, Lcom/baidu/mobstat/DataCore;->saveLogData(Landroid/content/Context;ZZJZ)V

    .line 912
    iget-wide v0, p0, Lcom/baidu/mobstat/bm;->b:J

    iget-object v2, p0, Lcom/baidu/mobstat/bm;->e:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v2}, Lcom/baidu/mobstat/BDStatCore;->d(Lcom/baidu/mobstat/BDStatCore;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :goto_0
    if-nez v6, :cond_0

    .line 913
    iget-object v0, p0, Lcom/baidu/mobstat/bm;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mobstat/ff;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 918
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v6, v11

    .line 912
    goto :goto_0

    .line 914
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/LogSender;->instance()Lcom/baidu/mobstat/LogSender;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/bm;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/LogSender;->onSend(Landroid/content/Context;)V

    .line 915
    iget-object v0, p0, Lcom/baidu/mobstat/bm;->e:Lcom/baidu/mobstat/BDStatCore;

    iget-wide v2, p0, Lcom/baidu/mobstat/bm;->b:J

    invoke-static {v0, v2, v3}, Lcom/baidu/mobstat/BDStatCore;->a(Lcom/baidu/mobstat/BDStatCore;J)J

    goto :goto_1
.end method
