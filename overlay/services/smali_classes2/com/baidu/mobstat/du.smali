.class Lcom/baidu/mobstat/du;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:J

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lorg/json/JSONArray;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Lorg/json/JSONArray;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/util/Map;

.field final synthetic l:Z

.field final synthetic m:Ljava/lang/String;

.field final synthetic n:Lcom/baidu/mobstat/dt;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/dt;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/baidu/mobstat/du;->n:Lcom/baidu/mobstat/dt;

    iput-object p2, p0, Lcom/baidu/mobstat/du;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mobstat/du;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/mobstat/du;->c:Ljava/lang/String;

    iput p5, p0, Lcom/baidu/mobstat/du;->d:I

    iput-wide p6, p0, Lcom/baidu/mobstat/du;->e:J

    iput-object p8, p0, Lcom/baidu/mobstat/du;->f:Ljava/lang/String;

    iput-object p9, p0, Lcom/baidu/mobstat/du;->g:Lorg/json/JSONArray;

    iput-object p10, p0, Lcom/baidu/mobstat/du;->h:Ljava/lang/String;

    iput-object p11, p0, Lcom/baidu/mobstat/du;->i:Lorg/json/JSONArray;

    iput-object p12, p0, Lcom/baidu/mobstat/du;->j:Ljava/lang/String;

    iput-object p13, p0, Lcom/baidu/mobstat/du;->k:Ljava/util/Map;

    iput-boolean p14, p0, Lcom/baidu/mobstat/du;->l:Z

    iput-object p15, p0, Lcom/baidu/mobstat/du;->m:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 174
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/BDStatCore;->getSessionStartTime()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    .line 175
    cmp-long v2, v4, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_1

    .line 176
    return-void

    .line 175
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 179
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/du;->n:Lcom/baidu/mobstat/dt;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobstat/du;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/mobstat/du;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/mobstat/du;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/baidu/mobstat/du;->d:I

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/baidu/mobstat/du;->e:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/mobstat/du;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/mobstat/du;->g:Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/mobstat/du;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/mobstat/du;->i:Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/mobstat/du;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/mobstat/du;->k:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/mobstat/du;->l:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/mobstat/du;->m:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v18, 0x0

    invoke-static/range {v2 .. v19}, Lcom/baidu/mobstat/dt;->a(Lcom/baidu/mobstat/dt;Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;Ljava/lang/String;)V

    .line 182
    return-void
.end method
