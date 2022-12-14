.class Lcom/squareup/picasso/PicassoExecutorService;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "PicassoExecutorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/PicassoExecutorService$PicassoFutureTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_THREAD_COUNT:I = 0x3


# direct methods
.method constructor <init>()V
    .locals 9

    .prologue
    const/4 v2, 0x3

    const-wide/16 v4, 0x0

    .line 38
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lcom/squareup/picasso/Utils$PicassoThreadFactory;

    invoke-direct {v8}, Lcom/squareup/picasso/Utils$PicassoThreadFactory;-><init>()V

    move-object v1, p0

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 40
    return-void
.end method

.method private setThreadCount(I)V
    .locals 0

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/PicassoExecutorService;->setCorePoolSize(I)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/PicassoExecutorService;->setMaximumPoolSize(I)V

    .line 83
    return-void
.end method


# virtual methods
.method adjustThreadCount(Landroid/net/NetworkInfo;)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 43
    if-nez p1, :cond_1

    .line 44
    :cond_0
    invoke-direct {p0, v1}, Lcom/squareup/picasso/PicassoExecutorService;->setThreadCount(I)V

    .line 45
    return-void

    .line 43
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 76
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/squareup/picasso/PicassoExecutorService;->setThreadCount(I)V

    .line 78
    :goto_0
    return-void

    :pswitch_1
    const/4 v0, 0x4

    .line 51
    invoke-direct {p0, v0}, Lcom/squareup/picasso/PicassoExecutorService;->setThreadCount(I)V

    goto :goto_0

    .line 54
    :pswitch_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 72
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/squareup/picasso/PicassoExecutorService;->setThreadCount(I)V

    goto :goto_0

    .line 58
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/squareup/picasso/PicassoExecutorService;->setThreadCount(I)V

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x2

    .line 65
    invoke-direct {p0, v0}, Lcom/squareup/picasso/PicassoExecutorService;->setThreadCount(I)V

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x1

    .line 69
    invoke-direct {p0, v0}, Lcom/squareup/picasso/PicassoExecutorService;->setThreadCount(I)V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 54
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Lcom/squareup/picasso/PicassoExecutorService$PicassoFutureTask;

    check-cast p1, Lcom/squareup/picasso/BitmapHunter;

    invoke-direct {v0, p1}, Lcom/squareup/picasso/PicassoExecutorService$PicassoFutureTask;-><init>(Lcom/squareup/picasso/BitmapHunter;)V

    .line 88
    invoke-virtual {p0, v0}, Lcom/squareup/picasso/PicassoExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 89
    return-object v0
.end method
