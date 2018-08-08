.class public Lcom/baidu/mobstat/BDStatCore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INVOKE_ACT:I = 0x1

.field public static final INVOKE_API:I = 0x0

.field public static final INVOKE_CUSTOME:I = 0x3

.field public static final INVOKE_FRAG:I = 0x2

.field private static a:Lcom/baidu/mobstat/BDStatCore;


# instance fields
.field private b:Landroid/os/Handler;

.field private volatile c:Z

.field private d:Lcom/baidu/mobstat/SessionAnalysis;

.field private e:Lcom/baidu/mobstat/EventAnalysis;

.field private f:Ljava/lang/Runnable;

.field private g:J

.field private volatile h:Z

.field private i:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v2, p0, Lcom/baidu/mobstat/BDStatCore;->c:Z

    const-wide/16 v0, 0x0

    .line 892
    iput-wide v0, p0, Lcom/baidu/mobstat/BDStatCore;->g:J

    .line 927
    iput-boolean v2, p0, Lcom/baidu/mobstat/BDStatCore;->h:Z

    .line 65
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "BDStatCore"

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 66
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 67
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    .line 69
    new-instance v0, Lcom/baidu/mobstat/SessionAnalysis;

    invoke-direct {v0}, Lcom/baidu/mobstat/SessionAnalysis;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->d:Lcom/baidu/mobstat/SessionAnalysis;

    .line 70
    new-instance v0, Lcom/baidu/mobstat/EventAnalysis;

    invoke-direct {v0}, Lcom/baidu/mobstat/EventAnalysis;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->e:Lcom/baidu/mobstat/EventAnalysis;

    .line 72
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "dataAnalyzeThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 74
    invoke-virtual {v0, v3}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 75
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/baidu/mobstat/BDStatCore;->i:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method private a()I
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "android.app.Fragment"

    .line 545
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    :try_start_1
    const-string/jumbo v2, "android.support.v4.app.Fragment"

    .line 552
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 557
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    move v4, v3

    .line 558
    :goto_2
    if-nez v5, :cond_1

    :cond_0
    const/4 v0, 0x3

    .line 589
    return v0

    .line 548
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 555
    :catch_1
    move-exception v2

    move-object v2, v1

    goto :goto_1

    .line 558
    :cond_1
    array-length v3, v5

    if-ge v4, v3, :cond_0

    .line 559
    aget-object v3, v5, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 560
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 564
    aget-object v6, v5, v4

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "onResume"

    .line 565
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 571
    :try_start_2
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .line 576
    :goto_3
    if-eqz v3, :cond_3

    const-class v6, Landroid/app/Activity;

    .line 580
    invoke-virtual {v6, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 582
    if-nez v0, :cond_5

    .line 584
    :cond_2
    if-nez v2, :cond_6

    .line 558
    :cond_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_2

    .line 574
    :catch_2
    move-exception v3

    move-object v3, v1

    goto :goto_3

    :cond_4
    const/4 v0, 0x1

    .line 581
    return v0

    .line 582
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 583
    return v8

    .line 584
    :cond_6
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 585
    return v8
.end method

.method static synthetic a(Lcom/baidu/mobstat/BDStatCore;J)J
    .locals 1

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/baidu/mobstat/BDStatCore;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;Lcom/baidu/mobstat/ExtraInfo;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    invoke-direct/range {p0 .. p7}, Lcom/baidu/mobstat/BDStatCore;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;Lcom/baidu/mobstat/ExtraInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;Lcom/baidu/mobstat/ExtraInfo;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/baidu/mobstat/ExtraInfo;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 842
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 845
    if-nez p6, :cond_5

    :cond_0
    move-object v0, v1

    .line 854
    :goto_0
    if-nez p7, :cond_6

    .line 858
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " eventId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", with eventLabel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", with acc "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x0

    .line 860
    cmp-long v4, p4, v4

    if-gtz v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    .line 861
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ", with duration "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    :cond_2
    if-nez v0, :cond_7

    .line 868
    :cond_3
    :goto_2
    if-nez v1, :cond_8

    .line 872
    :cond_4
    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 845
    :cond_5
    invoke-interface {p6}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 850
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 855
    :cond_6
    invoke-virtual {p7}, Lcom/baidu/mobstat/ExtraInfo;->dumpToJson()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_1

    .line 864
    :cond_7
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 865
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ", with attributes "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 868
    :cond_8
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", with extraInfo "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-static {v0}, Lcom/baidu/mobstat/ds;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/mobstat/BDStatCore;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/baidu/mobstat/BDStatCore;->c:Z

    return v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/BDStatCore;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/baidu/mobstat/BDStatCore;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->d:Lcom/baidu/mobstat/SessionAnalysis;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 593
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 594
    :goto_0
    array-length v1, v3

    if-lt v0, v1, :cond_0

    const-string/jumbo v0, ""

    .line 616
    return-object v0

    .line 595
    :cond_0
    aget-object v1, v3, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 596
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 602
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 607
    :goto_1
    if-eqz v1, :cond_1

    const-class v4, Landroid/app/Activity;

    .line 611
    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 594
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 605
    :catch_0
    move-exception v1

    move-object v1, v2

    goto :goto_1

    .line 612
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 936
    iget-boolean v0, p0, Lcom/baidu/mobstat/BDStatCore;->h:Z

    if-nez v0, :cond_0

    .line 940
    if-eqz p1, :cond_1

    .line 950
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->i:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 955
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->i:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/bn;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mobstat/bn;-><init>(Lcom/baidu/mobstat/BDStatCore;Landroid/content/Context;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 971
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/BDStatCore;->h:Z

    .line 972
    return-void

    .line 937
    :cond_0
    return-void

    .line 941
    :cond_1
    return-void

    .line 951
    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/baidu/mobstat/BDStatCore;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/baidu/mobstat/BDStatCore;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/EventAnalysis;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->e:Lcom/baidu/mobstat/EventAnalysis;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/mobstat/BDStatCore;)J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/baidu/mobstat/BDStatCore;->g:J

    return-wide v0
.end method

.method public static instance()Lcom/baidu/mobstat/BDStatCore;
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcom/baidu/mobstat/BDStatCore;->a:Lcom/baidu/mobstat/BDStatCore;

    if-eqz v0, :cond_0

    .line 51
    :goto_0
    sget-object v0, Lcom/baidu/mobstat/BDStatCore;->a:Lcom/baidu/mobstat/BDStatCore;

    return-object v0

    :cond_0
    const-class v1, Lcom/baidu/mobstat/BDStatCore;

    .line 44
    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lcom/baidu/mobstat/BDStatCore;->a:Lcom/baidu/mobstat/BDStatCore;

    if-eqz v0, :cond_1

    .line 48
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 46
    :cond_1
    :try_start_1
    new-instance v0, Lcom/baidu/mobstat/BDStatCore;

    invoke-direct {v0}, Lcom/baidu/mobstat/BDStatCore;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/BDStatCore;->a:Lcom/baidu/mobstat/BDStatCore;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public autoTrackSessionEndTime(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 172
    if-eqz p1, :cond_0

    .line 176
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 179
    iget-object v2, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v3, Lcom/baidu/mobstat/bp;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/baidu/mobstat/bp;-><init>(Lcom/baidu/mobstat/BDStatCore;Landroid/content/Context;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    return-void

    .line 173
    :cond_0
    return-void
.end method

.method public autoTrackSessionStartTime(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 162
    iget-object v2, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v3, Lcom/baidu/mobstat/bo;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/baidu/mobstat/bo;-><init>(Lcom/baidu/mobstat/BDStatCore;Landroid/content/Context;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    return-void

    .line 155
    :cond_0
    return-void
.end method

.method public cancelSendLogCheck()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 206
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->f:Ljava/lang/Runnable;

    .line 208
    if-nez v0, :cond_0

    .line 212
    :goto_0
    iput-object v2, p0, Lcom/baidu/mobstat/BDStatCore;->f:Ljava/lang/Runnable;

    .line 213
    return-void

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public doSendLogCheck(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 189
    if-eqz p1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->d:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-virtual {v0}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionTimeOut()I

    move-result v0

    .line 194
    new-instance v1, Lcom/baidu/mobstat/bq;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mobstat/bq;-><init>(Lcom/baidu/mobstat/BDStatCore;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/mobstat/BDStatCore;->f:Ljava/lang/Runnable;

    .line 202
    iget-object v1, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/baidu/mobstat/BDStatCore;->f:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    return-void

    .line 190
    :cond_0
    return-void
.end method

.method public getPageSessionHead()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->d:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-virtual {v0}, Lcom/baidu/mobstat/SessionAnalysis;->getPageSessionHead()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getSessionSize()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->d:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-virtual {v0}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionSize()I

    move-result v0

    return v0
.end method

.method public getSessionStartTime()J
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->d:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-virtual {v0}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->a(Landroid/content/Context;)V

    .line 94
    iget-boolean v0, p0, Lcom/baidu/mobstat/BDStatCore;->c:Z

    if-nez v0, :cond_0

    .line 98
    invoke-static {p1}, Lcom/baidu/mobstat/ActivityLifeTask;->registerActivityLifeCallback(Landroid/content/Context;)V

    .line 100
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/az;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mobstat/az;-><init>(Lcom/baidu/mobstat/BDStatCore;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    return-void

    .line 95
    :cond_0
    return-void
.end method

.method public onErised(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 895
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->d:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-virtual {v0}, Lcom/baidu/mobstat/SessionAnalysis;->isSessionStart()Z

    move-result v0

    if-nez v0, :cond_0

    .line 899
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 901
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 903
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/bm;

    move-object v2, p0

    move-object v3, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/baidu/mobstat/bm;-><init>(Lcom/baidu/mobstat/BDStatCore;Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 920
    return-void

    .line 896
    :cond_0
    return-void
.end method

.method public onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 694
    const/4 v14, 0x0

    move-object v1, p0

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

    invoke-virtual/range {v1 .. v14}, Lcom/baidu/mobstat/BDStatCore;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 696
    return-void
.end method

.method public onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 702
    if-eqz p1, :cond_0

    .line 706
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 708
    invoke-direct/range {p0 .. p1}, Lcom/baidu/mobstat/BDStatCore;->b(Landroid/content/Context;)V

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    move-object/from16 v17, v0

    new-instance v2, Lcom/baidu/mobstat/bg;

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p1

    move-wide/from16 v6, p5

    move-object/from16 v8, p2

    move/from16 v9, p4

    move-object/from16 v10, p12

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move/from16 v16, p13

    invoke-direct/range {v2 .. v16}, Lcom/baidu/mobstat/bg;-><init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Landroid/content/Context;JLjava/lang/String;ILjava/util/Map;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 729
    return-void

    .line 703
    :cond_0
    return-void
.end method

.method public onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 623
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/mobstat/BDStatCore;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;ZZ)V

    .line 624
    return-void
.end method

.method public onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;ZZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 628
    if-eqz p1, :cond_0

    .line 632
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 636
    iget-object v12, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/mobstat/be;

    move-object v1, p0

    move-object/from16 v2, p3

    move-object v3, p1

    move/from16 v6, p7

    move-object v7, p2

    move/from16 v8, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p5

    move/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/baidu/mobstat/be;-><init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Landroid/content/Context;JZLjava/lang/String;ILjava/util/Map;Lcom/baidu/mobstat/ExtraInfo;Z)V

    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 653
    return-void

    .line 629
    :cond_0
    return-void
.end method

.method public onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 13

    .prologue
    .line 658
    if-eqz p1, :cond_0

    .line 662
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 664
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->b(Landroid/content/Context;)V

    .line 666
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 668
    iget-object v12, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/mobstat/bf;

    move-object v1, p0

    move-object/from16 v2, p3

    move-object v3, p1

    move-object v6, p2

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/baidu/mobstat/bf;-><init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Landroid/content/Context;JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 687
    return-void

    .line 659
    :cond_0
    return-void
.end method

.method public onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 799
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/baidu/mobstat/BDStatCore;->onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;ZZ)V

    .line 800
    return-void
.end method

.method public onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;ZZ)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 806
    if-eqz p1, :cond_0

    .line 810
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 814
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 816
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->b(Landroid/content/Context;)V

    .line 818
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 820
    iget-object v13, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/mobstat/bj;

    move-object v1, p0

    move-object/from16 v2, p3

    move-object v3, p1

    move/from16 v6, p8

    move-object/from16 v7, p2

    move-wide/from16 v8, p4

    move-object/from16 v10, p7

    move-object/from16 v11, p6

    move/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Lcom/baidu/mobstat/bj;-><init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Landroid/content/Context;JZLjava/lang/String;JLjava/util/Map;Lcom/baidu/mobstat/ExtraInfo;Z)V

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 838
    return-void

    .line 807
    :cond_0
    return-void

    .line 811
    :cond_1
    return-void
.end method

.method public onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 764
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/mobstat/BDStatCore;->onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V

    .line 765
    return-void
.end method

.method public onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 769
    if-eqz p1, :cond_0

    .line 773
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 775
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 777
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/bi;

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object/from16 v5, p5

    move-object v6, p4

    move-object v7, p1

    move/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Lcom/baidu/mobstat/bi;-><init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/baidu/mobstat/ExtraInfo;Landroid/content/Context;JZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 794
    return-void

    .line 770
    :cond_0
    return-void
.end method

.method public onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    .line 733
    if-eqz p1, :cond_0

    .line 737
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 739
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->b(Landroid/content/Context;)V

    .line 741
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 743
    iget-object v8, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/mobstat/bh;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v6, p4

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/baidu/mobstat/bh;-><init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Landroid/content/Context;JZLjava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 760
    return-void

    .line 734
    :cond_0
    return-void
.end method

.method public onPageEnd(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/baidu/mobstat/BDStatCore;->onPageEnd(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Z)V

    .line 246
    return-void
.end method

.method public onPageEnd(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Z)V
    .locals 10

    .prologue
    .line 249
    if-eqz p1, :cond_0

    .line 253
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 259
    invoke-direct {p0}, Lcom/baidu/mobstat/BDStatCore;->b()Ljava/lang/String;

    move-result-object v5

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 262
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/bs;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v8, p3

    move v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/baidu/mobstat/bs;-><init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 270
    return-void

    .line 250
    :cond_0
    return-void

    .line 254
    :cond_1
    return-void
.end method

.method public onPageStart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 219
    if-eqz p1, :cond_0

    .line 223
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 229
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->b(Landroid/content/Context;)V

    .line 231
    invoke-direct {p0}, Lcom/baidu/mobstat/BDStatCore;->a()I

    move-result v5

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 234
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/br;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/baidu/mobstat/br;-><init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Landroid/content/Context;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 242
    return-void

    .line 220
    :cond_0
    return-void

    .line 224
    :cond_1
    return-void
.end method

.method public onPause(Landroid/app/Activity;ZLcom/baidu/mobstat/ExtraInfo;)V
    .locals 7

    .prologue
    .line 404
    if-eqz p1, :cond_0

    .line 408
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 409
    if-eqz v4, :cond_1

    .line 413
    invoke-virtual {p0, v4}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 415
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 417
    iget-object v6, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/mobstat/bb;

    move-object v1, p0

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/bb;-><init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/ref/WeakReference;ZLandroid/content/Context;Lcom/baidu/mobstat/ExtraInfo;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 444
    return-void

    .line 405
    :cond_0
    return-void

    .line 410
    :cond_1
    return-void
.end method

.method public onPause(Landroid/app/Fragment;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 495
    if-eqz p1, :cond_0

    .line 499
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 500
    if-eqz v4, :cond_1

    .line 504
    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 505
    if-eqz v5, :cond_2

    .line 509
    invoke-virtual {p0, v5}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 511
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 513
    iget-object v6, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/mobstat/bd;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/bd;-><init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/ref/WeakReference;Landroid/app/Fragment;Landroid/app/Activity;Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 538
    return-void

    .line 496
    :cond_0
    return-void

    .line 501
    :cond_1
    return-void

    .line 506
    :cond_2
    return-void
.end method

.method public onPause(Landroid/support/v4/app/Fragment;)V
    .locals 7

    .prologue
    .line 447
    if-eqz p1, :cond_0

    .line 451
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 452
    if-eqz v4, :cond_1

    .line 456
    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 457
    if-eqz v5, :cond_2

    .line 461
    invoke-virtual {p0, v5}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 463
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 466
    iget-object v6, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/mobstat/bc;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/bc;-><init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/ref/WeakReference;Landroid/support/v4/app/Fragment;Landroid/app/Activity;Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 491
    return-void

    .line 448
    :cond_0
    return-void

    .line 453
    :cond_1
    return-void

    .line 458
    :cond_2
    return-void
.end method

.method public onResume(Landroid/app/Activity;Z)V
    .locals 4

    .prologue
    .line 273
    if-eqz p1, :cond_0

    .line 277
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 284
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/BDStatCore;->b(Landroid/content/Context;)V

    .line 286
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 288
    iget-object v2, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v3, Lcom/baidu/mobstat/bt;

    invoke-direct {v3, p0, v1, p2, v0}, Lcom/baidu/mobstat/bt;-><init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/ref/WeakReference;ZLandroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 311
    return-void

    .line 274
    :cond_0
    return-void

    .line 279
    :cond_1
    return-void
.end method

.method public onResume(Landroid/app/Fragment;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 360
    if-eqz p1, :cond_0

    .line 364
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_1

    .line 369
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 370
    if-eqz v0, :cond_2

    .line 374
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 376
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/BDStatCore;->b(Landroid/content/Context;)V

    .line 378
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 380
    iget-object v2, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v3, Lcom/baidu/mobstat/ba;

    invoke-direct {v3, p0, v1, v0}, Lcom/baidu/mobstat/ba;-><init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/ref/WeakReference;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 401
    return-void

    .line 361
    :cond_0
    return-void

    .line 366
    :cond_1
    return-void

    .line 371
    :cond_2
    return-void
.end method

.method public onResume(Landroid/support/v4/app/Fragment;)V
    .locals 4

    .prologue
    .line 314
    if-eqz p1, :cond_0

    .line 318
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_1

    .line 323
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_2

    .line 328
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 330
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/BDStatCore;->b(Landroid/content/Context;)V

    .line 332
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 335
    iget-object v2, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v3, Lcom/baidu/mobstat/bu;

    invoke-direct {v3, p0, v1, v0}, Lcom/baidu/mobstat/bu;-><init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/ref/WeakReference;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 356
    return-void

    .line 315
    :cond_0
    return-void

    .line 320
    :cond_1
    return-void

    .line 325
    :cond_2
    return-void
.end method

.method public onSessionStart(Landroid/content/Context;Z)V
    .locals 7

    .prologue
    .line 133
    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->init(Landroid/content/Context;)V

    .line 139
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/BDStatCore;->b(Landroid/content/Context;)V

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 143
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/bk;

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/baidu/mobstat/bk;-><init>(Lcom/baidu/mobstat/BDStatCore;Landroid/content/Context;JZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    return-void

    .line 134
    :cond_0
    return-void
.end method

.method public onStat(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 878
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->d:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-virtual {v0}, Lcom/baidu/mobstat/SessionAnalysis;->isSessionStart()Z

    move-result v0

    if-nez v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->b:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/bl;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/mobstat/bl;-><init>(Lcom/baidu/mobstat/BDStatCore;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 889
    return-void

    .line 879
    :cond_0
    return-void
.end method

.method public setSessionTimeOut(I)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore;->d:Lcom/baidu/mobstat/SessionAnalysis;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/SessionAnalysis;->setSessionTimeOut(I)V

    .line 117
    return-void
.end method
