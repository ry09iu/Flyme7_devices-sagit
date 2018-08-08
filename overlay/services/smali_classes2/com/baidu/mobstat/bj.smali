.class Lcom/baidu/mobstat/bj;
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

.field final synthetic f:J

.field final synthetic g:Ljava/util/Map;

.field final synthetic h:Lcom/baidu/mobstat/ExtraInfo;

.field final synthetic i:Z

.field final synthetic j:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Landroid/content/Context;JZLjava/lang/String;JLjava/util/Map;Lcom/baidu/mobstat/ExtraInfo;Z)V
    .locals 0

    .prologue
    .line 820
    iput-object p1, p0, Lcom/baidu/mobstat/bj;->j:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/bj;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mobstat/bj;->b:Landroid/content/Context;

    iput-wide p4, p0, Lcom/baidu/mobstat/bj;->c:J

    iput-boolean p6, p0, Lcom/baidu/mobstat/bj;->d:Z

    iput-object p7, p0, Lcom/baidu/mobstat/bj;->e:Ljava/lang/String;

    iput-wide p8, p0, Lcom/baidu/mobstat/bj;->f:J

    iput-object p10, p0, Lcom/baidu/mobstat/bj;->g:Ljava/util/Map;

    iput-object p11, p0, Lcom/baidu/mobstat/bj;->h:Lcom/baidu/mobstat/ExtraInfo;

    iput-boolean p12, p0, Lcom/baidu/mobstat/bj;->i:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 824
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mobstat/bj;->a:Ljava/lang/String;

    .line 825
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 829
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/bj;->j:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v2}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobstat/bj;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/baidu/mobstat/bj;->c:J

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/baidu/mobstat/bj;->d:Z

    invoke-virtual {v2, v3, v6, v7, v5}, Lcom/baidu/mobstat/SessionAnalysis;->onSessionStart(Landroid/content/Context;JZ)V

    .line 831
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Put event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/bj;->j:Lcom/baidu/mobstat/BDStatCore;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobstat/bj;->e:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/baidu/mobstat/bj;->f:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/mobstat/bj;->g:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/mobstat/bj;->h:Lcom/baidu/mobstat/ExtraInfo;

    invoke-static/range {v2 .. v9}, Lcom/baidu/mobstat/BDStatCore;->a(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;Lcom/baidu/mobstat/ExtraInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 832
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    .line 834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/bj;->j:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v2}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionStartTime()J

    move-result-wide v8

    .line 835
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/bj;->j:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v2}, Lcom/baidu/mobstat/BDStatCore;->c(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/EventAnalysis;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/mobstat/bj;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/mobstat/bj;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/baidu/mobstat/bj;->c:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/baidu/mobstat/bj;->f:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/mobstat/bj;->h:Lcom/baidu/mobstat/ExtraInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/mobstat/bj;->g:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/mobstat/bj;->i:Z

    move/from16 v18, v0

    move-object v11, v4

    invoke-virtual/range {v6 .. v18}, Lcom/baidu/mobstat/EventAnalysis;->onEventDuration(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JJLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V

    .line 836
    return-void

    :cond_0
    const-string/jumbo v4, ""

    goto/16 :goto_0
.end method
