.class Lcom/baidu/mobstat/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:J

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Landroid/content/Context;JZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 743
    iput-object p1, p0, Lcom/baidu/mobstat/bh;->f:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/bh;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mobstat/bh;->b:Landroid/content/Context;

    iput-wide p4, p0, Lcom/baidu/mobstat/bh;->c:J

    iput-boolean p6, p0, Lcom/baidu/mobstat/bh;->d:Z

    iput-object p7, p0, Lcom/baidu/mobstat/bh;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 747
    iget-object v2, p0, Lcom/baidu/mobstat/bh;->a:Ljava/lang/String;

    .line 748
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 752
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/bh;->f:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v0}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/bh;->b:Landroid/content/Context;

    iget-wide v4, p0, Lcom/baidu/mobstat/bh;->c:J

    iget-boolean v3, p0, Lcom/baidu/mobstat/bh;->d:Z

    invoke-virtual {v0, v1, v4, v5, v3}, Lcom/baidu/mobstat/SessionAnalysis;->onSessionStart(Landroid/content/Context;JZ)V

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Start event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v0, p0, Lcom/baidu/mobstat/bh;->f:Lcom/baidu/mobstat/BDStatCore;

    iget-object v1, p0, Lcom/baidu/mobstat/bh;->e:Ljava/lang/String;

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    move-object v7, v6

    invoke-static/range {v0 .. v7}, Lcom/baidu/mobstat/BDStatCore;->a(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;Lcom/baidu/mobstat/ExtraInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 755
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/baidu/mobstat/bh;->f:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v0}, Lcom/baidu/mobstat/BDStatCore;->c(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/EventAnalysis;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/mobstat/bh;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/baidu/mobstat/bh;->e:Ljava/lang/String;

    iget-wide v8, p0, Lcom/baidu/mobstat/bh;->c:J

    move-object v7, v2

    invoke-virtual/range {v4 .. v9}, Lcom/baidu/mobstat/EventAnalysis;->onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 758
    return-void

    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0
.end method
