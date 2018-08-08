.class Lokhttp3/internal/cache/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 171
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v2

    .line 172
    :try_start_0
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-boolean v3, v3, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z

    if-eqz v3, :cond_0

    :goto_0
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-boolean v1, v1, Lokhttp3/internal/cache/DiskLruCache;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 177
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->trimToSize()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :goto_1
    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 191
    :goto_2
    :try_start_3
    monitor-exit v2

    .line 192
    return-void

    :cond_0
    move v0, v1

    .line 172
    goto :goto_0

    .line 173
    :cond_1
    monitor-exit v2

    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 179
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z

    goto :goto_1

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 184
    :cond_2
    :try_start_4
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->rebuildJournal()V

    .line 185
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v1, 0x0

    iput v1, v0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 190
    :catch_1
    move-exception v0

    .line 188
    :try_start_5
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z

    .line 189
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {}, Lokio/Okio;->blackhole()Lokio/Sink;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method
