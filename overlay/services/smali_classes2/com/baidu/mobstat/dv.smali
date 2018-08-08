.class Lcom/baidu/mobstat/dv;
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

.field final synthetic m:Lorg/json/JSONObject;

.field final synthetic n:Ljava/lang/String;

.field final synthetic o:Lcom/baidu/mobstat/dt;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/dt;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 194
    iput-object p1, p0, Lcom/baidu/mobstat/dv;->o:Lcom/baidu/mobstat/dt;

    iput-object p2, p0, Lcom/baidu/mobstat/dv;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mobstat/dv;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/mobstat/dv;->c:Ljava/lang/String;

    iput p5, p0, Lcom/baidu/mobstat/dv;->d:I

    iput-wide p6, p0, Lcom/baidu/mobstat/dv;->e:J

    iput-object p8, p0, Lcom/baidu/mobstat/dv;->f:Ljava/lang/String;

    iput-object p9, p0, Lcom/baidu/mobstat/dv;->g:Lorg/json/JSONArray;

    iput-object p10, p0, Lcom/baidu/mobstat/dv;->h:Ljava/lang/String;

    iput-object p11, p0, Lcom/baidu/mobstat/dv;->i:Lorg/json/JSONArray;

    iput-object p12, p0, Lcom/baidu/mobstat/dv;->j:Ljava/lang/String;

    iput-object p13, p0, Lcom/baidu/mobstat/dv;->k:Ljava/util/Map;

    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/baidu/mobstat/dv;->l:Z

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/baidu/mobstat/dv;->m:Lorg/json/JSONObject;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/baidu/mobstat/dv;->n:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 196
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/BDStatCore;->getSessionStartTime()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    .line 197
    cmp-long v2, v4, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_1

    .line 198
    return-void

    .line 197
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 201
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/dv;->o:Lcom/baidu/mobstat/dt;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobstat/dv;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/mobstat/dv;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/mobstat/dv;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/baidu/mobstat/dv;->d:I

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/baidu/mobstat/dv;->e:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/mobstat/dv;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/mobstat/dv;->g:Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/mobstat/dv;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/mobstat/dv;->i:Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/mobstat/dv;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/mobstat/dv;->k:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/mobstat/dv;->l:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/mobstat/dv;->m:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/mobstat/dv;->n:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v2 .. v19}, Lcom/baidu/mobstat/dt;->a(Lcom/baidu/mobstat/dt;Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;Ljava/lang/String;)V

    .line 204
    return-void
.end method
