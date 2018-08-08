.class Lcom/baidu/mobstat/cw$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/cw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/baidu/mobstat/cw$c;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mobstat/cw$c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/util/DisplayMetrics;

.field private final d:Lcom/baidu/mobstat/cw$a;

.field private final e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa0

    .line 382
    iput v0, p0, Lcom/baidu/mobstat/cw$b;->e:I

    .line 269
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/cw$b;->c:Landroid/util/DisplayMetrics;

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/cw$b;->b:Ljava/util/List;

    .line 271
    new-instance v0, Lcom/baidu/mobstat/cw$a;

    invoke-direct {v0}, Lcom/baidu/mobstat/cw$a;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/cw$b;->d:Lcom/baidu/mobstat/cw$a;

    .line 272
    return-void
.end method

.method private a(Lcom/baidu/mobstat/cw$c;)V
    .locals 13

    .prologue
    .line 316
    iget-object v3, p1, Lcom/baidu/mobstat/cw$c;->b:Landroid/view/View;

    const/4 v1, 0x0

    :try_start_0
    const-class v0, Landroid/view/View;

    const-string/jumbo v2, "createSnapshot"

    const/4 v4, 0x3

    .line 320
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/graphics/Bitmap$Config;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 321
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 322
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x3

    .line 323
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    const/4 v1, 0x0

    .line 340
    if-eqz v0, :cond_2

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_1
    move-object v2, v0

    move-object v0, v1

    :goto_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 352
    if-nez v0, :cond_3

    .line 370
    :cond_0
    :goto_3
    if-nez v2, :cond_5

    .line 373
    :cond_1
    :goto_4
    iput v1, p1, Lcom/baidu/mobstat/cw$c;->d:F

    .line 374
    iget-object v0, p0, Lcom/baidu/mobstat/cw$b;->d:Lcom/baidu/mobstat/cw$a;

    iput-object v0, p1, Lcom/baidu/mobstat/cw$c;->c:Lcom/baidu/mobstat/cw$a;

    .line 375
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 325
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v2

    const-string/jumbo v4, "autotrace: Can\'t call createSnapshot, will use drawCache"

    invoke-virtual {v2, v4, v0}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    move-object v0, v1

    .line 336
    goto :goto_0

    :catch_1
    move-exception v0

    .line 327
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v2

    const-string/jumbo v4, "autotrace: Can\'t call createSnapshot with arguments"

    invoke-virtual {v2, v4, v0}, Lcom/baidu/mobstat/eh;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 336
    :catch_2
    move-exception v0

    .line 329
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v2

    const-string/jumbo v4, "autotrace: Exception when calling createSnapshot"

    invoke-virtual {v2, v4, v0}, Lcom/baidu/mobstat/eh;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 336
    :catch_3
    move-exception v0

    .line 331
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v2

    const-string/jumbo v4, "autotrace: Can\'t access createSnapshot, using drawCache"

    invoke-virtual {v2, v4, v0}, Lcom/baidu/mobstat/eh;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 336
    :catch_4
    move-exception v0

    .line 333
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v2

    const-string/jumbo v4, "autotrace: createSnapshot didn\'t return a bitmap"

    invoke-virtual {v2, v4, v0}, Lcom/baidu/mobstat/eh;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 336
    :catch_5
    move-exception v0

    .line 335
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v2

    const-string/jumbo v4, " autotrace:createSnapshot encounter exception"

    invoke-virtual {v2, v4, v0}, Lcom/baidu/mobstat/eh;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 341
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v1

    .line 342
    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 343
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 344
    invoke-virtual {v3}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    move-result-object v0

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_1

    .line 349
    :catch_6
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    .line 347
    :goto_6
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "autotrace: Can\'t take a bitmap snapshot of view "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", skipping for now."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 353
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v4

    .line 355
    if-nez v4, :cond_4

    .line 359
    :goto_7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 360
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 362
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    float-to-double v6, v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-int v6, v6

    .line 363
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    float-to-double v8, v7

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v7, v8

    .line 365
    if-lez v4, :cond_0

    if-lez v5, :cond_0

    if-lez v6, :cond_0

    if-lez v7, :cond_0

    .line 366
    iget-object v4, p0, Lcom/baidu/mobstat/cw$b;->d:Lcom/baidu/mobstat/cw$a;

    const/16 v5, 0xa0

    invoke-virtual {v4, v6, v7, v5, v0}, Lcom/baidu/mobstat/cw$a;->a(IIILandroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 356
    :cond_4
    int-to-float v1, v4

    const/high16 v4, 0x43200000    # 160.0f

    div-float v1, v4, v1

    goto :goto_7

    .line 370
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 371
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    goto/16 :goto_4

    .line 349
    :catch_7
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto :goto_6
.end method

.method private b()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/baidu/mobstat/cw$b;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/mobstat/cj;->a(Landroid/app/Activity;Z)V

    .line 308
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/baidu/mobstat/cw$b;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/cj;->a(Landroid/app/Activity;Z)V

    .line 313
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mobstat/cw$c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 280
    iget-object v0, p0, Lcom/baidu/mobstat/cw$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 282
    new-instance v0, Ljava/util/HashSet;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 283
    iget-object v2, p0, Lcom/baidu/mobstat/cw$b;->a:Landroid/app/Activity;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/baidu/mobstat/cw$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 294
    :goto_1
    if-lt v1, v2, :cond_1

    .line 302
    iget-object v0, p0, Lcom/baidu/mobstat/cw$b;->b:Ljava/util/List;

    return-object v0

    .line 285
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 286
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    .line 287
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 288
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v5, p0, Lcom/baidu/mobstat/cw$b;->c:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 289
    new-instance v0, Lcom/baidu/mobstat/cw$c;

    invoke-direct {v0, v3, v4}, Lcom/baidu/mobstat/cw$c;-><init>(Ljava/lang/String;Landroid/view/View;)V

    .line 290
    iget-object v3, p0, Lcom/baidu/mobstat/cw$b;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/cw$b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/cw$c;

    .line 297
    invoke-direct {p0}, Lcom/baidu/mobstat/cw$b;->b()V

    .line 298
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/cw$b;->a(Lcom/baidu/mobstat/cw$c;)V

    .line 299
    invoke-direct {p0}, Lcom/baidu/mobstat/cw$b;->c()V

    .line 294
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/baidu/mobstat/cw$b;->a:Landroid/app/Activity;

    .line 276
    return-void
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/baidu/mobstat/cw$b;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
