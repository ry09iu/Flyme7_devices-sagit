.class public Lcom/baidu/mobstat/dc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/dc$a;
    }
.end annotation


# static fields
.field private static final u:Lcom/baidu/mobstat/dc;


# instance fields
.field private A:Ljava/lang/Object;

.field private a:Landroid/content/Context;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;

.field private d:Z

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile f:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

.field private g:J

.field private h:J

.field private i:J

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Z

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cy;",
            ">;>;"
        }
    .end annotation
.end field

.field private t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cz;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private v:Lcom/baidu/mobstat/dc$a;

.field private w:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private x:Ljava/lang/Runnable;

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/baidu/mobstat/dc;

    invoke-direct {v0}, Lcom/baidu/mobstat/dc;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/dc;->u:Lcom/baidu/mobstat/dc;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/dc;->d:Z

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/dc;->e:Ljava/util/ArrayList;

    .line 48
    sget-object v0, Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;->TRACK_ALL:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    iput-object v0, p0, Lcom/baidu/mobstat/dc;->f:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/dc;->r:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/dc;->s:Ljava/util/HashMap;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/dc;->t:Ljava/util/HashMap;

    .line 403
    new-instance v0, Lcom/baidu/mobstat/dn;

    invoke-direct {v0, p0}, Lcom/baidu/mobstat/dn;-><init>(Lcom/baidu/mobstat/dc;)V

    iput-object v0, p0, Lcom/baidu/mobstat/dc;->w:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    const/4 v0, 0x0

    .line 414
    iput-object v0, p0, Lcom/baidu/mobstat/dc;->x:Ljava/lang/Runnable;

    .line 1521
    iput v1, p0, Lcom/baidu/mobstat/dc;->y:F

    .line 1522
    iput v1, p0, Lcom/baidu/mobstat/dc;->z:F

    .line 1523
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/dc;->A:Ljava/lang/Object;

    .line 87
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "feedViewCrawlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 89
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/baidu/mobstat/dc;->c:Landroid/os/Handler;

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/dc;F)F
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/baidu/mobstat/dc;->y:F

    return p1
.end method

.method public static a()Lcom/baidu/mobstat/dc;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/baidu/mobstat/dc;->u:Lcom/baidu/mobstat/dc;

    return-object v0
.end method

.method private a(Lcom/baidu/mobstat/cz;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 1303
    invoke-virtual {p1}, Lcom/baidu/mobstat/cz;->a()Ljava/lang/String;

    move-result-object v0

    .line 1304
    invoke-virtual {p1}, Lcom/baidu/mobstat/cz;->b()Ljava/lang/String;

    move-result-object v1

    .line 1305
    invoke-virtual {p1}, Lcom/baidu/mobstat/cz;->c()Lorg/json/JSONArray;

    move-result-object v2

    .line 1306
    invoke-virtual {p1}, Lcom/baidu/mobstat/cz;->d()Ljava/lang/String;

    move-result-object v3

    .line 1307
    invoke-virtual {p1}, Lcom/baidu/mobstat/cz;->e()Ljava/lang/String;

    move-result-object v4

    .line 1308
    invoke-virtual {p1}, Lcom/baidu/mobstat/cz;->f()Ljava/lang/String;

    move-result-object v5

    .line 1309
    invoke-virtual {p1}, Lcom/baidu/mobstat/cz;->g()Z

    move-result v6

    .line 1312
    invoke-static/range {v0 .. v6}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1316
    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/dc;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/mobstat/dc;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private a(Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 653
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 654
    new-instance v1, Lcom/baidu/mobstat/dp;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/dp;-><init>(Lcom/baidu/mobstat/dc;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 661
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 662
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 665
    return-object v1

    .line 662
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 663
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Ljava/util/HashMap;Landroid/view/View;)Ljava/util/LinkedHashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cy;",
            ">;>;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cy;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 805
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 806
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v3

    .line 824
    :goto_0
    return-object v0

    .line 807
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 809
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 810
    if-eqz v1, :cond_0

    .line 814
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 815
    if-eqz v2, :cond_0

    if-ne v2, p2, :cond_0

    .line 816
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 818
    new-instance v2, Ljava/util/LinkedHashMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 819
    invoke-virtual {v2, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 820
    goto :goto_0
.end method

.method private a(Landroid/app/Activity;J)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 167
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/dc;->a:Landroid/content/Context;

    .line 168
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/dc;->b:Ljava/lang/ref/WeakReference;

    .line 170
    iput-wide p2, p0, Lcom/baidu/mobstat/dc;->g:J

    .line 173
    invoke-static {p1}, Lcom/baidu/mobstat/eq;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 175
    iget-object v0, p0, Lcom/baidu/mobstat/dc;->j:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baidu/mobstat/eq;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iput-boolean v2, p0, Lcom/baidu/mobstat/dc;->p:Z

    .line 179
    iget-object v2, p0, Lcom/baidu/mobstat/dc;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/mobstat/dc;->j:Ljava/lang/String;

    iget-wide v4, p0, Lcom/baidu/mobstat/dc;->i:J

    iget-wide v6, p0, Lcom/baidu/mobstat/dc;->g:J

    move-object v0, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/app/Activity;)Z

    move-result v0

    .line 181
    if-eqz v0, :cond_0

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/dc;->p:Z

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;JJLjava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "JJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 670
    if-eqz p6, :cond_2

    .line 674
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    const/4 v3, 0x0

    .line 681
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    move-object v5, v3

    .line 695
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/dc;->l:Ljava/lang/String;

    .line 696
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 700
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/mobstat/dc;->m:Ljava/lang/String;

    .line 701
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 705
    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/eq;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    .line 706
    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/eq;->f(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    .line 708
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/baidu/mobstat/dc;->a(Landroid/app/Activity;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v6

    .line 709
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/mobstat/dc;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v7, v2}, Lcom/baidu/mobstat/ci;->a(Landroid/content/Context;F)I

    move-result v7

    .line 710
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/mobstat/dc;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v8, v2}, Lcom/baidu/mobstat/ci;->a(Landroid/content/Context;F)I

    move-result v6

    .line 712
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/baidu/mobstat/eq;->b(Landroid/app/Activity;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    .line 713
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/mobstat/dc;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v8, v2}, Lcom/baidu/mobstat/ci;->a(Landroid/content/Context;F)I

    move-result v10

    .line 714
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/mobstat/dc;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v8, v2}, Lcom/baidu/mobstat/ci;->a(Landroid/content/Context;F)I

    move-result v9

    .line 717
    if-gt v10, v7, :cond_7

    move v12, v7

    .line 720
    :goto_2
    if-gt v9, v6, :cond_8

    move v8, v6

    .line 724
    :goto_3
    if-nez v12, :cond_9

    .line 725
    :cond_1
    return-void

    .line 671
    :cond_2
    return-void

    .line 676
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/eq;->b(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v2

    .line 677
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 681
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 682
    if-eqz v2, :cond_0

    .line 686
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 687
    if-eqz v2, :cond_0

    move-object v5, v2

    .line 692
    goto/16 :goto_1

    .line 697
    :cond_5
    return-void

    .line 702
    :cond_6
    return-void

    :cond_7
    move v12, v10

    .line 718
    goto :goto_2

    :cond_8
    move v8, v9

    .line 721
    goto :goto_3

    .line 724
    :cond_9
    if-eqz v8, :cond_1

    .line 729
    sub-long v6, p4, p2

    .line 731
    new-instance v2, Lcom/baidu/mobstat/cx;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mobstat/dc;->l:Ljava/lang/String;

    int-to-float v10, v10

    int-to-float v11, v9

    int-to-float v12, v12

    int-to-float v13, v8

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/baidu/mobstat/dc;->n:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/mobstat/dc;->o:Ljava/lang/String;

    move-object/from16 v16, v0

    move-wide/from16 v8, p2

    invoke-direct/range {v2 .. v16}, Lcom/baidu/mobstat/cx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJFFFFLjava/lang/String;ZLjava/lang/String;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/mobstat/dc;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/baidu/mobstat/dc;->a(Landroid/content/Context;Lcom/baidu/mobstat/cx;)V

    .line 736
    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/view/View;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 622
    if-eqz p2, :cond_3

    .line 626
    invoke-static {p2}, Lcom/baidu/mobstat/eq;->n(Landroid/view/View;)Z

    move-result v1

    .line 627
    if-nez v1, :cond_4

    .line 631
    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 636
    :goto_1
    if-eqz v1, :cond_6

    .line 637
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    .line 638
    if-nez v1, :cond_7

    .line 643
    :goto_2
    instance-of v1, p2, Landroid/view/ViewGroup;

    if-nez v1, :cond_8

    .line 650
    :cond_2
    return-void

    .line 623
    :cond_3
    return-void

    .line 627
    :cond_4
    invoke-direct {p0, p2}, Lcom/baidu/mobstat/dc;->a(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Lcom/baidu/mobstat/eq;->e(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 628
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 632
    :cond_5
    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 636
    :cond_6
    instance-of v1, p2, Landroid/webkit/WebView;

    if-nez v1, :cond_1

    instance-of v1, p2, Landroid/widget/ScrollView;

    if-nez v1, :cond_1

    goto :goto_2

    .line 639
    :cond_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 644
    :cond_8
    check-cast p2, Landroid/view/ViewGroup;

    move v6, v0

    .line 646
    :goto_3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 647
    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/dc;->a(Landroid/app/Activity;Landroid/view/View;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 646
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_3
.end method

.method private a(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 1527
    new-instance v0, Lcom/baidu/mobstat/dh;

    invoke-direct {v0, p0, p2}, Lcom/baidu/mobstat/dh;-><init>(Lcom/baidu/mobstat/dc;Landroid/webkit/WebView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1540
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/baidu/mobstat/cx;)V
    .locals 1

    .prologue
    .line 739
    if-eqz p2, :cond_0

    .line 743
    iget-object v0, p0, Lcom/baidu/mobstat/dc;->v:Lcom/baidu/mobstat/dc$a;

    if-nez v0, :cond_1

    .line 747
    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/dt;->a()Lcom/baidu/mobstat/dt;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/dt;->a(Landroid/content/Context;Lcom/baidu/mobstat/cx;)V

    .line 748
    return-void

    .line 740
    :cond_0
    return-void

    .line 744
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/dc;->v:Lcom/baidu/mobstat/dc$a;

    invoke-interface {v0, p2}, Lcom/baidu/mobstat/dc$a;->a(Lcom/baidu/mobstat/cx;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/app/Activity;J)V
    .locals 3

    .prologue
    .line 338
    invoke-static {p1}, Lcom/baidu/mobstat/eq;->o(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 341
    if-eqz v0, :cond_0

    .line 349
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/dc;->a(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 358
    iput-wide p3, p0, Lcom/baidu/mobstat/dc;->i:J

    .line 359
    invoke-static {p2}, Lcom/baidu/mobstat/eq;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/dc;->k:Ljava/lang/String;

    .line 360
    invoke-static {p1}, Lcom/baidu/mobstat/eq;->t(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/dc;->l:Ljava/lang/String;

    .line 361
    iget-object v1, p0, Lcom/baidu/mobstat/dc;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/eq;->c(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/dc;->m:Ljava/lang/String;

    .line 362
    invoke-static {v0}, Lcom/baidu/mobstat/eq;->s(Landroid/view/View;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/baidu/mobstat/dc;->n:Z

    .line 364
    invoke-virtual {p0, p2, p1, v0}, Lcom/baidu/mobstat/dc;->a(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/dc;->o:Ljava/lang/String;

    .line 365
    return-void

    .line 343
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/mobstat/dc;->p:Z

    if-eqz v0, :cond_1

    .line 346
    :goto_0
    return-void

    .line 344
    :cond_1
    invoke-direct {p0}, Lcom/baidu/mobstat/dc;->c()V

    goto :goto_0

    .line 351
    :cond_2
    iget-boolean v0, p0, Lcom/baidu/mobstat/dc;->p:Z

    if-eqz v0, :cond_3

    .line 354
    :goto_1
    return-void

    .line 352
    :cond_3
    invoke-direct {p0}, Lcom/baidu/mobstat/dc;->c()V

    goto :goto_1
.end method

.method private a(Landroid/view/View;Landroid/view/View;Landroid/app/Activity;J)V
    .locals 20

    .prologue
    .line 1030
    if-nez p1, :cond_1

    .line 1031
    :cond_0
    return-void

    .line 1030
    :cond_1
    if-eqz p2, :cond_0

    .line 1034
    invoke-static {}, Lcom/baidu/mobstat/db;->a()Lcom/baidu/mobstat/db;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/db;->c()F

    move-result v2

    .line 1036
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/baidu/mobstat/eq;->a(Landroid/view/View;F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1040
    invoke-static/range {p2 .. p2}, Lcom/baidu/mobstat/eq;->t(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    .line 1041
    invoke-static/range {p2 .. p2}, Lcom/baidu/mobstat/eq;->u(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 1042
    invoke-static/range {p3 .. p3}, Lcom/baidu/mobstat/eq;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v5

    .line 1046
    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/eq;->s(Landroid/view/View;)Z

    move-result v10

    .line 1047
    invoke-static/range {p3 .. p3}, Lcom/baidu/mobstat/eq;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/baidu/mobstat/eq;->c(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1048
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/baidu/mobstat/eq;->a(Landroid/app/Activity;Landroid/view/View;)Lorg/json/JSONArray;

    move-result-object v6

    .line 1050
    invoke-static/range {p1 .. p1}, Lcom/baidu/mobstat/eq;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 1051
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/baidu/mobstat/eq;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1053
    sub-long v2, p4, p4

    .line 1054
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, ""

    .line 1058
    new-instance v3, Lcom/baidu/mobstat/cz;

    const/4 v11, 0x1

    move-wide/from16 v12, p4

    move-wide/from16 v14, p4

    move-wide/from16 v16, p4

    invoke-direct/range {v3 .. v19}, Lcom/baidu/mobstat/cz;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJJJLjava/lang/String;Ljava/lang/String;)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/dc;->t:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1, v3}, Lcom/baidu/mobstat/dc;->a(Ljava/util/HashMap;Landroid/view/View;Lcom/baidu/mobstat/cz;)V

    .line 1062
    return-void

    .line 1037
    :cond_2
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 2

    .prologue
    .line 464
    if-eqz p1, :cond_1

    .line 468
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 469
    if-nez v0, :cond_2

    .line 470
    :cond_0
    return-void

    .line 465
    :cond_1
    return-void

    .line 469
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    invoke-virtual {v0, p2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 474
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/ViewTreeObserver$OnScrollChangedListener;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 505
    if-eqz p1, :cond_1

    .line 509
    invoke-direct {p0, p3, p1}, Lcom/baidu/mobstat/dc;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 513
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/dc;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 517
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 518
    if-nez v0, :cond_4

    .line 519
    :cond_0
    return-void

    .line 506
    :cond_1
    return-void

    .line 510
    :cond_2
    return-void

    .line 514
    :cond_3
    return-void

    .line 518
    :cond_4
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    invoke-virtual {v0, p2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 524
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/dc;Landroid/app/Activity;J)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/dc;->a(Landroid/app/Activity;J)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/dc;Landroid/view/View;Landroid/app/Activity;J)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/mobstat/dc;->a(Landroid/view/View;Landroid/app/Activity;J)V

    return-void
.end method

.method private a(Ljava/lang/ref/WeakReference;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 1451
    if-eqz p1, :cond_0

    .line 1455
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1456
    if-eqz v0, :cond_1

    .line 1460
    invoke-direct {p0, v0, p2, p3}, Lcom/baidu/mobstat/dc;->d(Landroid/app/Activity;J)V

    .line 1461
    return-void

    .line 1452
    :cond_0
    return-void

    .line 1457
    :cond_1
    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 477
    if-nez p1, :cond_1

    .line 478
    :cond_0
    return-void

    .line 477
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 482
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 500
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 501
    return-void

    .line 482
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 483
    if-eqz v0, :cond_4

    .line 488
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 489
    if-eqz v1, :cond_5

    .line 494
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 495
    if-nez v1, :cond_6

    .line 496
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 484
    :cond_4
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 490
    :cond_5
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 495
    :cond_6
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/ViewTreeObserver$OnScrollChangedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 449
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    .line 450
    :goto_0
    if-lt v1, v2, :cond_0

    .line 460
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 461
    return-void

    .line 451
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 452
    if-eqz v0, :cond_1

    .line 456
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 457
    invoke-direct {p0, v0, p2}, Lcom/baidu/mobstat/dc;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 450
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private a(Ljava/util/HashMap;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cy;",
            ">;>;J)V"
        }
    .end annotation

    .prologue
    .line 777
    if-nez p1, :cond_1

    .line 778
    :cond_0
    return-void

    .line 777
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 782
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 797
    return-void

    .line 783
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 785
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 786
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 790
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/cy;

    .line 792
    invoke-virtual {v0}, Lcom/baidu/mobstat/cy;->e()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/baidu/mobstat/cy;->c()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    .line 793
    invoke-virtual {v0, p2, p3}, Lcom/baidu/mobstat/cy;->a(J)V

    goto :goto_0
.end method

.method private a(Ljava/util/HashMap;Landroid/view/View;Lcom/baidu/mobstat/cy;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cy;",
            ">;>;",
            "Landroid/view/View;",
            "Lcom/baidu/mobstat/cy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 829
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/mobstat/cy;->a()Ljava/lang/String;

    move-result-object v7

    .line 830
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/mobstat/cy;->c()J

    move-result-wide v8

    .line 831
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/mobstat/cy;->e()J

    move-result-wide v10

    .line 832
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/mobstat/cy;->d()Z

    move-result v12

    .line 834
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 842
    invoke-direct/range {p0 .. p2}, Lcom/baidu/mobstat/dc;->a(Ljava/util/HashMap;Landroid/view/View;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 843
    if-nez v2, :cond_3

    .line 854
    :cond_0
    :goto_0
    if-nez v3, :cond_4

    move-object v2, v5

    .line 880
    :cond_1
    :goto_1
    if-eqz v2, :cond_8

    .line 891
    invoke-virtual {v2, v8, v9}, Lcom/baidu/mobstat/cy;->a(J)V

    .line 892
    invoke-virtual {v2, v10, v11}, Lcom/baidu/mobstat/cy;->b(J)V

    .line 894
    :goto_2
    return-void

    .line 835
    :cond_2
    return-void

    .line 843
    :cond_3
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 844
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 845
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 846
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 847
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 848
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 849
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object v4, v3

    move-object v3, v2

    .line 850
    goto :goto_0

    .line 855
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_5
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    move-object v2, v5

    goto :goto_1

    :cond_6
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mobstat/cy;

    .line 856
    invoke-virtual {v2}, Lcom/baidu/mobstat/cy;->a()Ljava/lang/String;

    move-result-object v6

    .line 857
    invoke-virtual {v2}, Lcom/baidu/mobstat/cy;->c()J

    move-result-wide v14

    .line 858
    invoke-virtual {v2}, Lcom/baidu/mobstat/cy;->e()J

    move-result-wide v16

    .line 859
    invoke-virtual {v2}, Lcom/baidu/mobstat/cy;->d()Z

    move-result v18

    .line 861
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 865
    move/from16 v0, v18

    if-ne v12, v0, :cond_5

    .line 870
    cmp-long v6, v16, v14

    if-ltz v6, :cond_7

    const/4 v6, 0x1

    :goto_4
    if-nez v6, :cond_1

    cmp-long v6, v14, v8

    if-eqz v6, :cond_1

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    goto :goto_4

    .line 881
    :cond_8
    if-eqz v3, :cond_9

    move-object v2, v3

    .line 884
    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    if-eqz v4, :cond_a

    move-object v3, v4

    .line 889
    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 882
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_5

    .line 887
    :cond_a
    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_6
.end method

.method private a(Ljava/util/HashMap;Landroid/view/View;Lcom/baidu/mobstat/cz;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cz;",
            ">;>;>;",
            "Landroid/view/View;",
            "Lcom/baidu/mobstat/cz;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1094
    if-eqz p2, :cond_1

    .line 1098
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/mobstat/cz;->k()J

    move-result-wide v8

    .line 1099
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/mobstat/cz;->j()J

    move-result-wide v10

    .line 1100
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/mobstat/cz;->d()Ljava/lang/String;

    move-result-object v2

    .line 1101
    invoke-virtual/range {p3 .. p3}, Lcom/baidu/mobstat/cz;->f()Ljava/lang/String;

    move-result-object v3

    .line 1104
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1105
    :cond_0
    return-void

    .line 1095
    :cond_1
    return-void

    .line 1104
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1113
    invoke-direct/range {p0 .. p2}, Lcom/baidu/mobstat/dc;->b(Ljava/util/HashMap;Landroid/view/View;)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 1115
    if-nez v3, :cond_4

    :cond_3
    move-object v6, v2

    .line 1128
    :goto_0
    if-nez v6, :cond_6

    .line 1157
    :goto_1
    if-eqz v4, :cond_d

    .line 1188
    invoke-virtual {v4, v10, v11}, Lcom/baidu/mobstat/cz;->a(J)V

    .line 1189
    invoke-virtual {v4, v8, v9}, Lcom/baidu/mobstat/cz;->b(J)V

    .line 1191
    invoke-virtual {v4}, Lcom/baidu/mobstat/cz;->j()J

    move-result-wide v2

    invoke-virtual {v4}, Lcom/baidu/mobstat/cz;->i()J

    move-result-wide v6

    sub-long/2addr v2, v6

    .line 1192
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1193
    invoke-virtual {v4, v2}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;)V

    .line 1195
    :goto_2
    return-void

    .line 1115
    :cond_4
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 1117
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 1118
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1119
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    move-object v6, v2

    goto :goto_0

    .line 1121
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1122
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1123
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    move-object v6, v2

    move-object v5, v3

    .line 1124
    goto :goto_0

    .line 1129
    :cond_6
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v4

    .line 1130
    :cond_7
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_8

    move-object v4, v3

    goto :goto_1

    .line 1131
    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1132
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1134
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_7

    .line 1138
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_9
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_b

    move-object v2, v3

    :cond_a
    move-object v3, v2

    .line 1154
    goto :goto_3

    .line 1138
    :cond_b
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mobstat/cz;

    .line 1139
    invoke-virtual {v2}, Lcom/baidu/mobstat/cz;->k()J

    move-result-wide v14

    .line 1140
    invoke-virtual {v2}, Lcom/baidu/mobstat/cz;->j()J

    move-result-wide v16

    .line 1142
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v1}, Lcom/baidu/mobstat/dc;->a(Lcom/baidu/mobstat/cz;Lcom/baidu/mobstat/cz;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1147
    cmp-long v4, v14, v16

    if-ltz v4, :cond_c

    const/4 v4, 0x1

    :goto_5
    if-nez v4, :cond_a

    invoke-virtual/range {p3 .. p3}, Lcom/baidu/mobstat/cz;->j()J

    move-result-wide v14

    cmp-long v4, v16, v14

    if-eqz v4, :cond_a

    goto :goto_4

    :cond_c
    const/4 v4, 0x0

    goto :goto_5

    .line 1158
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/dc;->a(Lcom/baidu/mobstat/cz;)Ljava/lang/String;

    move-result-object v3

    .line 1160
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1164
    if-eqz v6, :cond_f

    .line 1177
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1179
    if-eqz v2, :cond_11

    .line 1184
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1161
    :cond_e
    return-void

    .line 1165
    :cond_f
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1167
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1168
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    if-eqz v5, :cond_10

    move-object v2, v5

    .line 1175
    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1173
    :cond_10
    new-instance v2, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_6

    .line 1180
    :cond_11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1181
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1182
    invoke-virtual {v6, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2
.end method

.method private a(Ljava/util/HashMap;Ljava/util/HashMap;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cy;",
            ">;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cz;",
            ">;>;>;J)V"
        }
    .end annotation

    .prologue
    .line 1468
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1469
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1470
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1487
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1488
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1517
    return-void

    .line 1471
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1472
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1474
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1478
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/cy;

    .line 1479
    invoke-virtual {v0}, Lcom/baidu/mobstat/cy;->e()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/baidu/mobstat/cy;->c()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 1480
    invoke-virtual {v0, p3, p4}, Lcom/baidu/mobstat/cy;->a(J)V

    goto :goto_0

    .line 1489
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1490
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1492
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1496
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1497
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1498
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1499
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1501
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_5

    .line 1505
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/cz;

    .line 1507
    invoke-virtual {v0}, Lcom/baidu/mobstat/cz;->k()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/baidu/mobstat/cz;->j()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    .line 1508
    invoke-virtual {v0, p3, p4}, Lcom/baidu/mobstat/cz;->a(J)V

    .line 1510
    invoke-virtual {v0}, Lcom/baidu/mobstat/cz;->j()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/baidu/mobstat/cz;->i()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1511
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 1512
    invoke-virtual {v0, v4}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(JJ)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 575
    sub-long v4, p3, p1

    const-wide/16 v2, 0x0

    .line 576
    cmp-long v2, v4, v2

    if-gtz v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    const-wide/16 v2, 0x32

    cmp-long v2, v4, v2

    if-gtz v2, :cond_2

    move v2, v0

    :goto_1
    if-nez v2, :cond_1

    .line 580
    :goto_2
    return v0

    :cond_0
    move v2, v1

    .line 576
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method private a(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 133
    iget-object v2, p0, Lcom/baidu/mobstat/dc;->f:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    sget-object v3, Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;->TRACK_ALL:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    if-eq v2, v3, :cond_1

    .line 135
    iget-object v2, p0, Lcom/baidu/mobstat/dc;->f:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    sget-object v3, Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;->TRACK_SINGLE:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    if-eq v2, v3, :cond_2

    .line 140
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 134
    goto :goto_0

    .line 136
    :cond_2
    invoke-static {p1}, Lcom/baidu/mobstat/eq;->w(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 137
    goto :goto_0
.end method

.method private a(Lcom/baidu/mobstat/cz;Lcom/baidu/mobstat/cz;)Z
    .locals 14

    .prologue
    .line 1200
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mobstat/cz;->a()Ljava/lang/String;

    move-result-object v0

    .line 1201
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mobstat/cz;->b()Ljava/lang/String;

    move-result-object v1

    .line 1202
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mobstat/cz;->c()Lorg/json/JSONArray;

    move-result-object v2

    .line 1203
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mobstat/cz;->d()Ljava/lang/String;

    move-result-object v3

    .line 1204
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mobstat/cz;->e()Ljava/lang/String;

    move-result-object v4

    .line 1205
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mobstat/cz;->f()Ljava/lang/String;

    move-result-object v5

    .line 1206
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mobstat/cz;->g()Z

    move-result v6

    .line 1208
    invoke-virtual {p1}, Lcom/baidu/mobstat/cz;->a()Ljava/lang/String;

    move-result-object v7

    .line 1209
    invoke-virtual {p1}, Lcom/baidu/mobstat/cz;->b()Ljava/lang/String;

    move-result-object v8

    .line 1210
    invoke-virtual {p1}, Lcom/baidu/mobstat/cz;->c()Lorg/json/JSONArray;

    move-result-object v9

    .line 1211
    invoke-virtual {p1}, Lcom/baidu/mobstat/cz;->d()Ljava/lang/String;

    move-result-object v10

    .line 1212
    invoke-virtual {p1}, Lcom/baidu/mobstat/cz;->e()Ljava/lang/String;

    move-result-object v11

    .line 1213
    invoke-virtual {p1}, Lcom/baidu/mobstat/cz;->f()Ljava/lang/String;

    move-result-object v12

    .line 1214
    invoke-virtual {p1}, Lcom/baidu/mobstat/cz;->g()Z

    move-result v13

    .line 1216
    invoke-direct {p0, v7, v0}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    invoke-direct {p0, v8, v1}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1224
    invoke-direct {p0, v9, v2}, Lcom/baidu/mobstat/dc;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1228
    invoke-direct {p0, v10, v3}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1232
    invoke-direct {p0, v11, v4}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1236
    invoke-direct {p0, v12, v5}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1240
    if-ne v13, v6, :cond_6

    .line 1245
    const/4 v0, 0x1

    return v0

    .line 1217
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1221
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1225
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 1229
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 1233
    :cond_4
    const/4 v0, 0x0

    return v0

    .line 1237
    :cond_5
    const/4 v0, 0x0

    return v0

    .line 1241
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/dc;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/baidu/mobstat/dc;->d:Z

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1251
    if-eq p1, p2, :cond_1

    .line 1253
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1257
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1252
    goto :goto_0

    .line 1253
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1254
    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/app/Activity;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 554
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 557
    :cond_0
    return v1

    .line 554
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 555
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 556
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 561
    instance-of v2, p8, Lcom/baidu/mobstat/IIgnoreAutoTrace;

    if-nez v2, :cond_2

    .line 565
    sub-long v4, p6, p4

    const-wide/16 v2, 0x0

    .line 566
    cmp-long v2, v4, v2

    if-gtz v2, :cond_3

    move v2, v0

    :goto_0
    if-nez v2, :cond_4

    const-wide/16 v2, 0x1388

    cmp-long v2, v4, v2

    if-ltz v2, :cond_5

    move v2, v0

    :goto_1
    if-nez v2, :cond_4

    .line 569
    :goto_2
    return v0

    .line 562
    :cond_2
    return v1

    :cond_3
    move v2, v1

    .line 566
    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v2, v1

    goto :goto_1
.end method

.method private a(Ljava/util/ArrayList;Landroid/view/View;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 530
    if-eqz p1, :cond_0

    .line 534
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 535
    :goto_0
    if-lt v2, v3, :cond_1

    move v0, v1

    .line 543
    :goto_1
    return v0

    .line 531
    :cond_0
    return v1

    .line 536
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 537
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_2

    .line 535
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 538
    goto :goto_1
.end method

.method private a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1263
    if-eqz p1, :cond_2

    .line 1265
    :cond_0
    if-nez p1, :cond_3

    .line 1269
    :cond_1
    :goto_0
    return v0

    .line 1263
    :cond_2
    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 1264
    goto :goto_0

    .line 1265
    :cond_3
    if-eqz p2, :cond_1

    .line 1266
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/baidu/mobstat/dc;F)F
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/baidu/mobstat/dc;->z:F

    return p1
.end method

.method private b(Ljava/util/ArrayList;)Lcom/baidu/mobstat/cz;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cz;",
            ">;)",
            "Lcom/baidu/mobstat/cz;"
        }
    .end annotation

    .prologue
    .line 1373
    if-nez p1, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 1374
    return-object v2

    .line 1373
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1377
    new-instance v2, Lcom/baidu/mobstat/dg;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/baidu/mobstat/dg;-><init>(Lcom/baidu/mobstat/dc;)V

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1392
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1393
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 1399
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v6, v5

    move-object/from16 v18, v4

    move-wide v4, v2

    move-object/from16 v3, v18

    :cond_2
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1440
    if-nez v3, :cond_a

    .line 1446
    :goto_1
    return-object v3

    .line 1399
    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mobstat/cz;

    .line 1400
    invoke-virtual {v2}, Lcom/baidu/mobstat/cz;->i()J

    move-result-wide v8

    .line 1401
    invoke-virtual {v2}, Lcom/baidu/mobstat/cz;->l()Ljava/lang/String;

    move-result-object v13

    .line 1405
    :try_start_0
    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1406
    invoke-static {}, Lcom/baidu/mobstat/db;->a()Lcom/baidu/mobstat/db;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/mobstat/db;->d()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v16

    cmp-long v7, v14, v16

    if-ltz v7, :cond_6

    const/4 v7, 0x1

    :goto_2
    if-eqz v7, :cond_2

    :goto_3
    const-wide/16 v14, 0x0

    .line 1414
    cmp-long v7, v4, v14

    if-nez v7, :cond_4

    move-wide v4, v8

    move-object v3, v2

    .line 1419
    :cond_4
    sub-long/2addr v8, v4

    const-wide/16 v14, 0x0

    .line 1421
    cmp-long v7, v8, v14

    if-ltz v7, :cond_7

    const/4 v7, 0x1

    :goto_4
    if-nez v7, :cond_5

    const-wide/16 v8, 0x0

    .line 1425
    :cond_5
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1428
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "|"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    :goto_5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 1434
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "|"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1437
    :goto_6
    invoke-virtual {v2}, Lcom/baidu/mobstat/cz;->h()I

    move-result v2

    add-int/2addr v2, v6

    move v6, v2

    .line 1438
    goto/16 :goto_0

    .line 1406
    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    .line 1421
    :cond_7
    const/4 v7, 0x0

    goto :goto_4

    .line 1426
    :cond_8
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1432
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, ""

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1441
    :cond_a
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;)V

    .line 1442
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/baidu/mobstat/cz;->b(Ljava/lang/String;)V

    .line 1443
    invoke-virtual {v3, v6}, Lcom/baidu/mobstat/cz;->a(I)V

    goto/16 :goto_1

    .line 1411
    :catch_0
    move-exception v7

    goto/16 :goto_3
.end method

.method static synthetic b(Lcom/baidu/mobstat/dc;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/mobstat/dc;->k:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/util/HashMap;Landroid/view/View;)Ljava/util/LinkedHashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cz;",
            ">;>;>;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cz;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1070
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1071
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v3

    .line 1089
    :goto_0
    return-object v0

    .line 1072
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1074
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1075
    if-eqz v1, :cond_0

    .line 1079
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1080
    if-eqz v2, :cond_0

    if-ne v2, p2, :cond_0

    .line 1081
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1083
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1084
    invoke-virtual {v2, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 1085
    goto :goto_0
.end method

.method private b(Landroid/app/Activity;J)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 216
    iput-wide p2, p0, Lcom/baidu/mobstat/dc;->h:J

    .line 219
    invoke-static {p1}, Lcom/baidu/mobstat/eq;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 220
    iput-object v0, p0, Lcom/baidu/mobstat/dc;->j:Ljava/lang/String;

    .line 223
    iget-object v1, p0, Lcom/baidu/mobstat/dc;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/baidu/mobstat/dc;->p:Z

    if-nez v0, :cond_2

    .line 237
    :goto_1
    iget-object v0, p0, Lcom/baidu/mobstat/dc;->s:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/baidu/mobstat/dc;->t:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/baidu/mobstat/dc;->a(Ljava/util/HashMap;Ljava/util/HashMap;J)V

    .line 240
    iget-object v0, p0, Lcom/baidu/mobstat/dc;->s:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/dc;->b(Ljava/util/HashMap;)V

    .line 241
    iget-object v0, p0, Lcom/baidu/mobstat/dc;->s:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/dc;->c(Ljava/util/HashMap;)V

    .line 244
    iget-object v0, p0, Lcom/baidu/mobstat/dc;->t:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/dc;->e(Ljava/util/HashMap;)V

    .line 245
    iget-object v0, p0, Lcom/baidu/mobstat/dc;->t:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/dc;->f(Ljava/util/HashMap;)V

    .line 247
    iget-object v0, p0, Lcom/baidu/mobstat/dc;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/baidu/mobstat/dc;->w:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/dc;->a(Ljava/util/ArrayList;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 248
    return-void

    .line 223
    :cond_1
    iget-object v1, p0, Lcom/baidu/mobstat/dc;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 224
    iput-wide v0, p0, Lcom/baidu/mobstat/dc;->i:J

    goto :goto_0

    .line 230
    :cond_2
    iget-wide v2, p0, Lcom/baidu/mobstat/dc;->g:J

    iget-object v6, p0, Lcom/baidu/mobstat/dc;->r:Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/baidu/mobstat/dc;->a(Landroid/app/Activity;JJLjava/util/List;)V

    .line 232
    iget-object v0, p0, Lcom/baidu/mobstat/dc;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 233
    iput-boolean v7, p0, Lcom/baidu/mobstat/dc;->q:Z

    goto :goto_1
.end method

.method private b(Landroid/view/View;Landroid/app/Activity;J)V
    .locals 9

    .prologue
    .line 755
    if-eqz p1, :cond_0

    .line 760
    invoke-static {p1}, Lcom/baidu/mobstat/eq;->e(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 764
    invoke-static {p2}, Lcom/baidu/mobstat/eq;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/mobstat/eq;->c(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 768
    invoke-static {p1}, Lcom/baidu/mobstat/eq;->s(Landroid/view/View;)Z

    move-result v8

    .line 770
    new-instance v0, Lcom/baidu/mobstat/cy;

    move-wide v2, p3

    move-wide v4, p3

    move-wide v6, p3

    invoke-direct/range {v0 .. v8}, Lcom/baidu/mobstat/cy;-><init>(Ljava/lang/String;JJJZ)V

    .line 772
    iget-object v1, p0, Lcom/baidu/mobstat/dc;->s:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1, v0}, Lcom/baidu/mobstat/dc;->a(Ljava/util/HashMap;Landroid/view/View;Lcom/baidu/mobstat/cy;)V

    .line 773
    return-void

    .line 756
    :cond_0
    return-void

    .line 761
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/baidu/mobstat/dc;Landroid/app/Activity;J)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/dc;->b(Landroid/app/Activity;J)V

    return-void
.end method

.method private b(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cy;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 897
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/dc;->d(Ljava/util/HashMap;)V

    .line 898
    return-void
.end method

.method private b(Ljava/util/HashMap;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cz;",
            ">;>;>;J)V"
        }
    .end annotation

    .prologue
    .line 991
    if-nez p1, :cond_1

    .line 992
    :cond_0
    return-void

    .line 991
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 997
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1027
    return-void

    .line 999
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1000
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1002
    if-eqz v0, :cond_2

    .line 1006
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1007
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1008
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1009
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1011
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_4

    .line 1015
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/cz;

    .line 1017
    invoke-virtual {v0}, Lcom/baidu/mobstat/cz;->k()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/baidu/mobstat/cz;->j()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    .line 1018
    invoke-virtual {v0, p2, p3}, Lcom/baidu/mobstat/cz;->a(J)V

    .line 1020
    invoke-virtual {v0}, Lcom/baidu/mobstat/cz;->j()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/baidu/mobstat/cz;->i()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1021
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 1022
    invoke-virtual {v0, v4}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 384
    iput-wide v0, p0, Lcom/baidu/mobstat/dc;->i:J

    const-string/jumbo v0, ""

    .line 385
    iput-object v0, p0, Lcom/baidu/mobstat/dc;->k:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 386
    iput-object v0, p0, Lcom/baidu/mobstat/dc;->l:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 387
    iput-object v0, p0, Lcom/baidu/mobstat/dc;->m:Ljava/lang/String;

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/dc;->n:Z

    const-string/jumbo v0, ""

    .line 390
    iput-object v0, p0, Lcom/baidu/mobstat/dc;->o:Ljava/lang/String;

    .line 391
    return-void
.end method

.method private c(Landroid/app/Activity;J)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 584
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 585
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 586
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 588
    invoke-static {p1}, Lcom/baidu/mobstat/eq;->b(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    .line 589
    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/dc;->a(Landroid/app/Activity;Landroid/view/View;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 592
    iget-boolean v0, p0, Lcom/baidu/mobstat/dc;->p:Z

    if-nez v0, :cond_1

    .line 601
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 604
    iget-object v0, p0, Lcom/baidu/mobstat/dc;->e:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/dc;->a(Ljava/util/ArrayList;)V

    .line 606
    iget-boolean v0, p0, Lcom/baidu/mobstat/dc;->d:Z

    if-nez v0, :cond_3

    .line 612
    :goto_2
    iget-object v0, p0, Lcom/baidu/mobstat/dc;->s:Ljava/util/HashMap;

    invoke-direct {p0, v0, p2, p3}, Lcom/baidu/mobstat/dc;->a(Ljava/util/HashMap;J)V

    .line 614
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 618
    return-void

    .line 592
    :cond_1
    iget-boolean v0, p0, Lcom/baidu/mobstat/dc;->q:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/baidu/mobstat/dc;->g:J

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/baidu/mobstat/dc;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    invoke-direct {p0, v3}, Lcom/baidu/mobstat/dc;->a(Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    .line 595
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    iput-object v0, p0, Lcom/baidu/mobstat/dc;->r:Ljava/util/List;

    .line 598
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/dc;->q:Z

    goto :goto_0

    .line 601
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 602
    iget-object v2, p0, Lcom/baidu/mobstat/dc;->w:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    iget-object v3, p0, Lcom/baidu/mobstat/dc;->e:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v3}, Lcom/baidu/mobstat/dc;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 607
    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/dc;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v0, p2, p3}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/ref/WeakReference;J)V

    .line 608
    iput-boolean v6, p0, Lcom/baidu/mobstat/dc;->d:Z

    goto :goto_2

    .line 614
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 616
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/baidu/mobstat/dc;->b(Landroid/view/View;Landroid/app/Activity;J)V

    goto :goto_3
.end method

.method static synthetic c(Lcom/baidu/mobstat/dc;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/baidu/mobstat/dc;->c()V

    return-void
.end method

.method static synthetic c(Lcom/baidu/mobstat/dc;Landroid/app/Activity;J)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/dc;->c(Landroid/app/Activity;J)V

    return-void
.end method

.method private c(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cy;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 903
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 904
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 912
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 913
    return-void

    .line 905
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 906
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 908
    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/baidu/mobstat/dc;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/mobstat/dc;->A:Ljava/lang/Object;

    return-object v0
.end method

.method private d(Landroid/app/Activity;J)V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 954
    iget-object v0, p0, Lcom/baidu/mobstat/dc;->t:Ljava/util/HashMap;

    invoke-direct {p0, v0, p2, p3}, Lcom/baidu/mobstat/dc;->b(Ljava/util/HashMap;J)V

    .line 956
    iget-object v0, p0, Lcom/baidu/mobstat/dc;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 987
    return-void

    .line 956
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 957
    if-eqz v0, :cond_0

    .line 961
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 962
    if-eqz v1, :cond_0

    .line 966
    invoke-static {v1}, Lcom/baidu/mobstat/eq;->e(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    invoke-direct {p0, v1}, Lcom/baidu/mobstat/dc;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 974
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v6, v1

    .line 978
    check-cast v6, Landroid/view/ViewGroup;

    move v7, v8

    .line 979
    :goto_0
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 980
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 982
    if-nez v2, :cond_3

    .line 979
    :cond_2
    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 982
    :cond_3
    invoke-static {v2}, Lcom/baidu/mobstat/eq;->e(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    .line 983
    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/dc;->a(Landroid/view/View;Landroid/view/View;Landroid/app/Activity;J)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/baidu/mobstat/dc;Landroid/app/Activity;J)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/dc;->d(Landroid/app/Activity;J)V

    return-void
.end method

.method private d(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cy;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 916
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 918
    iget-object v0, p0, Lcom/baidu/mobstat/dc;->s:Ljava/util/HashMap;

    .line 919
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 920
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 928
    new-instance v0, Lcom/baidu/mobstat/de;

    invoke-direct {v0, p0}, Lcom/baidu/mobstat/de;-><init>(Lcom/baidu/mobstat/dc;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 944
    iget-object v0, p0, Lcom/baidu/mobstat/dc;->v:Lcom/baidu/mobstat/dc$a;

    if-nez v0, :cond_2

    .line 948
    :goto_1
    invoke-static {}, Lcom/baidu/mobstat/dt;->a()Lcom/baidu/mobstat/dt;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/mobstat/dc;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/baidu/mobstat/dt;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 949
    return-void

    .line 921
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 922
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 923
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 924
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 945
    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/dc;->v:Lcom/baidu/mobstat/dc$a;

    invoke-interface {v0, v1}, Lcom/baidu/mobstat/dc$a;->a(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method private e(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cz;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1274
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/dc;->g(Ljava/util/HashMap;)V

    .line 1275
    return-void
.end method

.method private f(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cz;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1280
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1281
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1299
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 1300
    return-void

    .line 1282
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1283
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1285
    if-eqz v0, :cond_0

    .line 1289
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1290
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1296
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 1291
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1292
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1293
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method private g(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cz;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1321
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1324
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1325
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1333
    new-instance v0, Lcom/baidu/mobstat/df;

    invoke-direct {v0, p0}, Lcom/baidu/mobstat/df;-><init>(Lcom/baidu/mobstat/dc;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1348
    iget-object v0, p0, Lcom/baidu/mobstat/dc;->v:Lcom/baidu/mobstat/dc$a;

    if-nez v0, :cond_1

    .line 1352
    :goto_1
    invoke-static {}, Lcom/baidu/mobstat/dt;->a()Lcom/baidu/mobstat/dt;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/mobstat/dc;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/baidu/mobstat/dt;->b(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1353
    return-void

    .line 1326
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1327
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1329
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/dc;->h(Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1330
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1349
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/dc;->v:Lcom/baidu/mobstat/dc$a;

    invoke-interface {v0, v1}, Lcom/baidu/mobstat/dc$a;->b(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method private h(Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cz;",
            ">;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/cz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1356
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1358
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1359
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1369
    return-object v1

    .line 1360
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1361
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1363
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/dc;->b(Ljava/util/ArrayList;)Lcom/baidu/mobstat/cz;

    move-result-object v0

    .line 1364
    if-eqz v0, :cond_0

    .line 1365
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 368
    invoke-static {p2}, Lcom/baidu/mobstat/eq;->t(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 369
    invoke-static {p2}, Lcom/baidu/mobstat/eq;->u(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-static {p1}, Lcom/baidu/mobstat/eq;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 371
    invoke-static {p3}, Lcom/baidu/mobstat/eq;->s(Landroid/view/View;)Z

    move-result v6

    .line 372
    invoke-static {p1}, Lcom/baidu/mobstat/eq;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/baidu/mobstat/eq;->c(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 373
    invoke-static {p1, p2}, Lcom/baidu/mobstat/eq;->a(Landroid/app/Activity;Landroid/view/View;)Lorg/json/JSONArray;

    move-result-object v2

    .line 375
    invoke-static {p3}, Lcom/baidu/mobstat/eq;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 376
    invoke-static {p2, v4}, Lcom/baidu/mobstat/eq;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 379
    invoke-static/range {v0 .. v6}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 380
    return-object v0
.end method

.method public a(Landroid/app/Activity;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1543
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1544
    if-nez p2, :cond_1

    .line 1545
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1546
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1547
    return-object v5

    .line 1544
    :cond_1
    if-eqz p1, :cond_0

    .line 1550
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 1551
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1556
    instance-of v0, p2, Landroid/webkit/WebView;

    if-nez v0, :cond_3

    .line 1573
    instance-of v0, p2, Landroid/widget/ScrollView;

    if-nez v0, :cond_4

    .line 1579
    instance-of v0, p2, Landroid/widget/ListView;

    if-nez v0, :cond_6

    .line 1582
    instance-of v0, p2, Landroid/widget/GridView;

    if-nez v0, :cond_7

    .line 1585
    invoke-static {p2}, Lcom/baidu/mobstat/eq;->r(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_8

    move v2, v1

    move v0, v1

    .line 1598
    :goto_0
    if-eqz v0, :cond_9

    .line 1601
    :goto_1
    if-eqz v2, :cond_a

    .line 1605
    :goto_2
    if-gtz v0, :cond_2

    move v0, v1

    .line 1606
    :cond_2
    if-gtz v2, :cond_b

    .line 1608
    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1609
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1611
    return-object v5

    .line 1557
    :cond_3
    iget-object v6, p0, Lcom/baidu/mobstat/dc;->A:Ljava/lang/Object;

    monitor-enter v6

    .line 1558
    :try_start_0
    check-cast p2, Landroid/webkit/WebView;

    .line 1561
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/dc;->a(Landroid/app/Activity;Landroid/webkit/WebView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1566
    :try_start_1
    iget-object v0, p0, Lcom/baidu/mobstat/dc;->A:Ljava/lang/Object;

    const-wide/16 v8, 0x1388

    invoke-virtual {v0, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1571
    :goto_4
    :try_start_2
    iget v0, p0, Lcom/baidu/mobstat/dc;->y:F

    iget v2, p0, Lcom/baidu/mobstat/dc;->z:F

    mul-float/2addr v0, v2

    float-to-int v2, v0

    .line 1572
    monitor-exit v6

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1574
    :cond_4
    check-cast p2, Landroid/widget/ScrollView;

    .line 1575
    invoke-virtual {p2}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_5

    move v0, v1

    move v2, v1

    :goto_5
    move v10, v0

    move v0, v2

    move v2, v10

    .line 1579
    goto :goto_0

    .line 1576
    :cond_5
    invoke-virtual {p2, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1577
    invoke-virtual {p2, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_5

    .line 1580
    :cond_6
    check-cast p2, Landroid/widget/ListView;

    .line 1581
    invoke-static {p2}, Lcom/baidu/mobstat/eq;->a(Landroid/widget/ListView;)I

    move-result v2

    move v0, v1

    .line 1582
    goto :goto_0

    .line 1583
    :cond_7
    check-cast p2, Landroid/widget/GridView;

    .line 1584
    invoke-static {p2}, Lcom/baidu/mobstat/eq;->a(Landroid/widget/GridView;)I

    move-result v2

    move v0, v1

    .line 1585
    goto :goto_0

    .line 1589
    :cond_8
    :try_start_3
    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    .line 1590
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    .line 1591
    :try_start_4
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v2

    goto :goto_0

    .line 1594
    :catch_0
    move-exception v0

    move v0, v1

    :goto_6
    move v2, v1

    goto :goto_0

    :cond_9
    move v0, v4

    .line 1599
    goto :goto_1

    :cond_a
    move v2, v3

    .line 1602
    goto :goto_2

    :cond_b
    move v1, v2

    .line 1606
    goto :goto_3

    .line 1594
    :catch_1
    move-exception v2

    goto :goto_6

    .line 1569
    :catch_2
    move-exception v0

    goto :goto_4
.end method

.method public a(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 148
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 151
    iget-object v1, p0, Lcom/baidu/mobstat/dc;->c:Landroid/os/Handler;

    new-instance v4, Lcom/baidu/mobstat/dd;

    invoke-direct {v4, p0, v0, v2, v3}, Lcom/baidu/mobstat/dd;-><init>(Lcom/baidu/mobstat/dc;Ljava/lang/ref/WeakReference;J)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    return-void

    .line 145
    :cond_0
    return-void
.end method

.method public a(Landroid/view/KeyEvent;)V
    .locals 2

    .prologue
    .line 301
    if-eqz p1, :cond_0

    .line 307
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 311
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 315
    iget-object v0, p0, Lcom/baidu/mobstat/dc;->c:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/dl;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/dl;-><init>(Lcom/baidu/mobstat/dc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 335
    return-void

    .line 302
    :cond_0
    return-void

    .line 308
    :cond_1
    return-void

    .line 312
    :cond_2
    return-void
.end method

.method public a(Landroid/view/View;Landroid/app/Activity;)V
    .locals 8

    .prologue
    .line 273
    if-nez p1, :cond_1

    .line 274
    :cond_0
    return-void

    .line 273
    :cond_1
    if-eqz p2, :cond_0

    .line 277
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 278
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 282
    iget-object v0, p0, Lcom/baidu/mobstat/dc;->c:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/dk;

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/baidu/mobstat/dk;-><init>(Lcom/baidu/mobstat/dc;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Landroid/view/View;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 298
    return-void
.end method

.method public a(Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/baidu/mobstat/dc;->f:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    .line 114
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/baidu/mobstat/dc;->c:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/dm;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mobstat/dm;-><init>(Lcom/baidu/mobstat/dc;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 401
    return-void
.end method

.method public a(Ljava/lang/ref/WeakReference;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 417
    if-eqz p1, :cond_0

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 423
    new-instance v2, Lcom/baidu/mobstat/do;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/baidu/mobstat/do;-><init>(Lcom/baidu/mobstat/dc;Ljava/lang/ref/WeakReference;J)V

    .line 435
    iget-object v0, p0, Lcom/baidu/mobstat/dc;->x:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 438
    :goto_0
    iput-object v2, p0, Lcom/baidu/mobstat/dc;->x:Ljava/lang/Runnable;

    .line 440
    iget-object v0, p0, Lcom/baidu/mobstat/dc;->c:Landroid/os/Handler;

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 441
    return-void

    .line 418
    :cond_0
    return-void

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/dc;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/mobstat/dc;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public b(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 193
    if-eqz p1, :cond_0

    .line 197
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 200
    iget-object v1, p0, Lcom/baidu/mobstat/dc;->c:Landroid/os/Handler;

    new-instance v4, Lcom/baidu/mobstat/di;

    invoke-direct {v4, p0, v0, v2, v3}, Lcom/baidu/mobstat/di;-><init>(Lcom/baidu/mobstat/dc;Ljava/lang/ref/WeakReference;J)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 213
    return-void

    .line 194
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 124
    iget-object v1, p0, Lcom/baidu/mobstat/dc;->f:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    sget-object v2, Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;->TRACK_NONE:Lcom/baidu/mobstat/MtjConfig$FeedTrackStrategy;

    if-eq v1, v2, :cond_0

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 125
    goto :goto_0
.end method

.method public c(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 252
    if-eqz p1, :cond_0

    .line 256
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 259
    iget-object v1, p0, Lcom/baidu/mobstat/dc;->c:Landroid/os/Handler;

    new-instance v4, Lcom/baidu/mobstat/dj;

    invoke-direct {v4, p0, v0, v2, v3}, Lcom/baidu/mobstat/dj;-><init>(Lcom/baidu/mobstat/dc;Ljava/lang/ref/WeakReference;J)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 270
    return-void

    .line 253
    :cond_0
    return-void
.end method
