.class Lcom/squareup/picasso/BitmapHunter;
.super Ljava/lang/Object;
.source "BitmapHunter.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DECODE_LOCK:Ljava/lang/Object;

.field private static final ERRORING_HANDLER:Lcom/squareup/picasso/RequestHandler;

.field private static final NAME_BUILDER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final SEQUENCE_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field action:Lcom/squareup/picasso/Action;

.field actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/Action;",
            ">;"
        }
    .end annotation
.end field

.field final cache:Lcom/squareup/picasso/Cache;

.field final data:Lcom/squareup/picasso/Request;

.field final dispatcher:Lcom/squareup/picasso/Dispatcher;

.field exception:Ljava/lang/Exception;

.field exifRotation:I

.field future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field final key:Ljava/lang/String;

.field loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

.field final memoryPolicy:I

.field networkPolicy:I

.field final picasso:Lcom/squareup/picasso/Picasso;

.field priority:Lcom/squareup/picasso/Picasso$Priority;

.field final requestHandler:Lcom/squareup/picasso/RequestHandler;

.field result:Landroid/graphics/Bitmap;

.field retryCount:I

.field final sequence:I

.field final stats:Lcom/squareup/picasso/Stats;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/squareup/picasso/BitmapHunter;->DECODE_LOCK:Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/squareup/picasso/BitmapHunter$1;

    invoke-direct {v0}, Lcom/squareup/picasso/BitmapHunter$1;-><init>()V

    sput-object v0, Lcom/squareup/picasso/BitmapHunter;->NAME_BUILDER:Ljava/lang/ThreadLocal;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/squareup/picasso/BitmapHunter;->SEQUENCE_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    new-instance v0, Lcom/squareup/picasso/BitmapHunter$2;

    invoke-direct {v0}, Lcom/squareup/picasso/BitmapHunter$2;-><init>()V

    sput-object v0, Lcom/squareup/picasso/BitmapHunter;->ERRORING_HANDLER:Lcom/squareup/picasso/RequestHandler;

    return-void
.end method

.method constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;Lcom/squareup/picasso/RequestHandler;)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    sget-object v0, Lcom/squareup/picasso/BitmapHunter;->SEQUENCE_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->sequence:I

    .line 94
    iput-object p1, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    .line 95
    iput-object p2, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    .line 96
    iput-object p3, p0, Lcom/squareup/picasso/BitmapHunter;->cache:Lcom/squareup/picasso/Cache;

    .line 97
    iput-object p4, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    .line 98
    iput-object p5, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    .line 99
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->key:Ljava/lang/String;

    .line 100
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getRequest()Lcom/squareup/picasso/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    .line 101
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getPriority()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    .line 102
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getMemoryPolicy()I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->memoryPolicy:I

    .line 103
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getNetworkPolicy()I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->networkPolicy:I

    .line 104
    iput-object p6, p0, Lcom/squareup/picasso/BitmapHunter;->requestHandler:Lcom/squareup/picasso/RequestHandler;

    .line 105
    invoke-virtual {p6}, Lcom/squareup/picasso/RequestHandler;->getRetryCount()I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->retryCount:I

    .line 106
    return-void
.end method

.method static applyCustomTransformations(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/Transformation;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 425
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 483
    return-object p1

    .line 426
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Transformation;

    .line 429
    :try_start_0
    invoke-interface {v0, p1}, Lcom/squareup/picasso/Transformation;->transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 440
    if-eqz v2, :cond_3

    .line 458
    if-eq v2, p1, :cond_5

    .line 470
    :cond_1
    if-ne v2, p1, :cond_6

    .line 425
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object p1, v2

    goto :goto_0

    .line 438
    :catch_0
    move-exception v1

    .line 431
    sget-object v2, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance v3, Lcom/squareup/picasso/BitmapHunter$3;

    invoke-direct {v3, v0, v1}, Lcom/squareup/picasso/BitmapHunter$3;-><init>(Lcom/squareup/picasso/Transformation;Ljava/lang/RuntimeException;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 437
    return-object v5

    .line 441
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Transformation "

    .line 442
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 443
    invoke-interface {v0}, Lcom/squareup/picasso/Transformation;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " returned null after "

    .line 444
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 445
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " previous transformation(s).\n\nTransformation list:\n"

    .line 446
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 447
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 450
    sget-object v0, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance v2, Lcom/squareup/picasso/BitmapHunter$4;

    invoke-direct {v2, v1}, Lcom/squareup/picasso/BitmapHunter$4;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 455
    return-object v5

    .line 447
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Transformation;

    .line 448
    invoke-interface {v0}, Lcom/squareup/picasso/Transformation;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 458
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 459
    sget-object v1, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance v2, Lcom/squareup/picasso/BitmapHunter$5;

    invoke-direct {v2, v0}, Lcom/squareup/picasso/BitmapHunter$5;-><init>(Lcom/squareup/picasso/Transformation;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 466
    return-object v5

    .line 470
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 471
    sget-object v1, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance v2, Lcom/squareup/picasso/BitmapHunter$6;

    invoke-direct {v2, v0}, Lcom/squareup/picasso/BitmapHunter$6;-><init>(Lcom/squareup/picasso/Transformation;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 478
    return-object v5
.end method

.method private computeNewPriority()Lcom/squareup/picasso/Picasso$Priority;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 306
    sget-object v3, Lcom/squareup/picasso/Picasso$Priority;->LOW:Lcom/squareup/picasso/Picasso$Priority;

    .line 308
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    if-nez v0, :cond_3

    :cond_0
    move v0, v2

    .line 309
    :goto_0
    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    if-eqz v4, :cond_4

    .line 312
    :cond_1
    :goto_1
    if-eqz v1, :cond_5

    .line 316
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    if-nez v1, :cond_6

    move-object v1, v3

    .line 320
    :goto_2
    if-nez v0, :cond_7

    .line 330
    :cond_2
    return-object v1

    .line 308
    :cond_3
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 309
    :cond_4
    if-nez v0, :cond_1

    move v1, v2

    goto :goto_1

    .line 313
    :cond_5
    return-object v3

    .line 317
    :cond_6
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    invoke-virtual {v1}, Lcom/squareup/picasso/Action;->getPriority()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v1

    goto :goto_2

    .line 322
    :cond_7
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_3
    if-ge v2, v3, :cond_2

    .line 323
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Action;

    invoke-virtual {v0}, Lcom/squareup/picasso/Action;->getPriority()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v4

    invoke-virtual {v1}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v5

    if-gt v4, v5, :cond_8

    move-object v0, v1

    .line 322
    :cond_8
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_3
.end method

.method static decodeStream(Ljava/io/InputStream;Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 114
    new-instance v0, Lcom/squareup/picasso/MarkableInputStream;

    invoke-direct {v0, p0}, Lcom/squareup/picasso/MarkableInputStream;-><init>(Ljava/io/InputStream;)V

    const/high16 v1, 0x10000

    .line 117
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/MarkableInputStream;->savePosition(I)J

    move-result-wide v2

    .line 119
    invoke-static {p1}, Lcom/squareup/picasso/RequestHandler;->createBitmapOptions(Lcom/squareup/picasso/Request;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 120
    invoke-static {v1}, Lcom/squareup/picasso/RequestHandler;->requiresInSampleSize(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v4

    .line 122
    invoke-static {v0}, Lcom/squareup/picasso/Utils;->isWebPFile(Ljava/io/InputStream;)Z

    move-result v5

    .line 123
    invoke-virtual {v0, v2, v3}, Lcom/squareup/picasso/MarkableInputStream;->reset(J)V

    .line 126
    if-nez v5, :cond_0

    .line 135
    if-nez v4, :cond_2

    .line 142
    :goto_0
    invoke-static {v0, v7, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_3

    .line 147
    return-object v0

    .line 127
    :cond_0
    invoke-static {v0}, Lcom/squareup/picasso/Utils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 128
    if-nez v4, :cond_1

    .line 133
    :goto_1
    array-length v2, v0

    invoke-static {v0, v6, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 129
    :cond_1
    array-length v2, v0

    invoke-static {v0, v6, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 130
    iget v2, p1, Lcom/squareup/picasso/Request;->targetWidth:I

    iget v3, p1, Lcom/squareup/picasso/Request;->targetHeight:I

    invoke-static {v2, v3, v1, p1}, Lcom/squareup/picasso/RequestHandler;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/Request;)V

    goto :goto_1

    .line 136
    :cond_2
    invoke-static {v0, v7, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 137
    iget v4, p1, Lcom/squareup/picasso/Request;->targetWidth:I

    iget v5, p1, Lcom/squareup/picasso/Request;->targetHeight:I

    invoke-static {v4, v5, v1, p1}, Lcom/squareup/picasso/RequestHandler;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/Request;)V

    .line 140
    invoke-virtual {v0, v2, v3}, Lcom/squareup/picasso/MarkableInputStream;->reset(J)V

    goto :goto_0

    .line 145
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Failed to decode stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static forRequest(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)Lcom/squareup/picasso/BitmapHunter;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 409
    invoke-virtual {p4}, Lcom/squareup/picasso/Action;->getRequest()Lcom/squareup/picasso/Request;

    move-result-object v1

    .line 410
    invoke-virtual {p0}, Lcom/squareup/picasso/Picasso;->getRequestHandlers()Ljava/util/List;

    move-result-object v2

    .line 414
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-lt v0, v3, :cond_0

    .line 421
    new-instance v0, Lcom/squareup/picasso/BitmapHunter;

    sget-object v6, Lcom/squareup/picasso/BitmapHunter;->ERRORING_HANDLER:Lcom/squareup/picasso/RequestHandler;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/squareup/picasso/BitmapHunter;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;Lcom/squareup/picasso/RequestHandler;)V

    return-object v0

    .line 415
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/squareup/picasso/RequestHandler;

    .line 416
    invoke-virtual {v6, v1}, Lcom/squareup/picasso/RequestHandler;->canHandleRequest(Lcom/squareup/picasso/Request;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    :cond_1
    new-instance v0, Lcom/squareup/picasso/BitmapHunter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/squareup/picasso/BitmapHunter;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;Lcom/squareup/picasso/RequestHandler;)V

    return-object v0
.end method

.method private static shouldResize(ZIIII)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 569
    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    if-gt p1, p3, :cond_0

    if-gt p2, p4, :cond_0

    goto :goto_0
.end method

.method static transformResult(Lcom/squareup/picasso/Request;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 16

    .prologue
    .line 487
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 488
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 489
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/squareup/picasso/Request;->onlyScaleDown:Z

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 496
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/picasso/Request;->needsMatrixTransform()Z

    move-result v2

    if-nez v2, :cond_0

    move v4, v6

    move v3, v9

    move v6, v5

    move v5, v8

    .line 553
    :goto_0
    if-nez p2, :cond_10

    .line 558
    :goto_1
    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 559
    move-object/from16 v0, p1

    if-ne v2, v0, :cond_11

    .line 564
    :goto_2
    return-object p1

    .line 499
    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/squareup/picasso/Request;->targetWidth:I

    .line 500
    move-object/from16 v0, p0

    iget v13, v0, Lcom/squareup/picasso/Request;->targetHeight:I

    .line 502
    move-object/from16 v0, p0

    iget v2, v0, Lcom/squareup/picasso/Request;->rotationDegrees:F

    const/4 v3, 0x0

    .line 503
    cmpl-float v3, v2, v3

    if-eqz v3, :cond_1

    .line 504
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/squareup/picasso/Request;->hasRotationPivot:Z

    if-nez v3, :cond_4

    .line 507
    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 511
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/squareup/picasso/Request;->centerCrop:Z

    if-nez v2, :cond_5

    .line 531
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/squareup/picasso/Request;->centerInside:Z

    if-nez v2, :cond_8

    .line 538
    if-eqz v12, :cond_b

    :cond_2
    if-eq v12, v8, :cond_c

    .line 543
    :cond_3
    if-nez v12, :cond_d

    int-to-float v2, v13

    int-to-float v3, v5

    div-float/2addr v2, v3

    .line 545
    :goto_4
    if-nez v13, :cond_e

    int-to-float v3, v12

    int-to-float v4, v8

    div-float/2addr v3, v4

    .line 547
    :goto_5
    invoke-static {v11, v8, v5, v12, v13}, Lcom/squareup/picasso/BitmapHunter;->shouldResize(ZIIII)Z

    move-result v4

    if-nez v4, :cond_f

    move v4, v6

    move v3, v9

    move v6, v5

    move v5, v8

    goto :goto_0

    .line 505
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/squareup/picasso/Request;->rotationPivotX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/squareup/picasso/Request;->rotationPivotY:F

    invoke-virtual {v7, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_3

    .line 512
    :cond_5
    int-to-float v2, v12

    int-to-float v3, v8

    div-float v3, v2, v3

    .line 513
    int-to-float v2, v13

    int-to-float v4, v5

    div-float/2addr v2, v4

    .line 515
    cmpl-float v4, v3, v2

    if-lez v4, :cond_6

    .line 516
    int-to-float v4, v5

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v4, v14

    .line 517
    sub-int v2, v5, v4

    div-int/lit8 v6, v2, 0x2

    .line 520
    int-to-float v2, v13

    int-to-float v10, v4

    div-float/2addr v2, v10

    move v10, v9

    move v9, v6

    move v6, v8

    .line 528
    :goto_6
    invoke-static {v11, v8, v5, v12, v13}, Lcom/squareup/picasso/BitmapHunter;->shouldResize(ZIIII)Z

    move-result v5

    if-nez v5, :cond_7

    :goto_7
    move v5, v6

    move v3, v10

    move v6, v4

    move v4, v9

    .line 531
    goto/16 :goto_0

    .line 522
    :cond_6
    int-to-float v4, v8

    div-float/2addr v3, v2

    mul-float/2addr v3, v4

    float-to-double v14, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v4, v14

    .line 523
    sub-int v3, v8, v4

    div-int/lit8 v9, v3, 0x2

    .line 525
    int-to-float v3, v12

    int-to-float v10, v4

    div-float/2addr v3, v10

    move v10, v9

    move v9, v6

    move v6, v4

    move v4, v5

    .line 526
    goto :goto_6

    .line 529
    :cond_7
    invoke-virtual {v7, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_7

    .line 532
    :cond_8
    int-to-float v2, v12

    int-to-float v3, v8

    div-float/2addr v2, v3

    .line 533
    int-to-float v3, v13

    int-to-float v4, v5

    div-float/2addr v3, v4

    .line 534
    cmpg-float v4, v2, v3

    if-gez v4, :cond_9

    .line 535
    :goto_8
    invoke-static {v11, v8, v5, v12, v13}, Lcom/squareup/picasso/BitmapHunter;->shouldResize(ZIIII)Z

    move-result v3

    if-nez v3, :cond_a

    :goto_9
    move v4, v6

    move v3, v9

    move v6, v5

    move v5, v8

    .line 538
    goto/16 :goto_0

    :cond_9
    move v2, v3

    .line 534
    goto :goto_8

    .line 536
    :cond_a
    invoke-virtual {v7, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_9

    .line 538
    :cond_b
    if-nez v13, :cond_2

    goto :goto_9

    :cond_c
    if-ne v13, v5, :cond_3

    goto :goto_9

    .line 543
    :cond_d
    int-to-float v2, v12

    int-to-float v3, v8

    div-float/2addr v2, v3

    goto/16 :goto_4

    .line 545
    :cond_e
    int-to-float v3, v13

    int-to-float v4, v5

    div-float/2addr v3, v4

    goto/16 :goto_5

    .line 548
    :cond_f
    invoke-virtual {v7, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    move v4, v6

    move v3, v9

    move v6, v5

    move v5, v8

    goto/16 :goto_0

    .line 554
    :cond_10
    move/from16 v0, p2

    int-to-float v2, v0

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    goto/16 :goto_1

    .line 560
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 p1, v2

    .line 561
    goto/16 :goto_2
.end method

.method static updateThreadName(Lcom/squareup/picasso/Request;)V
    .locals 4

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/squareup/picasso/Request;->getName()Ljava/lang/String;

    move-result-object v1

    .line 400
    sget-object v0, Lcom/squareup/picasso/BitmapHunter;->NAME_BUILDER:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Picasso-"

    .line 401
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    const-string/jumbo v2, "Picasso-"

    .line 402
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 405
    return-void
.end method


# virtual methods
.method attach(Lcom/squareup/picasso/Action;)V
    .locals 4

    .prologue
    .line 254
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    .line 255
    iget-object v1, p1, Lcom/squareup/picasso/Action;->request:Lcom/squareup/picasso/Request;

    .line 257
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    if-eqz v2, :cond_0

    .line 269
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 273
    :goto_0
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    if-nez v0, :cond_5

    .line 279
    :goto_1
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getPriority()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    invoke-virtual {v2}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v2

    if-gt v1, v2, :cond_6

    .line 283
    :goto_2
    return-void

    .line 258
    :cond_0
    iput-object p1, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    .line 259
    if-nez v0, :cond_1

    .line 266
    :goto_3
    return-void

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    if-nez v0, :cond_3

    :cond_2
    const-string/jumbo v0, "Hunter"

    const-string/jumbo v2, "joined"

    .line 261
    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "to empty hunter"

    invoke-static {v0, v2, v1, v3}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 260
    :cond_3
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "Hunter"

    const-string/jumbo v2, "joined"

    .line 263
    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "to "

    invoke-static {p0, v3}, Lcom/squareup/picasso/Utils;->getLogIdsForHunter(Lcom/squareup/picasso/BitmapHunter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 270
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "Hunter"

    const-string/jumbo v2, "joined"

    .line 276
    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "to "

    invoke-static {p0, v3}, Lcom/squareup/picasso/Utils;->getLogIdsForHunter(Lcom/squareup/picasso/BitmapHunter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 281
    :cond_6
    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    goto :goto_2
.end method

.method cancel()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 334
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    if-eqz v1, :cond_1

    .line 337
    :cond_0
    :goto_0
    return v0

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    if-nez v1, :cond_3

    .line 335
    :cond_2
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->future:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->future:Ljava/util/concurrent/Future;

    .line 337
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 334
    :cond_3
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    .line 335
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method detach(Lcom/squareup/picasso/Action;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 287
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    if-eq v1, p1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    if-nez v1, :cond_2

    .line 296
    :goto_0
    if-nez v0, :cond_3

    .line 300
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-nez v0, :cond_4

    .line 303
    :goto_2
    return-void

    .line 288
    :cond_1
    iput-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    .line 289
    const/4 v0, 0x1

    goto :goto_0

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 296
    :cond_3
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getPriority()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    if-ne v0, v1, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/squareup/picasso/BitmapHunter;->computeNewPriority()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "Hunter"

    const-string/jumbo v1, "removed"

    .line 301
    iget-object v2, p1, Lcom/squareup/picasso/Action;->request:Lcom/squareup/picasso/Request;

    invoke-virtual {v2}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "from "

    invoke-static {p0, v3}, Lcom/squareup/picasso/Utils;->getLogIdsForHunter(Lcom/squareup/picasso/BitmapHunter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method getAction()Lcom/squareup/picasso/Action;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    return-object v0
.end method

.method getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    return-object v0
.end method

.method getData()Lcom/squareup/picasso/Request;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    return-object v0
.end method

.method getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->key:Ljava/lang/String;

    return-object v0
.end method

.method getLoadedFrom()Lcom/squareup/picasso/Picasso$LoadedFrom;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

    return-object v0
.end method

.method getMemoryPolicy()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/squareup/picasso/BitmapHunter;->memoryPolicy:I

    return v0
.end method

.method getPicasso()Lcom/squareup/picasso/Picasso;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    return-object v0
.end method

.method getPriority()Lcom/squareup/picasso/Picasso$Priority;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    return-object v0
.end method

.method getResult()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->result:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method hunt()Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 193
    iget v1, p0, Lcom/squareup/picasso/BitmapHunter;->memoryPolicy:I

    invoke-static {v1}, Lcom/squareup/picasso/MemoryPolicy;->shouldReadFromMemoryCache(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    iget v1, p0, Lcom/squareup/picasso/BitmapHunter;->retryCount:I

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/squareup/picasso/BitmapHunter;->networkPolicy:I

    :goto_0
    iput v1, v2, Lcom/squareup/picasso/Request;->networkPolicy:I

    .line 206
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->requestHandler:Lcom/squareup/picasso/RequestHandler;

    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    iget v3, p0, Lcom/squareup/picasso/BitmapHunter;->networkPolicy:I

    invoke-virtual {v1, v2, v3}, Lcom/squareup/picasso/RequestHandler;->load(Lcom/squareup/picasso/Request;I)Lcom/squareup/picasso/RequestHandler$Result;

    move-result-object v1

    .line 207
    if-nez v1, :cond_6

    .line 224
    :cond_1
    :goto_1
    if-nez v0, :cond_7

    .line 250
    :cond_2
    :goto_2
    return-object v0

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->cache:Lcom/squareup/picasso/Cache;

    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/squareup/picasso/Cache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_0

    .line 196
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v1}, Lcom/squareup/picasso/Stats;->dispatchCacheHit()V

    .line 197
    sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    iput-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 198
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-nez v1, :cond_4

    .line 201
    :goto_3
    return-object v0

    :cond_4
    const-string/jumbo v1, "Hunter"

    const-string/jumbo v2, "decoded"

    .line 199
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v3}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "from cache"

    invoke-static {v1, v2, v3, v4}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 205
    :cond_5
    sget-object v1, Lcom/squareup/picasso/NetworkPolicy;->OFFLINE:Lcom/squareup/picasso/NetworkPolicy;

    iget v1, v1, Lcom/squareup/picasso/NetworkPolicy;->index:I

    goto :goto_0

    .line 208
    :cond_6
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestHandler$Result;->getLoadedFrom()Lcom/squareup/picasso/Picasso$LoadedFrom;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 209
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestHandler$Result;->getExifOrientation()I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->exifRotation:I

    .line 211
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestHandler$Result;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 214
    if-nez v0, :cond_1

    .line 215
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestHandler$Result;->getStream()Ljava/io/InputStream;

    move-result-object v1

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-static {v1, v0}, Lcom/squareup/picasso/BitmapHunter;->decodeStream(Ljava/io/InputStream;Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 219
    invoke-static {v1}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    .line 220
    :catchall_0
    move-exception v0

    .line 219
    invoke-static {v1}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    .line 225
    :cond_7
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-nez v1, :cond_b

    .line 228
    :goto_4
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Stats;->dispatchBitmapDecoded(Landroid/graphics/Bitmap;)V

    .line 229
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->needsTransformation()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 230
    :cond_8
    sget-object v1, Lcom/squareup/picasso/BitmapHunter;->DECODE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 231
    :try_start_1
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v2}, Lcom/squareup/picasso/Request;->needsMatrixTransform()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 232
    :cond_9
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    iget v3, p0, Lcom/squareup/picasso/BitmapHunter;->exifRotation:I

    invoke-static {v2, v0, v3}, Lcom/squareup/picasso/BitmapHunter;->transformResult(Lcom/squareup/picasso/Request;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 233
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-nez v2, :cond_e

    .line 237
    :goto_5
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v2}, Lcom/squareup/picasso/Request;->hasCustomTransformations()Z

    move-result v2

    if-nez v2, :cond_f

    .line 243
    :cond_a
    :goto_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 244
    if-eqz v0, :cond_2

    .line 245
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Stats;->dispatchBitmapTransformed(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    :cond_b
    const-string/jumbo v1, "Hunter"

    const-string/jumbo v2, "decoded"

    .line 226
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v3}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 229
    :cond_c
    iget v1, p0, Lcom/squareup/picasso/BitmapHunter;->exifRotation:I

    if-nez v1, :cond_8

    goto/16 :goto_2

    .line 231
    :cond_d
    :try_start_2
    iget v2, p0, Lcom/squareup/picasso/BitmapHunter;->exifRotation:I

    if-nez v2, :cond_9

    goto :goto_5

    :cond_e
    const-string/jumbo v2, "Hunter"

    const-string/jumbo v3, "transformed"

    .line 234
    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v4}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 243
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 238
    :cond_f
    :try_start_3
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    iget-object v2, v2, Lcom/squareup/picasso/Request;->transformations:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/squareup/picasso/BitmapHunter;->applyCustomTransformations(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 239
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v2, :cond_a

    const-string/jumbo v2, "Hunter"

    const-string/jumbo v3, "transformed"

    .line 240
    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v4}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "from custom transformations"

    invoke-static {v2, v3, v4, v5}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6
.end method

.method isCancelled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 341
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->future:Ljava/util/concurrent/Future;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->future:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-static {v0}, Lcom/squareup/picasso/BitmapHunter;->updateThreadName(Lcom/squareup/picasso/Request;)V

    .line 155
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-nez v0, :cond_0

    .line 159
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/picasso/BitmapHunter;->hunt()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->result:Landroid/graphics/Bitmap;

    .line 161
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->result:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v0, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchComplete(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_0
    .catch Lcom/squareup/picasso/Downloader$ResponseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/squareup/picasso/NetworkRequestHandler$ContentLengthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 188
    :goto_2
    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "Hunter"

    const-string/jumbo v1, "executing"

    .line 156
    invoke-static {p0}, Lcom/squareup/picasso/Utils;->getLogIdsForHunter(Lcom/squareup/picasso/BitmapHunter;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/squareup/picasso/Downloader$ResponseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/squareup/picasso/NetworkRequestHandler$ContentLengthException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 167
    :try_start_2
    iget-boolean v1, v0, Lcom/squareup/picasso/Downloader$ResponseException;->localCacheOnly:Z

    if-nez v1, :cond_3

    .line 168
    :cond_1
    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 170
    :goto_3
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v0, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchFailed(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_2

    .line 162
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v0, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchFailed(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_3
    .catch Lcom/squareup/picasso/Downloader$ResponseException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/squareup/picasso/NetworkRequestHandler$ContentLengthException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 187
    :catch_1
    move-exception v0

    .line 172
    :try_start_4
    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 173
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v0, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchRetry(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_2

    .line 167
    :cond_3
    :try_start_5
    iget v1, v0, Lcom/squareup/picasso/Downloader$ResponseException;->responseCode:I

    const/16 v2, 0x1f8

    if-ne v1, v2, :cond_1

    goto :goto_3

    .line 187
    :catch_2
    move-exception v0

    .line 175
    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 176
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v0, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchRetry(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_2

    .line 187
    :catch_3
    move-exception v0

    .line 178
    :try_start_6
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 179
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v2}, Lcom/squareup/picasso/Stats;->createSnapshot()Lcom/squareup/picasso/StatsSnapshot;

    move-result-object v2

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/StatsSnapshot;->dump(Ljava/io/PrintWriter;)V

    .line 180
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 181
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v0, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchFailed(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 187
    :catch_4
    move-exception v0

    .line 183
    :try_start_7
    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 184
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v0, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchFailed(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 187
    :catchall_0
    move-exception v0

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string/jumbo v2, "Picasso-Idle"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v0
.end method

.method shouldRetry(ZLandroid/net/NetworkInfo;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 345
    iget v0, p0, Lcom/squareup/picasso/BitmapHunter;->retryCount:I

    if-gtz v0, :cond_0

    move v0, v1

    .line 346
    :goto_0
    if-eqz v0, :cond_1

    .line 349
    iget v0, p0, Lcom/squareup/picasso/BitmapHunter;->retryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->retryCount:I

    .line 350
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->requestHandler:Lcom/squareup/picasso/RequestHandler;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/picasso/RequestHandler;->shouldRetry(ZLandroid/net/NetworkInfo;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 345
    goto :goto_0

    .line 347
    :cond_1
    return v1
.end method

.method supportsReplay()Z
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->requestHandler:Lcom/squareup/picasso/RequestHandler;

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestHandler;->supportsReplay()Z

    move-result v0

    return v0
.end method
