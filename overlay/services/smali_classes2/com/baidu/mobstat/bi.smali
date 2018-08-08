.class Lcom/baidu/mobstat/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/baidu/mobstat/ExtraInfo;

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:J

.field final synthetic g:Z

.field final synthetic h:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/baidu/mobstat/ExtraInfo;Landroid/content/Context;JZ)V
    .locals 1

    .prologue
    .line 777
    iput-object p1, p0, Lcom/baidu/mobstat/bi;->h:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/bi;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mobstat/bi;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/mobstat/bi;->c:Ljava/util/Map;

    iput-object p5, p0, Lcom/baidu/mobstat/bi;->d:Lcom/baidu/mobstat/ExtraInfo;

    iput-object p6, p0, Lcom/baidu/mobstat/bi;->e:Landroid/content/Context;

    iput-wide p7, p0, Lcom/baidu/mobstat/bi;->f:J

    iput-boolean p9, p0, Lcom/baidu/mobstat/bi;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 781
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mobstat/bi;->a:Ljava/lang/String;

    .line 782
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 786
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/bi;->h:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v2}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionStartTime()J

    move-result-wide v18

    .line 788
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "End event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/bi;->h:Lcom/baidu/mobstat/BDStatCore;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobstat/bi;->b:Ljava/lang/String;

    const/4 v5, 0x1

    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/mobstat/bi;->c:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/mobstat/bi;->d:Lcom/baidu/mobstat/ExtraInfo;

    invoke-static/range {v2 .. v9}, Lcom/baidu/mobstat/BDStatCore;->a(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;Lcom/baidu/mobstat/ExtraInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 789
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    .line 791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/bi;->h:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v2}, Lcom/baidu/mobstat/BDStatCore;->c(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/EventAnalysis;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/mobstat/bi;->e:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/mobstat/bi;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/baidu/mobstat/bi;->f:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/mobstat/bi;->d:Lcom/baidu/mobstat/ExtraInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/mobstat/bi;->c:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/mobstat/bi;->g:Z

    move/from16 v16, v0

    move-wide/from16 v8, v18

    move-object v11, v4

    invoke-virtual/range {v6 .. v16}, Lcom/baidu/mobstat/EventAnalysis;->onEventEnd(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V

    .line 792
    return-void

    :cond_0
    const-string/jumbo v4, ""

    goto :goto_0
.end method
