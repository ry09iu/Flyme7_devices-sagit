.class public final Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation


# instance fields
.field private committed:Z

.field private final entry:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

.field final synthetic this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)V
    .locals 1

    .prologue
    .line 710
    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    iput-object p2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->entry:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 712
    invoke-static {p2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$600(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$1800(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Z

    :goto_0
    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->written:[Z

    .line 713
    return-void

    :cond_0
    const/4 v0, 0x0

    .line 712
    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V
    .locals 0

    .prologue
    .line 705
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->entry:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)[Z
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->written:[Z

    return-object v0
.end method

.method private newInputStream(I)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 720
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    monitor-enter v1

    .line 721
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->entry:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->entry:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$600(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 728
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->entry:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return-object v0

    .line 722
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 730
    :catchall_0
    move-exception v0

    .line 732
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 725
    :cond_1
    :try_start_3
    monitor-exit v1

    return-object v3

    .line 728
    :catch_0
    move-exception v0

    .line 730
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v3
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 790
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$2000(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V

    .line 791
    return-void
.end method

.method public abortUnlessCommitted()V
    .locals 1

    .prologue
    .line 794
    iget-boolean v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->committed:Z

    if-eqz v0, :cond_0

    .line 800
    :goto_0
    return-void

    .line 796
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 798
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 781
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-static {v0, p0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$2000(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V

    .line 782
    iput-boolean v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->committed:Z

    .line 783
    return-void
.end method

.method public getFile(I)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 745
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    monitor-enter v1

    .line 746
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->entry:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->entry:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$600(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 752
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->entry:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v0

    .line 753
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$1900(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 756
    :goto_1
    monitor-exit v1

    return-object v0

    .line 747
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 756
    :catchall_0
    move-exception v0

    .line 757
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 750
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->written:[Z

    const/4 v2, 0x1

    aput-boolean v2, v0, p1

    goto :goto_0

    .line 754
    :cond_2
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$1900(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 740
    invoke-direct {p0, p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v1

    .line 741
    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$1700(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public set(ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 764
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->getFile(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 765
    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v3, Lcom/bumptech/glide/disklrucache/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 768
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 770
    return-void

    .line 769
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 768
    :goto_0
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 769
    :catchall_1
    move-exception v0

    goto :goto_0
.end method
