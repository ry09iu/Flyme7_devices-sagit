.class public final Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;
.super Ljava/lang/Object;
.source "BitmapPreFiller.java"


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

.field private final defaultFormat:Lcom/bumptech/glide/load/DecodeFormat;

.field private final handler:Landroid/os/Handler;

.field private final memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->handler:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 30
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 31
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->defaultFormat:Lcom/bumptech/glide/load/DecodeFormat;

    .line 32
    return-void
.end method

.method private static getSizeInBytes(Lcom/bumptech/glide/load/engine/prefill/PreFillType;)I
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    return v0
.end method


# virtual methods
.method generateAllocationOrder([Lcom/bumptech/glide/load/engine/prefill/PreFillType;)Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 58
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->getMaxSize()I

    move-result v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->getCurrentSize()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->getMaxSize()I

    move-result v2

    add-int v3, v1, v2

    .line 61
    array-length v4, p1

    move v1, v0

    move v2, v0

    :goto_0
    if-lt v1, v4, :cond_0

    .line 65
    int-to-float v1, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 67
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 68
    array-length v3, p1

    :goto_1
    if-lt v0, v3, :cond_1

    .line 75
    new-instance v0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    invoke-direct {v0, v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 61
    :cond_0
    aget-object v5, p1, v1

    .line 62
    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getWeight()I

    move-result v5

    add-int/2addr v2, v5

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_1
    aget-object v4, p1, v0

    .line 69
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getWeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 70
    invoke-static {v4}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->getSizeInBytes(Lcom/bumptech/glide/load/engine/prefill/PreFillType;)I

    move-result v6

    .line 71
    div-int/2addr v5, v6

    .line 72
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public varargs preFill([Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;)V
    .locals 5

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    if-nez v0, :cond_0

    .line 40
    :goto_0
    array-length v0, p1

    new-array v2, v0, [Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    const/4 v0, 0x0

    .line 41
    :goto_1
    array-length v1, p1

    if-lt v0, v1, :cond_1

    .line 51
    invoke-virtual {p0, v2}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->generateAllocationOrder([Lcom/bumptech/glide/load/engine/prefill/PreFillType;)Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    move-result-object v0

    .line 52
    new-instance v1, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-direct {v1, v2, v3, v0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;)V

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    .line 53
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->cancel()V

    goto :goto_0

    .line 42
    :cond_1
    aget-object v3, p1, v0

    .line 43
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 48
    :goto_2
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->build()Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    move-result-object v1

    aput-object v1, v2, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 44
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->defaultFormat:Lcom/bumptech/glide/load/DecodeFormat;

    sget-object v4, Lcom/bumptech/glide/load/DecodeFormat;->ALWAYS_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    if-ne v1, v4, :cond_4

    :cond_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_3
    invoke-virtual {v3, v1}, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->setConfig(Landroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->defaultFormat:Lcom/bumptech/glide/load/DecodeFormat;

    sget-object v4, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    if-eq v1, v4, :cond_3

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_3
.end method
