.class public Lcom/baidu/mobstat/dt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/dt$a;
    }
.end annotation


# static fields
.field private static b:Lcom/baidu/mobstat/dt;


# instance fields
.field public a:Lcom/baidu/mobstat/dt$a;

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;

.field private volatile e:I

.field private f:I

.field private g:Lorg/json/JSONObject;

.field private h:Lorg/json/JSONArray;

.field private i:Lorg/json/JSONArray;

.field private j:Lorg/json/JSONArray;

.field private k:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/baidu/mobstat/dt;

    invoke-direct {v0}, Lcom/baidu/mobstat/dt;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/dt;->b:Lcom/baidu/mobstat/dt;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "fullTraceHandleThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/mobstat/dt;->c:Landroid/os/HandlerThread;

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/dt;->g:Lorg/json/JSONObject;

    .line 52
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/dt;->h:Lorg/json/JSONArray;

    .line 54
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/dt;->i:Lorg/json/JSONArray;

    .line 56
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/dt;->j:Lorg/json/JSONArray;

    .line 58
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/dt;->k:Lorg/json/JSONArray;

    .line 61
    iget-object v0, p0, Lcom/baidu/mobstat/dt;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 62
    iget-object v0, p0, Lcom/baidu/mobstat/dt;->c:Landroid/os/HandlerThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 63
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/mobstat/dt;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/mobstat/dt;->d:Landroid/os/Handler;

    .line 64
    return-void
.end method

.method private a(Lorg/json/JSONArray;)J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 727
    if-nez p1, :cond_1

    .line 728
    :cond_0
    return-wide v0

    .line 727
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 732
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "s"

    .line 733
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 738
    :goto_0
    return-wide v0

    .line 736
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static a()Lcom/baidu/mobstat/dt;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/baidu/mobstat/dt;->b:Lcom/baidu/mobstat/dt;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/dt;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/mobstat/dt;->i:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/dt;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/baidu/mobstat/dt;->i:Lorg/json/JSONArray;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/mobstat/dt;Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/dt;->b(Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;Ljava/lang/String;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 214
    invoke-static/range {p10 .. p10}, Lcom/baidu/mobstat/eq;->b(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v22

    .line 215
    invoke-static/range {p12 .. p12}, Lcom/baidu/mobstat/eq;->b(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v23

    .line 216
    invoke-static/range {p9 .. p9}, Lcom/baidu/mobstat/eq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 217
    invoke-static/range {p11 .. p11}, Lcom/baidu/mobstat/eq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 219
    sget-object v2, Lcom/baidu/mobstat/Config$EventViewType;->EDIT:Lcom/baidu/mobstat/Config$EventViewType;

    invoke-virtual {v2}, Lcom/baidu/mobstat/Config$EventViewType;->getValue()I

    move-result v18

    const-wide/16 v10, 0x0

    const-string/jumbo v12, ""

    const/16 v19, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v20, 0x0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v17, p13

    move-object/from16 v21, p14

    move/from16 v24, p15

    move-object/from16 v25, p16

    move-object/from16 v26, p17

    .line 225
    invoke-static/range {v2 .. v26}, Lcom/baidu/mobstat/EventAnalysis;->getEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 231
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/dt;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 232
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/mobstat/dt;->d(Landroid/content/Context;)V

    .line 233
    return-void
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 4

    .prologue
    .line 765
    if-nez p1, :cond_1

    .line 766
    :cond_0
    return-void

    .line 765
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/dt;->j:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/eo;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 774
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 775
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/dt;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 784
    :goto_1
    iget-object v0, p0, Lcom/baidu/mobstat/dt;->j:Lorg/json/JSONArray;

    invoke-direct {p0, v0, p2}, Lcom/baidu/mobstat/dt;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    .line 785
    return-void

    .line 770
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putFeedList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eo;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 776
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/eo;->b()Z

    move-result v1

    if-nez v1, :cond_4

    .line 781
    :goto_2
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/dt;->e(Landroid/content/Context;)V

    goto :goto_1

    .line 777
    :cond_4
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkExceedLogLimit exceed:true; mCacheLogSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/mobstat/dt;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; addedSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 778
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 777
    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eo;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 236
    if-eqz p2, :cond_0

    .line 240
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/eo;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/dt;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 255
    :goto_1
    iget-object v0, p0, Lcom/baidu/mobstat/dt;->h:Lorg/json/JSONArray;

    invoke-static {v0, p2}, Lcom/baidu/mobstat/EventAnalysis;->doEventMerge(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    .line 256
    return-void

    .line 237
    :cond_0
    return-void

    .line 241
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eo;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/eo;->b()Z

    move-result v1

    if-nez v1, :cond_3

    .line 252
    :goto_2
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/dt;->e(Landroid/content/Context;)V

    goto :goto_1

    .line 248
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkExceedLogLimit exceed:true; mCacheLogSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/mobstat/dt;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; addedSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 249
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eo;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/baidu/mobstat/dt;Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p17}, Lcom/baidu/mobstat/dt;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/dt;Landroid/content/Context;Lcom/baidu/mobstat/cx;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/dt;->b(Landroid/content/Context;Lcom/baidu/mobstat/cx;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/dt;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/dt;->c(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 2

    .prologue
    .line 788
    if-nez p1, :cond_1

    .line 789
    :cond_0
    return-void

    .line 788
    :cond_1
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 793
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 799
    :goto_1
    return-void

    .line 794
    :cond_2
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 798
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private a(Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 637
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    :try_start_1
    const-string/jumbo v2, "p"

    .line 644
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 649
    :goto_1
    if-eqz v1, :cond_0

    .line 659
    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 661
    :goto_2
    return-void

    .line 640
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 650
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 651
    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :try_start_2
    const-string/jumbo v2, "p"

    .line 654
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 657
    :catch_1
    move-exception v0

    goto :goto_2

    .line 647
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 260
    if-nez p2, :cond_0

    move v0, v1

    .line 264
    :goto_0
    iget v2, p0, Lcom/baidu/mobstat/dt;->e:I

    add-int/2addr v0, v2

    const v2, 0x2d000

    if-gt v0, v2, :cond_1

    :goto_1
    return v1

    .line 261
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 264
    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1076
    if-eq p1, p2, :cond_1

    .line 1078
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1082
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1077
    goto :goto_0

    .line 1078
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1079
    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 16

    .prologue
    .line 914
    if-nez p1, :cond_1

    .line 915
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 914
    :cond_1
    if-eqz p2, :cond_0

    const-string/jumbo v1, "id"

    .line 918
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "d"

    .line 919
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v2, "p"

    .line 920
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "path"

    .line 921
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "title"

    .line 922
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "index"

    .line 923
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "n"

    .line 924
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "user"

    .line 925
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "c"

    .line 926
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string/jumbo v8, "t"

    .line 927
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    const-string/jumbo v8, "ps"

    .line 928
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v8, "id"

    .line 930
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "d"

    .line 931
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v9, "p"

    .line 932
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "path"

    .line 933
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "title"

    .line 934
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "index"

    .line 935
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "n"

    .line 936
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "user"

    .line 937
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    const-string/jumbo v15, "c"

    .line 938
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string/jumbo v15, "t"

    .line 939
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    const-string/jumbo v15, "ps"

    .line 940
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 942
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v8}, Lcom/baidu/mobstat/dt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 946
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lcom/baidu/mobstat/dt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 950
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10}, Lcom/baidu/mobstat/dt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 954
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Lcom/baidu/mobstat/dt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 958
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12}, Lcom/baidu/mobstat/dt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 962
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13}, Lcom/baidu/mobstat/dt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 966
    if-ne v7, v14, :cond_8

    .line 971
    const/4 v1, 0x1

    return v1

    .line 943
    :cond_2
    const/4 v1, 0x0

    return v1

    .line 947
    :cond_3
    const/4 v1, 0x0

    return v1

    .line 951
    :cond_4
    const/4 v1, 0x0

    return v1

    .line 955
    :cond_5
    const/4 v1, 0x0

    return v1

    .line 959
    :cond_6
    const/4 v1, 0x0

    return v1

    .line 963
    :cond_7
    const/4 v1, 0x0

    return v1

    .line 967
    :cond_8
    const/4 v1, 0x0

    return v1
.end method

.method private b(Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 664
    if-nez p2, :cond_1

    .line 665
    :cond_0
    return-object p1

    .line 664
    :cond_1
    if-eqz p1, :cond_0

    const-string/jumbo v2, "s"

    .line 668
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    .line 669
    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_3

    .line 670
    return-object p1

    .line 673
    :cond_3
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 674
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 692
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    :try_start_1
    const-string/jumbo v2, "p"

    .line 699
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 706
    :goto_1
    :try_start_2
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 707
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 709
    if-nez v0, :cond_6

    .line 716
    :goto_2
    if-nez v2, :cond_7

    .line 721
    :cond_4
    :goto_3
    return-object v3

    .line 677
    :cond_5
    :try_start_3
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 679
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    const-string/jumbo v1, "p"

    .line 681
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 686
    :goto_4
    if-eqz v0, :cond_4

    .line 687
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 695
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 702
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_6
    :try_start_5
    const-string/jumbo v1, "p"

    .line 710
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 714
    :catch_2
    move-exception v0

    move-object v1, v2

    :goto_5
    move-object v2, v1

    goto :goto_2

    .line 717
    :cond_7
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 714
    :catch_3
    move-exception v0

    goto :goto_5

    .line 684
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_4
.end method

.method private b()V
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcom/baidu/mobstat/dt;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/mobstat/dt;->f:I

    .line 472
    return-void
.end method

.method private b(Landroid/content/Context;Lcom/baidu/mobstat/cx;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 579
    if-nez p1, :cond_1

    .line 580
    :cond_0
    return-void

    .line 579
    :cond_1
    if-eqz p2, :cond_0

    .line 583
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/BDStatCore;->getPageSessionHead()Lorg/json/JSONObject;

    move-result-object v1

    .line 585
    iget-object v2, p0, Lcom/baidu/mobstat/dt;->i:Lorg/json/JSONArray;

    invoke-direct {p0, v2, v1}, Lcom/baidu/mobstat/dt;->b(Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/dt;->i:Lorg/json/JSONArray;

    .line 587
    iget-object v1, p0, Lcom/baidu/mobstat/dt;->i:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 591
    iget-object v1, p0, Lcom/baidu/mobstat/dt;->i:Lorg/json/JSONArray;

    invoke-direct {p0, v1}, Lcom/baidu/mobstat/dt;->a(Lorg/json/JSONArray;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    .line 592
    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_4

    .line 593
    return-void

    .line 588
    :cond_3
    return-void

    .line 596
    :cond_4
    invoke-virtual {p2}, Lcom/baidu/mobstat/cx;->a()Ljava/lang/String;

    move-result-object v0

    .line 597
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v1

    sget v4, Lcom/baidu/mobstat/dq$a;->b:I

    invoke-virtual {v1, v0, v4}, Lcom/baidu/mobstat/dq;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 600
    invoke-virtual {p2}, Lcom/baidu/mobstat/cx;->b()Ljava/lang/String;

    move-result-object v1

    .line 601
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v4

    sget v5, Lcom/baidu/mobstat/dq$a;->c:I

    invoke-virtual {v4, v1, v5}, Lcom/baidu/mobstat/dq;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 604
    invoke-virtual {p2, v2, v3, v0, v1}, Lcom/baidu/mobstat/cx;->a(JLjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 606
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/dt;->d(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 608
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/dt;->d(Landroid/content/Context;)V

    .line 609
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 532
    invoke-static {}, Lcom/baidu/mobstat/LogSender;->instance()Lcom/baidu/mobstat/LogSender;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/baidu/mobstat/LogSender;->saveLogData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 534
    iget-object v0, p0, Lcom/baidu/mobstat/dt;->a:Lcom/baidu/mobstat/dt$a;

    if-nez v0, :cond_0

    .line 542
    :goto_0
    return-void

    .line 536
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 537
    iget-object v1, p0, Lcom/baidu/mobstat/dt;->a:Lcom/baidu/mobstat/dt$a;

    invoke-interface {v1, v0}, Lcom/baidu/mobstat/dt$a;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 540
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 4

    .prologue
    .line 832
    if-nez p1, :cond_1

    .line 834
    :cond_0
    return-void

    .line 832
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/dt;->k:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/eo;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 842
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 843
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/dt;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 857
    :goto_1
    iget-object v0, p0, Lcom/baidu/mobstat/dt;->k:Lorg/json/JSONArray;

    invoke-direct {p0, v0, p2}, Lcom/baidu/mobstat/dt;->b(Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    .line 858
    return-void

    .line 838
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putFeedListItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eo;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 844
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/eo;->b()Z

    move-result v1

    if-nez v1, :cond_4

    .line 849
    :goto_2
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/dt;->e(Landroid/content/Context;)V

    goto :goto_1

    .line 845
    :cond_4
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkExceedLogLimit exceed:true; mCacheLogSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/mobstat/dt;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; addedSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 846
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 845
    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eo;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 444
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->getHeadObject()Lcom/baidu/mobstat/HeadObject;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/HeadObject;->installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V

    :try_start_0
    const-string/jumbo v0, "t"

    .line 447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "sq"

    .line 448
    iget v1, p0, Lcom/baidu/mobstat/dt;->f:I

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "ss"

    .line 449
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/BDStatCore;->getSessionStartTime()J

    move-result-wide v2

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "at"

    const-string/jumbo v1, "1"

    .line 450
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "sign"

    .line 453
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :goto_0
    return-void

    .line 456
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/baidu/mobstat/dt;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/dt;->d(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method private b(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 875
    if-nez p1, :cond_1

    .line 876
    :cond_0
    return-void

    .line 875
    :cond_1
    if-eqz p2, :cond_0

    move v0, v1

    .line 880
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 909
    :goto_1
    return-void

    .line 881
    :cond_2
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 882
    if-nez v5, :cond_4

    .line 880
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 882
    :cond_4
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-eqz v2, :cond_3

    move v4, v1

    .line 887
    :goto_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v4, v2, :cond_6

    move-object v2, v3

    .line 900
    :cond_5
    if-eqz v2, :cond_9

    .line 903
    invoke-direct {p0, v2, v5}, Lcom/baidu/mobstat/dt;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 908
    :catch_0
    move-exception v0

    goto :goto_1

    .line 888
    :cond_6
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 889
    if-nez v2, :cond_8

    .line 887
    :cond_7
    :goto_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3

    .line 889
    :cond_8
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-eqz v6, :cond_7

    .line 894
    invoke-direct {p0, v2, v5}, Lcom/baidu/mobstat/dt;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_4

    .line 901
    :cond_9
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 500
    return-void
.end method

.method private b(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 16

    .prologue
    const-string/jumbo v2, "d"

    .line 975
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v2, "c"

    .line 976
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "t"

    .line 977
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v3, "ps"

    .line 978
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v3, "d"

    .line 980
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v3, "c"

    .line 981
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v6, "t"

    .line 982
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string/jumbo v8, "ps"

    .line 983
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 985
    add-int v13, v2, v3

    .line 986
    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_3

    move-wide v2, v4

    :goto_1
    const-string/jumbo v8, ""

    .line 989
    cmp-long v8, v4, v6

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_2
    if-nez v8, :cond_5

    .line 990
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_3
    const-string/jumbo v9, ""

    .line 996
    cmp-long v9, v4, v6

    if-lez v9, :cond_6

    const/4 v9, 0x1

    :goto_4
    if-nez v9, :cond_9

    .line 997
    sub-long v14, v6, v4

    .line 999
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\\|"

    .line 1000
    invoke-virtual {v12, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1002
    if-nez v9, :cond_7

    :cond_0
    const-wide/16 v4, 0x0

    .line 1019
    :try_start_0
    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-wide v4

    .line 1024
    :goto_5
    add-long/2addr v4, v14

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1027
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_6
    :try_start_1
    const-string/jumbo v5, "c"

    .line 1063
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "t"

    .line 1064
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "d"

    .line 1065
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "ps"

    .line 1066
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1070
    :goto_7
    return-void

    .line 986
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_3
    move-wide v2, v6

    goto/16 :goto_1

    .line 989
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 992
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, "|"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 996
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 1002
    :cond_7
    array-length v4, v9

    if-eqz v4, :cond_0

    .line 1003
    array-length v11, v9

    const/4 v4, 0x0

    move v6, v4

    :goto_8
    if-ge v6, v11, :cond_1

    aget-object v12, v9, v6

    .line 1004
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    :goto_9
    const-wide/16 v4, 0x0

    .line 1010
    :try_start_2
    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-wide v4

    .line 1014
    :goto_a
    add-long/2addr v4, v14

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1003
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_8

    :cond_8
    const-string/jumbo v4, "|"

    .line 1005
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 1029
    :cond_9
    sub-long v14, v4, v6

    .line 1031
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\\|"

    .line 1032
    invoke-virtual {v10, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1034
    if-nez v9, :cond_c

    :cond_a
    const-wide/16 v4, 0x0

    .line 1051
    :try_start_3
    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-wide v4

    .line 1056
    :goto_b
    add-long/2addr v4, v14

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1059
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    .line 1034
    :cond_c
    array-length v4, v9

    if-eqz v4, :cond_a

    .line 1035
    array-length v10, v9

    const/4 v4, 0x0

    move v6, v4

    :goto_c
    if-ge v6, v10, :cond_b

    aget-object v11, v9, v6

    .line 1036
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    :goto_d
    const-wide/16 v4, 0x0

    .line 1042
    :try_start_4
    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-wide v4

    .line 1046
    :goto_e
    add-long/2addr v4, v14

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1035
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_c

    :cond_d
    const-string/jumbo v4, "|"

    .line 1037
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 1069
    :catch_0
    move-exception v2

    goto/16 :goto_7

    .line 1054
    :catch_1
    move-exception v6

    goto :goto_b

    .line 1045
    :catch_2
    move-exception v11

    goto :goto_e

    .line 1022
    :catch_3
    move-exception v6

    goto/16 :goto_5

    .line 1013
    :catch_4
    move-exception v12

    goto/16 :goto_a
.end method

.method private c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 475
    iput v0, p0, Lcom/baidu/mobstat/dt;->f:I

    .line 476
    return-void
.end method

.method private c(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 742
    if-nez p1, :cond_1

    .line 743
    :cond_0
    return-void

    .line 742
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 747
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 760
    invoke-direct {p0, p1, v1}, Lcom/baidu/mobstat/dt;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 761
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/dt;->d(Landroid/content/Context;)V

    .line 762
    return-void

    .line 747
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/cy;

    .line 748
    invoke-virtual {v0}, Lcom/baidu/mobstat/cy;->a()Ljava/lang/String;

    move-result-object v3

    .line 749
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v4

    sget v5, Lcom/baidu/mobstat/dq$a;->c:I

    invoke-virtual {v4, v3, v5}, Lcom/baidu/mobstat/dq;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 752
    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 754
    if-eqz v0, :cond_2

    .line 755
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method private c(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 479
    if-eqz p2, :cond_0

    .line 483
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "failed_cnt"

    const/4 v2, 0x0

    .line 486
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    const-string/jumbo v1, "trace"

    .line 492
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 496
    :goto_1
    return-void

    .line 480
    :cond_0
    return-void

    .line 495
    :catch_0
    move-exception v0

    goto :goto_1

    .line 489
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private d(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 802
    if-nez p1, :cond_1

    .line 803
    :cond_0
    return-void

    .line 802
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 807
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 827
    invoke-direct {p0, p1, v1}, Lcom/baidu/mobstat/dt;->b(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 828
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/dt;->d(Landroid/content/Context;)V

    .line 829
    return-void

    .line 807
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/cz;

    .line 808
    invoke-virtual {v0}, Lcom/baidu/mobstat/cz;->b()Ljava/lang/String;

    move-result-object v3

    .line 809
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v4

    sget v5, Lcom/baidu/mobstat/dq$a;->b:I

    invoke-virtual {v4, v3, v5}, Lcom/baidu/mobstat/dq;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 812
    invoke-virtual {v0}, Lcom/baidu/mobstat/cz;->f()Ljava/lang/String;

    move-result-object v4

    .line 813
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v5

    sget v6, Lcom/baidu/mobstat/dq$a;->c:I

    invoke-virtual {v5, v4, v6}, Lcom/baidu/mobstat/dq;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 816
    invoke-virtual {v0}, Lcom/baidu/mobstat/cz;->c()Lorg/json/JSONArray;

    move-result-object v5

    .line 817
    invoke-static {v5}, Lcom/baidu/mobstat/eq;->b(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v5

    .line 819
    invoke-virtual {v0, v3, v4, v5}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 821
    if-eqz v0, :cond_2

    .line 822
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method private d(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 612
    if-eqz p2, :cond_0

    .line 616
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/eo;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 621
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 622
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/dt;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 631
    :goto_1
    iget-object v0, p0, Lcom/baidu/mobstat/dt;->i:Lorg/json/JSONArray;

    invoke-direct {p0, v0, p2}, Lcom/baidu/mobstat/dt;->a(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    .line 632
    return-void

    .line 613
    :cond_0
    return-void

    .line 617
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putPage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eo;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 623
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/eo;->b()Z

    move-result v1

    if-nez v1, :cond_3

    .line 628
    :goto_2
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/dt;->e(Landroid/content/Context;)V

    goto :goto_1

    .line 624
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkExceedLogLimit exceed:true; mCacheLogSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/mobstat/dt;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; addedSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 625
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 624
    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eo;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private e(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 463
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/BDStatCore;->getPageSessionHead()Lorg/json/JSONObject;

    move-result-object v0

    .line 464
    iget-object v1, p0, Lcom/baidu/mobstat/dt;->i:Lorg/json/JSONArray;

    invoke-direct {p0, v1, v0}, Lcom/baidu/mobstat/dt;->b(Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/dt;->i:Lorg/json/JSONArray;

    .line 466
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobstat/dt;->a(Landroid/content/Context;Z)V

    .line 467
    invoke-direct {p0}, Lcom/baidu/mobstat/dt;->b()V

    .line 468
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 83
    if-eqz p1, :cond_4

    .line 88
    invoke-static {p1}, Lcom/baidu/mobstat/ff;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/Config;->STAT_FULL_CACHE_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {p1, v0}, Lcom/baidu/mobstat/ex;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 94
    invoke-static {p1, v0}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 101
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    if-eqz v1, :cond_7

    :try_start_1
    const-string/jumbo v2, "ev"

    .line 110
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string/jumbo v3, "pr"

    .line 111
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string/jumbo v4, "ti"

    .line 112
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string/jumbo v5, "sv"

    .line 113
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 115
    if-nez v2, :cond_8

    :cond_0
    if-nez v3, :cond_9

    .line 116
    :cond_1
    if-nez v4, :cond_a

    .line 117
    :cond_2
    if-nez v5, :cond_b

    .line 119
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/eo;->b()Z

    move-result v1

    if-nez v1, :cond_c

    .line 123
    :goto_1
    return-void

    .line 84
    :cond_4
    return-void

    .line 91
    :cond_5
    return-void

    .line 96
    :cond_6
    return-void

    .line 104
    :catch_0
    move-exception v1

    move-object v1, v2

    goto :goto_0

    .line 106
    :cond_7
    return-void

    .line 115
    :cond_8
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_0

    :goto_2
    const-string/jumbo v2, "he"

    .line 126
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 127
    invoke-direct {p0, p1, v2}, Lcom/baidu/mobstat/dt;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 130
    invoke-direct {p0, p1, v1}, Lcom/baidu/mobstat/dt;->c(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 132
    invoke-direct {p0, v1}, Lcom/baidu/mobstat/dt;->b(Lorg/json/JSONObject;)V

    .line 134
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 139
    :goto_3
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/eo;->b()Z

    move-result v1

    if-nez v1, :cond_d

    .line 144
    :goto_4
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/dt;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0, p1, v6}, Lcom/baidu/mobstat/dt;->b(Landroid/content/Context;Z)V

    .line 147
    return-void

    .line 116
    :cond_9
    :try_start_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 117
    :cond_a
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 118
    :cond_b
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 120
    :cond_c
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v1

    const-string/jumbo v2, "saveLastCacheToSend content:empty, return"

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/eo;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 137
    :catch_1
    move-exception v1

    goto :goto_3

    .line 140
    :cond_d
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveLastCacheToSend content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/eo;->a(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public a(Landroid/content/Context;Lcom/baidu/mobstat/cx;)V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/baidu/mobstat/dt;->d:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/dy;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/mobstat/dy;-><init>(Lcom/baidu/mobstat/dt;Landroid/content/Context;Lcom/baidu/mobstat/cx;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 558
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 160
    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    invoke-virtual/range {v1 .. v16}, Lcom/baidu/mobstat/dt;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/mobstat/dt;->d:Landroid/os/Handler;

    move-object/from16 v18, v0

    new-instance v2, Lcom/baidu/mobstat/du;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move/from16 v16, p13

    move-object/from16 v17, p14

    invoke-direct/range {v2 .. v17}, Lcom/baidu/mobstat/du;-><init>(Lcom/baidu/mobstat/dt;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;Ljava/lang/String;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/mobstat/dt;->d:Landroid/os/Handler;

    move-object/from16 v19, v0

    new-instance v2, Lcom/baidu/mobstat/dv;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    invoke-direct/range {v2 .. v18}, Lcom/baidu/mobstat/dv;-><init>(Lcom/baidu/mobstat/dt;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 561
    iget-object v0, p0, Lcom/baidu/mobstat/dt;->d:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/dz;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/mobstat/dz;-><init>(Lcom/baidu/mobstat/dt;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 566
    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 299
    if-nez p2, :cond_1

    .line 304
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mobstat/dt;->g:Lorg/json/JSONObject;

    invoke-direct {p0, p1, v1}, Lcom/baidu/mobstat/dt;->b(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 310
    :goto_1
    iget-object v1, p0, Lcom/baidu/mobstat/dt;->h:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 317
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string/jumbo v2, "he"

    .line 319
    iget-object v3, p0, Lcom/baidu/mobstat/dt;->g:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    :goto_2
    :try_start_2
    const-string/jumbo v2, "pr"

    .line 325
    iget-object v3, p0, Lcom/baidu/mobstat/dt;->i:Lorg/json/JSONArray;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    :goto_3
    :try_start_3
    const-string/jumbo v2, "ev"

    .line 331
    iget-object v3, p0, Lcom/baidu/mobstat/dt;->h:Lorg/json/JSONArray;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :goto_4
    :try_start_4
    const-string/jumbo v2, "ti"

    .line 337
    iget-object v3, p0, Lcom/baidu/mobstat/dt;->j:Lorg/json/JSONArray;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    const-string/jumbo v2, "sv"

    .line 343
    iget-object v3, p0, Lcom/baidu/mobstat/dt;->k:Lorg/json/JSONArray;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_6
    :try_start_6
    const-string/jumbo v2, "pd"

    .line 349
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v3

    sget v4, Lcom/baidu/mobstat/dq$a;->b:I

    invoke-virtual {v3, v4}, Lcom/baidu/mobstat/dq;->a(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :goto_7
    :try_start_7
    const-string/jumbo v2, "ed"

    .line 355
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v3

    sget v4, Lcom/baidu/mobstat/dq$a;->a:I

    invoke-virtual {v3, v4}, Lcom/baidu/mobstat/dq;->a(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :goto_8
    :try_start_8
    const-string/jumbo v2, "sd"

    .line 361
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v3

    sget v4, Lcom/baidu/mobstat/dq$a;->c:I

    invoke-virtual {v3, v4}, Lcom/baidu/mobstat/dq;->a(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 366
    :goto_9
    invoke-direct {p0, p1, v1}, Lcom/baidu/mobstat/dt;->c(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 368
    invoke-direct {p0, v1}, Lcom/baidu/mobstat/dt;->b(Lorg/json/JSONObject;)V

    .line 370
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 371
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/eo;->b()Z

    move-result v2

    if-nez v2, :cond_3

    .line 375
    :goto_a
    invoke-direct {p0, p1, v1}, Lcom/baidu/mobstat/dt;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 378
    if-eqz p2, :cond_4

    :goto_b
    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobstat/dt;->b(Landroid/content/Context;Z)V

    .line 379
    return-void

    .line 300
    :cond_1
    invoke-direct {p0}, Lcom/baidu/mobstat/dt;->c()V

    goto/16 :goto_0

    .line 310
    :cond_2
    iget-object v1, p0, Lcom/baidu/mobstat/dt;->i:Lorg/json/JSONArray;

    .line 311
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/mobstat/dt;->j:Lorg/json/JSONArray;

    .line 312
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/mobstat/dt;->k:Lorg/json/JSONArray;

    .line 313
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 314
    return-void

    .line 372
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveCurrentCacheToSend content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/eo;->a(Ljava/lang/String;)V

    goto :goto_a

    :cond_4
    const/4 v0, 0x1

    .line 378
    goto :goto_b

    .line 364
    :catch_0
    move-exception v2

    goto :goto_9

    .line 358
    :catch_1
    move-exception v2

    goto :goto_8

    .line 352
    :catch_2
    move-exception v2

    goto :goto_7

    .line 346
    :catch_3
    move-exception v2

    goto/16 :goto_6

    .line 340
    :catch_4
    move-exception v2

    goto/16 :goto_5

    .line 334
    :catch_5
    move-exception v2

    goto/16 :goto_4

    .line 328
    :catch_6
    move-exception v2

    goto/16 :goto_3

    .line 322
    :catch_7
    move-exception v2

    goto/16 :goto_2

    .line 307
    :catch_8
    move-exception v1

    goto/16 :goto_1
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/baidu/mobstat/dt;->d:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/dx;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mobstat/dx;-><init>(Lcom/baidu/mobstat/dt;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/baidu/mobstat/dt;->d:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/dw;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mobstat/dw;-><init>(Lcom/baidu/mobstat/dt;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 569
    iget-object v0, p0, Lcom/baidu/mobstat/dt;->d:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/ea;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/mobstat/ea;-><init>(Lcom/baidu/mobstat/dt;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 574
    return-void
.end method

.method public b(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 383
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/dt;->g:Lorg/json/JSONObject;

    .line 384
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/dt;->c(Landroid/content/Context;)V

    .line 386
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/dt;->i:Lorg/json/JSONArray;

    .line 387
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/dt;->h:Lorg/json/JSONArray;

    .line 388
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/dt;->j:Lorg/json/JSONArray;

    .line 389
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/dt;->k:Lorg/json/JSONArray;

    .line 391
    if-eqz p2, :cond_0

    .line 395
    :goto_0
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/dt;->d(Landroid/content/Context;)V

    .line 396
    return-void

    .line 392
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->b()V

    goto :goto_0
.end method

.method public c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 399
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->getHeadObject()Lcom/baidu/mobstat/HeadObject;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/dt;->g:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/HeadObject;->installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 400
    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 403
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 405
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/baidu/mobstat/dt;->g:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "he"

    .line 406
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/baidu/mobstat/dt;->i:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "pr"

    .line 409
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 411
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/baidu/mobstat/dt;->h:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "ev"

    .line 412
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 414
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/baidu/mobstat/dt;->j:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "ti"

    .line 415
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 417
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/baidu/mobstat/dt;->k:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "sv"

    .line 418
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "pd"

    .line 420
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v2

    sget v3, Lcom/baidu/mobstat/dq$a;->b:I

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/dq;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "ed"

    .line 421
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v2

    sget v3, Lcom/baidu/mobstat/dq$a;->a:I

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/dq;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "sd"

    .line 422
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v2

    sget v3, Lcom/baidu/mobstat/dq$a;->c:I

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/dq;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const v2, 0x2d000

    .line 432
    if-ge v1, v2, :cond_0

    .line 435
    iput v1, p0, Lcom/baidu/mobstat/dt;->e:I

    .line 437
    invoke-static {p1}, Lcom/baidu/mobstat/ff;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baidu/mobstat/Config;->STAT_FULL_CACHE_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 439
    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 440
    return-void

    .line 433
    :cond_0
    return-void

    .line 425
    :catch_0
    move-exception v1

    goto :goto_0
.end method
