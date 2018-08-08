.class Lcom/bumptech/glide/load/engine/CacheLoader;
.super Ljava/lang/Object;
.source "CacheLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheLoader"


# instance fields
.field private final diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/cache/DiskCache;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/CacheLoader;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    .line 18
    return-void
.end method


# virtual methods
.method public load(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/ResourceDecoder;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "TZ;>;II)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 21
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/CacheLoader;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->get(Lcom/bumptech/glide/load/Key;)Ljava/io/File;

    move-result-object v1

    .line 22
    if-eqz v1, :cond_1

    .line 28
    :try_start_0
    invoke-interface {p2, v1, p3, p4}, Lcom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 34
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 40
    :goto_1
    return-object v0

    .line 23
    :cond_1
    return-object v0

    .line 33
    :catch_0
    move-exception v1

    const-string/jumbo v2, "CacheLoader"

    .line 30
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "CacheLoader"

    const-string/jumbo v3, "Exception decoding image from cache"

    .line 31
    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "CacheLoader"

    .line 35
    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 38
    :goto_2
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/CacheLoader;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->delete(Lcom/bumptech/glide/load/Key;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "CacheLoader"

    const-string/jumbo v2, "Failed to decode image from cache or not present in cache"

    .line 36
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
