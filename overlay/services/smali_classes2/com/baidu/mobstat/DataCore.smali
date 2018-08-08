.class public Lcom/baidu/mobstat/DataCore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lorg/json/JSONObject;

.field private static b:Lcom/baidu/mobstat/DataCore;


# instance fields
.field private c:Lorg/json/JSONArray;

.field private d:Lorg/json/JSONArray;

.field private e:Lorg/json/JSONArray;

.field private f:Z

.field private volatile g:I

.field private h:Lcom/baidu/mobstat/StatService$WearListener;

.field private i:Lorg/json/JSONObject;

.field private j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    .line 34
    new-instance v0, Lcom/baidu/mobstat/DataCore;

    invoke-direct {v0}, Lcom/baidu/mobstat/DataCore;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/DataCore;->b:Lcom/baidu/mobstat/DataCore;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/DataCore;->c:Lorg/json/JSONArray;

    .line 45
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    .line 47
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    .line 49
    iput-boolean v1, p0, Lcom/baidu/mobstat/DataCore;->f:Z

    .line 51
    iput v1, p0, Lcom/baidu/mobstat/DataCore;->g:I

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/DataCore;->j:Ljava/lang/Object;

    .line 63
    return-void
.end method

.method private a(Lorg/json/JSONObject;)I
    .locals 10

    .prologue
    const/4 v0, 0x1

    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 520
    if-eqz p1, :cond_2

    :try_start_0
    const-string/jumbo v2, "he"

    .line 525
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "sq"

    .line 526
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v3, "ss"

    .line 527
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 528
    cmp-long v2, v2, v8

    if-gtz v2, :cond_3

    move v2, v0

    :goto_0
    if-nez v2, :cond_4

    cmp-long v2, v4, v8

    if-nez v2, :cond_4

    :goto_1
    :try_start_1
    const-string/jumbo v2, "pr"

    .line 536
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 537
    if-nez v3, :cond_5

    :cond_0
    move v1, v0

    .line 552
    :cond_1
    :goto_2
    return v1

    .line 521
    :cond_2
    return v1

    :cond_3
    move v2, v1

    .line 528
    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 533
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 537
    :cond_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    move v1, v0

    .line 538
    :goto_3
    :try_start_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 539
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v4, "c"

    .line 540
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v6, "e"

    .line 541
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v6

    .line 543
    cmp-long v0, v6, v8

    if-eqz v0, :cond_6

    cmp-long v0, v4, v8

    if-nez v0, :cond_6

    .line 544
    add-int/lit8 v0, v1, 0x1

    .line 538
    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_3

    :cond_6
    move v0, v1

    .line 543
    goto :goto_4

    .line 550
    :catch_1
    move-exception v1

    move v1, v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private a(Landroid/content/Context;JJ)Lorg/json/JSONArray;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 667
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 668
    invoke-static {}, Lcom/baidu/mobstat/cf;->a()Lcom/baidu/mobstat/cf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/cf;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 669
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 684
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 696
    :goto_2
    if-nez v0, :cond_4

    .line 707
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x5

    .line 708
    if-gt v0, v2, :cond_5

    move-object v0, v1

    .line 713
    :goto_4
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 671
    :cond_2
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 672
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_0

    move v2, v3

    .line 673
    :goto_5
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 674
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 673
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 684
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    :try_start_1
    const-string/jumbo v5, "day"

    .line 686
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v6

    .line 687
    cmp-long v0, v6, p2

    if-nez v0, :cond_1

    move v0, v3

    .line 689
    goto :goto_2

    .line 698
    :cond_4
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "day"

    .line 699
    invoke-virtual {v0, v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "count"

    .line 700
    invoke-virtual {v0, v2, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 701
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 704
    :catch_0
    move-exception v0

    goto :goto_3

    .line 710
    :cond_5
    add-int/lit8 v2, v0, -0x5

    invoke-interface {v1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_4

    .line 693
    :catch_1
    move-exception v0

    goto :goto_1

    .line 679
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 904
    iget-object v1, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    monitor-enter v1

    .line 905
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    .line 906
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 908
    iget-object v1, p0, Lcom/baidu/mobstat/DataCore;->c:Lorg/json/JSONArray;

    monitor-enter v1

    .line 909
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/DataCore;->c:Lorg/json/JSONArray;

    .line 910
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 912
    iget-object v1, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    monitor-enter v1

    .line 913
    :try_start_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    .line 914
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 916
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    .line 917
    return-void

    .line 906
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 910
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 914
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 871
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->h:Lcom/baidu/mobstat/StatService$WearListener;

    if-nez v0, :cond_1

    .line 876
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/LogSender;->instance()Lcom/baidu/mobstat/LogSender;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Lcom/baidu/mobstat/LogSender;->saveLogData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 877
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Save log: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    .line 880
    if-nez p3, :cond_2

    .line 887
    :goto_0
    return-void

    .line 871
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->h:Lcom/baidu/mobstat/StatService$WearListener;

    invoke-interface {v0, p2}, Lcom/baidu/mobstat/StatService$WearListener;->onSendLogData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Log has been passed to app level, log: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    .line 873
    return-void

    .line 881
    :cond_2
    if-nez p4, :cond_3

    .line 884
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 882
    :cond_3
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;JI)V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 559
    invoke-static {}, Lcom/baidu/mobstat/cf;->a()Lcom/baidu/mobstat/cf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/cf;->a(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 561
    cmp-long v3, v0, v4

    if-lez v3, :cond_4

    move v3, v7

    :goto_0
    if-nez v3, :cond_0

    if-nez p5, :cond_5

    :cond_0
    :goto_1
    const-string/jumbo v3, "first"

    .line 566
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p2, v3, v0}, Lcom/baidu/mobstat/DataCore;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 570
    if-nez p5, :cond_6

    .line 587
    invoke-static {}, Lcom/baidu/mobstat/cf;->a()Lcom/baidu/mobstat/cf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/cf;->c(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_2
    const-string/jumbo v3, "session_last_interval"

    .line 591
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p2, v3, v0}, Lcom/baidu/mobstat/DataCore;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, ""

    const-string/jumbo v0, ""

    .line 596
    invoke-static {}, Lcom/baidu/mobstat/cf;->a()Lcom/baidu/mobstat/cf;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/baidu/mobstat/cf;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 597
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 606
    :cond_1
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v0, v2

    .line 616
    :goto_4
    invoke-static {p3, p4}, Lcom/baidu/mobstat/fh;->a(J)Ljava/lang/String;

    move-result-object v7

    .line 617
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 618
    :cond_2
    add-int v2, p5, v0

    .line 621
    :goto_5
    if-nez p5, :cond_d

    :goto_6
    const-string/jumbo v3, "session_today_cnt"

    .line 626
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p2, v3, v2}, Lcom/baidu/mobstat/DataCore;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 629
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-wide v2, v4

    .line 637
    :goto_7
    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 645
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/cf;->a()Lcom/baidu/mobstat/cf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/cf;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 648
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object v0, v6

    .line 655
    :goto_8
    if-eqz v0, :cond_11

    :goto_9
    const-string/jumbo v1, "recent"

    .line 660
    invoke-direct {p0, p2, v1, v0}, Lcom/baidu/mobstat/DataCore;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 662
    :goto_a
    return-void

    :cond_4
    move v3, v2

    .line 561
    goto/16 :goto_0

    .line 563
    :cond_5
    invoke-static {}, Lcom/baidu/mobstat/cf;->a()Lcom/baidu/mobstat/cf;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p4}, Lcom/baidu/mobstat/cf;->a(Landroid/content/Context;J)V

    move-wide v0, p3

    goto/16 :goto_1

    .line 572
    :cond_6
    invoke-static {}, Lcom/baidu/mobstat/cf;->a()Lcom/baidu/mobstat/cf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/cf;->b(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 574
    sub-long v0, p3, v8

    .line 576
    cmp-long v3, v8, v4

    if-eqz v3, :cond_9

    cmp-long v3, v0, v4

    if-lez v3, :cond_8

    move v3, v7

    :goto_b
    if-nez v3, :cond_9

    const-wide/16 v0, -0x1

    .line 584
    :cond_7
    :goto_c
    invoke-static {}, Lcom/baidu/mobstat/cf;->a()Lcom/baidu/mobstat/cf;

    move-result-object v3

    invoke-virtual {v3, p1, p3, p4}, Lcom/baidu/mobstat/cf;->b(Landroid/content/Context;J)V

    .line 585
    invoke-static {}, Lcom/baidu/mobstat/cf;->a()Lcom/baidu/mobstat/cf;

    move-result-object v3

    invoke-virtual {v3, p1, v0, v1}, Lcom/baidu/mobstat/cf;->c(Landroid/content/Context;J)V

    goto/16 :goto_2

    :cond_8
    move v3, v2

    .line 576
    goto :goto_b

    .line 579
    :cond_9
    cmp-long v3, v8, v4

    if-nez v3, :cond_7

    move-wide v0, v4

    .line 581
    goto :goto_c

    :cond_a
    const-string/jumbo v8, ":"

    .line 597
    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, ":"

    .line 598
    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 599
    if-eqz v3, :cond_1

    array-length v8, v3

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 600
    aget-object v1, v3, v2

    .line 601
    aget-object v0, v3, v7

    goto/16 :goto_3

    .line 608
    :cond_b
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto/16 :goto_4

    .line 611
    :catch_0
    move-exception v0

    move v0, v2

    goto/16 :goto_4

    .line 617
    :cond_c
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move/from16 v2, p5

    goto/16 :goto_5

    .line 622
    :cond_d
    invoke-static {}, Lcom/baidu/mobstat/cf;->a()Lcom/baidu/mobstat/cf;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, p1, v8}, Lcom/baidu/mobstat/cf;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 631
    :cond_e
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    int-to-long v2, v2

    goto/16 :goto_7

    .line 634
    :catch_1
    move-exception v2

    move-wide v2, v4

    goto/16 :goto_7

    .line 637
    :cond_f
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p5, :cond_3

    .line 640
    int-to-long v4, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/DataCore;->a(Landroid/content/Context;JJ)Lorg/json/JSONArray;

    move-result-object v0

    .line 641
    invoke-static {}, Lcom/baidu/mobstat/cf;->a()Lcom/baidu/mobstat/cf;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mobstat/cf;->b(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v1, "recent"

    .line 643
    invoke-direct {p0, p2, v1, v0}, Lcom/baidu/mobstat/DataCore;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 650
    :cond_10
    :try_start_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_8

    .line 653
    :catch_2
    move-exception v0

    move-object v0, v6

    goto/16 :goto_8

    .line 656
    :cond_11
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto/16 :goto_9
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 498
    invoke-direct {p0, p2}, Lcom/baidu/mobstat/DataCore;->a(Lorg/json/JSONObject;)I

    move-result v6

    :try_start_0
    const-string/jumbo v0, "he"

    .line 502
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 503
    if-nez v0, :cond_1

    move-wide v0, v2

    :goto_0
    move-wide v4, v0

    .line 510
    :goto_1
    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    .line 511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    .line 514
    invoke-direct/range {v1 .. v6}, Lcom/baidu/mobstat/DataCore;->a(Landroid/content/Context;Lorg/json/JSONObject;JI)V

    .line 515
    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v1, "ss"

    .line 504
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 508
    :catch_0
    move-exception v0

    move-wide v4, v2

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;Z)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 457
    if-eqz p2, :cond_0

    .line 461
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v4, "app_session"

    .line 463
    if-nez p3, :cond_1

    move v2, v1

    :goto_0
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    const-string/jumbo v2, "failed_cnt"

    const/4 v4, 0x0

    .line 470
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    const-string/jumbo v2, "circle"

    .line 477
    invoke-static {}, Lcom/baidu/mobstat/cg;->b()Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    const-string/jumbo v2, "trace"

    .line 484
    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 490
    :goto_4
    if-eqz v0, :cond_2

    .line 494
    invoke-direct {p0, p1, p2, v3}, Lcom/baidu/mobstat/DataCore;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 495
    return-void

    .line 458
    :cond_0
    return-void

    :cond_1
    move v2, v0

    .line 463
    goto :goto_0

    .line 487
    :catch_0
    move-exception v0

    move v0, v1

    .line 486
    goto :goto_4

    .line 491
    :cond_2
    return-void

    .line 480
    :catch_1
    move-exception v2

    goto :goto_3

    .line 473
    :catch_2
    move-exception v2

    goto :goto_2

    .line 466
    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 717
    if-eqz p1, :cond_0

    const-string/jumbo v0, "visit"

    .line 721
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    :try_start_0
    const-string/jumbo v0, "visit"

    .line 730
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 731
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 735
    :goto_1
    return-void

    .line 718
    :cond_0
    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v0, "visit"

    .line 723
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 726
    :catch_0
    move-exception v0

    goto :goto_0

    .line 734
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Z)V
    .locals 0

    .prologue
    .line 230
    iput-boolean p1, p0, Lcom/baidu/mobstat/DataCore;->f:Z

    .line 231
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/baidu/mobstat/DataCore;->f:Z

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    .line 141
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/BDStatCore;->getSessionSize()I

    move-result v1

    .line 143
    add-int/2addr v0, v1

    iget v1, p0, Lcom/baidu/mobstat/DataCore;->g:I

    add-int/2addr v0, v1

    const v1, 0x2d000

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 839
    return-void
.end method

.method public static instance()Lcom/baidu/mobstat/DataCore;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/baidu/mobstat/DataCore;->b:Lcom/baidu/mobstat/DataCore;

    return-object v0
.end method


# virtual methods
.method public clearCache(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 891
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/DataCore;->a(Z)V

    .line 894
    sget-object v1, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    monitor-enter v1

    .line 895
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    .line 896
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/DataCore;->installHeader(Landroid/content/Context;)V

    .line 900
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/DataCore;->a(Landroid/content/Context;)V

    .line 901
    return-void

    .line 896
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public constructLogWithEmptyBody(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 398
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 400
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 401
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/CooperService;->getHeadObject()Lcom/baidu/mobstat/HeadObject;

    move-result-object v2

    .line 402
    iget-object v3, v2, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 405
    invoke-virtual {v2, p1, v1}, Lcom/baidu/mobstat/HeadObject;->updateHeader(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 408
    :goto_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :try_start_0
    const-string/jumbo v3, "t"

    .line 413
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v3, "ss"

    .line 414
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v3, "wl2"

    .line 415
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "sq"

    const/4 v4, 0x0

    .line 418
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v3, "sign"

    .line 420
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mobstat/CooperService;->getUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "k"

    .line 422
    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "he"

    .line 424
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v1, "pr"

    .line 430
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string/jumbo v1, "ev"

    .line 436
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string/jumbo v1, "ex"

    .line 442
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 447
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    return-object v0

    .line 403
    :cond_0
    invoke-virtual {v2, p1, v1}, Lcom/baidu/mobstat/HeadObject;->installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 427
    :catch_0
    move-exception v0

    .line 426
    return-object v6

    .line 433
    :catch_1
    move-exception v0

    .line 432
    return-object v6

    .line 439
    :catch_2
    move-exception v0

    .line 438
    return-object v6

    .line 445
    :catch_3
    move-exception v0

    .line 444
    return-object v6
.end method

.method public flush(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 179
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 181
    :try_start_0
    iget-object v2, p0, Lcom/baidu/mobstat/DataCore;->c:Lorg/json/JSONArray;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/baidu/mobstat/DataCore;->c:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "pr"

    .line 183
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :try_start_2
    iget-object v2, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 187
    :try_start_3
    new-instance v0, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "ev"

    .line 188
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 191
    :try_start_4
    sget-object v2, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 192
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    sget-object v3, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "he"

    .line 193
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 199
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-direct {p0}, Lcom/baidu/mobstat/DataCore;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const v2, 0x2d000

    .line 210
    if-ge v1, v2, :cond_1

    .line 215
    iput v1, p0, Lcom/baidu/mobstat/DataCore;->g:I

    .line 219
    invoke-static {p1}, Lcom/baidu/mobstat/ff;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baidu/mobstat/Config;->STAT_CACHE_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-static {p1, v1, v0, v4}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 223
    iget-object v1, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    monitor-enter v1

    .line 224
    :try_start_6
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    sget-object v2, Lcom/baidu/mobstat/Config;->LAST_AP_INFO_FILE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 226
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 227
    return-void

    .line 184
    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 197
    :catch_0
    move-exception v0

    goto :goto_0

    .line 189
    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 194
    :catchall_2
    move-exception v0

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 202
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v1, "[WARNING] stat cache exceed 184320 Bytes, ignored"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    .line 204
    return-void

    .line 211
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/DataCore;->a(Z)V

    .line 212
    return-void

    .line 226
    :catchall_3
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v0
.end method

.method public getCacheFileSzie()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/baidu/mobstat/DataCore;->g:I

    return v0
.end method

.method public getLogData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->i:Lorg/json/JSONObject;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/DataCore;->loadStatData(Landroid/content/Context;)V

    .line 74
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/DataCore;->loadLastSession(Landroid/content/Context;)V

    .line 76
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/DataCore;->installHeader(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public installHeader(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 168
    sget-object v1, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    monitor-enter v1

    .line 169
    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->getHeadObject()Lcom/baidu/mobstat/HeadObject;

    move-result-object v0

    sget-object v2, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v2}, Lcom/baidu/mobstat/HeadObject;->installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 170
    monitor-exit v1

    .line 171
    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadLastSession(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 241
    if-eqz p1, :cond_0

    .line 246
    invoke-static {p1}, Lcom/baidu/mobstat/ff;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/Config;->LAST_SESSION_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-static {p1, v0}, Lcom/baidu/mobstat/ex;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    invoke-static {p1, v0}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 257
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 258
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-static {p1, v0, v2, v3}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 262
    invoke-virtual {p0, v1}, Lcom/baidu/mobstat/DataCore;->putSession(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    .line 265
    return-void

    .line 242
    :cond_0
    return-void

    .line 249
    :cond_1
    return-void

    .line 254
    :cond_2
    return-void
.end method

.method public loadStatData(Landroid/content/Context;)V
    .locals 14

    .prologue
    const-wide/32 v12, 0x240c8400

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 312
    if-eqz p1, :cond_2

    .line 316
    invoke-static {p1}, Lcom/baidu/mobstat/ff;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 317
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/baidu/mobstat/Config;->STAT_CACHE_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-static {p1, v0}, Lcom/baidu/mobstat/ex;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 325
    invoke-static {p1, v0}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 326
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 332
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    .line 336
    :goto_0
    if-eqz v4, :cond_5

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    :try_start_1
    const-string/jumbo v0, "pr"

    .line 345
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 346
    if-nez v5, :cond_6

    :cond_0
    :goto_1
    :try_start_2
    const-string/jumbo v0, "ev"

    .line 366
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 367
    if-nez v5, :cond_9

    :cond_1
    :goto_2
    :try_start_3
    const-string/jumbo v0, "he"

    .line 386
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 387
    if-nez v0, :cond_c

    .line 395
    :goto_3
    return-void

    .line 313
    :cond_2
    return-void

    .line 323
    :cond_3
    return-void

    .line 327
    :cond_4
    return-void

    .line 335
    :catch_0
    move-exception v0

    move-object v4, v3

    goto :goto_0

    .line 337
    :cond_5
    return-void

    :cond_6
    move v3, v2

    .line 347
    :goto_4
    :try_start_4
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 348
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v0, "s"

    .line 351
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    sub-long v10, v6, v10

    cmp-long v0, v10, v12

    if-gtz v0, :cond_7

    move v0, v1

    :goto_5
    if-nez v0, :cond_8

    .line 347
    :goto_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_7
    move v0, v2

    .line 351
    goto :goto_5

    .line 355
    :cond_8
    invoke-virtual {p0, v8}, Lcom/baidu/mobstat/DataCore;->putSession(Lorg/json/JSONObject;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    .line 360
    :catch_1
    move-exception v0

    goto :goto_1

    :cond_9
    move v3, v2

    .line 368
    :goto_7
    :try_start_5
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 369
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v0, "t"

    .line 371
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    sub-long v10, v6, v10

    cmp-long v0, v10, v12

    if-gtz v0, :cond_a

    move v0, v1

    :goto_8
    if-nez v0, :cond_b

    .line 368
    :goto_9
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_7

    :cond_a
    move v0, v2

    .line 371
    goto :goto_8

    .line 375
    :cond_b
    invoke-virtual {p0, p1, v8}, Lcom/baidu/mobstat/DataCore;->putEvent(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_9

    .line 380
    :catch_2
    move-exception v0

    goto :goto_2

    .line 388
    :cond_c
    :try_start_6
    sget-object v1, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    monitor-enter v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 389
    :try_start_7
    sput-object v0, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    .line 390
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 394
    :catch_3
    move-exception v0

    goto :goto_3
.end method

.method public loadWifiData(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 273
    if-eqz p1, :cond_0

    .line 277
    sget-object v0, Lcom/baidu/mobstat/Config;->LAST_AP_INFO_FILE_NAME:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/baidu/mobstat/ex;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    sget-object v0, Lcom/baidu/mobstat/Config;->LAST_AP_INFO_FILE_NAME:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/16 v1, 0xa

    .line 286
    if-ge v3, v1, :cond_2

    :goto_0
    const/4 v1, 0x1

    .line 295
    invoke-static {v1, p1}, Lcom/baidu/mobstat/ff;->g(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 300
    :goto_1
    iget-object v1, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    monitor-enter v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :try_start_1
    iput-object v0, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    .line 302
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    :goto_2
    return-void

    .line 274
    :cond_0
    return-void

    .line 278
    :cond_1
    return-void

    .line 287
    :cond_2
    :try_start_2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 288
    add-int/lit8 v2, v3, -0xa

    :goto_3
    if-lt v2, v3, :cond_3

    move-object v0, v1

    .line 292
    goto :goto_0

    .line 289
    :cond_3
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 288
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 297
    :cond_4
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 305
    :catch_0
    move-exception v0

    goto :goto_2

    .line 302
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public putEvent(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 150
    if-eqz p2, :cond_0

    .line 154
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/DataCore;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    iget-object v1, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    monitor-enter v1

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    invoke-static {v0, p2}, Lcom/baidu/mobstat/EventAnalysis;->doEventMerge(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    .line 161
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    return-void

    .line 151
    :cond_0
    return-void

    .line 155
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v1, "[WARNING] data to put exceed limit, ignored"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->b(Ljava/lang/String;)V

    .line 156
    return-void

    .line 161
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public putSession(Lcom/baidu/mobstat/Session;)V
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p1}, Lcom/baidu/mobstat/Session;->constructJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/DataCore;->putSession(Lorg/json/JSONObject;)V

    .line 89
    return-void
.end method

.method public putSession(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    :cond_0
    return-void

    .line 115
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/DataCore;->putSession(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public putSession(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/DataCore;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v1, p0, Lcom/baidu/mobstat/DataCore;->c:Lorg/json/JSONArray;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/DataCore;->c:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 107
    :try_start_1
    iget-object v2, p0, Lcom/baidu/mobstat/DataCore;->c:Lorg/json/JSONArray;

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    return-void

    .line 96
    :cond_0
    return-void

    .line 100
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v1, "[WARNING] data to put exceed limit, ignored"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->b(Ljava/lang/String;)V

    .line 101
    return-void

    .line 111
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 110
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public saveLogData(Landroid/content/Context;ZZJZ)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 760
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getHeadObject()Lcom/baidu/mobstat/HeadObject;

    move-result-object v1

    .line 761
    if-nez v1, :cond_2

    .line 778
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 779
    sget-object v2, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    monitor-enter v2

    .line 780
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-result-wide v4

    .line 782
    :try_start_1
    sget-object v3, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    const-string/jumbo v6, "t"

    invoke-virtual {v3, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 783
    sget-object v3, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    const-string/jumbo v4, "sq"

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 784
    sget-object v0, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    const-string/jumbo v3, "ss"

    invoke-virtual {v0, v3, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 786
    iget-object v3, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 787
    :try_start_2
    sget-object v0, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    const-string/jumbo v4, "wl2"

    iget-object v5, p0, Lcom/baidu/mobstat/DataCore;->e:Lorg/json/JSONArray;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 788
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 791
    :try_start_3
    sget-object v0, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    const-string/jumbo v3, "sign"

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mobstat/CooperService;->getUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "he"

    .line 793
    sget-object v3, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 798
    :try_start_4
    iget-object v3, p0, Lcom/baidu/mobstat/DataCore;->c:Lorg/json/JSONArray;

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    const-string/jumbo v0, "pr"

    .line 800
    iget-object v4, p0, Lcom/baidu/mobstat/DataCore;->c:Lorg/json/JSONArray;

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 805
    :try_start_6
    iget-object v4, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    monitor-enter v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    const-string/jumbo v0, "ev"

    .line 807
    iget-object v5, p0, Lcom/baidu/mobstat/DataCore;->d:Lorg/json/JSONArray;

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    const-string/jumbo v0, "ex"

    .line 813
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 819
    :try_start_9
    invoke-direct {p0, p1, v1, p3}, Lcom/baidu/mobstat/DataCore;->a(Landroid/content/Context;Lorg/json/JSONObject;Z)V

    .line 822
    invoke-direct {p0, v1}, Lcom/baidu/mobstat/DataCore;->b(Lorg/json/JSONObject;)V

    .line 824
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 827
    invoke-direct {p0, p1, v0, p2, p6}, Lcom/baidu/mobstat/DataCore;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 829
    iput-object v1, p0, Lcom/baidu/mobstat/DataCore;->i:Lorg/json/JSONObject;

    .line 831
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/DataCore;->clearCache(Landroid/content/Context;)V

    .line 832
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 833
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 834
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 835
    return-void

    .line 762
    :cond_2
    sget-object v2, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    monitor-enter v2

    .line 763
    :try_start_c
    iget-object v3, v1, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 766
    sget-object v3, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, v3}, Lcom/baidu/mobstat/HeadObject;->updateHeader(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 768
    :goto_0
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 770
    iget-object v1, v1, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 771
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v1, "[WARNING] \u65e0\u6cd5\u627e\u5230\u6709\u6548APP Key, \u8bf7\u53c2\u8003\u6587\u6863\u914d\u7f6e"

    .line 772
    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V

    .line 774
    return-void

    .line 764
    :cond_3
    :try_start_d
    sget-object v3, Lcom/baidu/mobstat/DataCore;->a:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, v3}, Lcom/baidu/mobstat/HeadObject;->installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 768
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    throw v0

    .line 788
    :catchall_1
    move-exception v0

    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 796
    :catch_0
    move-exception v0

    .line 795
    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    return-void

    .line 803
    :catch_1
    move-exception v0

    .line 802
    :try_start_11
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    return-void

    .line 810
    :catch_2
    move-exception v0

    .line 809
    :try_start_13
    monitor-exit v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :try_start_14
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :try_start_15
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    return-void

    .line 816
    :catch_3
    move-exception v0

    .line 815
    :try_start_16
    monitor-exit v4
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    :try_start_17
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    :try_start_18
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    return-void

    .line 832
    :catchall_2
    move-exception v0

    :try_start_19
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    :try_start_1a
    throw v0

    .line 833
    :catchall_3
    move-exception v0

    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    :try_start_1b
    throw v0

    .line 834
    :catchall_4
    move-exception v0

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    throw v0
.end method

.method public saveLogDataAndSendForRaven(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 739
    iget-object v1, p0, Lcom/baidu/mobstat/DataCore;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 741
    :try_start_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    .line 750
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
