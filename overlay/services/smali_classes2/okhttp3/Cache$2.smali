.class Lokhttp3/Cache$2;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/Cache;->urls()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field canRemove:Z

.field final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
            ">;"
        }
    .end annotation
.end field

.field nextUrl:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lokhttp3/Cache;


# direct methods
.method constructor <init>(Lokhttp3/Cache;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    iput-object p1, p0, Lokhttp3/Cache$2;->this$0:Lokhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iget-object v0, p0, Lokhttp3/Cache$2;->this$0:Lokhttp3/Cache;

    iget-object v0, v0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->snapshots()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$2;->delegate:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 335
    iget-object v0, p0, Lokhttp3/Cache$2;->nextUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 337
    iput-boolean v2, p0, Lokhttp3/Cache$2;->canRemove:Z

    .line 338
    :goto_0
    iget-object v0, p0, Lokhttp3/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 352
    return v2

    .line 335
    :cond_0
    return v3

    .line 339
    :cond_1
    iget-object v0, p0, Lokhttp3/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    const/4 v1, 0x0

    .line 341
    :try_start_0
    invoke-virtual {v0, v1}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lokio/Source;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    .line 342
    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/Cache$2;->nextUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->close()V

    .line 343
    return v3

    :catch_0
    move-exception v1

    .line 348
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->close()V

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v1

    .line 348
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->close()V

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lokhttp3/Cache$2;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 2

    .prologue
    .line 356
    invoke-virtual {p0}, Lokhttp3/Cache$2;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lokhttp3/Cache$2;->nextUrl:Ljava/lang/String;

    const/4 v1, 0x0

    .line 358
    iput-object v1, p0, Lokhttp3/Cache$2;->nextUrl:Ljava/lang/String;

    .line 359
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/Cache$2;->canRemove:Z

    .line 360
    return-object v0

    .line 356
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 364
    iget-boolean v0, p0, Lokhttp3/Cache$2;->canRemove:Z

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lokhttp3/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 366
    return-void

    .line 364
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "remove() before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
