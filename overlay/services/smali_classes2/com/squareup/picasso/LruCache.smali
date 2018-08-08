.class public Lcom/squareup/picasso/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"

# interfaces
.implements Lcom/squareup/picasso/Cache;


# instance fields
.field private evictionCount:I

.field private hitCount:I

.field final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSize:I

.field private missCount:I

.field private putCount:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-lez p1, :cond_0

    .line 47
    iput p1, p0, Lcom/squareup/picasso/LruCache;->maxSize:I

    .line 48
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/squareup/picasso/LruCache;->map:Ljava/util/LinkedHashMap;

    .line 49
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Max size must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    invoke-static {p1}, Lcom/squareup/picasso/Utils;->calculateMemoryCacheSize(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/squareup/picasso/LruCache;-><init>(I)V

    .line 40
    return-void
.end method

.method private trimToSize(I)V
    .locals 3

    .prologue
    .line 91
    :goto_0
    monitor-enter p0

    .line 92
    :try_start_0
    iget v0, p0, Lcom/squareup/picasso/LruCache;->size:I

    if-gez v0, :cond_1

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 92
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/squareup/picasso/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 97
    :goto_1
    iget v0, p0, Lcom/squareup/picasso/LruCache;->size:I

    if-gt v0, p1, :cond_4

    .line 98
    :cond_2
    monitor-exit p0

    .line 109
    return-void

    .line 92
    :cond_3
    iget v0, p0, Lcom/squareup/picasso/LruCache;->size:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 97
    :cond_4
    iget-object v0, p0, Lcom/squareup/picasso/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/squareup/picasso/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 102
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 103
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 104
    iget-object v2, p0, Lcom/squareup/picasso/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget v1, p0, Lcom/squareup/picasso/LruCache;->size:I

    invoke-static {v0}, Lcom/squareup/picasso/Utils;->getBitmapBytes(Landroid/graphics/Bitmap;)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Lcom/squareup/picasso/LruCache;->size:I

    .line 106
    iget v0, p0, Lcom/squareup/picasso/LruCache;->evictionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/picasso/LruCache;->evictionCount:I

    .line 107
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized clear()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 125
    :try_start_0
    invoke-virtual {p0}, Lcom/squareup/picasso/LruCache;->evictAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 126
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized clearKeyUri(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 130
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 131
    iget-object v0, p0, Lcom/squareup/picasso/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 142
    if-nez v2, :cond_3

    :goto_1
    monitor-exit p0

    .line 145
    return-void

    .line 132
    :cond_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 133
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 134
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/16 v5, 0xa

    .line 135
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 136
    if-eq v5, v3, :cond_2

    :cond_1
    move v0, v2

    :goto_2
    move v2, v0

    .line 141
    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 136
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 138
    iget v1, p0, Lcom/squareup/picasso/LruCache;->size:I

    invoke-static {v0}, Lcom/squareup/picasso/Utils;->getBitmapBytes(Landroid/graphics/Bitmap;)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Lcom/squareup/picasso/LruCache;->size:I

    .line 139
    const/4 v0, 0x1

    goto :goto_2

    .line 143
    :cond_3
    iget v0, p0, Lcom/squareup/picasso/LruCache;->maxSize:I

    invoke-direct {p0, v0}, Lcom/squareup/picasso/LruCache;->trimToSize(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final evictAll()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 113
    invoke-direct {p0, v0}, Lcom/squareup/picasso/LruCache;->trimToSize(I)V

    .line 114
    return-void
.end method

.method public final declared-synchronized evictionCount()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 164
    :try_start_0
    iget v0, p0, Lcom/squareup/picasso/LruCache;->evictionCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    if-eqz p1, :cond_0

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/squareup/picasso/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 59
    if-nez v0, :cond_1

    .line 63
    iget v0, p0, Lcom/squareup/picasso/LruCache;->missCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/picasso/LruCache;->missCount:I

    .line 64
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    return-object v1

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/squareup/picasso/LruCache;->hitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/squareup/picasso/LruCache;->hitCount:I

    .line 61
    monitor-exit p0

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized hitCount()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 149
    :try_start_0
    iget v0, p0, Lcom/squareup/picasso/LruCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized maxSize()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 121
    :try_start_0
    iget v0, p0, Lcom/squareup/picasso/LruCache;->maxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized missCount()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 154
    :try_start_0
    iget v0, p0, Lcom/squareup/picasso/LruCache;->missCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized putCount()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 159
    :try_start_0
    iget v0, p0, Lcom/squareup/picasso/LruCache;->putCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public set(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 70
    if-nez p1, :cond_1

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key == null || bitmap == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    if-eqz p2, :cond_0

    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget v0, p0, Lcom/squareup/picasso/LruCache;->putCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/picasso/LruCache;->putCount:I

    .line 77
    iget v0, p0, Lcom/squareup/picasso/LruCache;->size:I

    invoke-static {p2}, Lcom/squareup/picasso/Utils;->getBitmapBytes(Landroid/graphics/Bitmap;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/picasso/LruCache;->size:I

    .line 78
    iget-object v0, p0, Lcom/squareup/picasso/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 79
    if-nez v0, :cond_2

    .line 82
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    iget v0, p0, Lcom/squareup/picasso/LruCache;->maxSize:I

    invoke-direct {p0, v0}, Lcom/squareup/picasso/LruCache;->trimToSize(I)V

    .line 85
    return-void

    .line 80
    :cond_2
    :try_start_1
    iget v1, p0, Lcom/squareup/picasso/LruCache;->size:I

    invoke-static {v0}, Lcom/squareup/picasso/Utils;->getBitmapBytes(Landroid/graphics/Bitmap;)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Lcom/squareup/picasso/LruCache;->size:I

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized size()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 117
    :try_start_0
    iget v0, p0, Lcom/squareup/picasso/LruCache;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
