.class Lcom/baidu/mobstat/be;
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

.field final synthetic f:I

.field final synthetic g:Ljava/util/Map;

.field final synthetic h:Lcom/baidu/mobstat/ExtraInfo;

.field final synthetic i:Z

.field final synthetic j:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Landroid/content/Context;JZLjava/lang/String;ILjava/util/Map;Lcom/baidu/mobstat/ExtraInfo;Z)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/baidu/mobstat/be;->j:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/be;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mobstat/be;->b:Landroid/content/Context;

    iput-wide p4, p0, Lcom/baidu/mobstat/be;->c:J

    iput-boolean p6, p0, Lcom/baidu/mobstat/be;->d:Z

    iput-object p7, p0, Lcom/baidu/mobstat/be;->e:Ljava/lang/String;

    iput p8, p0, Lcom/baidu/mobstat/be;->f:I

    iput-object p9, p0, Lcom/baidu/mobstat/be;->g:Ljava/util/Map;

    iput-object p10, p0, Lcom/baidu/mobstat/be;->h:Lcom/baidu/mobstat/ExtraInfo;

    iput-boolean p11, p0, Lcom/baidu/mobstat/be;->i:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 639
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mobstat/be;->a:Ljava/lang/String;

    .line 640
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 644
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/be;->j:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v2}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobstat/be;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/baidu/mobstat/be;->c:J

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/baidu/mobstat/be;->d:Z

    invoke-virtual {v2, v3, v6, v7, v5}, Lcom/baidu/mobstat/SessionAnalysis;->onSessionStart(Landroid/content/Context;JZ)V

    .line 646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Put event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/be;->j:Lcom/baidu/mobstat/BDStatCore;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobstat/be;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/mobstat/be;->f:I

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/mobstat/be;->g:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/mobstat/be;->h:Lcom/baidu/mobstat/ExtraInfo;

    invoke-static/range {v2 .. v9}, Lcom/baidu/mobstat/BDStatCore;->a(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;Lcom/baidu/mobstat/ExtraInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 647
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/be;->j:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v2}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionStartTime()J

    move-result-wide v8

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/be;->j:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v2}, Lcom/baidu/mobstat/BDStatCore;->c(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/EventAnalysis;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/mobstat/be;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/mobstat/be;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/mobstat/be;->f:I

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/baidu/mobstat/be;->c:J

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/mobstat/be;->h:Lcom/baidu/mobstat/ExtraInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/mobstat/be;->g:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/mobstat/be;->i:Z

    move/from16 v17, v0

    move-object v11, v4

    invoke-virtual/range {v6 .. v17}, Lcom/baidu/mobstat/EventAnalysis;->onEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V

    .line 651
    return-void

    :cond_0
    const-string/jumbo v4, ""

    goto/16 :goto_0
.end method
