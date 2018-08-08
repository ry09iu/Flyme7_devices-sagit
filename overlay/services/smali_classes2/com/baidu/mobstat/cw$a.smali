.class Lcom/baidu/mobstat/cw$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/cw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private final b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/mobstat/cw$a;->b:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 388
    iput-object v0, p0, Lcom/baidu/mobstat/cw$a;->a:Landroid/graphics/Bitmap;

    .line 389
    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/cw$a;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/baidu/mobstat/cw$a;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(IIILandroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    monitor-enter p0

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/cw$a;->a:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 394
    :cond_0
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/cw$a;->a:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/baidu/mobstat/cw$a;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 404
    :goto_1
    iget-object v0, p0, Lcom/baidu/mobstat/cw$a;->a:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_3

    :goto_2
    monitor-exit p0

    .line 408
    return-void

    .line 392
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/baidu/mobstat/cw$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/cw$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    goto :goto_1

    .line 397
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 396
    iput-object v0, p0, Lcom/baidu/mobstat/cw$a;->a:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 400
    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/baidu/mobstat/cw$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p3}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_1

    .line 405
    :cond_3
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/baidu/mobstat/cw$a;->a:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 406
    iget-object v3, p0, Lcom/baidu/mobstat/cw$a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p4, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method
