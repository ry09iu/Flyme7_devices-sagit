.class final Lokhttp3/internal/cache2/FileOperator;
.super Ljava/lang/Object;
.source "FileOperator.java"


# instance fields
.field private final fileChannel:Ljava/nio/channels/FileChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/FileChannel;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lokhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 41
    return-void
.end method


# virtual methods
.method public read(JLokio/Buffer;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 60
    cmp-long v0, p4, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-wide v4, p4

    move-wide v2, p1

    :goto_1
    const-wide/16 v0, 0x0

    .line 62
    cmp-long v0, v4, v0

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_3

    .line 63
    iget-object v1, p0, Lokhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v0

    .line 64
    add-long/2addr v2, v0

    .line 65
    sub-long/2addr v4, v0

    goto :goto_1

    .line 62
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 67
    :cond_3
    return-void
.end method

.method public write(JLokio/Buffer;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 45
    cmp-long v0, p4, v8

    if-gez v0, :cond_1

    move v0, v6

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long v0, p4, v0

    if-gtz v0, :cond_2

    move v0, v6

    :goto_1
    if-nez v0, :cond_3

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    move v0, v7

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_1

    :cond_3
    move-wide v4, p4

    move-wide v2, p1

    .line 47
    :goto_2
    cmp-long v0, v4, v8

    if-gtz v0, :cond_4

    move v0, v6

    :goto_3
    if-nez v0, :cond_5

    .line 48
    iget-object v0, p0, Lokhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v0

    .line 49
    add-long/2addr v2, v0

    .line 50
    sub-long/2addr v4, v0

    goto :goto_2

    :cond_4
    move v0, v7

    .line 47
    goto :goto_3

    .line 52
    :cond_5
    return-void
.end method
