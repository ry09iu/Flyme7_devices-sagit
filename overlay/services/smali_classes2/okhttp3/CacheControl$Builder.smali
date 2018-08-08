.class public final Lokhttp3/CacheControl$Builder;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/CacheControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field immutable:Z

.field maxAgeSeconds:I

.field maxStaleSeconds:I

.field minFreshSeconds:I

.field noCache:Z

.field noStore:Z

.field noTransform:Z

.field onlyIfCached:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput v0, p0, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I

    .line 282
    iput v0, p0, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I

    .line 283
    iput v0, p0, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I

    return-void
.end method


# virtual methods
.method public build()Lokhttp3/CacheControl;
    .locals 1

    .prologue
    .line 370
    new-instance v0, Lokhttp3/CacheControl;

    invoke-direct {v0, p0}, Lokhttp3/CacheControl;-><init>(Lokhttp3/CacheControl$Builder;)V

    return-object v0
.end method

.method public immutable()Lokhttp3/CacheControl$Builder;
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/CacheControl$Builder;->immutable:Z

    .line 366
    return-object p0
.end method

.method public maxAge(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 308
    if-ltz p1, :cond_1

    .line 309
    int-to-long v2, p1

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    .line 310
    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_2

    const v0, 0x7fffffff

    .line 312
    :goto_0
    iput v0, p0, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I

    .line 313
    return-object p0

    .line 308
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maxAge < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_2
    long-to-int v0, v2

    goto :goto_0
.end method

.method public maxStale(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 324
    if-ltz p1, :cond_1

    .line 325
    int-to-long v2, p1

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    .line 326
    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_2

    const v0, 0x7fffffff

    .line 328
    :goto_0
    iput v0, p0, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I

    .line 329
    return-object p0

    .line 324
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maxStale < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_2
    long-to-int v0, v2

    goto :goto_0
.end method

.method public minFresh(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 341
    if-ltz p1, :cond_1

    .line 342
    int-to-long v2, p1

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    .line 343
    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_2

    const v0, 0x7fffffff

    .line 345
    :goto_0
    iput v0, p0, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I

    .line 346
    return-object p0

    .line 341
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "minFresh < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_2
    long-to-int v0, v2

    goto :goto_0
.end method

.method public noCache()Lokhttp3/CacheControl$Builder;
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/CacheControl$Builder;->noCache:Z

    .line 291
    return-object p0
.end method

.method public noStore()Lokhttp3/CacheControl$Builder;
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/CacheControl$Builder;->noStore:Z

    .line 297
    return-object p0
.end method

.method public noTransform()Lokhttp3/CacheControl$Builder;
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/CacheControl$Builder;->noTransform:Z

    .line 361
    return-object p0
.end method

.method public onlyIfCached()Lokhttp3/CacheControl$Builder;
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/CacheControl$Builder;->onlyIfCached:Z

    .line 355
    return-object p0
.end method
