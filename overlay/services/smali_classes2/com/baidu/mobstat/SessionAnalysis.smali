.class public Lcom/baidu/mobstat/SessionAnalysis;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/SessionAnalysis$Callback;,
        Lcom/baidu/mobstat/SessionAnalysis$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/mobstat/SessionAnalysis$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/baidu/mobstat/SessionAnalysis$a;

.field private d:Lcom/baidu/mobstat/SessionAnalysis$a;

.field private e:Z

.field private f:J

.field private g:Lcom/baidu/mobstat/Session;

.field private h:I

.field private i:I

.field private j:J

.field public mCallback:Lcom/baidu/mobstat/SessionAnalysis$Callback;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->a:Z

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->b:Ljava/util/Map;

    .line 32
    new-instance v0, Lcom/baidu/mobstat/SessionAnalysis$a;

    invoke-direct {v0}, Lcom/baidu/mobstat/SessionAnalysis$a;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->c:Lcom/baidu/mobstat/SessionAnalysis$a;

    .line 34
    new-instance v0, Lcom/baidu/mobstat/SessionAnalysis$a;

    invoke-direct {v0}, Lcom/baidu/mobstat/SessionAnalysis$a;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->d:Lcom/baidu/mobstat/SessionAnalysis$a;

    .line 36
    iput-boolean v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    .line 38
    iput-wide v2, p0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    .line 40
    new-instance v0, Lcom/baidu/mobstat/Session;

    invoke-direct {v0}, Lcom/baidu/mobstat/Session;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    .line 42
    iput v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->h:I

    .line 44
    iput v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->i:I

    .line 46
    iput-wide v2, p0, Lcom/baidu/mobstat/SessionAnalysis;->j:J

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/baidu/mobstat/SessionAnalysis$Callback;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->a:Z

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->b:Ljava/util/Map;

    .line 32
    new-instance v0, Lcom/baidu/mobstat/SessionAnalysis$a;

    invoke-direct {v0}, Lcom/baidu/mobstat/SessionAnalysis$a;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->c:Lcom/baidu/mobstat/SessionAnalysis$a;

    .line 34
    new-instance v0, Lcom/baidu/mobstat/SessionAnalysis$a;

    invoke-direct {v0}, Lcom/baidu/mobstat/SessionAnalysis$a;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->d:Lcom/baidu/mobstat/SessionAnalysis$a;

    .line 36
    iput-boolean v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    .line 38
    iput-wide v2, p0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    .line 40
    new-instance v0, Lcom/baidu/mobstat/Session;

    invoke-direct {v0}, Lcom/baidu/mobstat/Session;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    .line 42
    iput v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->h:I

    .line 44
    iput v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->i:I

    .line 46
    iput-wide v2, p0, Lcom/baidu/mobstat/SessionAnalysis;->j:J

    .line 54
    iput-object p1, p0, Lcom/baidu/mobstat/SessionAnalysis;->mCallback:Lcom/baidu/mobstat/SessionAnalysis$Callback;

    .line 55
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/baidu/mobstat/SessionAnalysis$a;
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/SessionAnalysis$a;

    return-object v0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->b:Ljava/util/Map;

    new-instance v1, Lcom/baidu/mobstat/SessionAnalysis$a;

    invoke-direct {v1, p1}, Lcom/baidu/mobstat/SessionAnalysis$a;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 354
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0}, Lcom/baidu/mobstat/Session;->hasStart()Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0}, Lcom/baidu/mobstat/Session;->constructJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    iput v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->i:I

    .line 360
    invoke-static {p1}, Lcom/baidu/mobstat/ff;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baidu/mobstat/Config;->LAST_SESSION_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-static {p1, v1, v0, v3}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;JJII)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 272
    sub-long v2, p4, p2

    invoke-virtual {p0}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionTimeOut()I

    move-result v0

    int-to-long v6, v0

    cmp-long v0, v2, v6

    if-gtz v0, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    move v0, v1

    .line 273
    :goto_1
    if-eqz v0, :cond_3

    const-wide/16 v2, 0x0

    .line 277
    cmp-long v0, p2, v2

    if-gtz v0, :cond_4

    :goto_2
    if-nez v1, :cond_0

    const/4 v0, 0x2

    .line 279
    if-eq v0, p7, :cond_5

    :goto_3
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p4

    move v5, v4

    .line 283
    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;JZZ)V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    iget-wide v2, p0, Lcom/baidu/mobstat/SessionAnalysis;->j:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/mobstat/Session;->setTrackStartTime(J)V

    .line 288
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0, p6}, Lcom/baidu/mobstat/Session;->setInvokeType(I)V

    .line 289
    return-void

    :cond_1
    move v0, v4

    .line 272
    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1

    .line 274
    :cond_3
    return-void

    :cond_4
    move v1, v4

    .line 277
    goto :goto_2

    .line 280
    :cond_5
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0, p2, p3}, Lcom/baidu/mobstat/Session;->setEndTime(J)V

    goto :goto_3
.end method

.method private a(Landroid/content/Context;JZZ)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 323
    iget-object v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v1}, Lcom/baidu/mobstat/Session;->hasEnd()Z

    move-result v1

    if-nez v1, :cond_0

    .line 335
    :goto_0
    cmp-long v1, p2, v4

    if-gtz v1, :cond_1

    move v1, v2

    :goto_1
    if-nez v1, :cond_2

    .line 336
    :goto_2
    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0}, Lcom/baidu/mobstat/Session;->getStartTime()J

    move-result-wide v4

    .line 338
    :goto_3
    if-nez v2, :cond_4

    .line 343
    :goto_4
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    move-object v1, p1

    move v3, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/mobstat/DataCore;->saveLogData(Landroid/content/Context;ZZJZ)V

    .line 344
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->mCallback:Lcom/baidu/mobstat/SessionAnalysis$Callback;

    if-nez v0, :cond_5

    .line 348
    :goto_5
    invoke-static {}, Lcom/baidu/mobstat/LogSender;->instance()Lcom/baidu/mobstat/LogSender;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/LogSender;->onSend(Landroid/content/Context;)V

    .line 350
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/SessionAnalysis;->clearLastSessionCache(Landroid/content/Context;)V

    .line 351
    return-void

    .line 324
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v1, v3}, Lcom/baidu/mobstat/DataCore;->putSession(Lcom/baidu/mobstat/Session;)V

    .line 325
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    .line 327
    iget-object v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v1}, Lcom/baidu/mobstat/Session;->getPageSessionHead()Lorg/json/JSONObject;

    move-result-object v1

    .line 328
    invoke-static {v1}, Lcom/baidu/mobstat/ds;->a(Lorg/json/JSONObject;)V

    .line 332
    iget-object v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v1, v4, v5}, Lcom/baidu/mobstat/Session;->setEndTime(J)V

    goto :goto_0

    :cond_1
    move v1, v0

    .line 335
    goto :goto_1

    :cond_2
    move v2, v0

    goto :goto_2

    :cond_3
    move-wide v4, p2

    .line 336
    goto :goto_3

    .line 339
    :cond_4
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0}, Lcom/baidu/mobstat/Session;->reset()V

    .line 340
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0, p2, p3}, Lcom/baidu/mobstat/Session;->setStartTime(J)V

    goto :goto_4

    .line 345
    :cond_5
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->mCallback:Lcom/baidu/mobstat/SessionAnalysis$Callback;

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/DataCore;->getLogData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/baidu/mobstat/SessionAnalysis$Callback;->onCallback(Lorg/json/JSONObject;)V

    goto :goto_5
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/mobstat/ExtraInfo;Z)V
    .locals 14

    .prologue
    .line 294
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    :cond_0
    return-void

    .line 294
    :cond_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 298
    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 302
    sub-long v6, p6, p4

    .line 304
    new-instance v2, Lcom/baidu/mobstat/Session$a;

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-wide/from16 v8, p4

    move/from16 v10, p11

    move-object/from16 v11, p12

    move/from16 v12, p13

    invoke-direct/range {v2 .. v12}, Lcom/baidu/mobstat/Session$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/baidu/mobstat/ExtraInfo;Z)V

    .line 307
    iget-object v3, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v3, v2}, Lcom/baidu/mobstat/Session;->addPageView(Lcom/baidu/mobstat/Session$a;)V

    .line 308
    iget-object v2, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Lcom/baidu/mobstat/Session;->setEndTime(J)V

    .line 310
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;)V

    .line 311
    return-void

    .line 299
    :cond_2
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 380
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 387
    :goto_0
    return-void

    .line 381
    :cond_0
    return-void

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public autoTrackSessionEndTime(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 107
    if-eqz p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0, p2, p3}, Lcom/baidu/mobstat/Session;->setTrackEndTime(J)V

    .line 112
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;)V

    .line 113
    return-void

    .line 108
    :cond_0
    return-void
.end method

.method public autoTrackSessionStartTime(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 98
    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0, p2, p3}, Lcom/baidu/mobstat/Session;->setTrackStartTime(J)V

    .line 103
    iput-wide p2, p0, Lcom/baidu/mobstat/SessionAnalysis;->j:J

    .line 104
    return-void

    .line 99
    :cond_0
    return-void
.end method

.method public clearLastSessionCache(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 368
    if-eqz p1, :cond_0

    .line 372
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    invoke-static {p1}, Lcom/baidu/mobstat/ff;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baidu/mobstat/Config;->LAST_SESSION_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 376
    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 377
    return-void

    .line 369
    :cond_0
    return-void
.end method

.method public doSendLogCheck(Landroid/content/Context;J)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 92
    iget-wide v2, p0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gtz v1, :cond_1

    move v1, v0

    :goto_0
    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    sub-long v2, p2, v2

    invoke-virtual {p0}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionTimeOut()I

    move-result v1

    int-to-long v6, v1

    cmp-long v1, v2, v6

    if-gtz v1, :cond_2

    :goto_1
    if-nez v0, :cond_0

    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    .line 93
    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;JZZ)V

    .line 95
    :cond_0
    return-void

    :cond_1
    move v1, v4

    .line 92
    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method public getPageSessionHead()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0}, Lcom/baidu/mobstat/Session;->getPageSessionHead()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getSessionSize()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->i:I

    return v0
.end method

.method public getSessionStartTime()J
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0}, Lcom/baidu/mobstat/Session;->getStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSessionTimeOut()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->h:I

    if-lez v0, :cond_0

    .line 76
    :goto_0
    iget v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->h:I

    return v0

    :cond_0
    const/16 v0, 0x7530

    .line 73
    iput v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->h:I

    goto :goto_0
.end method

.method public isSessionStart()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 390
    iget-object v2, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v2}, Lcom/baidu/mobstat/Session;->getStartTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public onPageEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Z)V
    .locals 19

    .prologue
    .line 156
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    .line 158
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 162
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/SessionAnalysis;->a(Ljava/lang/String;)Lcom/baidu/mobstat/SessionAnalysis$a;

    move-result-object v4

    .line 163
    if-eqz v4, :cond_1

    .line 167
    iget-boolean v5, v4, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    if-eqz v5, :cond_2

    .line 172
    iget-object v6, v4, Lcom/baidu/mobstat/SessionAnalysis$a;->a:Ljava/lang/String;

    iget-wide v8, v4, Lcom/baidu/mobstat/SessionAnalysis$a;->b:J

    const-string/jumbo v13, ""

    const/4 v15, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-wide/from16 v10, p5

    move-object/from16 v12, p3

    move-object/from16 v14, p4

    move-object/from16 v16, p7

    move/from16 v17, p8

    invoke-direct/range {v4 .. v17}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/mobstat/ExtraInfo;Z)V

    .line 175
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/SessionAnalysis;->b(Ljava/lang/String;)V

    .line 177
    move-wide/from16 v0, p5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    .line 178
    return-void

    .line 159
    :cond_0
    return-void

    .line 164
    :cond_1
    return-void

    .line 168
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[WARNING] \u9057\u6f0fStatService.onPageStart(), \u8bf7\u68c0\u67e5\u90bb\u8fd1\u9875\u9762\u57cb\u70b9: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public onPageEndAct(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLcom/baidu/mobstat/ExtraInfo;)V
    .locals 19

    .prologue
    .line 206
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    .line 208
    if-nez p7, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mobstat/SessionAnalysis;->c:Lcom/baidu/mobstat/SessionAnalysis$a;

    move-object/from16 v18, v4

    .line 210
    :goto_0
    move-object/from16 v0, v18

    iget-boolean v4, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    if-eqz v4, :cond_1

    .line 219
    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->a:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->b:J

    const/16 v17, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-wide/from16 v10, p5

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p2

    move/from16 v15, p7

    move-object/from16 v16, p8

    invoke-direct/range {v4 .. v17}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/mobstat/ExtraInfo;Z)V

    .line 222
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    .line 224
    move-wide/from16 v0, p5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    .line 225
    return-void

    .line 208
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mobstat/SessionAnalysis;->d:Lcom/baidu/mobstat/SessionAnalysis$a;

    move-object/from16 v18, v4

    goto :goto_0

    .line 211
    :cond_1
    if-eqz p7, :cond_2

    .line 216
    :goto_1
    return-void

    .line 212
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[WARNING] \u9057\u6f0fStatService.onResume(Activity), \u8bf7\u68c0\u67e5\u90bb\u8fd1\u9875\u9762\u57cb\u70b9: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPageEndFrag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 19

    .prologue
    .line 249
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 253
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/SessionAnalysis;->a(Ljava/lang/String;)Lcom/baidu/mobstat/SessionAnalysis$a;

    move-result-object v4

    .line 254
    if-eqz v4, :cond_1

    .line 258
    iget-boolean v5, v4, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    if-eqz v5, :cond_2

    .line 263
    iget-object v6, v4, Lcom/baidu/mobstat/SessionAnalysis$a;->a:Ljava/lang/String;

    iget-wide v8, v4, Lcom/baidu/mobstat/SessionAnalysis$a;->b:J

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-wide/from16 v10, p5

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct/range {v4 .. v17}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/mobstat/ExtraInfo;Z)V

    .line 266
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/SessionAnalysis;->b(Ljava/lang/String;)V

    .line 268
    move-wide/from16 v0, p5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    .line 269
    return-void

    .line 250
    :cond_0
    return-void

    .line 255
    :cond_1
    return-void

    .line 259
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[WARNING] \u9057\u6f0fStatService.onResume(Fragment), \u8bf7\u68c0\u67e5\u90bb\u8fd1\u9875\u9762\u57cb\u70b9: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public onPageStart(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, p1, p4, p5, v0}, Lcom/baidu/mobstat/SessionAnalysis;->onSessionStart(Landroid/content/Context;JZ)V

    .line 130
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-direct {p0, p2}, Lcom/baidu/mobstat/SessionAnalysis;->a(Ljava/lang/String;)Lcom/baidu/mobstat/SessionAnalysis$a;

    move-result-object v8

    .line 135
    if-eqz v8, :cond_1

    .line 139
    iget-boolean v0, v8, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    if-nez v0, :cond_2

    .line 143
    :goto_0
    iget-boolean v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    if-eqz v0, :cond_3

    .line 149
    :goto_1
    iput-boolean v9, v8, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    .line 150
    iput-wide p4, v8, Lcom/baidu/mobstat/SessionAnalysis$a;->b:J

    .line 151
    return-void

    .line 131
    :cond_0
    return-void

    .line 136
    :cond_1
    return-void

    .line 140
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[WARNING] \u9057\u6f0fStatService.onPageEnd(), \u8bf7\u68c0\u67e5\u90bb\u8fd1\u9875\u9762\u57cb\u70b9: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_3
    iget-wide v2, p0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    const/4 v7, 0x3

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p4

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;JJII)V

    .line 146
    iput-boolean v9, p0, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    goto :goto_1
.end method

.method public onPageStartAct(Landroid/content/Context;Ljava/lang/String;JZ)V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/baidu/mobstat/SessionAnalysis;->onSessionStart(Landroid/content/Context;JZ)V

    .line 183
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    if-nez p5, :cond_2

    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->c:Lcom/baidu/mobstat/SessionAnalysis$a;

    move-object v8, v0

    .line 189
    :goto_0
    iget-boolean v0, v8, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    if-nez v0, :cond_3

    .line 193
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    if-eqz v0, :cond_4

    .line 199
    :goto_2
    iput-boolean v6, v8, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    .line 200
    iput-object p2, v8, Lcom/baidu/mobstat/SessionAnalysis$a;->a:Ljava/lang/String;

    .line 201
    iput-wide p3, v8, Lcom/baidu/mobstat/SessionAnalysis$a;->b:J

    .line 202
    return-void

    .line 184
    :cond_1
    return-void

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->d:Lcom/baidu/mobstat/SessionAnalysis$a;

    move-object v8, v0

    goto :goto_0

    .line 189
    :cond_3
    if-nez p5, :cond_0

    .line 190
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[WARNING] \u9057\u6f0fStatService.onPause(Activity), \u8bf7\u68c0\u67e5\u90bb\u8fd1\u9875\u9762\u57cb\u70b9: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 194
    :cond_4
    iget-wide v2, p0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;JJII)V

    .line 196
    iput-boolean v6, p0, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    goto :goto_2
.end method

.method public onPageStartFrag(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 9

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/baidu/mobstat/SessionAnalysis;->onSessionStart(Landroid/content/Context;JZ)V

    .line 230
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-direct {p0, p2}, Lcom/baidu/mobstat/SessionAnalysis;->a(Ljava/lang/String;)Lcom/baidu/mobstat/SessionAnalysis$a;

    move-result-object v8

    .line 236
    iget-boolean v0, v8, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    if-nez v0, :cond_1

    .line 240
    :goto_0
    iget-wide v2, p0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;JJII)V

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    .line 243
    iput-object p2, v8, Lcom/baidu/mobstat/SessionAnalysis$a;->a:Ljava/lang/String;

    .line 244
    iput-wide p3, v8, Lcom/baidu/mobstat/SessionAnalysis$a;->b:J

    .line 245
    return-void

    .line 231
    :cond_0
    return-void

    .line 237
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[WARNING] \u9057\u6f0fStatService.onPause(Fragment), \u8bf7\u68c0\u67e5\u90bb\u8fd1\u9875\u9762\u57cb\u70b9: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSessionStart(Landroid/content/Context;JZ)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 116
    iget-boolean v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->a:Z

    if-nez v0, :cond_0

    .line 120
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/DataCore;->init(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    .line 122
    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;JZZ)V

    .line 124
    iput-boolean v5, p0, Lcom/baidu/mobstat/SessionAnalysis;->a:Z

    .line 125
    return-void

    .line 117
    :cond_0
    return-void
.end method

.method public setSessionTimeOut(I)V
    .locals 3

    .prologue
    const/16 v0, 0x258

    const/4 v1, 0x1

    .line 58
    if-lt p1, v1, :cond_0

    .line 62
    if-gt p1, v0, :cond_1

    .line 68
    :goto_0
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->h:I

    .line 69
    return-void

    :cond_0
    const/16 p1, 0x1e

    .line 60
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v1, "[WARNING] SessionTimeout should be between 1 and 600. Default value[30] is used"

    .line 61
    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v1

    const-string/jumbo v2, "[WARNING] SessionTimeout should be between 1 and 600. Default value[600] is used"

    .line 65
    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/eh;->b(Ljava/lang/String;)V

    move p1, v0

    goto :goto_0
.end method
