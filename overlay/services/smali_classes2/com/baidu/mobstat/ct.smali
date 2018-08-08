.class public Lcom/baidu/mobstat/ct;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/ct$a;,
        Lcom/baidu/mobstat/ct$b;,
        Lcom/baidu/mobstat/ct$c;
    }
.end annotation


# static fields
.field private static final A:Lcom/baidu/mobstat/ct;


# instance fields
.field private B:Landroid/os/Handler;

.field private C:Lcom/baidu/mobstat/cp$a;

.field private D:Lorg/json/JSONArray;

.field private E:Ljava/lang/Object;

.field private a:Landroid/content/Context;

.field private b:Lcom/baidu/mobstat/cp;

.field private c:Lcom/baidu/mobstat/co;

.field private d:Landroid/app/Activity;

.field private e:Lcom/baidu/mobstat/cw;

.field private f:Landroid/os/Handler;

.field private g:Landroid/os/HandlerThread;

.field private h:Landroid/os/Handler;

.field private i:Landroid/os/HandlerThread;

.field private volatile j:Z

.field private volatile k:Z

.field private volatile l:Z

.field private volatile m:Z

.field private volatile n:Z

.field private volatile o:Z

.field private volatile p:Ljava/lang/String;

.field private volatile q:Ljava/lang/String;

.field private volatile r:Ljava/lang/String;

.field private s:J

.field private t:J

.field private u:J

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Lorg/json/JSONObject;

.field private y:Lorg/json/JSONObject;

.field private z:Lcom/baidu/mobstat/ek;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/baidu/mobstat/ct;

    invoke-direct {v0}, Lcom/baidu/mobstat/ct;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/ct;->A:Lcom/baidu/mobstat/ct;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ct;->x:Lorg/json/JSONObject;

    .line 96
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ct;->y:Lorg/json/JSONObject;

    .line 98
    invoke-static {}, Lcom/baidu/mobstat/ek;->a()Lcom/baidu/mobstat/ek;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ct;->z:Lcom/baidu/mobstat/ek;

    .line 118
    new-instance v0, Lcom/baidu/mobstat/cu;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/mobstat/cu;-><init>(Lcom/baidu/mobstat/ct;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ct;->B:Landroid/os/Handler;

    .line 165
    new-instance v0, Lcom/baidu/mobstat/cv;

    invoke-direct {v0, p0}, Lcom/baidu/mobstat/cv;-><init>(Lcom/baidu/mobstat/ct;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ct;->C:Lcom/baidu/mobstat/cp$a;

    .line 843
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ct;->D:Lorg/json/JSONArray;

    .line 844
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ct;->E:Ljava/lang/Object;

    .line 107
    new-instance v0, Lcom/baidu/mobstat/cw;

    invoke-direct {v0}, Lcom/baidu/mobstat/cw;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ct;->e:Lcom/baidu/mobstat/cw;

    .line 109
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "crawlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ct;->i:Landroid/os/HandlerThread;

    .line 110
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 111
    new-instance v0, Lcom/baidu/mobstat/ct$c;

    iget-object v1, p0, Lcom/baidu/mobstat/ct;->i:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/mobstat/ct$c;-><init>(Lcom/baidu/mobstat/ct;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ct;->h:Landroid/os/Handler;

    .line 113
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "downloadThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ct;->g:Landroid/os/HandlerThread;

    .line 114
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 115
    new-instance v0, Lcom/baidu/mobstat/ct$a;

    iget-object v1, p0, Lcom/baidu/mobstat/ct;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/mobstat/ct$a;-><init>(Lcom/baidu/mobstat/ct;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ct;->f:Landroid/os/Handler;

    .line 116
    return-void
.end method

.method public static a()Lcom/baidu/mobstat/ct;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/baidu/mobstat/ct;->A:Lcom/baidu/mobstat/ct;

    return-object v0
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 524
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 525
    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "appKey"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/mobstat/ct;->v:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "appVersion"

    invoke-static {p1}, Lcom/baidu/mobstat/ff;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "appName"

    invoke-static {p1}, Lcom/baidu/mobstat/ff;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "sdkVersion"

    invoke-static {}, Lcom/baidu/mobstat/StatService;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "deviceName"

    invoke-static {p1}, Lcom/baidu/mobstat/ff;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "platform"

    const-string/jumbo v3, "Android"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "cuid"

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v3

    invoke-virtual {v3, p1, v5}, Lcom/baidu/mobstat/CooperService;->getCUID(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "auto"

    const-string/jumbo v3, "1"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wss://mtjsocket.baidu.com/app?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    return-object v0

    .line 538
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 540
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 541
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 546
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 550
    :catch_0
    move-exception v0

    goto :goto_0

    .line 544
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 632
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 633
    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "upload"

    .line 639
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "data"

    .line 640
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    :goto_0
    return-object v0

    .line 634
    :cond_0
    return-object v0

    .line 643
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 747
    if-eqz p1, :cond_1

    .line 751
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    const-string/jumbo v0, "meta"

    .line 757
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v1, "matchAll"

    .line 758
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v1, "data"

    .line 760
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 761
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    move v7, v5

    .line 762
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v7, v2, :cond_3

    .line 773
    if-nez v8, :cond_5

    .line 775
    if-eqz v8, :cond_6

    :cond_0
    move v1, v5

    .line 779
    :goto_1
    if-nez v1, :cond_7

    move-object v0, v4

    .line 788
    :goto_2
    return-object v0

    .line 748
    :cond_1
    return-object v4

    .line 752
    :cond_2
    return-object v4

    .line 763
    :cond_3
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string/jumbo v3, "page"

    .line 765
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 767
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 762
    :goto_3
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_0

    .line 768
    :cond_4
    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 786
    :catch_0
    move-exception v0

    :goto_4
    move-object v0, v4

    goto :goto_2

    :cond_5
    move v1, v6

    .line 774
    goto :goto_1

    .line 775
    :cond_6
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    .line 776
    goto :goto_1

    .line 780
    :cond_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v2, "meta"

    .line 781
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "data"

    .line 782
    invoke-virtual {v1, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_2

    .line 786
    :catch_1
    move-exception v0

    move-object v4, v1

    goto :goto_4
.end method

.method private a(Landroid/app/Activity;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 590
    instance-of v0, p1, Lcom/baidu/mobstat/IIgnoreAutoTrace;

    if-nez v0, :cond_0

    .line 594
    if-nez p2, :cond_1

    .line 597
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/baidu/mobstat/BDStatCore;->onPause(Landroid/app/Activity;ZLcom/baidu/mobstat/ExtraInfo;)V

    .line 599
    :goto_0
    return-void

    .line 591
    :cond_0
    return-void

    .line 595
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/baidu/mobstat/BDStatCore;->onResume(Landroid/app/Activity;Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/mobstat/ct;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/baidu/mobstat/ct;->h()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/ct;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ct;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/ct;Z)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ct;->b(Z)V

    return-void
.end method

.method private b(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/et;)V
    .locals 0

    .prologue
    .line 565
    if-eqz p3, :cond_0

    .line 569
    invoke-virtual {p3, p1, p2}, Lcom/baidu/mobstat/et;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 570
    return-void

    .line 566
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/baidu/mobstat/ct;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/baidu/mobstat/ct;->o()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 475
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 479
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 483
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/ct;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mobstat/BasicStoreTools;->setAutoTraceConfigFetchTime(Landroid/content/Context;J)V

    .line 484
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->a:Landroid/content/Context;

    const-string/jumbo v1, "mtj_auto.config"

    invoke-static {v0, v1, p1, v4}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 486
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->B:Landroid/os/Handler;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 487
    iget-object v1, p0, Lcom/baidu/mobstat/ct;->B:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 488
    return-void

    .line 476
    :cond_0
    return-void

    .line 480
    :cond_1
    return-void
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/ct;->j:Z

    .line 422
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->h:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 424
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->B:Landroid/os/Handler;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 425
    iget-object v1, p0, Lcom/baidu/mobstat/ct;->B:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 426
    return-void
.end method

.method private c(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 320
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/ei;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    :goto_0
    new-instance v0, Lcom/baidu/mobstat/cp;

    iget-object v1, p0, Lcom/baidu/mobstat/ct;->C:Lcom/baidu/mobstat/cp$a;

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/cp;-><init>(Lcom/baidu/mobstat/cp$a;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ct;->b:Lcom/baidu/mobstat/cp;

    .line 325
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->b:Lcom/baidu/mobstat/cp;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/cp;->a(Landroid/app/Activity;)V

    .line 326
    return-void

    .line 321
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    const-string/jumbo v1, "installConnectionTracker"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ei;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/et;)V
    .locals 6

    .prologue
    .line 573
    if-eqz p3, :cond_0

    .line 577
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->x:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/baidu/mobstat/ct;->r()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 578
    iget-object v1, p0, Lcom/baidu/mobstat/ct;->d:Landroid/app/Activity;

    const/4 v5, 0x1

    move-object v0, p3

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mobstat/et;->a(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 579
    return-void

    .line 574
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/baidu/mobstat/ct;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/baidu/mobstat/ct;->s()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 710
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 715
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "meta"

    .line 717
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v3, "data"

    .line 718
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 720
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 721
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    move v5, v2

    .line 723
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v5, v2, :cond_1

    .line 736
    iget-object v1, p0, Lcom/baidu/mobstat/ct;->x:Lorg/json/JSONObject;

    const-string/jumbo v2, "meta"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 737
    iget-object v1, p0, Lcom/baidu/mobstat/ct;->x:Lorg/json/JSONObject;

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 739
    iget-object v1, p0, Lcom/baidu/mobstat/ct;->y:Lorg/json/JSONObject;

    const-string/jumbo v2, "meta"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 740
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->y:Lorg/json/JSONObject;

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 744
    :goto_1
    return-void

    .line 711
    :cond_0
    return-void

    .line 724
    :cond_1
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string/jumbo v3, "webLayout"

    .line 726
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "url"

    .line 727
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 729
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 732
    :cond_2
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 723
    :goto_2
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    .line 729
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 730
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 743
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic d(Lcom/baidu/mobstat/ct;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/baidu/mobstat/ct;->i()V

    return-void
.end method

.method static synthetic e(Lcom/baidu/mobstat/ct;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/baidu/mobstat/ct;->j()V

    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 329
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/ei;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->b:Lcom/baidu/mobstat/cp;

    if-nez v0, :cond_1

    .line 337
    :goto_1
    return-void

    .line 330
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    const-string/jumbo v1, "uninstallConnectionTracker"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ei;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->b:Lcom/baidu/mobstat/cp;

    invoke-virtual {v0}, Lcom/baidu/mobstat/cp;->b()V

    .line 335
    iput-object v2, p0, Lcom/baidu/mobstat/ct;->b:Lcom/baidu/mobstat/cp;

    goto :goto_1
.end method

.method static synthetic f(Lcom/baidu/mobstat/ct;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/baidu/mobstat/ct;->k()V

    return-void
.end method

.method static synthetic g(Lcom/baidu/mobstat/ct;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/baidu/mobstat/ct;->p()Z

    move-result v0

    if-nez v0, :cond_1

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/mobstat/ct;->c()V

    .line 345
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-boolean v0, p0, Lcom/baidu/mobstat/ct;->j:Z

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/baidu/mobstat/ct;->b()V

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->a:Landroid/content/Context;

    const-string/jumbo v1, "mtj_auto.config"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ct;->r:Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->r:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->c(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mobstat/da;->a(Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method static synthetic h(Lcom/baidu/mobstat/ct;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/baidu/mobstat/ct;->l()V

    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 373
    invoke-direct {p0}, Lcom/baidu/mobstat/ct;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v1, "autotrace: gesture success"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0, v2}, Lcom/baidu/mobstat/ct;->a(I)V

    .line 381
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mobstat/ff;->s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 387
    iget-object v1, p0, Lcom/baidu/mobstat/ct;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 388
    return-void

    .line 374
    :cond_0
    return-void

    .line 382
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v1, "autotrace: network invalid, failed to connect to circle server"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method static synthetic i(Lcom/baidu/mobstat/ct;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/baidu/mobstat/ct;->m()V

    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/baidu/mobstat/ct;->k:Z

    if-eqz v0, :cond_0

    .line 397
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->f:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 395
    iget-object v1, p0, Lcom/baidu/mobstat/ct;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method static synthetic j(Lcom/baidu/mobstat/ct;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/baidu/mobstat/ct;->n()V

    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/ct;->j:Z

    .line 404
    invoke-direct {p0}, Lcom/baidu/mobstat/ct;->p()Z

    move-result v0

    if-nez v0, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iget-boolean v0, p0, Lcom/baidu/mobstat/ct;->j:Z

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->B:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lcom/baidu/mobstat/ct;->B:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 408
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->h:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 410
    iget-object v1, p0, Lcom/baidu/mobstat/ct;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private l()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 430
    iget-boolean v0, p0, Lcom/baidu/mobstat/ct;->k:Z

    if-nez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/mobstat/ct;->v:Ljava/lang/String;

    .line 435
    invoke-static {v0, v1, v2, v3}, Lcom/baidu/mobstat/en;->a(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v0

    .line 436
    iput-boolean v3, p0, Lcom/baidu/mobstat/ct;->k:Z

    .line 438
    if-nez v0, :cond_1

    .line 441
    :goto_0
    return-void

    .line 431
    :cond_0
    return-void

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->a:Landroid/content/Context;

    const-string/jumbo v1, "mtj_vizParser.js"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ct;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method private m()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 445
    iget-boolean v0, p0, Lcom/baidu/mobstat/ct;->l:Z

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/mobstat/ct;->v:Ljava/lang/String;

    .line 450
    invoke-static {v0, v1, v2, v2}, Lcom/baidu/mobstat/en;->a(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v0

    .line 451
    iput-boolean v2, p0, Lcom/baidu/mobstat/ct;->l:Z

    .line 453
    if-nez v0, :cond_1

    .line 456
    :goto_0
    return-void

    .line 446
    :cond_0
    return-void

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->a:Landroid/content/Context;

    const-string/jumbo v1, "mtj_autoTracker.js"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ct;->q:Ljava/lang/String;

    goto :goto_0
.end method

.method private n()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 460
    iget-boolean v0, p0, Lcom/baidu/mobstat/ct;->m:Z

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/mobstat/ct;->v:Ljava/lang/String;

    const/4 v2, 0x2

    .line 465
    invoke-static {v0, v1, v2, v3}, Lcom/baidu/mobstat/en;->a(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v0

    .line 466
    iput-boolean v3, p0, Lcom/baidu/mobstat/ct;->m:Z

    .line 468
    if-nez v0, :cond_1

    .line 472
    :goto_0
    return-void

    .line 461
    :cond_0
    return-void

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->B:Landroid/os/Handler;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 470
    iget-object v1, p0, Lcom/baidu/mobstat/ct;->B:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private o()V
    .locals 4

    .prologue
    .line 491
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v1, "autotrace: start to connect"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 492
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/ct;->a(I)V

    .line 495
    invoke-direct {p0}, Lcom/baidu/mobstat/ct;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 502
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/ei;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 512
    :goto_0
    :try_start_0
    new-instance v0, Lcom/baidu/mobstat/co;

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    new-instance v2, Lcom/baidu/mobstat/ct$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/baidu/mobstat/ct$b;-><init>(Lcom/baidu/mobstat/ct;Lcom/baidu/mobstat/cu;)V

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/co;-><init>(Ljava/net/URI;Lcom/baidu/mobstat/co$a;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ct;->c:Lcom/baidu/mobstat/co;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :goto_1
    return-void

    .line 496
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v1, "autotrace: connect established, no need to duplicate connect"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    .line 497
    return-void

    :cond_1
    const-string/jumbo v0, "url:"

    .line 504
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 508
    :goto_2
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/ei;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 515
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private p()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 519
    iget-object v1, p0, Lcom/baidu/mobstat/ct;->c:Lcom/baidu/mobstat/co;

    if-nez v1, :cond_1

    .line 520
    :cond_0
    :goto_0
    return v0

    .line 519
    :cond_1
    iget-object v1, p0, Lcom/baidu/mobstat/ct;->c:Lcom/baidu/mobstat/co;

    invoke-virtual {v1}, Lcom/baidu/mobstat/co;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private q()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 558
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 561
    const/4 v0, 0x1

    return v0

    .line 559
    :cond_0
    return v1
.end method

.method private r()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 583
    iget-object v1, p0, Lcom/baidu/mobstat/ct;->d:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 586
    :goto_0
    return-object v0

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private s()V
    .locals 4

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/baidu/mobstat/ct;->p()Z

    move-result v0

    if-nez v0, :cond_1

    .line 609
    :cond_0
    return-void

    .line 608
    :cond_1
    iget-boolean v0, p0, Lcom/baidu/mobstat/ct;->j:Z

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->e:Lcom/baidu/mobstat/cw;

    iget-object v1, p0, Lcom/baidu/mobstat/ct;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cw;->a(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object v0

    .line 613
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 614
    if-nez v0, :cond_2

    .line 627
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->h:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 628
    iget-object v1, p0, Lcom/baidu/mobstat/ct;->h:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 629
    return-void

    .line 615
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/ei;->b()Z

    move-result v1

    if-nez v1, :cond_3

    .line 620
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mobstat/ct;->c:Lcom/baidu/mobstat/co;

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/co;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 624
    :catch_0
    move-exception v0

    goto :goto_0

    .line 616
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doSendSnapshot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/ei;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private t()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 649
    iget-object v1, p0, Lcom/baidu/mobstat/ct;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/mobstat/ff;->s(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 653
    iget-boolean v1, p0, Lcom/baidu/mobstat/ct;->m:Z

    if-nez v1, :cond_4

    .line 658
    iget-wide v2, p0, Lcom/baidu/mobstat/ct;->u:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 659
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/ct;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/BasicStoreTools;->getAutoTraceConfigFetchTime(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/mobstat/ct;->u:J

    .line 662
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/mobstat/ct;->u:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_2

    .line 664
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->f:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 665
    iget-object v1, p0, Lcom/baidu/mobstat/ct;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 667
    :cond_2
    return-void

    .line 650
    :cond_3
    return-void

    .line 654
    :cond_4
    return-void
.end method

.method private u()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 670
    iget-object v2, p0, Lcom/baidu/mobstat/ct;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/mobstat/ff;->s(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 674
    iget-boolean v2, p0, Lcom/baidu/mobstat/ct;->l:Z

    if-nez v2, :cond_4

    .line 679
    iget-boolean v2, p0, Lcom/baidu/mobstat/ct;->n:Z

    if-eqz v2, :cond_5

    .line 685
    :goto_0
    iget-wide v2, p0, Lcom/baidu/mobstat/ct;->s:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 686
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobstat/ct;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/BasicStoreTools;->getAutoTraceTrackJsFetchTime(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/mobstat/ct;->s:J

    .line 687
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobstat/ct;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/BasicStoreTools;->getAutoTraceTrackJsFetchInterval(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/mobstat/ct;->t:J

    .line 690
    :cond_0
    iget-boolean v2, p0, Lcom/baidu/mobstat/ct;->n:Z

    if-nez v2, :cond_6

    .line 691
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/mobstat/ct;->s:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/baidu/mobstat/ct;->t:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_7

    :goto_1
    if-nez v0, :cond_2

    .line 693
    :goto_2
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->f:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 694
    iget-object v1, p0, Lcom/baidu/mobstat/ct;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 696
    :cond_2
    return-void

    .line 671
    :cond_3
    return-void

    .line 675
    :cond_4
    return-void

    .line 680
    :cond_5
    iget-object v2, p0, Lcom/baidu/mobstat/ct;->a:Landroid/content/Context;

    const-string/jumbo v3, "mtj_autoTracker.js"

    invoke-static {v2, v3}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/mobstat/ct;->q:Ljava/lang/String;

    .line 681
    iput-boolean v0, p0, Lcom/baidu/mobstat/ct;->n:Z

    goto :goto_0

    .line 690
    :cond_6
    iget-object v2, p0, Lcom/baidu/mobstat/ct;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_7
    move v0, v1

    .line 691
    goto :goto_1
.end method

.method private v()V
    .locals 1

    .prologue
    .line 700
    iget-boolean v0, p0, Lcom/baidu/mobstat/ct;->o:Z

    if-eqz v0, :cond_0

    .line 707
    :goto_0
    return-void

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 705
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/ct;->o:Z

    goto :goto_0

    .line 702
    :cond_1
    invoke-direct {p0}, Lcom/baidu/mobstat/ct;->h()V

    goto :goto_1
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    const-string/jumbo v0, ""

    .line 792
    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobstat/ct;->a(ILjava/lang/String;)V

    .line 793
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 796
    iget-object v1, p0, Lcom/baidu/mobstat/ct;->E:Ljava/lang/Object;

    monitor-enter v1

    .line 797
    :try_start_0
    iget-object v2, p0, Lcom/baidu/mobstat/ct;->a:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 801
    if-eqz p2, :cond_1

    .line 805
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 806
    iget-object v4, p0, Lcom/baidu/mobstat/ct;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/mobstat/ff;->s(Landroid/content/Context;)Z

    move-result v4

    .line 807
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v4, :cond_2

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 808
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 809
    iget-object v2, p0, Lcom/baidu/mobstat/ct;->D:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 811
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->D:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 812
    iget-object v2, p0, Lcom/baidu/mobstat/ct;->a:Landroid/content/Context;

    const-string/jumbo v3, "trace_circle.data"

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 813
    monitor-exit v1

    .line 814
    return-void

    .line 798
    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    const-string/jumbo p2, ""

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 807
    goto :goto_1

    .line 813
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 256
    invoke-direct {p0}, Lcom/baidu/mobstat/ct;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ct;->a:Landroid/content/Context;

    .line 261
    iput-object p1, p0, Lcom/baidu/mobstat/ct;->d:Landroid/app/Activity;

    .line 264
    invoke-direct {p0}, Lcom/baidu/mobstat/ct;->v()V

    .line 266
    invoke-direct {p0}, Lcom/baidu/mobstat/ct;->t()V

    .line 268
    invoke-direct {p0}, Lcom/baidu/mobstat/ct;->u()V

    .line 271
    invoke-direct {p0, p1, v3}, Lcom/baidu/mobstat/ct;->a(Landroid/app/Activity;Z)V

    .line 273
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ct;->c(Landroid/app/Activity;)V

    .line 275
    invoke-direct {p0}, Lcom/baidu/mobstat/ct;->g()V

    .line 278
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->z:Lcom/baidu/mobstat/ek;

    iget-object v1, p0, Lcom/baidu/mobstat/ct;->y:Lorg/json/JSONObject;

    iget-boolean v2, p0, Lcom/baidu/mobstat/ct;->w:Z

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/baidu/mobstat/ek;->a(Landroid/app/Activity;ZLorg/json/JSONObject;Z)V

    .line 279
    return-void

    .line 257
    :cond_0
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/et;)V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->p:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p3}, Lcom/baidu/mobstat/ct;->b(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/et;)V

    .line 310
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    :goto_1
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->q:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p3}, Lcom/baidu/mobstat/ct;->c(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/et;)V

    .line 315
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->a:Landroid/content/Context;

    const-string/jumbo v1, "mtj_vizParser.js"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ct;->p:Ljava/lang/String;

    goto :goto_0

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->a:Landroid/content/Context;

    const-string/jumbo v1, "mtj_autoTracker.js"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ct;->q:Ljava/lang/String;

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/baidu/mobstat/ct;->v:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/baidu/mobstat/ct;->w:Z

    .line 249
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcom/baidu/mobstat/cj;->b(Landroid/app/Activity;)V

    .line 353
    return-void

    .line 349
    :cond_0
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 286
    invoke-direct {p0}, Lcom/baidu/mobstat/ct;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Lcom/baidu/mobstat/ct;->d:Landroid/app/Activity;

    .line 294
    invoke-direct {p0, p1, v1}, Lcom/baidu/mobstat/ct;->a(Landroid/app/Activity;Z)V

    .line 296
    invoke-direct {p0}, Lcom/baidu/mobstat/ct;->f()V

    .line 299
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->z:Lcom/baidu/mobstat/ek;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/ek;->a(Landroid/app/Activity;Z)V

    .line 300
    return-void

    .line 287
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcom/baidu/mobstat/cj;->a(Landroid/app/Activity;)V

    .line 361
    return-void

    .line 357
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 602
    invoke-direct {p0}, Lcom/baidu/mobstat/ct;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    :goto_0
    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->c:Lcom/baidu/mobstat/co;

    invoke-virtual {v0}, Lcom/baidu/mobstat/co;->a()V

    goto :goto_0
.end method

.method public e()Lorg/json/JSONArray;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 817
    iget-object v2, p0, Lcom/baidu/mobstat/ct;->E:Ljava/lang/Object;

    monitor-enter v2

    .line 818
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mobstat/ct;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 822
    iget-object v1, p0, Lcom/baidu/mobstat/ct;->a:Landroid/content/Context;

    const-string/jumbo v3, "trace_circle.data"

    invoke-static {v1, v3}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 825
    :try_start_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 832
    :goto_0
    if-eqz v0, :cond_2

    .line 836
    :goto_1
    :try_start_2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/baidu/mobstat/ct;->D:Lorg/json/JSONArray;

    .line 837
    iget-object v1, p0, Lcom/baidu/mobstat/ct;->a:Landroid/content/Context;

    const-string/jumbo v3, "trace_circle.data"

    iget-object v4, p0, Lcom/baidu/mobstat/ct;->D:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 839
    monitor-exit v2

    return-object v0

    .line 819
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    .line 826
    :cond_1
    :try_start_3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 833
    :cond_2
    :try_start_4
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_1

    .line 839
    :catchall_0
    move-exception v0

    .line 840
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 830
    :catch_0
    move-exception v1

    goto :goto_0
.end method
