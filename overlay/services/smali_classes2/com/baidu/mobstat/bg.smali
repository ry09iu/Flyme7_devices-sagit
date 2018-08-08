.class Lcom/baidu/mobstat/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Ljava/util/Map;

.field final synthetic g:Lorg/json/JSONArray;

.field final synthetic h:Lorg/json/JSONArray;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Z

.field final synthetic m:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Landroid/content/Context;JLjava/lang/String;ILjava/util/Map;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lcom/baidu/mobstat/bg;->m:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/bg;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mobstat/bg;->b:Landroid/content/Context;

    iput-wide p4, p0, Lcom/baidu/mobstat/bg;->c:J

    iput-object p6, p0, Lcom/baidu/mobstat/bg;->d:Ljava/lang/String;

    iput p7, p0, Lcom/baidu/mobstat/bg;->e:I

    iput-object p8, p0, Lcom/baidu/mobstat/bg;->f:Ljava/util/Map;

    iput-object p9, p0, Lcom/baidu/mobstat/bg;->g:Lorg/json/JSONArray;

    iput-object p10, p0, Lcom/baidu/mobstat/bg;->h:Lorg/json/JSONArray;

    iput-object p11, p0, Lcom/baidu/mobstat/bg;->i:Ljava/lang/String;

    iput-object p12, p0, Lcom/baidu/mobstat/bg;->j:Ljava/lang/String;

    iput-object p13, p0, Lcom/baidu/mobstat/bg;->k:Ljava/lang/String;

    iput-boolean p14, p0, Lcom/baidu/mobstat/bg;->l:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 714
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mobstat/bg;->a:Ljava/lang/String;

    .line 715
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 719
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/bg;->m:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v2}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobstat/bg;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/baidu/mobstat/bg;->c:J

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v6, v7, v5}, Lcom/baidu/mobstat/SessionAnalysis;->onSessionStart(Landroid/content/Context;JZ)V

    .line 721
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Put event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/bg;->m:Lcom/baidu/mobstat/BDStatCore;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobstat/bg;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/baidu/mobstat/bg;->e:I

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/mobstat/bg;->f:Ljava/util/Map;

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/baidu/mobstat/BDStatCore;->a(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;Lcom/baidu/mobstat/ExtraInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 722
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/bg;->m:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v2}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionStartTime()J

    move-result-wide v8

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/bg;->m:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v2}, Lcom/baidu/mobstat/BDStatCore;->c(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/EventAnalysis;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/mobstat/bg;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/mobstat/bg;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/mobstat/bg;->e:I

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/baidu/mobstat/bg;->c:J

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/mobstat/bg;->g:Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/mobstat/bg;->h:Lorg/json/JSONArray;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/mobstat/bg;->i:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/mobstat/bg;->j:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/mobstat/bg;->k:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/mobstat/bg;->f:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/mobstat/bg;->l:Z

    move/from16 v21, v0

    move-object v11, v4

    invoke-virtual/range {v6 .. v21}, Lcom/baidu/mobstat/EventAnalysis;->onEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 727
    return-void

    :cond_0
    const-string/jumbo v4, ""

    goto/16 :goto_0
.end method
